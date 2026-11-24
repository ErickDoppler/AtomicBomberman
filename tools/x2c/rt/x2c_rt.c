#include "x2c_rt.h"

#ifndef X2C_UNITY
uint32_t eax, ecx, edx, ebx, esp, ebp, esi, edi;
uint8_t cf, zf, sf, of, pf, df;
uint64_t mm[8];
uint32_t x2c_fs;
double x2c_fst[8];
int x2c_ftop;
uint16_t fcw = 0x37f, fsw;
#endif

double rdf80(uint32_t a) {                      /* 80-bit extended -> double */
    uint64_t m; uint16_t se; int e; double v;
    memcpy(&m, GP(a), 8); memcpy(&se, GP(a + 8), 2);
    e = se & 0x7fff;
    if (e == 0 && m == 0) return (se & 0x8000) ? -0.0 : 0.0;
    v = ldexp((double)m, e - 16383 - 63);
    return (se & 0x8000) ? -v : v;
}
void wrf80(uint32_t a, double d) {
    uint64_t m = 0; uint16_t se = 0; int e;
    if (d != 0.0) {
        double f = frexp(fabs(d), &e);          /* fabs(d) = f * 2^e, f in [0.5,1) */
        m = (uint64_t)ldexp(f, 64);
        se = (uint16_t)(e - 1 + 16383);
    }
    if (d < 0) se |= 0x8000;
    memcpy(GP(a), &m, 8); memcpy(GP(a + 8), &se, 2);
}
void fcompare(double a, double b) {
    fsw &= ~0x4500;
    if (a != a || b != b) fsw |= 0x4500;        /* unordered */
    else if (a < b) fsw |= 0x0100;
    else if (a == b) fsw |= 0x4000;
}
double x2c_fround(double v) { return nearbyint(v); }

uint32_t x2c_getflags(void) { return (cf ? 1u : 0) | 2u | (pf ? 4u : 0) | (zf ? 0x40u : 0) | (sf ? 0x80u : 0) | (df ? 0x400u : 0) | (of ? 0x800u : 0); }
void x2c_setflags(uint32_t f) { cf = f & 1; pf = (f >> 2) & 1; zf = (f >> 6) & 1; sf = (f >> 7) & 1; df = (f >> 10) & 1; of = (f >> 11) & 1; }
void x2c_sahf(uint32_t ah) { cf = ah & 1; pf = (ah >> 2) & 1; zf = (ah >> 6) & 1; sf = (ah >> 7) & 1; }
uint8_t x2c_parity(uint32_t v) { v &= 0xff; v ^= v >> 4; v ^= v >> 2; v ^= v >> 1; return !(v & 1); }
void x2c_cpuid(void) { eax = 0; ebx = ecx = edx = 0; }
uint32_t x2c_bswap(uint32_t v) { return (v >> 24) | ((v >> 8) & 0xff00) | ((v << 8) & 0xff0000) | (v << 24); }
uint32_t x2c_bsf(uint32_t v) { uint32_t i = 0; while (!(v & 1)) { v >>= 1; i++; } return i; }
uint32_t x2c_bsr(uint32_t v) { uint32_t i = 31; while (!(v & 0x80000000u)) { v <<= 1; i--; } return i; }
uint64_t x2c_pcmpeqb(uint64_t a, uint64_t b) { uint64_t r = 0; int i; for (i = 0; i < 8; i++) if (((a >> (i * 8)) & 0xff) == ((b >> (i * 8)) & 0xff)) r |= 0xffull << (i * 8); return r; }

