/* The Win32 API as the game and the platform layer use it, implemented on the C library / POSIX (portable build).
 * Everything is registered by name: w32_reg(); the platform layer reaches it through bm_api(), the translated game through
 * its import table (host.c).  Functions take native arguments; pointers received from the game are host pointers. */
#include "w32.h"
#include "host.h"
#include "sys.h"
#include "back.h"
#include <stdarg.h>
#include <ctype.h>
#include <time.h>
#include <errno.h>
#include <dirent.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

w32_api_t w32_apis[640];
unsigned w32_napis;
void w32_reg(const char *name, int argc, void *fn) {
    if (w32_napis < 640) { w32_apis[w32_napis].name = name; w32_apis[w32_napis].argc = argc; w32_apis[w32_napis].fn = fn; w32_napis++; }
}
void *bm_api(const char *dll, const char *name) {
    unsigned i;
    (void)dll;
    for (i = 0; i < w32_napis; i++) if (!strcmp(w32_apis[i].name, name)) return w32_apis[i].fn;
    fprintf(stderr, "w32: %s is not provided\n", name);
    return 0;
}

static DWORD last_error;
static void set_err(DWORD e) { last_error = e; }
static DWORD w_GetLastError(void) { return last_error; }
static void w_SetLastError(DWORD e) { last_error = e; }

/* ---------------------------------------------------------------- memory */
static void *w_GlobalAlloc(UINT flags, SIZE_T n) { (void)flags; return (void *)(uintptr_t)gmalloc((uint32_t)n); }
static void *w_GlobalFree(void *p) { gfree((uint32_t)(uintptr_t)p); return 0; }
/* VirtualAlloc: page-aligned blocks (the C runtime's heap relies on it) carved out of the same guest heap */
static struct { uint32_t aligned, raw; } vblocks[256];
static void *w_VirtualAlloc(void *addr, SIZE_T n, DWORD type, DWORD prot) {
    uint32_t raw, al; int i;
    (void)addr; (void)type; (void)prot;
    raw = gmalloc((uint32_t)n + 4096);
    if (!raw) return 0;
    al = (raw + 4095u) & ~4095u;
    for (i = 0; i < 256; i++) if (!vblocks[i].aligned) { vblocks[i].aligned = al; vblocks[i].raw = raw; break; }
    return (void *)(uintptr_t)al;
}
static BOOL w_VirtualFree(void *p, SIZE_T n, DWORD type) {
    int i; (void)n; (void)type;
    for (i = 0; i < 256; i++) if (vblocks[i].aligned == (uint32_t)(uintptr_t)p) { gfree(vblocks[i].raw); vblocks[i].aligned = 0; return 1; }
    return 1;
}

/* ---------------------------------------------------------------- paths
 * The game thinks in Windows paths ("C:\GAMES\BM\DATA\x.png").  They are mapped to the host: a drive letter is dropped
 * (Linux), backslashes become slashes, and on a case-sensitive file system every name is matched without regard to case. */
static int g_have_root;
static void to_host_path(const char *in, char *out, size_t cap) {
    size_t n = 0;
#ifndef _WIN32
    if (in[0] && in[1] == ':') in += 2;
#endif
    for (; *in && n + 1 < cap; in++) out[n++] = *in == '\\' ? '/' : *in;
    out[n] = 0;
    (void)g_have_root;
}
#ifdef _WIN32
static void resolve(const char *in, char *out, size_t cap) { to_host_path(in, out, cap); }
#else
static int exists(const char *p) { struct stat st; return stat(p, &st) == 0; }
static void resolve(const char *in, char *out, size_t cap) {
    char tmp[1024], *p, *seg; size_t n;
    to_host_path(in, tmp, sizeof tmp);
    if (exists(tmp)) { snprintf(out, cap, "%s", tmp); return; }
    n = 0; out[0] = 0;
    p = tmp;
    if (*p == '/') { out[n++] = '/'; out[n] = 0; while (*p == '/') p++; }
    while (*p) {
        DIR *d; struct dirent *e; char name[256]; size_t l = 0; int found = 0;
        seg = p;
        while (*p && *p != '/') p++;
        l = (size_t)(p - seg); if (l > 255) l = 255;
        memcpy(name, seg, l); name[l] = 0;
        while (*p == '/') p++;
        if (!strcmp(name, ".") || !strcmp(name, "..") || !name[0]) { if (n + l + 2 < cap) { memcpy(out + n, name, l); n += l; if (*p) out[n++] = '/'; out[n] = 0; } continue; }
        d = opendir(n ? out : ".");
        if (d) {
            while ((e = readdir(d)) != 0) if (!strcasecmp(e->d_name, name)) { snprintf(name, sizeof name, "%s", e->d_name); found = 1; break; }
            closedir(d);
        }
        (void)found;
        if (n + strlen(name) + 2 >= cap) break;
        memcpy(out + n, name, strlen(name)); n += strlen(name);
        if (*p) out[n++] = '/';
        out[n] = 0;
    }
}
#endif

