/* IPX replaced by TCP.
 *
 * The game's transport layer (restored at 0x43ba40..0x43c200) speaks Winsock IPX: one datagram
 * socket, sockaddr_ipx addresses {family 6, net[4], node[6], socket[2]}, broadcast to node
 * ff:ff:ff:ff:ff:ff and unicast by node.  All twelve Winsock imports of that module are
 * redirected here.  The "IPX network" they see is a virtual one carried over TCP:
 *
 *   host  - listens on a port chosen by the player; it is node 1 and relays datagrams
 *   join  - connects to host:port and is handed the next free node number (2, 3, ...)
 *
 * Besides game datagrams the connection carries small control frames used by the TCP lobby
 * (dialog.c): player names, the list of players, and "start the game" from either side.
 * Datagram boundaries are kept (length-prefixed frames); delivery is reliable and ordered, which
 * the game's own acknowledge/resend layer is perfectly happy with.
 */
#include "bm.h"

#pragma pack(push, 1)
typedef struct { short family; unsigned char net[4]; unsigned char node[6]; unsigned short sock; } ipxaddr_t;
typedef struct { unsigned short len; unsigned char type; unsigned char pad; } frame_t;      /* len counts the body */
typedef struct { unsigned char src[6], dst[6]; unsigned short ssock, dsock; } dgram_hdr_t;   /* then payload */
#pragma pack(pop)

#define MAXDG      1500
#define NQ         256
#define MAXCLIENT  9
#define FT_HELLO    1      /* server -> client: body = 1 byte node number */
#define FT_DATA     2
#define FT_NAME     3      /* client -> server: body = player name */
#define FT_LOBBY    4      /* server -> clients: body = repeated { u8 node, char name[NAMELEN] } */
#define FT_START    5      /* server -> clients: the game starts */
#define FT_STARTREQ 6      /* client -> server: please start the game */
#define FT_PING     8      /* both ways, once a second: the connection is alive */
#define FT_UNREADY  9      /* node 1 of a dedicated server -> server: nobody has locked a position (the setup screen opens) */
#define FT_END      10     /* node 1 -> dedicated server: the game is over */
#define FUSE_MS     4000   /* nothing heard for this long: the other side is dropped */
#define FT_READY    7      /* client -> server: my position on the setup screen is locked */
#define LOBBY_REC  (1 + NAMELEN)       /* the high bit of the node byte: this player has locked his position */

/* ---- winsock, loaded on demand ---- */
typedef UINT_PTR SOCK;
static struct {
    int  (__stdcall *WSAStartup)(WORD, void *);
    SOCK (__stdcall *socket)(int, int, int);
    int  (__stdcall *bind)(SOCK, const void *, int);
    int  (__stdcall *listen)(SOCK, int);
    SOCK (__stdcall *accept)(SOCK, void *, int *);
    int  (__stdcall *connect)(SOCK, const void *, int);
    int  (__stdcall *send)(SOCK, const char *, int, int);
    int  (__stdcall *recv)(SOCK, char *, int, int);
    int  (__stdcall *closesocket)(SOCK);
    int  (__stdcall *setsockopt)(SOCK, int, int, const char *, int);
    unsigned long (__stdcall *inet_addr)(const char *);
    void *(__stdcall *gethostbyname)(const char *);
    unsigned short (__stdcall *htons)(unsigned short);
    int (__stdcall *gethostname)(char *, int);
} ws;
static int ws_ready;
#pragma pack(push, 1)
typedef struct { short family; unsigned short port; unsigned addr; char zero[8]; } sockaddr_in_t;
#pragma pack(pop)

static int ws_load(void) {
    if (ws_ready) return 1;
    {
        const char *names[] = { "WSAStartup", "socket", "bind", "listen", "accept", "connect", "send", "recv", "closesocket",
                                "setsockopt", "inet_addr", "gethostbyname", "htons", "gethostname" };
        void **slots[] = { (void **)&ws.WSAStartup, (void **)&ws.socket, (void **)&ws.bind, (void **)&ws.listen, (void **)&ws.accept,
                           (void **)&ws.connect, (void **)&ws.send, (void **)&ws.recv, (void **)&ws.closesocket, (void **)&ws.setsockopt,
                           (void **)&ws.inet_addr, (void **)&ws.gethostbyname, (void **)&ws.htons, (void **)&ws.gethostname };
        unsigned i;
        char wsadata[512];
        for (i = 0; i < sizeof names / sizeof names[0]; i++) {
            *slots[i] = bm_api("ws2_32.dll", names[i]);
            if (!*slots[i]) return 0;
        }
        if (ws.WSAStartup(0x0202, wsadata)) return 0;
    }
    ws_ready = 1;
    return 1;
}

/* ---- a spin lock is enough: the critical sections are a few instructions long ---- */
static volatile long lock_;
static void (__stdcall *pSleep)(DWORD);
static HANDLE (__stdcall *pCreateThread)(LPSECURITY_ATTRIBUTES, SIZE_T, LPTHREAD_START_ROUTINE, LPVOID, DWORD, LPDWORD);
static void lock(void) { while (__sync_lock_test_and_set(&lock_, 1)) { if (pSleep) pSleep(0); } }
static void unlock(void) { __sync_lock_release(&lock_); }
static void apis(void) {
    if (!pSleep) pSleep = bm_api("kernel32.dll", "Sleep");
    if (!pCreateThread) pCreateThread = bm_api("kernel32.dll", "CreateThread");
}

static DWORD (__stdcall *pTickCount)(void);
static DWORD tick(void) { if (!pTickCount) pTickCount = bm_api("kernel32.dll", "GetTickCount"); return pTickCount(); }

/* ---- state ---- */
typedef struct { unsigned char src[6]; unsigned short ssock, dsock; int len; unsigned char data[MAXDG]; } packet_t;
static packet_t *queue;                    /* ring of received datagrams */
static volatile int qhead, qtail;

