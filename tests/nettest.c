/* Loopback test of the IPX-over-TCP layer, built freestanding like the game itself.
 *   nettest.exe host <port>            waits for one client datagram, answers it, exits 0
 *   nettest.exe join <addr> <port>     broadcasts a datagram, expects a unicast answer
 * Results go to the file named by %BM_LOG%.
 */
#include "bm.h"

#pragma pack(push, 1)
typedef struct { short family; unsigned char net[4]; unsigned char node[6]; unsigned short sock; } ipxaddr_t;
#pragma pack(pop)

extern int __stdcall bm_WSAStartup(WORD, void *) __asm__("_bm_WSAStartup");
extern UINT_PTR __stdcall bm_socket(int, int, int) __asm__("_bm_socket");
extern int __stdcall bm_bind(UINT_PTR, const ipxaddr_t *, int) __asm__("_bm_bind");
extern int __stdcall bm_getsockname(UINT_PTR, ipxaddr_t *, int *) __asm__("_bm_getsockname");
extern int __stdcall bm_sendto(UINT_PTR, const char *, int, int, const ipxaddr_t *, int) __asm__("_bm_sendto");
extern int __stdcall bm_recvfrom(UINT_PTR, char *, int, int, ipxaddr_t *, int *) __asm__("_bm_recvfrom");
extern void (__stdcall *imp_ExitProcess)(UINT) __asm__("__imp__ExitProcess");
extern LPSTR (__stdcall *imp_GetCommandLineA)(void) __asm__("__imp__GetCommandLineA");
extern void (__stdcall *imp_Sleep)(DWORD) __asm__("__imp__Sleep");
extern DWORD (__stdcall *imp_GetTickCount)(void) __asm__("__imp__GetTickCount");

bm_config_t bm_cfg;
int bm_lobby_server(void) { return 0; }      /* the lobby windows are not part of this test: the command line path is used */
int bm_lobby_client(void) { return 0; }
void bm_save_ini(void) {}
void nt_main(void) __asm__("_nt_main");

static char *word(char *p, char *out) {
    while (*p == ' ') p++;
    while (*p && *p != ' ') *out++ = *p++;
    *out = 0;
    return p;
}

void nt_main(void) {
    char w[64], *c = imp_GetCommandLineA();
    ipxaddr_t me, to, from;
    char buf[64], wsd[400];
    int len = sizeof me, got, i;
    UINT_PTR s;
    DWORD t0;
    c = word(c, w);                         /* program */
    c = word(c, w);                         /* mode */
    if (!bm_stricmp(w, "host")) { bm_cfg.mode = bm_cfg.preset = BM_NET_HOST; bm_cfg.role = 2; c = word(c, w); bm_cfg.port = bm_atoi(w); }
    else { bm_cfg.mode = bm_cfg.preset = BM_NET_JOIN; bm_cfg.role = 1; c = word(c, w); bm_strcpy(bm_cfg.address, w); c = word(c, w); bm_cfg.jport = bm_atoi(w); }
    if (bm_WSAStartup(0x101, wsd)) { bm_log("FAIL WSAStartup"); imp_ExitProcess(2); }
    s = bm_socket(6, 2, 1000);
    memset(&me, 0, sizeof me); me.family = 6; me.sock = 0x4564;
    bm_bind(s, &me, sizeof me);
    bm_getsockname(s, &me, &len);
    bm_log("my node %d", me.node[5]);
    t0 = imp_GetTickCount();
    if (bm_cfg.mode == BM_NET_HOST) {
        for (;;) {
            got = bm_recvfrom(s, buf, sizeof buf, 0, &from, &len);
            if (got > 0) {
                bm_log("host got %d bytes '%s' from node %d", got, buf, from.node[5]);
                memset(&to, 0, sizeof to); to.family = 6; memcpy(to.node, from.node, 6); to.sock = from.sock;
                bm_strcpy(buf, "pong"); bm_sendto(s, buf, 5, 0, &to, sizeof to);
                imp_Sleep(300);
                imp_ExitProcess(0);
            }
            if (imp_GetTickCount() - t0 > 15000) { bm_log("FAIL host timeout"); imp_ExitProcess(3); }
            imp_Sleep(5);
        }
    } else {
        memset(&to, 0, sizeof to); to.family = 6; to.sock = 0x4564;
        for (i = 0; i < 6; i++) to.node[i] = 0xff;                      /* broadcast */
        bm_strcpy(buf, "ping");
        bm_sendto(s, buf, 5, 0, &to, sizeof to);
        for (;;) {
            got = bm_recvfrom(s, buf, sizeof buf, 0, &from, &len);
            if (got > 0) { bm_log("client got %d bytes '%s' from node %d -> %s", got, buf, from.node[5], bm_stricmp(buf, "pong") ? "FAIL" : "PASS"); imp_ExitProcess(bm_stricmp(buf, "pong") ? 4 : 0); }
            if (imp_GetTickCount() - t0 > 10000) { bm_log("FAIL client timeout"); imp_ExitProcess(5); }
            imp_Sleep(5);
        }
    }
}