/* ---------------------------------------------------------------- files */
#define NFH 256
#define FH_BASE 0x100
typedef struct { FILE *f; int used; } fh_t;
static fh_t fhs[NFH];
static FILE *fh_get(HANDLE h) { unsigned i = ((unsigned)(uintptr_t)h - FH_BASE) / 4; return ((unsigned)(uintptr_t)h >= FH_BASE && i < NFH && fhs[i].used) ? fhs[i].f : 0; }
static HANDLE fh_new(FILE *f) {
    int i;
    for (i = 0; i < NFH; i++) if (!fhs[i].used) { fhs[i].used = 1; fhs[i].f = f; return (HANDLE)(uintptr_t)(FH_BASE + i * 4); }
    fclose(f); set_err(4); return INVALID_HANDLE_VALUE;
}
static HANDLE w_CreateFileA(LPCSTR name, DWORD acc, DWORD share, void *sa, DWORD disp, DWORD flags, HANDLE tmpl) {
    char path[1024]; FILE *f = 0; const char *mode; struct stat st; int ex;
    (void)share; (void)sa; (void)flags; (void)tmpl;
    resolve(name, path, sizeof path);
    ex = stat(path, &st) == 0;
    if (ex && S_ISDIR(st.st_mode)) { set_err(5); return INVALID_HANDLE_VALUE; }
    if (!(acc & GENERIC_WRITE)) {
        if (!ex) { set_err(ERROR_FILE_NOT_FOUND); return INVALID_HANDLE_VALUE; }
        mode = "rb";
    } else switch (disp) {
        case CREATE_NEW: if (ex) { set_err(80); return INVALID_HANDLE_VALUE; } mode = "wb"; break;
        case CREATE_ALWAYS: mode = "wb"; break;
        case OPEN_ALWAYS: mode = ex ? "r+b" : "w+b"; break;
        default: if (!ex) { set_err(ERROR_FILE_NOT_FOUND); return INVALID_HANDLE_VALUE; } mode = "r+b"; break;
    }
    f = fopen(path, mode);
    if (!f) { set_err(errno == ENOENT ? ERROR_PATH_NOT_FOUND : 5); return INVALID_HANDLE_VALUE; }
    set_err(0);
    return fh_new(f);
}
static BOOL w_ReadFile(HANDLE h, void *buf, DWORD n, DWORD *got, void *ov) {
    FILE *f = fh_get(h); size_t r;
    (void)ov;
    if (!f) { if (got) *got = 0; set_err(6); return 0; }
    r = fread(buf, 1, n, f);
    if (got) *got = (DWORD)r;
    return 1;
}
static BOOL w_WriteFile(HANDLE h, const void *buf, DWORD n, DWORD *put, void *ov) {
    FILE *f = fh_get(h); size_t r;
    (void)ov;
    if (!f) {                                              /* the console handles: standard output / error */
        if ((uintptr_t)h == (uintptr_t)-11 || (uintptr_t)h == (uintptr_t)-12) { fwrite(buf, 1, n, (uintptr_t)h == (uintptr_t)-11 ? stdout : stderr); if (put) *put = n; return 1; }
        if (put) *put = 0; set_err(6); return 0;
    }
    r = fwrite(buf, 1, n, f);
    if (put) *put = (DWORD)r;
    return r == n;
}
static DWORD w_SetFilePointer(HANDLE h, LONG lo, LONG *hi, DWORD method) {
    FILE *f = fh_get(h);
    (void)hi;
    if (!f) { set_err(6); return 0xFFFFFFFFu; }
    if (fseek(f, lo, method == FILE_BEGIN ? SEEK_SET : method == FILE_CURRENT ? SEEK_CUR : SEEK_END)) return 0xFFFFFFFFu;
    return (DWORD)ftell(f);
}
static BOOL w_CloseHandle(HANDLE h) {
    unsigned i = ((unsigned)(uintptr_t)h - FH_BASE) / 4;
    if ((unsigned)(uintptr_t)h >= FH_BASE && i < NFH && fhs[i].used) { fclose(fhs[i].f); fhs[i].used = 0; return 1; }
    return 1;                                                /* events, mutexes, threads: nothing to release */
}
static DWORD w_GetFileSize(HANDLE h, DWORD *hi) {
    FILE *f = fh_get(h); long cur, end;
    if (hi) *hi = 0;
    if (!f) return 0xFFFFFFFFu;
    cur = ftell(f); fseek(f, 0, SEEK_END); end = ftell(f); fseek(f, cur, SEEK_SET);
    return (DWORD)end;
}
static DWORD w_GetFileType(HANDLE h) { return fh_get(h) ? FILE_TYPE_DISK : 2; }
static DWORD w_GetFileAttributesA(LPCSTR name) {
    char path[1024]; struct stat st;
    resolve(name, path, sizeof path);
    if (stat(path, &st)) { set_err(ERROR_FILE_NOT_FOUND); return 0xFFFFFFFFu; }
    return S_ISDIR(st.st_mode) ? FILE_ATTRIBUTE_DIRECTORY : FILE_ATTRIBUTE_NORMAL;
}
static BOOL w_DeleteFileA(LPCSTR name) { char path[1024]; resolve(name, path, sizeof path); return remove(path) == 0; }
static BOOL w_CreateDirectoryA(LPCSTR name, void *sa) {
    char path[1024]; (void)sa;
    resolve(name, path, sizeof path);
#ifdef _WIN32
    return mkdir(path) == 0;
#else
    return mkdir(path, 0755) == 0;
#endif
}
static BOOL w_SetCurrentDirectoryA(LPCSTR name) { char path[1024]; resolve(name, path, sizeof path); return chdir(path) == 0; }