static volatile int running, is_host;
/* the fuse */
static volatile DWORD last_heard[MAXCLIENT + 2], last_srv, planner_tick;
static volatile int session_active, server_lost, exit_req, hb_started;
static unsigned prev_mask;                                   /* the nodes of the last lobby list */
static volatile unsigned short node_gid[MAXCLIENT + 2];     /* the id the game gave the player of this node */
static volatile int slot_of_node[MAXCLIENT + 2];
static volatile unsigned char dropq[MAXCLIENT + 2];
static SOCK lsock = (SOCK)-1;
static SOCK clients[MAXCLIENT + 2];        /* indexed by node number, node 1 is the host itself */
static volatile unsigned char my_node;
static char my_name[NAMELEN];
static char names[MAXCLIENT + 2][NAMELEN]; /* host: names by node;  client: the lobby list is kept in lobby[] */
static char lobby[MAXCLIENT + 2][NAMELEN]; static unsigned char lobby_node[MAXCLIENT + 2], lobby_ready[MAXCLIENT + 2]; static unsigned char ready[MAXCLIENT + 2]; static volatile int lobby_n;
static volatile int lobby_ver, start_flag, startreq_flag;
static volatile int conn_state;            /* client: 0 idle, 1 connecting, 2 connected, 3 failed */
static SOCK csock = (SOCK)-1;              /* join: connection to the host */
static volatile int gen;                   /* generation of the listener / the client connection */
static int clients_init;

static unsigned char bcast[6] = { 255, 255, 255, 255, 255, 255 };
static unsigned char zeronode[6];
static int is_bcast(const unsigned char *n) { return !memcmp(n, bcast, 6) || !memcmp(n, zeronode, 6); }
static int node_no(const unsigned char *n) { return (n[0] | n[1] | n[2] | n[3] | n[4]) ? 0 : n[5]; }
static void make_node(unsigned char *n, int no) { memset(n, 0, 6); n[5] = (unsigned char)no; }
static void copy_name(char *d, const char *s) { int i; for (i = 0; i < NAMELEN - 1 && s[i]; i++) d[i] = s[i]; d[i] = 0; }
static unsigned W(const char *b, int len, int o) { unsigned v = 0; int i; for (i = 3; i >= 0; i--) v = (v << 8) | (o + i < len ? (unsigned char)b[o + i] : 0); return v; }

static int send_all(SOCK s, const void *buf, int n) {
    const char *p = buf;
    while (n > 0) { int r = ws.send(s, p, n, 0); if (r <= 0) return -1; p += r; n -= r; }
    return 0;
}
static int recv_all(SOCK s, void *buf, int n) {
    char *p = buf;
    while (n > 0) { int r = ws.recv(s, p, n, 0); if (r <= 0) return -1; p += r; n -= r; }
    return 0;
}
static int send_frame(SOCK s, int type, const void *body, int len) {
    char buf[sizeof(frame_t) + MAXDG + sizeof(dgram_hdr_t)];
    frame_t *f = (frame_t *)buf;
    if (len > MAXDG + (int)sizeof(dgram_hdr_t)) return -1;
    f->len = (unsigned short)len; f->type = (unsigned char)type; f->pad = 0;
    memcpy(buf + sizeof *f, body, (unsigned)len);
    return send_all(s, buf, (int)sizeof *f + len);
}

static void enqueue(const dgram_hdr_t *h, const unsigned char *payload, int len) {
    packet_t *p;
    lock();
    if (((qtail + 1) % NQ) != qhead) {
        p = &queue[qtail];
        memcpy(p->src, h->src, 6);
        p->ssock = h->ssock; p->dsock = h->dsock; p->len = len;
        memcpy(p->data, payload, (unsigned)len);
        qtail = (qtail + 1) % NQ;
    }
    unlock();
}

static void init_clients(void) {
    int i;
    if (clients_init) return;
    for (i = 0; i < MAXCLIENT + 2; i++) clients[i] = (SOCK)-1;
    clients_init = 1;
}

/* ---- lobby list (host side builds it, clients receive it) ---- */
static void broadcast_lobby(void) {
    unsigned char body[(MAXCLIENT + 2) * LOBBY_REC];
    int node, n = 0;
    lock();
    copy_name(names[1], my_name);
    for (node = 1; node <= MAXCLIENT + 1; node++) {
        if (node != 1 && clients[node] == (SOCK)-1) continue;
        body[n * LOBBY_REC] = (unsigned char)(node | (ready[node] ? 0x80 : 0));
        memset(body + n * LOBBY_REC + 1, 0, NAMELEN);
        copy_name((char *)body + n * LOBBY_REC + 1, names[node][0] ? names[node] : "(player)");
        n++;
    }
    unlock();
    for (node = 2; node <= MAXCLIENT + 1; node++)
        if (clients[node] != (SOCK)-1) send_frame(clients[node], FT_LOBBY, body, n * LOBBY_REC);
    lobby_ver++;
}

/* host side: route a datagram that arrived from node `from` (0 = produced locally) */
static void route(const unsigned char *body, int len, int from) {
    const dgram_hdr_t *h = (const dgram_hdr_t *)body;
    int dst, i, plen = len - (int)sizeof *h;
    if (plen < 0) return;
    if (from && plen >= 14) node_gid[from] = *(const unsigned short *)(body + sizeof *h + 12);   /* source id of the game packet */
    if (is_bcast(h->dst)) {
        for (i = 2; i <= MAXCLIENT + 1; i++)
            if (clients[i] != (SOCK)-1 && i != from) { int rc = send_frame(clients[i], FT_DATA, body, len); { static int k; if (k++ < 8) bm_log("net: relay broadcast to node %d rc=%d len=%d", i, rc, len); } }
        if (from) enqueue(h, body + sizeof *h, plen);
        return;
    }
    dst = node_no(h->dst);
    if (dst == 1) { if (from) enqueue(h, body + sizeof *h, plen); }
    else if (dst >= 2 && dst <= MAXCLIENT + 1 && clients[dst] != (SOCK)-1) send_frame(clients[dst], FT_DATA, body, len);
}

