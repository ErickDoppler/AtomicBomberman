/* The platform layer's small runtime (src/platform/rt.c) for the portable build: the C library does the work. */
#include "bm.h"
#include <stdarg.h>
#include <strings.h>

int bm_strlen(const char *s) { return (int)strlen(s); }
int bm_stricmp(const char *a, const char *b) { return strcasecmp(a, b); }
int bm_strnicmp(const char *a, const char *b, int n) { return strncasecmp(a, b, (size_t)n); }
char *bm_strcpy(char *d, const char *s) { return strcpy(d, s); }
char *bm_strcat(char *d, const char *s) { return strcat(d, s); }
int bm_atoi(const char *s) { return atoi(s); }
int bm_utoa(char *d, unsigned v) { return sprintf(d, "%u", v); }

/* BM_LOG=<file>: a trace of the platform layer */
void bm_log(const char *fmt, ...) {
    static FILE *f; static int tried;
    va_list ap;
    if (!tried) { const char *p = getenv("BM_LOG"); tried = 1; if (p) f = fopen(p, "wb"); }
    if (!f) return;
    va_start(ap, fmt); vfprintf(f, fmt, ap); va_end(ap);
    fputs("\r\n", f); fflush(f);
}