/* function lookup by address: a table indexed by address (code lies in 0x401000..0x4b3300), built on first use */
#define DT_LO 0x401000u
#define DT_N 0xB3000u
static void (*dtab[DT_N])(void);
static int dtab_ready;
static const x2c_fn_t *find(uint32_t va) {
    static x2c_fn_t hit;
    if (!dtab_ready) { unsigned i; for (i = 0; i < x2c_nftab; i++) if (x2c_ftab[i].va - DT_LO < DT_N) dtab[x2c_ftab[i].va - DT_LO] = x2c_ftab[i].fn; dtab_ready = 1; }
    if (va - DT_LO >= DT_N || !dtab[va - DT_LO]) return 0;
    hit.va = va; hit.fn = dtab[va - DT_LO];
    return &hit;
}
void x2c_host(uint32_t target);
int x2c_host_sym(uint32_t va);
void x2c_call(uint32_t target) {
    const x2c_fn_t *f;
    if (target >= 0xF0000000u) { x2c_host(target); return; }              /* an import or a native method */
    if (target - DT_LO < DT_N && dtab_ready && dtab[target - DT_LO]) { dtab[target - DT_LO](); return; }       /* the fast path */
    f = find(target);
    if (f) { f->fn(); return; }
    if (x2c_host_sym(target)) return;                                    /* a function of the platform layer */
    { int k; fprintf(stderr, "x2c: stack:"); for (k = 0; k < 16; k++) fprintf(stderr, " %08x", rd32(esp + 4 * k)); fprintf(stderr, "\n"); }
    x2c_unimpl(target, "call to an address that is not a function");
}
void x2c_jump(uint32_t target) { x2c_call(target); }
void x2c_unimpl(uint32_t at, const char *what) {
    uint32_t p; int n = 0;
    fprintf(stderr, "x2c: %08x: %s\n  guest return addresses on the stack:", at, what);
    for (p = esp; p < esp + 0x2000 && n < 24; p += 4) { uint32_t v = rd32(p); if (v >= 0x401000 && v < 0x458000) { fprintf(stderr, " %06x", v); n++; } }
    fprintf(stderr, "\n");
    abort();
}
void x2c_div0(void) { fprintf(stderr, "x2c: division by zero\n"); abort(); }

#ifdef X2C_CALLS
void x2c_enter(uint32_t va) {
    static uint32_t watch = 1, last;
    if (watch == 1) { const char *w = getenv("X2C_WATCH"); watch = w ? (uint32_t)strtoul(w, 0, 16) : 0; }
    if (watch && rd32(watch) != last) { last = rd32(watch); fprintf(stderr, "watch %08x = %08x (before entering %08x)\n", watch, last, va); }
    fprintf(stderr, "f %08x eax=%08x\n", va, eax);
    if (va == 0x43f134) { uint32_t c = rd32(0x45c48c); fprintf(stderr, "   ctx=%08x count=%d mode=%s name=%s\n", c, c ? (int)rd32(c + 0x40) : -1, (char *)GP(edx), (char *)GP(eax)); }
}
#endif

#ifdef X2C_PROF
/* call counts per function (build with -DX2C_PROF), listed at exit */
static uint64_t prof_n[0x57000];
static void prof_dump(void) {
    int k, i; 
    fprintf(stderr, "most called functions:\n");
    for (k = 0; k < 30; k++) {
        uint64_t best = 0; int bi = -1;
        for (i = 0; i < 0x57000; i++) if (prof_n[i] > best) { best = prof_n[i]; bi = i; }
        if (bi < 0) break;
        fprintf(stderr, "  %08x %llu\n", 0x401000 + bi, (unsigned long long)best);
        prof_n[bi] = 0;
    }
}
int sys_thread(void (*fn)(void *), void *arg);
void sys_sleep(unsigned ms);
static volatile uint32_t cur_fn;
static volatile int prof_run = 1;
static void sampler(void *a) { (void)a; while (prof_run) { uint32_t c = cur_fn; if (c >= 0x401000 && c < 0x458000) prof_n[c - 0x401000]++; sys_sleep(0); } }
void x2c_enter(uint32_t va) {
    static int reg;
    if (!reg) { reg = 1; atexit(prof_dump); sys_thread(sampler, 0); }
    cur_fn = va;
}
#endif