static DWORD __stdcall client_reader(void *arg) {         /* one per accepted connection (host) */
    int node = (int)(INT_PTR)arg;
    SOCK s = clients[node];
    for (;;) {
        frame_t f; unsigned char body[MAXDG + sizeof(dgram_hdr_t)];
        if (recv_all(s, &f, sizeof f) || f.len > sizeof body || recv_all(s, body, f.len)) break;
        last_heard[node] = tick();
        if (f.type == FT_DATA && f.len >= sizeof(dgram_hdr_t)) route(body, f.len, node);
        else if (f.type == FT_NAME) { body[f.len < NAMELEN ? f.len : NAMELEN - 1] = 0; lock(); copy_name(names[node], (char *)body); unlock(); broadcast_lobby(); }
        else if (f.type == FT_STARTREQ) startreq_flag = 1;
        else if (f.type == FT_READY) { lock(); ready[node] = 1; unlock(); broadcast_lobby(); }
    }
    ws.closesocket(s);
    if (clients[node] == s) { clients[node] = (SOCK)-1; names[node][0] = 0; ready[node] = 0; if (session_active) dropq[node] = 1; broadcast_lobby(); }
    bm_log("net: client node %d left", node);
    return 0;
}

typedef struct { SOCK s; int gen; } acc_arg_t;
static acc_arg_t acc_args[4]; static int acc_next;

static DWORD __stdcall accept_thread(void *arg) {
    acc_arg_t a = *(acc_arg_t *)arg;
    while (gen == a.gen) {
        SOCK c = ws.accept(a.s, 0, 0);
        int node, one = 1;
        unsigned char hello;
        if (c == (SOCK)-1) break;                      /* listener closed (port change / stop) */
        if (gen != a.gen) { ws.closesocket(c); break; }
        ws.setsockopt(c, 6, 1, (const char *)&one, sizeof one);        /* TCP_NODELAY */
        lock();
        for (node = 2; node <= MAXCLIENT + 1 && clients[node] != (SOCK)-1; node++) {}
        if (node <= MAXCLIENT + 1) { clients[node] = c; names[node][0] = 0; last_heard[node] = tick(); dropq[node] = 0; node_gid[node] = 0; }
        unlock();
        if (node > MAXCLIENT + 1) { ws.closesocket(c); continue; }
        hello = (unsigned char)node;
        send_frame(c, FT_HELLO, &hello, 1);
        bm_log("net: client connected as node %d", node);
        pCreateThread(0, 0, client_reader, (void *)(INT_PTR)node, 0, 0);
        broadcast_lobby();
    }
    return 0;
}

static DWORD __stdcall join_reader(void *arg) {
    int g = (int)(INT_PTR)arg;
    SOCK s = csock;
    for (;;) {
        frame_t f; unsigned char body[MAXDG + sizeof(dgram_hdr_t)];
        if (recv_all(s, &f, sizeof f)) { bm_log("net: client reader: header recv failed"); break; }
        if (f.len > sizeof body) { bm_log("net: client reader: bad frame length %d type %d", (int)f.len, (int)f.type); break; }
        if (recv_all(s, body, f.len)) { bm_log("net: client reader: body recv failed (type %d len %d)", (int)f.type, (int)f.len); break; }
        last_srv = tick();
        if (f.type == FT_HELLO && f.len >= 1) my_node = body[0];
        else if (f.type == FT_DATA && f.len >= sizeof(dgram_hdr_t)) { static int k; if (k++ < 8) bm_log("net: client got DATA frame %d bytes", (int)f.len);
            if (my_node == 1 && f.len >= sizeof(dgram_hdr_t) + 14) {         /* dedicated server, node 1: learn the game ids of the others */
                int sn = node_no(((dgram_hdr_t *)body)->src);
                if (sn >= 2 && sn <= MAXCLIENT + 1) node_gid[sn] = *(unsigned short *)(body + sizeof(dgram_hdr_t) + 12);
            }
            enqueue((dgram_hdr_t *)body, body + sizeof(dgram_hdr_t), f.len - (int)sizeof(dgram_hdr_t)); }
        else if (f.type == FT_LOBBY) {
            int n = f.len / LOBBY_REC, i;
            lock();
            for (i = 0; i < n && i < MAXCLIENT + 2; i++) { lobby_node[i] = body[i * LOBBY_REC] & 0x7f; lobby_ready[i] = body[i * LOBBY_REC] >> 7; memcpy(lobby[i], body + i * LOBBY_REC + 1, NAMELEN); lobby[i][NAMELEN - 1] = 0; }
            lobby_n = n;
            {   unsigned mask = 0, gone;                                  /* dedicated server, node 1: who has left? */
                for (i = 0; i < n && i < MAXCLIENT + 2; i++) mask |= 1u << lobby_node[i];
                gone = prev_mask & ~mask;
                prev_mask = mask;
                if (session_active && my_node == 1)
                    for (i = 2; i <= MAXCLIENT + 1; i++) if (gone & (1u << i)) dropq[i] = 1;
            }
            unlock();
            lobby_ver++;
        } else if (f.type == FT_START) { start_flag = 1; if (my_node == 1) session_active = 1; }
    }
    if (gen == g) { if (conn_state == 2) server_lost = 1; running = 0; conn_state = 3; }
    bm_log("net: connection to host lost");
    return 0;
}

/* ================================ public API (lobby / session) ================================ */
void bm_net_set_name(const char *name) { copy_name(my_name, name); }
int  bm_net_is_host(void) { return is_host; }
int  bm_net_started(void) { return start_flag; }
int  bm_net_start_requested(void) { return startreq_flag; }
int  bm_net_conn_state(void) { return conn_state; }
int  bm_net_node(void) { return my_node; }
/* Playing through a dedicated server (DedicatedServer/bm_server.py): every player, node 1 included, is a client of the
   server.  The player that got node 1 runs the game's server logic - for the game it is "the host" - over that
   connection.  The self-hosted game never gives a client node 1. */
