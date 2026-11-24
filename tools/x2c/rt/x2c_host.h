#ifndef X2C_HOST_H
#define X2C_HOST_H
#include "x2c_rt.h"

typedef struct { uint32_t iat; const char *dll; const char *name; } x2c_import_t;

/* guest arguments of a stdcall host function: argument i (0 = first) */
#define ARG(i) rd32(esp + 4 + 4 * (i))
void x2c_host_init(int argc, char **argv);
void x2c_host(unsigned id);                    /* run host function number id (an index of x2c_imports) */
extern uint32_t x2c_heap_next;
uint32_t x2c_alloc(uint32_t size);              /* memory for the program from the host heap area */
#endif