/* ---- directory enumeration (FindFirstFile and friends) with the Windows wildcard syntax of the game's patterns ---- */
#define NFIND 16
#define FIND_BASE 0x700
typedef struct { DIR *d; char pat[260]; char dir[1024]; int used; } find_t;
static find_t finds[NFIND];
static int wild(const char *p, const char *s) {
    for (; *p; p++) {
        if (*p == '*') { for (;;) { if (wild(p + 1, s)) return 1; if (!*s) return 0; s++; } }
        if (!*s) return 0;
        if (*p != '?' && tolower((unsigned char)*p) != tolower((unsigned char)*s)) return 0;
        s++;
    }
    return !*s;
}
static int find_next_in(find_t *f, WIN32_FIND_DATAA *fd) {
    struct dirent *e;
    while ((e = readdir(f->d)) != 0) {
        char full[1400]; struct stat st;
        if (!wild(f->pat, e->d_name)) continue;
        snprintf(full, sizeof full, "%s/%s", f->dir, e->d_name);
        memset(fd, 0, sizeof *fd);
        if (stat(full, &st)) continue;
        fd->dwFileAttributes = S_ISDIR(st.st_mode) ? FILE_ATTRIBUTE_DIRECTORY : FILE_ATTRIBUTE_NORMAL;
        fd->nFileSizeLow = (DWORD)st.st_size;
        snprintf(fd->cFileName, MAX_PATH, "%s", e->d_name);
        return 1;
    }
    return 0;
}
static HANDLE w_FindFirstFileA(LPCSTR pattern, WIN32_FIND_DATAA *fd) {
    char path[1024], *slash; int i;
    resolve(pattern, path, sizeof path);
    slash = strrchr(path, '/');
    for (i = 0; i < NFIND && finds[i].used; i++) {}
    if (i == NFIND) { set_err(8); return INVALID_HANDLE_VALUE; }
    if (slash) { *slash = 0; snprintf(finds[i].dir, sizeof finds[i].dir, "%s", slash == path ? "/" : path); snprintf(finds[i].pat, sizeof finds[i].pat, "%s", slash + 1); }
    else { snprintf(finds[i].dir, sizeof finds[i].dir, "."); snprintf(finds[i].pat, sizeof finds[i].pat, "%s", path); }
    finds[i].d = opendir(finds[i].dir);
    if (!finds[i].d) { set_err(ERROR_PATH_NOT_FOUND); return INVALID_HANDLE_VALUE; }
    if (!find_next_in(&finds[i], fd)) { closedir(finds[i].d); set_err(ERROR_FILE_NOT_FOUND); return INVALID_HANDLE_VALUE; }
    finds[i].used = 1;
    return (HANDLE)(uintptr_t)(FIND_BASE + i * 4);
}
static BOOL w_FindNextFileA(HANDLE h, WIN32_FIND_DATAA *fd) {
    unsigned i = ((unsigned)(uintptr_t)h - FIND_BASE) / 4;
    if ((unsigned)(uintptr_t)h < FIND_BASE || i >= NFIND || !finds[i].used) return 0;
    if (!find_next_in(&finds[i], fd)) { set_err(ERROR_NO_MORE_FILES); return 0; }
    return 1;
}
static BOOL w_FindClose(HANDLE h) {
    unsigned i = ((unsigned)(uintptr_t)h - FIND_BASE) / 4;
    if ((unsigned)(uintptr_t)h < FIND_BASE || i >= NFIND || !finds[i].used) return 0;
    closedir(finds[i].d); finds[i].used = 0;
    return 1;
}