static int dedicated_host(void) { return !is_host && running && conn_state == 2 && my_node == 1; }
static int dedicated_session;                               /* this session runs on a dedicated server */

/* the host's game session waits for this many clients to join at game level (src/asm/session_host.s) */
int bm_expected_clients(void) __asm__("_bm_expected_clients");
int bm_expected_clients(void) {
    int i, n = 0;
    if (dedicated_host()) return lobby_n > 1 ? lobby_n - 1 : 0;
    if (!is_host || !clients_init) return 0;
    for (i = 2; i <= MAXCLIENT + 1; i++) if (clients[i] != (SOCK)-1) n++;
    return n;
}
int  bm_net_lobby_version(void) { return lobby_ver; }
int  bm_net_running(void) { return running; }

/* names of everybody in the lobby, host first; returns the count */
int bm_net_peers(char names_out[][NAMELEN], int max) {
    int n = 0, node;
    lock();
    if (is_host) {
        for (node = 1; node <= MAXCLIENT + 1 && n < max; node++) {
            if (node != 1 && clients[node] == (SOCK)-1) continue;
            copy_name(names_out[n++], node == 1 ? my_name : (names[node][0] ? names[node] : "(player)"));
        }
    } else {
        for (node = 0; node < lobby_n && n < max; node++) copy_name(names_out[n++], lobby[node]);
    }
    unlock();
    return n;
}

static int net_common_init(void) {
    apis();
    init_clients();
    if (!ws_load()) return -2;
    if (!queue) {
        void *(__stdcall *ga)(UINT, SIZE_T) = bm_api("kernel32.dll", "GlobalAlloc");
        queue = ga(GPTR, sizeof(packet_t) * NQ);
        if (!queue) return -3;
    }
    return 0;
}

/* heartbeat: every second a ping goes to the other side(s); a side that has not been heard for FUSE_MS is dropped
   (its socket is closed, the reader thread notices and does the clean-up) */
static DWORD __stdcall hb_thread(void *arg) {
    DWORD last_ping = 0;
    (void)arg;
    for (;;) {
        DWORD now;
        int i;
        pSleep(200);
        now = tick();
        if (!running) continue;
        if (is_host) {
            for (i = 2; i <= MAXCLIENT + 1; i++)
                if (clients[i] != (SOCK)-1 && now - last_heard[i] > FUSE_MS) { bm_log("net: client node %d silent for %d ms - dropped", i, (int)(now - last_heard[i])); ws.closesocket(clients[i]); }
        } else if (csock != (SOCK)-1 && conn_state == 2 && now - last_srv > FUSE_MS) {
            bm_log("net: the server was silent for %d ms - dropped", (int)(now - last_srv));
            server_lost = 1;
            ws.closesocket(csock);
        }
        if (now - last_ping >= 1000) {
            last_ping = now;
            if (is_host) { for (i = 2; i <= MAXCLIENT + 1; i++) if (clients[i] != (SOCK)-1) send_frame(clients[i], FT_PING, "", 0); }
            else if (csock != (SOCK)-1 && conn_state == 2) send_frame(csock, FT_PING, "", 0);
        }
    }
    return 0;
}
static void start_heartbeat(void) {
    if (hb_started) return;
    hb_started = 1;
    pCreateThread(0, 0, hb_thread, 0, 0, 0);
}

static void drop_clients(void) {
    int i;
    for (i = 0; i < MAXCLIENT + 2; i++) if (clients[i] != (SOCK)-1) { SOCK s = clients[i]; clients[i] = (SOCK)-1; ws.closesocket(s); names[i][0] = 0; }
}

/* Start (or move) the TCP server.  The new port is bound first: when it is busy nothing changes and
 * the old server keeps running.  Players connected to the old port are dropped. */
int bm_net_host_listen(int port) {
    sockaddr_in_t sa;
    SOCK s;
    int r = net_common_init();
    if (r) return r;
    s = ws.socket(2, 1, 6);
    if (s == (SOCK)-1) return -4;
    memset(&sa, 0, sizeof sa);
    sa.family = 2; sa.port = ws.htons((unsigned short)port); sa.addr = 0;
    if (ws.bind(s, &sa, sizeof sa) || ws.listen(s, 8)) { ws.closesocket(s); return -5; }   /* in use, or not allowed */
    /* success: retire the old listener */
    gen++;
    if (lsock != (SOCK)-1) { SOCK old = lsock; lsock = (SOCK)-1; ws.closesocket(old); }
    if (csock != (SOCK)-1) { SOCK old = csock; csock = (SOCK)-1; ws.closesocket(old); }
    drop_clients();
    session_active = 0; exit_req = 0; server_lost = 0;
    memset((void *)dropq, 0, sizeof dropq);
    lsock = s;
    start_heartbeat();
    is_host = 1; my_node = 1; running = 1; start_flag = 0; startreq_flag = 0; conn_state = 0;
    qhead = qtail = 0;
    acc_args[acc_next % 4].s = s; acc_args[acc_next % 4].gen = gen;
    pCreateThread(0, 0, accept_thread, &acc_args[acc_next % 4], 0, 0);
    acc_next++;
    copy_name(names[1], my_name);
    lobby_ver++;
    bm_log("net: hosting on TCP port %d", port);
    return 0;
}

static struct { char addr[128]; int port; } conn_req;

