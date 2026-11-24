/* Freestanding runtime helpers and dynamic API resolution. */
#include "bm.h"
#include <stdarg.h>

/* The game imports these two, so their import-table slots exist in the image. */
extern HMODULE (__stdcall *imp_LoadLibraryA)(LPCSTR) __asm__("__imp__LoadLibraryA");
extern FARPROC (__stdcall *imp_GetProcAddress)(HMODULE, LPCSTR) __asm__("__imp__GetProcAddress");

void *memcpy(void *d, const void *s, unsigned n) {
    unsigned char *dd = d; const unsigned char *ss = s;
    while (n--) *dd++ = *ss++;
    return d;
}
void *memmove(void *d, const void *s, unsigned n) {
    unsigned char *dd = d; const unsigned char *ss = s;
    if (dd < ss) { while (n--) *dd++ = *ss++; }
    else { dd += n; ss += n; while (n--) *--dd = *--ss; }
    return d;
}
void *memset(void *d, int c, unsigned n) {
    unsigned char *dd = d;
    while (n--) *dd++ = (unsigned char)c;
    return d;
}
int memcmp(const void *a, const void *b, unsigned n) {
    const unsigned char *x = a, *y = b;
    while (n--) { if (*x != *y) return *x - *y; x++; y++; }
    return 0;
}

int bm_strlen(const char *s) { int n = 0; while (s[n]) n++; return n; }
static int lc(int c) { return (c >= 'A' && c <= 'Z') ? c + 32 : c; }
int bm_stricmp(const char *a, const char *b) {
    for (;; a++, b++) { int d = lc((unsigned char)*a) - lc((unsigned char)*b); if (d || !*a) return d; }
}
int bm_strnicmp(const char *a, const char *b, int n) {
    for (; n > 0; n--, a++, b++) { int d = lc((unsigned char)*a) - lc((unsigned char)*b); if (d || !*a) return d; }
    return 0;
}
char *bm_strcpy(char *d, const char *s) { char *r = d; while ((*d++ = *s++)) {} return r; }
char *bm_strcat(char *d, const char *s) { bm_strcpy(d + bm_strlen(d), s); return d; }
int bm_atoi(const char *s) {
    int v = 0, neg = 0;
    while (*s == ' ') s++;
    if (*s == '-') { neg = 1; s++; }
    while (*s >= '0' && *s <= '9') v = v * 10 + (*s++ - '0');
    return neg ? -v : v;
}
int bm_utoa(char *d, unsigned v) {
    char t[12]; int n = 0, i;
    do { t[n++] = (char)('0' + v % 10); v /= 10; } while (v);
    for (i = 0; i < n; i++) d[i] = t[n - 1 - i];
    d[n] = 0;
    return n;
}

void *bm_api(const char *dll, const char *name) {
    HMODULE m = imp_LoadLibraryA(dll);
    return m ? (void *)imp_GetProcAddress(m, name) : 0;
}

/* ---- logging: set BM_LOG=<file> to get a trace of the platform layer ---- */
static HANDLE logfile = INVALID_HANDLE_VALUE;
static int logtried;
void bm_log(const char *fmt, ...) {
    char out[512], num[16];
    int o = 0;
    va_list ap;
    if (!logtried) {
        char path[MAX_PATH];
        logtried = 1;
        if (((DWORD (__stdcall *)(LPCSTR, LPSTR, DWORD))bm_api("kernel32.dll", "GetEnvironmentVariableA"))("BM_LOG", path, sizeof path)) {
            HANDLE (__stdcall *cf)(LPCSTR, DWORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE) =
                bm_api("kernel32.dll", "CreateFileA");
            logfile = cf(path, GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, 0, CREATE_ALWAYS, 0, 0);
        }
    }
    if (logfile == INVALID_HANDLE_VALUE) return;
    va_start(ap, fmt);
    while (*fmt && o < 480) {
        if (*fmt == '%') {
            fmt++;
            if (*fmt == 's') { const char *s = va_arg(ap, const char *); if (!s) s = "(null)"; while (*s && o < 480) out[o++] = *s++; }
            else if (*fmt == 'd') { int v = va_arg(ap, int); if (v < 0) { out[o++] = '-'; v = -v; } bm_utoa(num, (unsigned)v); for (char *p = num; *p; ) out[o++] = *p++; }
            else if (*fmt == 'x') { unsigned v = va_arg(ap, unsigned); for (int i = 28; i >= 0; i -= 4) out[o++] = "0123456789abcdef"[(v >> i) & 15]; }
            else out[o++] = *fmt;
            fmt++;
        } else out[o++] = *fmt++;
    }
    va_end(ap);
    out[o++] = '\r'; out[o++] = '\n';
    {
        BOOL (__stdcall *wf)(HANDLE, LPCVOID, DWORD, LPDWORD, LPOVERLAPPED) = bm_api("kernel32.dll", "WriteFile");
        DWORD w;
        wf(logfile, out, (DWORD)o, &w, 0);
    }
}

/* Stack probe for frames larger than one page (gcc emits calls to it): touch the pages in order so
 * the guard page mechanism can grow the stack. */
__asm__(
    ".text\n"
    ".globl ___chkstk_ms\n"
    "___chkstk_ms:\n"
    "    pushl %ecx\n"
    "    pushl %eax\n"
    "    cmpl $0x1000, %eax\n"
    "    leal 12(%esp), %ecx\n"
    "    jb 2f\n"
    "1:\n"
    "    subl $0x1000, %ecx\n"
    "    orl $0, (%ecx)\n"
    "    subl $0x1000, %eax\n"
    "    cmpl $0x1000, %eax\n"
    "    ja 1b\n"
    "2:\n"
    "    subl %eax, %ecx\n"
    "    orl $0, (%ecx)\n"
    "    popl %eax\n"
    "    popl %ecx\n"
    "    ret\n"
);