/* ---------------------------------------------------------------- .ini files */
static char *slurp_text(const char *file, size_t *n) {
    char path[1024]; FILE *f; char *b; long sz;
    resolve(file, path, sizeof path);
    f = fopen(path, "rb");
    if (!f) { *n = 0; return 0; }
    fseek(f, 0, SEEK_END); sz = ftell(f); fseek(f, 0, SEEK_SET);
    b = malloc((size_t)sz + 1);
    *n = fread(b, 1, (size_t)sz, f); b[*n] = 0; fclose(f);
    return b;
}
/* finds "key" in "[section]"; returns a pointer to the value start and its length, or 0 */
static const char *ini_find(const char *txt, const char *section, const char *key, size_t *vlen) {
    const char *p = txt; int in = 0; size_t kl = strlen(key), sl = strlen(section);
    while (*p) {
        const char *eol = p; while (*eol && *eol != '\n') eol++;
        if (*p == '[') { const char *e = memchr(p, ']', (size_t)(eol - p)); in = e && (size_t)(e - p - 1) == sl && !strncasecmp(p + 1, section, sl); }
        else if (in && !strncasecmp(p, key, kl) && p[kl] == '=') {
            const char *v = p + kl + 1; const char *e = eol; while (e > v && (e[-1] == '\r' || e[-1] == ' ')) e--;
            *vlen = (size_t)(e - v); return v;
        }
        p = *eol ? eol + 1 : eol;
    }
    return 0;
}
static DWORD w_GetPrivateProfileStringA(LPCSTR sec, LPCSTR key, LPCSTR def, char *out, DWORD size, LPCSTR file) {
    size_t n, vl = 0; char *t = slurp_text(file, &n); const char *v = t ? ini_find(t, sec, key, &vl) : 0;
    if (!v) { v = def ? def : ""; vl = strlen(v); }
    if (vl >= size) vl = size ? size - 1 : 0;
    memcpy(out, v, vl); if (size) out[vl] = 0;
    free(t);
    return (DWORD)vl;
}
static UINT w_GetPrivateProfileIntA(LPCSTR sec, LPCSTR key, int def, LPCSTR file) {
    size_t n, vl = 0; char *t = slurp_text(file, &n); const char *v = t ? ini_find(t, sec, key, &vl) : 0; UINT r = (UINT)def;
    if (v && vl) r = (UINT)atoi(v);
    free(t);
    return r;
}
static BOOL w_WritePrivateProfileStringA(LPCSTR sec, LPCSTR key, LPCSTR val, LPCSTR file) {
    size_t n, vl = 0; char *t = slurp_text(file, &n), path[1024]; FILE *f; const char *v; size_t off;
    if (!t) { t = strdup(""); n = 0; }
    resolve(file, path, sizeof path);
    f = fopen(path, "wb");
    if (!f) { free(t); return 0; }
    v = ini_find(t, sec, key, &vl);
    if (v) { off = (size_t)(v - t); fwrite(t, 1, off, f); fputs(val, f); fwrite(v + vl, 1, n - off - vl, f); }
    else {
        const char *p = t; int has = 0; size_t sl = strlen(sec);
        while (*p) { if (*p == '[' && !strncasecmp(p + 1, sec, sl) && p[1 + sl] == ']') { has = 1; break; } while (*p && *p != '\n') p++; if (*p) p++; }
        if (has) {                                          /* append the key at the end of its section */
            const char *q = p; const char *e; while (*q && *q != '\n') q++; if (*q) q++;
            while (*q && *q != '[') { while (*q && *q != '\n') q++; if (*q) q++; }
            e = q; off = (size_t)(e - t);
            fwrite(t, 1, off, f); fprintf(f, "%s=%s\r\n", key, val); fwrite(e, 1, n - off, f);
        } else { fwrite(t, 1, n, f); if (n && t[n - 1] != '\n') fputs("\r\n", f); fprintf(f, "[%s]\r\n%s=%s\r\n", sec, key, val); }
    }
    fclose(f); free(t);
    return 1;
}