static DWORD __stdcall connect_thread(void *arg) {
    int g = (int)(INT_PTR)arg, waited, one = 1;
    sockaddr_in_t sa;
    unsigned a;
    SOCK s;
    memset(&sa, 0, sizeof sa);
    sa.family = 2; sa.port = ws.htons((unsigned short)conn_req.port);
    a = ws.inet_addr(conn_req.addr);
    if (a == 0xffffffffu) {
        void *he = ws.gethostbyname(conn_req.addr);
        if (!he) { if (gen == g) conn_state = 3; return 0; }
        memcpy(&a, (*(char ***)((char *)he + 12))[0], 4);
    }
    sa.addr = a;
    s = ws.socket(2, 1, 6);
    if (s == (SOCK)-1) { if (gen == g) conn_state = 3; return 0; }
    csock = s;
    if (ws.connect(s, &sa, sizeof sa)) { ws.closesocket(s); if (csock == s) csock = (SOCK)-1; if (gen == g) conn_state = 3; return 0; }
    if (gen != g) { ws.closesocket(s); return 0; }       /* cancelled while connecting */
    ws.setsockopt(s, 6, 1, (const char *)&one, sizeof one);
    is_host = 0; my_node = 0; running = 1; start_flag = 0; startreq_flag = 0; lobby_n = 0;
    qhead = qtail = 0;
    last_srv = tick(); server_lost = 0; exit_req = 0;
    pCreateThread(0, 0, join_reader, (void *)(INT_PTR)g, 0, 0);
    start_heartbeat();
    for (waited = 0; !my_node && waited < 5000 && gen == g; waited += 10) pSleep(10);
    if (!my_node || gen != g) { ws.closesocket(s); if (csock == s) csock = (SOCK)-1; if (gen == g) { conn_state = 3; running = 0; } return 0; }
    send_frame(s, FT_NAME, my_name, bm_strlen(my_name));
    conn_state = 2;
    bm_log("net: joined %s:%d as node %d", conn_req.addr, conn_req.port, my_node);
    return 0;
}

void bm_net_disconnect(void) {
    gen++;
    if (csock != (SOCK)-1) { SOCK old = csock; csock = (SOCK)-1; ws.closesocket(old); }
    if (!is_host) running = 0;
    conn_state = 0; lobby_n = 0; start_flag = 0;
}

/* start connecting in the background; poll bm_net_conn_state() (1 connecting, 2 connected, 3 failed) */
int bm_net_connect(const char *addr, int port) {
    int r = net_common_init();
    if (r) { conn_state = 3; return r; }
    bm_net_disconnect();
    copy_name(conn_req.addr, addr); conn_req.addr[127] = 0;
    conn_req.port = port;
    conn_state = 1;
    gen++;
    pCreateThread(0, 0, connect_thread, (void *)(INT_PTR)gen, 0, 0);
    return 0;
}

/* the lobby's Start button: the host tells everybody, a client asks the host */
void bm_net_send_start(void) {
    int i;
    if (is_host) {
        for (i = 2; i <= MAXCLIENT + 1; i++) if (clients[i] != (SOCK)-1) send_frame(clients[i], FT_START, "", 0);
        start_flag = 1;
        session_active = 1;                                  /* from now on a lost client is a fuse event */
    } else if (csock != (SOCK)-1) send_frame(csock, FT_STARTREQ, "", 0);
}

/* command line path (-host PORT / -join ADDRESS:PORT): no lobby, straight to the game */
int bm_net_start(int host) {
    int r, waited;
    if (running) return 0;
    if (host) return bm_net_host_listen(bm_cfg.port);
    r = bm_net_connect(bm_cfg.address, bm_cfg.jport);
    if (r) return r;
    for (waited = 0; conn_state == 1 && waited < 8000; waited += 20) pSleep(20);
    if (conn_state != 2) return -7;
    start_flag = 1;
    return 0;
}

void bm_net_stop(void) {
    int i;
    gen++;
    running = 0;
    if (!clients_init) return;
    if (lsock != (SOCK)-1) { SOCK s = lsock; lsock = (SOCK)-1; ws.closesocket(s); }
    if (csock != (SOCK)-1) { SOCK s = csock; csock = (SOCK)-1; ws.closesocket(s); }
    for (i = 0; i < MAXCLIENT + 2; i++) if (clients[i] != (SOCK)-1) { SOCK s = clients[i]; clients[i] = (SOCK)-1; ws.closesocket(s); }
    conn_state = 0; is_host = 0; lobby_n = 0; start_flag = 0; startreq_flag = 0;
}

/* "192.168.1.5, 10.0.0.7" for the host lobby */
void bm_local_addresses(char *out, int n) {
    char name[256]; int len = 0;
    out[0] = 0;
    if (net_common_init() || ws.gethostname(name, sizeof name)) { bm_strcpy(out, "(unknown)"); return; }
    {
        unsigned char **list = 0;
        void *he = ws.gethostbyname(name);
        if (he) list = *(unsigned char ***)((char *)he + 12);
        for (; list && *list && len < n - 20; list++) {
            int i;
            if (len) { out[len++] = ','; out[len++] = ' '; }
            for (i = 0; i < 4; i++) { len += bm_utoa(out + len, (*list)[i]); if (i < 3) out[len++] = '.'; }
            out[len] = 0;
        }
    }
    if (!len) bm_strcpy(out, "(none found)");
}

/* ======================= the Winsock imports of the game ======================= */
typedef struct { SOCK handle; int open; unsigned short bound; } vsock_t;
#define MAXVS 4
static vsock_t vs[MAXVS];
static const SOCK VS_BASE = 0x7c00;
static int werr;                           /* last error reported to the game */

static vsock_t *vget(SOCK s) { return (s >= VS_BASE && s < VS_BASE + MAXVS && vs[s - VS_BASE].open) ? &vs[s - VS_BASE] : 0; }

/* The game starts a session through one routine with a role argument (hooks.s redirects the two
 * callers to bm_role_hook first): 2 = "Start Network Game" (server), 1 = "Join Network Game". */
