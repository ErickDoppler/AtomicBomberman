/* Host (operating system) functions of the translated game: what the original called through its import table.
 * Stage 1 implements what the C runtime start-up needs and reports the first import it does not know. */
#include "x2c_host.h"
#include <time.h>
#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

extern const x2c_import_t x2c_imports[];
extern const unsigned x2c_nimports;

uint32_t x2c_alloc(uint32_t size) {
    uint32_t p = (x2c_heap_next + 15u) & ~15u;
    if ((uint64_t)p + size >= 0x0f000000u) { fprintf(stderr, "x2c: out of program memory\n"); exit(1); }
    x2c_heap_next = p + size;
    return p;
}
static uint32_t guest_string(const char *s) { uint32_t p = x2c_alloc((uint32_t)strlen(s) + 1); memcpy(x2c_mem + p, s, strlen(s) + 1); return p; }

static uint32_t tls[64]; static unsigned ntls;
static uint32_t t_cmdline, t_env;
static int g_argc; static char **g_argv;

void x2c_host_init(int argc, char **argv) {
    g_argc = argc; g_argv = argv;
    t_cmdline = guest_string("AtomicBomberman.exe");
    t_env = x2c_alloc(8); memset(x2c_mem + t_env, 0, 8);
}

typedef uint32_t (*host_fn)(void);
typedef struct { const char *name; int argc; host_fn fn; } host_t;

static uint32_t h_GetVersion(void) { return 0x0000000a; }
static uint32_t h_GetVersionExA(void) {
    uint32_t p = ARG(0);
    wr32(p + 4, 10); wr32(p + 8, 0); wr32(p + 12, 19043); wr32(p + 16, 2); x2c_mem[p + 20] = 0;
    return 1;
}
static uint32_t h_GetCommandLineA(void) { return t_cmdline; }
static uint32_t h_GetModuleHandleA(void) { return 0x400000; }
static uint32_t h_GetModuleFileNameA(void) {
    const char *n = "C:\\AtomicBomberman\\AtomicBomberman.exe"; uint32_t buf = ARG(1), max = ARG(2), len = (uint32_t)strlen(n);
    if (len + 1 > max) len = max ? max - 1 : 0;
    memcpy(x2c_mem + buf, n, len); x2c_mem[buf + len] = 0;
    return len;
}
static uint32_t h_GetStdHandle(void) { return ARG(0); }
static uint32_t h_GetFileType(void) { return 2; }
static uint32_t h_GetEnvironmentStrings(void) { return t_env; }
static uint32_t h_GetCPInfo(void) { uint32_t p = ARG(1); wr32(p, 1); memset(x2c_mem + p + 4, 0, 16); return 1; }
static uint32_t h_TlsAlloc(void) { return ntls < 64 ? ntls++ : 0xffffffffu; }
static uint32_t h_TlsGetValue(void) { return ARG(0) < 64 ? tls[ARG(0)] : 0; }
static uint32_t h_TlsSetValue(void) { if (ARG(0) < 64) tls[ARG(0)] = ARG(1); return 1; }
static uint32_t h_TlsFree(void) { return 1; }
static uint32_t h_One(void) { return 1; }
static uint32_t h_Zero(void) { return 0; }
static uint32_t h_GetCurrentThreadId(void) { return 1; }
static uint32_t h_VirtualAlloc(void) { uint32_t p = x2c_alloc(ARG(1) + 4096); return (p + 4095u) & ~4095u; }
static uint32_t h_GlobalAlloc(void) { return x2c_alloc(ARG(1)); }
static uint32_t h_GetTickCount(void) { return (uint32_t)((uint64_t)clock() * 1000 / CLOCKS_PER_SEC); }
static uint32_t h_Sleep(void) {
#ifdef _WIN32
    Sleep(ARG(0));
#else
    usleep(ARG(0) * 1000);
#endif
    return 0;
}
static uint32_t h_ExitProcess(void) { fprintf(stderr, "x2c: ExitProcess(%u)\n", ARG(0)); exit((int)ARG(0)); return 0; }

static const host_t table[] = {
    { "GetVersion", 0, h_GetVersion }, { "GetVersionExA", 1, h_GetVersionExA }, { "GetCommandLineA", 0, h_GetCommandLineA },
    { "GetModuleHandleA", 1, h_GetModuleHandleA }, { "GetModuleFileNameA", 3, h_GetModuleFileNameA },
    { "GetStdHandle", 1, h_GetStdHandle }, { "GetFileType", 1, h_GetFileType }, { "GetEnvironmentStrings", 0, h_GetEnvironmentStrings },
    { "GetCPInfo", 2, h_GetCPInfo }, { "TlsAlloc", 0, h_TlsAlloc }, { "TlsGetValue", 1, h_TlsGetValue }, { "TlsSetValue", 2, h_TlsSetValue },
    { "TlsFree", 1, h_TlsFree }, { "SetConsoleCtrlHandler", 2, h_One }, { "GetConsoleMode", 2, h_Zero }, { "SetConsoleMode", 2, h_One },
    { "GetCurrentThreadId", 0, h_GetCurrentThreadId }, { "GetCurrentProcessId", 0, h_GetCurrentThreadId }, { "GetCurrentThread", 0, h_GetCurrentThreadId },
    { "GetLastError", 0, h_Zero }, { "VirtualAlloc", 4, h_VirtualAlloc }, { "VirtualFree", 3, h_One }, { "GlobalAlloc", 2, h_GlobalAlloc },
    { "GlobalFree", 1, h_Zero }, { "GetTickCount", 0, h_GetTickCount }, { "Sleep", 1, h_Sleep }, { "ExitProcess", 1, h_ExitProcess },
    { "SetStdHandle", 2, h_One }, { "SetCurrentDirectoryA", 1, h_One }, { "timeBeginPeriod", 1, h_Zero }, { "timeEndPeriod", 1, h_Zero },
};

void x2c_host(unsigned id) {
    unsigned i;
    const x2c_import_t *imp;
    if (id >= x2c_nimports) x2c_unimpl(0xF0000000u + id, "bad import id");
    imp = &x2c_imports[id];
    for (i = 0; i < sizeof table / sizeof table[0]; i++)
        if (!strcmp(table[i].name, imp->name)) {
            uint32_t r = table[i].fn();
            eax = r;
            esp += 4 + 4 * (uint32_t)table[i].argc;                 /* the return address and the arguments (stdcall) */
            return;
        }
    fprintf(stderr, "x2c: host function not implemented: %s!%s\n", imp->dll, imp->name);
    exit(3);
}
