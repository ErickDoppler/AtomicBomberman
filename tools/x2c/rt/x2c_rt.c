#include "x2c_rt.h"

uint8_t *x2c_mem;
uint32_t eax, ecx, edx, ebx, esp, ebp, esi, edi;
uint8_t cf, zf, sf, of, pf, df;
uint64_t mm[8];
double x2c_fst[8];
int x2c_ftop;
uint16_t fcw = 0x37f, fsw;

double rdf80(uint32_t a) {                      /* 80-bit extended -> double */
    uint64_t m; uint16_t se; int e; double v;
    memcpy(&m, x2c_mem + a, 8); memcpy(&se, x2c_mem + a + 8, 2);
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
    memcpy(x2c_mem + a, &m, 8); memcpy(x2c_mem + a + 8, &se, 2);
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

static const x2c_fn_t *find(uint32_t va) {
    unsigned lo = 0, hi = x2c_nftab;
    while (lo < hi) { unsigned mid = (lo + hi) / 2; if (x2c_ftab[mid].va < va) lo = mid + 1; else hi = mid; }
    return lo < x2c_nftab && x2c_ftab[lo].va == va ? &x2c_ftab[lo] : 0;
}
void x2c_host(unsigned id);
void x2c_call(uint32_t target) {
    const x2c_fn_t *f;
    if (target >= 0xF0000000u) { x2c_host(target - 0xF0000000u); return; }
    f = find(target);
    if (!f) { { int k; fprintf(stderr, "x2c: stack:"); for (k = 0; k < 24; k++) fprintf(stderr, " %08x", rd32(esp + 4 * k)); fprintf(stderr, "\n"); } x2c_unimpl(target, "call to an address that is not a function"); }
    f->fn();
}
void x2c_jump(uint32_t target) { x2c_call(target); }
void x2c_unimpl(uint32_t at, const char *what) { fprintf(stderr, "x2c: %08x: %s\n", at, what); abort(); }
void x2c_div0(void) { fprintf(stderr, "x2c: division by zero\n"); abort(); }