#define ROLE_SERVER 2
void bm_role_hook(int role, const char *nodename) __asm__("_bm_role_hook");
void bm_role_hook(int role, const char *nodename) {
    bm_cfg.role = role;
    session_active = 0; exit_req = 0; server_lost = 0; dedicated_session = 0;
    bm_net_set_name(nodename);
    bm_log("net: session role %d, player '%s'", role, nodename);
}

/* The lobby runs before the game starts connecting (src/asm/hooks.s bm_net_session calls this): when the player
   leaves it with Back, the game never begins to "connect the network object" and returns to the menu at once.
   Returns 0 to go on, 1 when the player cancelled. */
#ifndef BM_NATIVE
int bm_lobby_cancelled __asm__("_bm_lobby_cancelled");
#endif
static int lobby_done;
int bm_session_lobby(void) __asm__("_bm_session_lobby");
int bm_session_lobby(void) {
    int host = (bm_cfg.role == ROLE_SERVER || bm_cfg.role == 0);
    bm_lobby_cancelled = 0; lobby_done = 0;
    if (bm_cfg.mode == BM_NET_OFF || bm_cfg.preset == (host ? BM_NET_HOST : BM_NET_JOIN)) return 0;     /* no lobby: WSAStartup decides */
    bm_net_stop();
    apis();
    if (!(host ? bm_lobby_server() : bm_lobby_client())) { bm_net_stop(); bm_log("net: lobby cancelled"); bm_lobby_cancelled = 1; return 1; }
    lobby_done = 1;
    return 0;
}

BM_SHIM(int, WSAStartup, 2, (WORD ver, void *data)) {
    int host = (bm_cfg.role == ROLE_SERVER || bm_cfg.role == 0);
    bm_log("net: WSAStartup called by the game (running=%d)", running);
    (void)ver;
    memset(data, 0, 400);
    ((WORD *)data)[0] = 0x0101; ((WORD *)data)[1] = 0x0101;
    if (bm_cfg.mode == BM_NET_OFF) { bm_log("net: WSAStartup refused, networking is off (-local)"); return 10091; }
    if (!lobby_done) bm_net_stop();
    apis();
    if (bm_cfg.preset == (host ? BM_NET_HOST : BM_NET_JOIN)) {
        /* the command line answered everything: no lobby */
        if (bm_net_start(host)) { bm_log("net: could not start from the command line options"); return 10091; }
        return 0;
    }
    if (!lobby_done && !(host ? bm_lobby_server() : bm_lobby_client())) { bm_net_stop(); bm_log("net: lobby cancelled"); return 10091; }
    lobby_done = 0;
    return 0;
}
BM_SHIM(int, WSACleanup, 0, (void)) { bm_log("net: WSACleanup called by the game"); bm_net_stop(); return 0; }
BM_SHIM(int, WSAGetLastError, 0, (void)) { return werr; }
BM_SHIM(unsigned short, htons, 1, (unsigned short v)) { return (unsigned short)((v << 8) | (v >> 8)); }

BM_SHIM(SOCK, socket, 3, (int af, int type, int proto)) {
    int i;
    (void)af; (void)type; (void)proto;
    for (i = 0; i < MAXVS; i++)
        if (!vs[i].open) { vs[i].open = 1; vs[i].bound = 0; return VS_BASE + (SOCK)i; }
    werr = 10024; return (SOCK)-1;
}
BM_SHIM(int, closesocket, 1, (SOCK s)) { vsock_t *v = vget(s); if (v) v->open = 0; return 0; }
BM_SHIM(int, bind, 3, (SOCK s, const ipxaddr_t *a, int len)) {
    vsock_t *v = vget(s); (void)len;
    if (!v) { werr = 10038; return -1; }
    v->bound = a->sock;
    bm_log("net: bind socket %x", (unsigned)a->sock);
    return 0;
}
BM_SHIM(int, getsockname, 3, (SOCK s, ipxaddr_t *a, int *len)) {
    vsock_t *v = vget(s);
    if (!v) { werr = 10038; return -1; }
    memset(a, 0, sizeof *a);
    a->family = 6;
    a->net[3] = 1;                                         /* the virtual network is number 1 */
    make_node(a->node, my_node);
    a->sock = v->bound;
    if (len) *len = sizeof *a;
    return 0;
}
/* The game's receive routine first asks FIONREAD how many bytes the next datagram has and only calls
 * recvfrom when that is not zero; FIONBIO (switch to non-blocking, always the case here) needs nothing. */
#define FIONREAD_ 0x4004667fUL
BM_SHIM(int, ioctlsocket, 3, (SOCK s, long cmd, unsigned long *arg)) {
    if ((unsigned long)cmd == FIONREAD_) {
        vsock_t *v = vget(s);
        int i, n = 0;
        if (!v || !arg) { werr = 10038; return -1; }
        lock();
        for (i = qhead; i != qtail; i = (i + 1) % NQ)
            if (queue[i].dsock == v->bound) { n = queue[i].len > 0 ? queue[i].len : 1; break; }
        unlock();
        *arg = (unsigned long)n;
        return 0;
    }
    return 0;
}
BM_SHIM(int, setsockopt, 5, (SOCK s, int lvl, int opt, const char *val, int len)) { (void)s; (void)lvl; (void)opt; (void)val; (void)len; return 0; }

BM_SHIM(int, sendto, 6, (SOCK s, const char *buf, int len, int flags, const ipxaddr_t *to, int tolen)) {
    vsock_t *v = vget(s);
    unsigned char body[MAXDG + sizeof(dgram_hdr_t)];
    dgram_hdr_t *h = (dgram_hdr_t *)body;
    (void)flags; (void)tolen;
    if (!v) { werr = 10038; return -1; }
    if (!running || len < 0 || len > MAXDG) { werr = 10050; return -1; }
    make_node(h->src, my_node);
    memcpy(h->dst, to->node, 6);
    h->ssock = v->bound; h->dsock = to->sock;
    { static int n; if (n++ < 100000) bm_log("net: send %d bytes to node %d: %x %x %x %x %x %x", len, node_no(to->node), W(buf,len,0), W(buf,len,4), W(buf,len,8), W(buf,len,12), W(buf,len,16), W(buf,len,20)); }
    memcpy(body + sizeof *h, buf, (unsigned)len);
    if (is_host) route(body, len + (int)sizeof *h, 0);
    else if (csock == (SOCK)-1 || send_frame(csock, FT_DATA, body, len + (int)sizeof *h)) { werr = 10054; return -1; }
    return len;
}