/* ---------------------------------------------------------------- process, environment, time */
static char exe_path[1024];
static DWORD w_GetModuleFileNameA(HMODULE m, char *buf, DWORD size) {
    char tmp[1024]; size_t i, n;
    (void)m;
    snprintf(tmp, sizeof tmp, "%s", exe_path);
    n = strlen(tmp);
    if (n >= size) n = size ? size - 1 : 0;
    for (i = 0; i < n; i++) buf[i] = tmp[i];
    if (size) buf[n] = 0;
    return (DWORD)n;
}
static uint32_t cmdline_g;
static LPSTR w_GetCommandLineA(void) {
    if (!cmdline_g) {
        char line[1024]; int i; size_t n;
        snprintf(line, sizeof line, "\"%s\"", exe_path);
        for (i = 1; i < host_argc; i++) { n = strlen(line); snprintf(line + n, sizeof line - n, " %s", host_argv[i]); }
        cmdline_g = gstring(line);
    }
    return (LPSTR)(uintptr_t)cmdline_g;
}
static DWORD w_GetEnvironmentVariableA(LPCSTR name, char *buf, DWORD size) {
    const char *v = getenv(name); size_t n;
    if (!v) { set_err(203); return 0; }
    n = strlen(v);
    if (n + 1 > size) return (DWORD)n + 1;
    memcpy(buf, v, n + 1);
    return (DWORD)n;
}
static BOOL w_SetEnvironmentVariableA(LPCSTR name, LPCSTR val) {
#ifdef _WIN32
    return _putenv_s(name, val ? val : "") == 0;
#else
    return (val ? setenv(name, val, 1) : unsetenv(name)) == 0;
#endif
}
static DWORD w_GetTickCount(void) { return (DWORD)sys_ms(); }
static void w_Sleep(DWORD ms) { host_pump(); if (ms) sys_sleep(ms); else sys_yield(); }
static BOOL w_QueryPerformanceCounter(long long *c) { *c = (long long)(sys_ms() * 1000); return 1; }
static BOOL w_QueryPerformanceFrequency(long long *f) { *f = 1000000; return 1; }
static DWORD w_GetVersion(void) { return 0x4A63000Au; }                 /* Windows 10: major 10, minor 0, build 19043 (high bit clear: NT) */
static BOOL w_GetVersionExA(DWORD *p) { p[1] = 10; p[2] = 0; p[3] = 19043; p[4] = 2; ((char *)p)[20] = 0; return 1; }
static HMODULE w_GetModuleHandleA(LPCSTR n) { (void)n; return (HMODULE)(uintptr_t)0x400000; }
static HANDLE w_GetStdHandle(DWORD n) { return (HANDLE)(uintptr_t)n; }
static uint32_t env_g;
static LPSTR w_GetEnvironmentStrings(void) { if (!env_g) env_g = gmalloc(8); return (LPSTR)(uintptr_t)env_g; }
static BOOL w_GetCPInfo(UINT cp, DWORD *p) { (void)cp; p[0] = 1; memset(p + 1, 0, 16); return 1; }
static DWORD tls[64]; static unsigned ntls;
static DWORD w_TlsAlloc(void) { return ntls < 64 ? ntls++ : 0xFFFFFFFFu; }
static void *w_TlsGetValue(DWORD i) { return (void *)(uintptr_t)(i < 64 ? tls[i] : 0); }
static BOOL w_TlsSetValue(DWORD i, void *v) { if (i < 64) tls[i] = (DWORD)(uintptr_t)v; return 1; }
static BOOL w_One(void) { return 1; }
static DWORD w_Zero(void) { return 0; }
static DWORD w_Id(void) { return 1; }
static void w_ExitProcess(UINT code) {
    if (getenv("X2C_TRACE")) {                           /* where the game decided to leave: the return addresses still on its stack */
        uint32_t a; int n = 0;
        fprintf(stderr, "ExitProcess(%u), stack:", code);
        for (a = esp; a < 0x1FFFF000u && n < 96; a += 4) { uint32_t v = rd32(a); if (v >= 0x401000 && v < 0x458000) { fprintf(stderr, " %06x", v); n++; } }
        fprintf(stderr, "\n");
    }
    fflush(0); exit((int)code);
}
static void w_GetLocalTime(WORD *st) {
    time_t t = time(0); struct tm *l = localtime(&t);
    st[0] = (WORD)(l->tm_year + 1900); st[1] = (WORD)(l->tm_mon + 1); st[2] = (WORD)l->tm_wday; st[3] = (WORD)l->tm_mday;
    st[4] = (WORD)l->tm_hour; st[5] = (WORD)l->tm_min; st[6] = (WORD)l->tm_sec; st[7] = 0;
}
static DWORD w_GetTimeZoneInformation(void *p) { memset(p, 0, 172); return 0; }
static HANDLE w_Handle(void) { return (HANDLE)(uintptr_t)0x300; }
static DWORD w_WaitForSingleObject(HANDLE h, DWORD ms) { (void)h; (void)ms; return 0; }
static HANDLE w_CreateMutexA(void *sa, BOOL owner, LPCSTR name) { (void)sa; (void)owner; (void)name; set_err(0); return (HANDLE)(uintptr_t)0x300; }

/* a thread started by the platform layer (native code); threads of the game itself cannot run: its machine state is global */
typedef struct { LPTHREAD_START_ROUTINE fn; void *arg; } tmain_t;
static void tthunk(void *p) { tmain_t t = *(tmain_t *)p; free(p); t.fn(t.arg); }
static HANDLE w_CreateThread(void *sa, SIZE_T stack, LPTHREAD_START_ROUTINE fn, void *arg, DWORD flags, DWORD *tid) {
    tmain_t *t;
    (void)sa; (void)stack; (void)flags;
    if (tid) *tid = 2;
    if ((uintptr_t)fn < GUEST_HI) { host_log("w32: the game starts a thread at %p: not supported", (void *)fn); return 0; }
    t = malloc(sizeof *t); t->fn = fn; t->arg = arg;
    if (sys_thread(tthunk, t)) { free(t); return 0; }
    return (HANDLE)(uintptr_t)0x200;
}

