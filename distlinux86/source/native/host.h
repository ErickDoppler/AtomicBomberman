/* The host side of the translated game (see tools/x2c): guest memory, the call bridge in both directions, and the
 * registry of native functions that stand in for the Windows API.
 *
 * The guest's 32-bit address space is mapped at the same addresses in the host process, so a guest address IS a host
 * pointer (zero-extended) and the platform code can use pointers it receives from the game directly.  Anything the game
 * must be able to address - buffers, COM objects and their method tables - has to live in that region: gmalloc(). */
#ifndef HOST_H
#define HOST_H
#include "x2c_rt.h"
#include "x2c_host.h"

#define ARG(i) rd32(esp + 4 + 4 * (i))

/* ---- guest memory ---- */
#define GUEST_LO   0x00400000u
#define GUEST_HI   0x20000000u
uint32_t gmalloc(uint32_t n);                  /* zeroed memory in the guest address space; 0 when exhausted */
void     gfree(uint32_t p);
uint32_t gstring(const char *s);               /* a guest copy of a C string */
uint32_t gsym(const char *name);               /* guest address of a symbol of the restored program / its glue (hostsyms.c) */

/* ---- native functions reachable from the guest ---- */
void     host_shim(const char *name, int argc, void *fn);   /* a platform-layer function the game calls by address (bm_*) */
uint32_t host_magic(int argc, void *fn);                    /* a guest-callable address for a native function (COM methods) */
/* argc >= 0: stdcall with that many 32-bit arguments (the callee pops them); argc < 0: cdecl */

/* ---- guest functions called from native code ---- */
uint32_t guest_call(uint32_t fn, int nargs, ...);            /* stdcall or cdecl alike: the caller restores the stack */
void     host_pump(void);                                    /* run what is due: multimedia timers, window messages */

/* ---- program start ---- */
typedef struct { uint32_t va, size; const uint8_t *data; } x2c_section_t;
extern const x2c_section_t x2c_sections[];
extern const unsigned x2c_nsections;
extern const uint32_t x2c_entry_va;

extern int host_argc; extern char **host_argv;
extern uint64_t host_ms(void);                               /* milliseconds, monotonic */
void host_log(const char *fmt, ...);
#endif