BM_SHIM(int, recvfrom, 6, (SOCK s, char *buf, int len, int flags, ipxaddr_t *from, int *fromlen)) {
    vsock_t *v = vget(s);
    int i, found = -1, n;
    (void)flags;
    if (!v) { werr = 10038; return -1; }
    lock();
    for (i = qhead; i != qtail; i = (i + 1) % NQ)
        if (queue[i].dsock == v->bound) { found = i; break; }
    if (found < 0) { unlock(); werr = 10035; return -1; }     /* WSAEWOULDBLOCK */
    n = queue[found].len < len ? queue[found].len : len;
    { static int m; if (m++ < 100000) bm_log("net: recv %d bytes from node %d: %x %x %x %x %x %x", queue[found].len, node_no(queue[found].src), W((char*)queue[found].data,queue[found].len,0), W((char*)queue[found].data,queue[found].len,4), W((char*)queue[found].data,queue[found].len,8), W((char*)queue[found].data,queue[found].len,12), W((char*)queue[found].data,queue[found].len,16), W((char*)queue[found].data,queue[found].len,20)); }
    memcpy(buf, queue[found].data, (unsigned)n);
    if (from) {
        memset(from, 0, sizeof *from);
        from->family = 6; from->net[3] = 1;
        memcpy(from->node, queue[found].src, 6);
        from->sock = queue[found].ssock;
        if (fromlen) *fromlen = sizeof *from;
    }
    if (found == qhead) qhead = (qhead + 1) % NQ;              /* remove from the ring */
    else { for (i = found; (i + 1) % NQ != qtail; i = (i + 1) % NQ) queue[i] = queue[(i + 1) % NQ]; qtail = (qtail + NQ - 1) % NQ; }
    unlock();
    return n;
}

/* ---- players of a network game on the controller setup screen (src/asm/hooks.s) ----
   The i-th player of the lobby (the host first, then the clients in node order) plays in slot i of the
   setup screen on every machine, so all machines agree without exchanging anything.  The host assigns
   the slots when the setup screen opens; the game keeps its own messages for everything that follows. */
int bm_slot_kind(int slot) __asm__("_bm_slot_kind");
void bm_row_cat(char *row, int slot, int type) __asm__("_bm_row_cat");

/* -1: not a network game, 0: nobody plays in this slot, 2: this computer's keyboard player, 4: a remote player */
int bm_slot_kind(int slot) {
    int n, me = -1, i;
    if (!running) return -1;
    lock();
    if (is_host) {
        n = 1;
        for (i = 2; i <= MAXCLIENT + 1; i++) if (clients[i] != (SOCK)-1) n++;
        me = 0;
    } else {
        n = lobby_n;
        for (i = 0; i < n; i++) if (lobby_node[i] == my_node) me = i;
    }
    unlock();
    if (me < 0 || n < 2) return -1;
    return slot >= n || slot < 0 ? 0 : slot == me ? 2 : 4;
}

/* has the player of this slot locked his position? (the host keeps the flags, the clients get them with the lobby list) */
static int slot_ready(int slot) {
    int node, n = 0, r = 0;
    lock();
    if (is_host) {
        for (node = 1; node <= MAXCLIENT + 1; node++) {
            if (node != 1 && clients[node] == (SOCK)-1) continue;
            if (n++ == slot) r = ready[node];
        }
    } else if (slot >= 0 && slot < lobby_n) r = lobby_ready[slot];
    unlock();
    return r;
}

/* setup screen: the player agrees with his position (Enter) */
void bm_setup_lock(void) __asm__("_bm_setup_lock");
void bm_setup_lock(void) {
    if (!running) return;
    if (is_host) { lock(); ready[1] = 1; unlock(); broadcast_lobby(); }
    else if (csock != (SOCK)-1) send_frame(csock, FT_READY, "", 0);
}

/* setup screen, host: every connected player has locked his position - the game starts; the locks are cleared
   (they are asked again if the game does not start, e.g. because two players share a controller) */
int bm_setup_all_locked(void) __asm__("_bm_setup_all_locked");
int bm_setup_all_locked(void) {
    int node, all = 1, n = 0;
    if (!running) return 0;
    if (!is_host) {                                           /* dedicated server, node 1: the lobby list carries the locks */
        static DWORD quiet;
        if (!dedicated_host()) return 0;
        planner_tick = tick();
        if (tick() - quiet < 1500) return 0;
        lock();
        n = lobby_n;
        for (node = 0; node < n; node++) if (!lobby_ready[node]) all = 0;
        unlock();
        if (!all || n < 2) return 0;
        quiet = tick();
        send_frame(csock, FT_UNREADY, "", 0);                 /* the locks are asked again if the game does not start */
        return 1;
    }
    planner_tick = tick();                                    /* the setup screen is open */
    lock();
    for (node = 1; node <= MAXCLIENT + 1; node++) {
        if (node != 1 && clients[node] == (SOCK)-1) continue;
        n++;
        if (!ready[node]) all = 0;
    }
    if (all && n >= 2) for (node = 0; node < MAXCLIENT + 2; node++) ready[node] = 0;
    else all = 0;
    unlock();
    if (all) broadcast_lobby();
    return all;
}