/* ---------------------------------------------------------------- multimedia timers (winmm): run from host_pump() */
typedef struct { int used; uint32_t id, cb, user; unsigned period, oneshot; uint64_t next; } mtimer_t;
static mtimer_t timers[16]; static uint32_t next_timer_id = 1; static int in_pump;
static DWORD w_timeGetTime(void) { return (DWORD)sys_ms(); }
static DWORD w_timeSetEvent(UINT delay, UINT res, uint32_t cb, uint32_t user, UINT flags) {
    int i; (void)res;
    for (i = 0; i < 16 && timers[i].used; i++) {}
    if (i == 16) return 0;
    timers[i].used = 1; timers[i].id = next_timer_id++; timers[i].cb = cb; timers[i].user = user;
    timers[i].period = delay ? delay : 1; timers[i].oneshot = (flags & 1) == 0; timers[i].next = sys_ms() + timers[i].period;
    return timers[i].id;
}
static DWORD w_timeKillEvent(UINT id) { int i; for (i = 0; i < 16; i++) if (timers[i].used && timers[i].id == id) { timers[i].used = 0; return 0; } return 97; }
static DWORD w_timeGetDevCaps(DWORD *p, UINT n) { (void)n; p[0] = 1; p[1] = 1000000; return 0; }
static DWORD w_Joy(void) { return 165; }                   /* JOYERR_NOCANDO / no devices */
static void run_timers(void) {
    int i; uint64_t now = sys_ms();
    if (in_pump) return;
    in_pump = 1;
    for (i = 0; i < 16; i++) {
        if (timers[i].used && now >= timers[i].next) {
            mtimer_t t = timers[i];
            if (t.oneshot) timers[i].used = 0; else timers[i].next = (now - t.next > 4 * t.period) ? now + t.period : t.next + t.period;
            guest_call(t.cb, 5, t.id, 0, t.user, 0, 0);
        }
    }
    in_pump = 0;
}

/* ---------------------------------------------------------------- winsock, for the platform layer's TCP layer (net.c) */
typedef struct { short family; unsigned short port; uint32_t addr; char zero[8]; } sockaddr_in_t;
static uint16_t bs16(uint16_t v) { return (uint16_t)((v << 8) | (v >> 8)); }
static uint32_t bs32(uint32_t v) { return (v >> 24) | ((v >> 8) & 0xff00) | ((v << 8) & 0xff0000) | (v << 24); }
static int w_WSAStartup(WORD v, void *d) { (void)v; (void)d; return sys_net_start(); }
static UINT_PTR w_socket(int af, int type, int proto) { int s; (void)af; (void)type; (void)proto; s = sys_tcp_socket(); return s < 0 ? (UINT_PTR)-1 : (UINT_PTR)s; }
static int w_bind(UINT_PTR s, const sockaddr_in_t *a, int len) { (void)len; return sys_bind((int)s, bs32(a->addr), bs16(a->port)); }
static int w_listen(UINT_PTR s, int backlog) { (void)backlog; return sys_listen((int)s); }
static UINT_PTR w_accept(UINT_PTR s, void *a, int *l) { int c = sys_accept((int)s, 0); (void)a; (void)l; return c < 0 ? (UINT_PTR)-1 : (UINT_PTR)c; }
static int w_connect(UINT_PTR s, const sockaddr_in_t *a, int len) { (void)len; return sys_connect((int)s, bs32(a->addr), bs16(a->port)); }
static int w_send(UINT_PTR s, const char *b, int n, int fl) { (void)fl; return sys_send((int)s, b, n); }
static int w_recv(UINT_PTR s, char *b, int n, int fl) { (void)fl; return sys_recv((int)s, b, n); }
static int w_closesocket(UINT_PTR s) { return sys_close((int)s); }
static int w_setsockopt(UINT_PTR s, int lvl, int opt, const char *v, int len) { (void)lvl; (void)opt; (void)v; (void)len; sys_nodelay((int)s); return 0; }
static unsigned w_inet_addr(const char *t) {
    unsigned a, b, c, d; char x;
    if (sscanf(t, "%u.%u.%u.%u%c", &a, &b, &c, &d, &x) != 4 || a > 255 || b > 255 || c > 255 || d > 255) return 0xFFFFFFFFu;
    return a | (b << 8) | (c << 16) | (d << 24);                        /* network byte order in memory */
}
static unsigned short w_htons(unsigned short v) { return bs16(v); }
static int w_gethostname(char *name, int n) { snprintf(name, (size_t)n, "localhost"); return 0; }
/* gethostbyname: net.c reads the address list through "hostent + 12" (the Win32 layout), so the structure is built to match */
static struct { char pad[12]; unsigned char **list; } he_;
static unsigned char he_addrs[16][4]; static unsigned char *he_list[17];
static void *w_gethostbyname(const char *name) {
    uint32_t a[16]; int n = 0, i;
    if (!strcmp(name, "localhost")) n = sys_local_addrs(a, 16);
    if (!n) { if (sys_resolve(name, &a[0])) return 0; n = 1; }
    for (i = 0; i < n; i++) { he_addrs[i][0] = (unsigned char)(a[i] >> 24); he_addrs[i][1] = (unsigned char)(a[i] >> 16); he_addrs[i][2] = (unsigned char)(a[i] >> 8); he_addrs[i][3] = (unsigned char)a[i]; he_list[i] = he_addrs[i]; }
    he_list[n] = 0; he_.list = he_list;
    return &he_;
}

