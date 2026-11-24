#ifndef X2C_HOST_H
#define X2C_HOST_H
#include "x2c_rt.h"

/* the tables x2c.py writes next to the translated code */
typedef struct { uint32_t iat; const char *dll; const char *name; } x2c_import_t;     /* import table slot of the program */
typedef struct { uint32_t va; const char *name; } x2c_sym_t;                           /* platform-layer symbol by address */
#endif
