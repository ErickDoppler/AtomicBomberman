/* Atomic Bomberman - modern platform layer.
 *
 * The restored game code (src/asm) is an i386 program that is unmodified except for a handful of
 * hooks (src/asm/hooks.s); everything that talks to the operating system or to old hardware goes
 * through the functions declared here.  No C runtime is used: the layer is freestanding and links
 * straight into the PE image.
 */
#ifndef BM_H
#define BM_H

#define WIN32_LEAN_AND_MEAN
#include <windows.h>

#define NAMELEN 32            /* player names on the wire / in the lobby (the game keeps up to 39) */

/* Symbol exported to the restored assembly: shim for import "name" (stdcall). */
#define BM_SHIM(ret, name, args) \
    ret __stdcall bm_##name args __asm__("_bm_" #name); \
    ret __stdcall bm_##name args

/* ---- tiny runtime (rt.c) ---- */
int   bm_strlen(const char *s);
int   bm_stricmp(const char *a, const char *b);
int   bm_strnicmp(const char *a, const char *b, int n);
char *bm_strcpy(char *d, const char *s);
char *bm_strcat(char *d, const char *s);
int   bm_atoi(const char *s);
int   bm_utoa(char *d, unsigned v);          /* returns length, NUL terminated */
void  bm_log(const char *fmt, ...);          /* only active with BM_LOG=<file> in the environment */

/* ---- dynamic API access ---- */
void *bm_api(const char *dll, const char *name);

/* ---- startup / configuration (startup.c) ---- */
enum { BM_NET_OFF = 0, BM_NET_HOST = 1, BM_NET_JOIN = 2, BM_NET_ASK = 3 };
typedef struct {
    int  mode;                 /* BM_NET_OFF (-local) or BM_NET_ASK */
    int  preset;               /* what the command line asked for (BM_NET_ASK when nothing) */
    int  role;                 /* 2 = Start Network Game (server), 1 = Join Network Game (see hooks.s) */
    int  port;                 /* TCP port the server listens on (remembered when it worked) */
    int  jport;                /* TCP port of the server to join (remembered when it worked) */
    char address[128];         /* server to join (remembered when it worked) */
    char exedir[MAX_PATH];     /* directory holding the game */
} bm_config_t;
extern bm_config_t bm_cfg;
void bm_save_ini(void);

/* ---- TCP transport that emulates the IPX socket API the game was written for (net.c) ---- */
int  bm_net_host_listen(int port);               /* (re)start the server; 0 ok, -5 port busy.  Old server stays when busy */
int  bm_net_connect(const char *addr, int port); /* start connecting in the background */
void bm_net_disconnect(void);
int  bm_net_conn_state(void);                    /* 0 idle, 1 connecting, 2 connected, 3 failed */
int  bm_net_start(int host);                     /* command line path, no lobby: 0 on success */
void bm_net_stop(void);
void bm_net_set_name(const char *name);
int  bm_net_peers(char names[][NAMELEN], int max);   /* everybody in the lobby, host first */
int  bm_net_lobby_version(void);                 /* changes whenever the list changes */
int  bm_net_node(void);
int  bm_net_is_host(void);
int  bm_net_started(void);                       /* client: the host started the game */
int  bm_net_start_requested(void);               /* host: a client pressed Start */
void bm_net_send_start(void);                    /* Start pressed: host tells all, client asks the host */
int  bm_net_running(void);
void bm_local_addresses(char *out, int n);

/* ---- the TCP lobby screens, drawn with the game's own interface (ui.c) ---- */
int  bm_lobby_server(void);      /* "Start Network Game": TCP port + waiting-for-clients lobby; 1 = start the game, 0 = back */
int  bm_lobby_client(void);      /* "Join Network Game": server address + port, status, Join; 1 = start, 0 = back */

#endif