/* ---------------------------------------------------------------- wsprintfA (cdecl; the values are the stack words after the format) */
static int w_wsprintfA(char *out, const char *fmt, uintptr_t a0, uintptr_t a1, uintptr_t a2, uintptr_t a3, uintptr_t a4, uintptr_t a5) {
    uintptr_t args[6]; int ai = 0; char *o = out;
    args[0] = a0; args[1] = a1; args[2] = a2; args[3] = a3; args[4] = a4; args[5] = a5;
    while (*fmt) {
        char spec[16]; int w = 0, left = 0, zero = 0, n;
        if (*fmt != '%') { *o++ = *fmt++; continue; }
        fmt++;
        if (*fmt == '%') { *o++ = '%'; fmt++; continue; }
        if (*fmt == '-') { left = 1; fmt++; }
        if (*fmt == '0') { zero = 1; fmt++; }
        while (*fmt >= '0' && *fmt <= '9') w = w * 10 + (*fmt++ - '0');
        if (*fmt == 'l') fmt++;
        {   uintptr_t v = ai < 6 ? args[ai++] : 0; const char *s = spec;
            switch (*fmt) {
            case 'd': case 'i': snprintf(spec, sizeof spec, "%d", (int)(uint32_t)v); break;
            case 'u': snprintf(spec, sizeof spec, "%u", (unsigned)(uint32_t)v); break;
            case 'x': snprintf(spec, sizeof spec, "%x", (unsigned)(uint32_t)v); break;
            case 'X': snprintf(spec, sizeof spec, "%X", (unsigned)(uint32_t)v); break;
            case 'c': snprintf(spec, sizeof spec, "%c", (int)(v & 255)); break;
            case 's': s = v ? (const char *)(uintptr_t)(uint32_t)v : "(null)"; break;
            default: snprintf(spec, sizeof spec, "%%"); break;
            }
            n = (int)strlen(s);
            if (!left) while (n < w) { *o++ = zero ? '0' : ' '; w--; }
            memcpy(o, s, (size_t)n); o += n; w -= n;
            if (left) while (w-- > 0) *o++ = ' ';
        }
        if (*fmt) fmt++;
    }
    *o = 0;
    return (int)(o - out);
}