/* the setup screen opens: nobody has locked a position yet */
void bm_setup_unlock_all(void) __asm__("_bm_setup_unlock_all");
void bm_setup_unlock_all(void) {
    int node;
    if (!running) return;
    if (!is_host) {                                           /* dedicated server, node 1 */
        int i;
        if (!dedicated_host()) return;
        lock();
        for (node = 0; node < MAXCLIENT + 2; node++) slot_of_node[node] = -1;
        for (i = 0; i < lobby_n && i < MAXCLIENT + 2; i++) slot_of_node[lobby_node[i]] = i;
        unlock();
        planner_tick = tick();
        send_frame(csock, FT_UNREADY, "", 0);
        return;
    }
    lock();
    {   int slot = 0;                                         /* slot i for the i-th player, as everywhere */
        for (node = 0; node < MAXCLIENT + 2; node++) { ready[node] = 0; slot_of_node[node] = -1; }
        for (node = 1; node <= MAXCLIENT + 1; node++) if (node == 1 || clients[node] != (SOCK)-1) slot_of_node[node] = slot++;
    }
    unlock();
    planner_tick = tick();
    broadcast_lobby();
}

extern void bm_g_text(const char *t, int x, int y) __asm__("_bm_g_text");

/* draws the player's name to the right of the row of the setup screen, in the free area where the list of joysticks
   used to be (the row itself has no room for it: the controller text is followed by the TEAM column) */
void bm_row_cat(char *row, int slot, int type) {
    char line[NAMELEN + 24];
    char list[MAXCLIENT + 2][NAMELEN];
    int kind = bm_slot_kind(slot), n;
    if (kind < 0 || type != kind) return;                     /* the host changed this slot by hand: no name to show */
    n = bm_net_peers(list, MAXCLIENT + 2);
    if (slot >= n) return;
    (void)row;
    list[slot][20] = 0;       /* a glyph is about 9 pixels: 20 + the 9 of "  [Enter]" = 261 pixels, from x=320 to 581 of 640 */
    bm_strcpy(line, list[slot]);
    if (slot_ready(slot)) bm_strcat(line, "  LOCKED");
    else if (kind == 2) bm_strcat(line, "  [Enter]");           /* what this player has to do */
    if (slot == 0) bm_g_text("Network players:", 300, 138);    /* where the list of joysticks used to be */
    bm_g_text(line, 320, 168 + slot * 241 / 10);
}

/* ---- the fuse, polled by the game's network pump (src/asm/hooks.s bm_pump) ----
   returns 0: nothing;  1: a client was lost during the match (out[0] = its slot, out[1] = its game id);
   3: a client was lost at the setup screen (same out);  2: the session is over - the client lost its server, or the
   host lost its last client - and the game has to leave it */
int bm_fuse(int *out) __asm__("_bm_fuse");
int bm_fuse(int *out) {
    int node, n = 0, ded = dedicated_host();
    if (is_host || ded) {
        if (!running || !session_active) return 0;
        if (ded) n = lobby_n - 1;
        else for (node = 2; node <= MAXCLIENT + 1; node++) if (clients[node] != (SOCK)-1) n++;
        if (n == 0) { session_active = 0; exit_req = 1; bm_log("net: the last client is gone - leaving the session"); return 2; }
        for (node = 2; node <= MAXCLIENT + 1; node++)
            if (dropq[node]) {
                dropq[node] = 0;
                out[0] = slot_of_node[node]; out[1] = node_gid[node];
                bm_log("net: client node %d (slot %d) is dropped from the game", node, out[0]);
                if (out[0] < 0) continue;
                return tick() - planner_tick < 800 ? 3 : 1;
            }
        return 0;
    }
    if (server_lost) { exit_req = 1; return 2; }
    return 0;
}

/* after a session: did the fuse end it?  (then the game goes back to the lobby / the join screen) */
int bm_fuse_tripped(void) __asm__("_bm_fuse_tripped");
int bm_fuse_tripped(void) {
    int r = exit_req;
    exit_req = 0; session_active = 0; server_lost = 0;
    return r;
}
int bm_net_server_lost_state(void) { return conn_state == 3; }

/* diagnostics: when does the game ask to leave the setup screen, and with which key */
void bm_dbg_flag(int v) __asm__("_bm_dbg_flag");
void bm_dbg_flag(int v) { static int last; if (v != last) { bm_log("dbg: exit flag %d -> %d", last, v); last = v; } }
void bm_dbg_key(int k) __asm__("_bm_dbg_key");
void bm_dbg_key(int k) { bm_log("dbg: setup key %x", k); }
void bm_dbg_ret(int flag, int joined, int hostdone) __asm__("_bm_dbg_ret");
void bm_dbg_ret(int flag, int joined, int hostdone) { bm_log("dbg: the game returned: exit flag %d, joined %d, host done %d", flag, joined, hostdone); }

/* ---- dedicated server: which role does the game play on this computer? ----
   Called after the lobby, before the game starts to connect (src/asm/hooks.s bm_net_session): the player that got
   node 1 of the dedicated server runs the game's server logic (role 2), all the others are clients (role 1). */
int bm_game_role(int role) __asm__("_bm_game_role");
int bm_game_role(int role) {
    if (role == 1 && dedicated_host()) {
        bm_cfg.role = ROLE_SERVER;
        dedicated_session = 1;
        bm_log("net: node 1 of a dedicated server: this computer runs the game server logic");
        return 2;
    }
    if (role == 1 && !is_host && running) dedicated_session = (conn_state == 2);
    return role;
}
int bm_is_game_server(void) __asm__("_bm_is_game_server");
int bm_is_game_server(void) { return bm_cfg.role == ROLE_SERVER; }
int bm_is_dedicated_session(void) __asm__("_bm_is_dedicated_session");
int bm_is_dedicated_session(void) { return dedicated_session; }

/* a short sleep for the game's waiting loops (src/asm/hooks.s bm_nap) */
void bm_sleep_ms(int ms) __asm__("_bm_sleep_ms");
void bm_sleep_ms(int ms) { apis(); pSleep((DWORD)ms); }
