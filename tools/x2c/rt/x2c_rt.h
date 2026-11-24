/* Machine model of the translated Atomic Bomberman code (see tools/x2c/x2c.py).
 * The original x86 state lives in C variables; the memory of the program (image, stack, heap) is one flat array. */
#ifndef X2C_RT_H
#define X2C_RT_H
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

/* The guest address space is mapped at the same addresses in the host process (see x2c_main.c): a guest address IS a host pointer. */
#define GP(a) ((uint8_t *)(uintptr_t)(uint32_t)(a))
#ifdef X2C_UNITY                               /* one translation unit: the compiler may keep the registers in host registers between calls */
#define X2C_V static
#else
#define X2C_V extern
#endif
X2C_V uint32_t eax, ecx, edx, ebx, esp, ebp, esi, edi;
X2C_V uint8_t cf, zf, sf, of, pf, df;
X2C_V uint64_t mm[8];
X2C_V uint32_t x2c_fs;                       /* base of the fs segment: the thread information block (exception chain, stack limits) */

static inline uint8_t rd8(uint32_t a)  { return *GP(a); }
static inline uint16_t rd16(uint32_t a) { uint16_t v; memcpy(&v, GP(a), 2); return v; }
static inline uint32_t rd32(uint32_t a) { uint32_t v; memcpy(&v, GP(a), 4); return v; }
static inline uint64_t rd64(uint32_t a) { uint64_t v; memcpy(&v, GP(a), 8); return v; }
static inline void wr8(uint32_t a, uint32_t v)  { *GP(a) = (uint8_t)v; }
static inline void wr16(uint32_t a, uint32_t v) { uint16_t t = (uint16_t)v; memcpy(GP(a), &t, 2); }
static inline void wr32(uint32_t a, uint32_t v) { memcpy(GP(a), &v, 4); }
static inline void wr64(uint32_t a, uint64_t v) { memcpy(GP(a), &v, 8); }
static inline float rdf32(uint32_t a) { float v; memcpy(&v, GP(a), 4); return v; }
static inline double rdf64(uint32_t a) { double v; memcpy(&v, GP(a), 8); return v; }
static inline void wrf32(uint32_t a, float v) { memcpy(GP(a), &v, 4); }
static inline void wrf64(uint32_t a, double v) { memcpy(GP(a), &v, 8); }
double rdf80(uint32_t a);
void wrf80(uint32_t a, double v);

#define PUSH32(v) do { uint32_t pv_ = (uint32_t)(v); esp -= 4; wr32(esp, pv_); } while (0)
#define POP32() (esp += 4, rd32(esp - 4))

/* x87 (double precision) */
X2C_V double x2c_fst[8];
X2C_V int x2c_ftop;
#ifdef X2C_UNITY
static uint16_t fcw = 0x37f, fsw;
#else
extern uint16_t fcw, fsw;
#endif
#define st(i) (x2c_fst[(x2c_ftop + (i)) & 7])
static inline void fpush(double v) { x2c_ftop = (x2c_ftop - 1) & 7; x2c_fst[x2c_ftop] = v; }
static inline void fpop(void) { x2c_ftop = (x2c_ftop + 1) & 7; }
static inline void fxch(int i) { double t = st(0); st(0) = st(i); st(i) = t; }
void fcompare(double a, double b);
double x2c_fround(double v);

uint32_t x2c_getflags(void);
void x2c_setflags(uint32_t f);
void x2c_sahf(uint32_t ah);
uint8_t x2c_parity(uint32_t v);
void x2c_cpuid(void);
uint32_t x2c_bswap(uint32_t v);
uint32_t x2c_bsf(uint32_t v);
uint32_t x2c_bsr(uint32_t v);
uint64_t x2c_pcmpeqb(uint64_t a, uint64_t b);

/* calls and jumps whose target is a run-time value: functions of the program, or host (operating system) functions */
typedef struct { uint32_t va; void (*fn)(void); } x2c_fn_t;
extern const x2c_fn_t x2c_ftab[];
extern const unsigned x2c_nftab;
void x2c_call(uint32_t target);
void x2c_jump(uint32_t target);
void x2c_unimpl(uint32_t at, const char *what);
void x2c_div0(void);
#define X2C_UNIMPL(a, msg) x2c_unimpl((a), (msg))
#define X2C_FELL(a) x2c_unimpl((a), "fell off the end of the known code")
#define X2C_STOP(a) x2c_unimpl((a), "int3 / int1")
#define X2C_DIVCHK(d) do { if (!(d)) x2c_div0(); } while (0)
#if defined(X2C_CALLS) || defined(X2C_PROF)
void x2c_enter(uint32_t va);                  /* debugging: log every function entered (build with -DX2C_CALLS) */
#define X2C_ENTER(a) x2c_enter(a)
#else
#define X2C_ENTER(a)
#endif
#endif