/* ---------------------------------------------------------------- registration */
void w32user_init(void);
void w32user_pump(void);
void hooks_init(void); void ddraw_n_init(void); void dsound_init(void);
#define R(n, a) w32_reg(#n, a, (void *)w_##n)
void w32_init(void) {
    char *p;
#ifdef _WIN32
    if (!_fullpath(exe_path, host_argv[0], sizeof exe_path)) snprintf(exe_path, sizeof exe_path, "%s", host_argv[0]);
#else
    if (!realpath(host_argv[0], exe_path)) snprintf(exe_path, sizeof exe_path, "%s", host_argv[0]);
#endif
#ifndef _WIN32
    {   char tmp[1024]; size_t i, n = strlen(exe_path); tmp[0] = 'Z'; tmp[1] = ':'; memcpy(tmp + 2, exe_path, n + 1);
        for (i = 0; i < n + 2; i++) if (tmp[i] == '/') tmp[i] = '\\';
        memcpy(exe_path, tmp, n + 3); }
#else
    for (p = exe_path; *p; p++) if (*p == '/') *p = '\\';
#endif
    (void)p;
    R(GetLastError, 0); R(SetLastError, 1); R(GlobalAlloc, 2); R(GlobalFree, 1); R(VirtualAlloc, 4); R(VirtualFree, 3);
    R(CreateFileA, 7); R(ReadFile, 5); R(WriteFile, 5); R(SetFilePointer, 4); R(CloseHandle, 1); R(GetFileSize, 2); R(GetFileType, 1);
    R(GetFileAttributesA, 1); R(DeleteFileA, 1); R(CreateDirectoryA, 2); R(SetCurrentDirectoryA, 1);
    R(FindFirstFileA, 2); R(FindNextFileA, 2); R(FindClose, 1);
    R(GetPrivateProfileStringA, 6); R(GetPrivateProfileIntA, 4); R(WritePrivateProfileStringA, 4);
    R(GetModuleFileNameA, 3); R(GetCommandLineA, 0); R(GetEnvironmentVariableA, 3); R(SetEnvironmentVariableA, 2);
    R(GetTickCount, 0); R(Sleep, 1); R(QueryPerformanceCounter, 1); R(QueryPerformanceFrequency, 1);
    R(GetVersion, 0); R(GetVersionExA, 1); R(GetModuleHandleA, 1); R(GetStdHandle, 1); R(GetEnvironmentStrings, 0); R(GetCPInfo, 2);
    R(TlsAlloc, 0); R(TlsGetValue, 1); R(TlsSetValue, 2); R(ExitProcess, 1); R(GetLocalTime, 1); R(GetTimeZoneInformation, 1);
    R(WaitForSingleObject, 2); R(CreateMutexA, 3); R(CreateThread, 6);
    R(timeGetTime, 0); R(timeSetEvent, 5); R(timeKillEvent, 1); R(timeGetDevCaps, 2);
    R(WSAStartup, 2); R(socket, 3); R(bind, 3); R(listen, 2); R(accept, 3); R(connect, 3); R(send, 4); R(recv, 4); R(closesocket, 1);
    R(setsockopt, 5); R(inet_addr, 1); R(htons, 1); R(gethostname, 2); R(gethostbyname, 1);
    w32_reg("wsprintfA", -1, (void *)w_wsprintfA);
    /* stand-ins that report "nothing there" */
    w32_reg("TlsFree", 1, (void *)w_One); w32_reg("SetConsoleCtrlHandler", 2, (void *)w_One); w32_reg("SetConsoleMode", 2, (void *)w_One);
    w32_reg("SetStdHandle", 2, (void *)w_One); w32_reg("timeBeginPeriod", 1, (void *)w_Zero); w32_reg("timeEndPeriod", 1, (void *)w_Zero);
    w32_reg("GetConsoleMode", 2, (void *)w_Zero); w32_reg("GetCurrentThreadId", 0, (void *)w_Id); w32_reg("GetCurrentProcessId", 0, (void *)w_Id);
    w32_reg("GetCurrentThread", 0, (void *)w_Id); w32_reg("LoadLibraryA", 1, (void *)w_Zero); w32_reg("GetProcAddress", 2, (void *)w_Zero);
    w32_reg("CreateEventA", 4, (void *)w_Handle); w32_reg("SetEvent", 1, (void *)w_One); w32_reg("ReleaseMutex", 1, (void *)w_One);
    w32_reg("CreateProcessA", 10, (void *)w_Zero); w32_reg("GetExitCodeProcess", 2, (void *)w_Zero); w32_reg("ExitThread", 1, (void *)w_Zero);
    w32_reg("DosDateTimeToFileTime", 3, (void *)w_Zero); w32_reg("FileTimeToDosDateTime", 3, (void *)w_Zero);
    w32_reg("FileTimeToLocalFileTime", 2, (void *)w_Zero); w32_reg("LocalFileTimeToFileTime", 2, (void *)w_Zero);
    w32_reg("ReadConsoleInputA", 4, (void *)w_Zero); w32_reg("WriteConsoleA", 5, (void *)w_One); w32_reg("GetStockObject", 1, (void *)w_One);
    w32_reg("joyGetNumDevs", 0, (void *)w_Zero); w32_reg("joyGetDevCapsA", 3, (void *)w_Joy); w32_reg("joyGetPosEx", 2, (void *)w_Joy);
    w32_reg("ClearCommBreak", 1, (void *)w_Zero); w32_reg("ClearCommError", 3, (void *)w_Zero); w32_reg("EscapeCommFunction", 2, (void *)w_Zero);
    w32_reg("GetCommMask", 2, (void *)w_Zero); w32_reg("GetCommModemStatus", 2, (void *)w_Zero); w32_reg("GetCommState", 2, (void *)w_Zero);
    w32_reg("GetCommTimeouts", 2, (void *)w_Zero); w32_reg("GetOverlappedResult", 4, (void *)w_Zero); w32_reg("PeekNamedPipe", 6, (void *)w_Zero);
    w32_reg("PurgeComm", 2, (void *)w_Zero); w32_reg("SetCommBreak", 1, (void *)w_Zero); w32_reg("SetCommMask", 2, (void *)w_Zero);
    w32_reg("SetCommState", 2, (void *)w_Zero); w32_reg("SetCommTimeouts", 2, (void *)w_Zero); w32_reg("SetupComm", 3, (void *)w_Zero);
    w32user_init(); hooks_init(); ddraw_n_init(); dsound_init();
    back_init();
}

void w32_pump(void) { run_timers(); w32user_pump(); }
