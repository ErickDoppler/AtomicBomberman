/* Loader and host side of the translated Atomic Bomberman (see tools/x2c/x2c.py).
 *
 *   x2c_game <original BM95.EXE>
 *
 * Loads the sections of the original program (the user's own copy - it is not redistributed) into the flat program memory,
 * points the import table at host functions, and runs the translated entry point. */
#include "x2c_rt.h"
#include "x2c_host.h"

extern const x2c_import_t x2c_imports[];
extern const unsigned x2c_nimports;

#define MEMSIZE (256u * 1024 * 1024)
#define STACK_TOP (MEMSIZE - 0x1000)
#define HEAP_BASE 0x08000000u
uint32_t x2c_heap_next = HEAP_BASE;

static uint16_t u16(const uint8_t *p) { return (uint16_t)(p[0] | (p[1] << 8)); }
static uint32_t u32(const uint8_t *p) { return p[0] | (p[1] << 8) | (p[2] << 16) | ((uint32_t)p[3] << 24); }

static uint32_t load_pe(const char *path) {
    FILE *f = fopen(path, "rb");
    uint8_t *img; long n; uint32_t pe, nsec, opt, base, entry; unsigned i;
    if (!f) { fprintf(stderr, "cannot open %s\n", path); exit(1); }
    fseek(f, 0, SEEK_END); n = ftell(f); fseek(f, 0, SEEK_SET);
    img = malloc((size_t)n); if (fread(img, 1, (size_t)n, f) != (size_t)n) exit(1); fclose(f);
    pe = u32(img + 0x3c);
    nsec = u16(img + pe + 6);
    opt = pe + 24;
    entry = u32(img + opt + 16);
    base = u32(img + opt + 28);
    for (i = 0; i < nsec; i++) {
        const uint8_t *s = img + opt + u16(img + pe + 20) + i * 40;
        uint32_t vsize = u32(s + 8), va = u32(s + 12), rsize = u32(s + 16), raw = u32(s + 20);
        if (vsize && rsize > vsize) rsize = vsize;
        if (raw && rsize) memcpy(x2c_mem + base + va, img + raw, rsize);
    }
    free(img);
    return base + entry;
}

int main(int argc, char **argv) {
    uint32_t entry; unsigned i;
    if (argc < 2) { fprintf(stderr, "usage: x2c_game <original BM95.EXE>\n"); return 2; }
    x2c_mem = calloc(1, MEMSIZE);
    if (!x2c_mem) return 1;
    entry = load_pe(argv[1]);
    for (i = 0; i < x2c_nimports; i++) wr32(x2c_imports[i].iat, 0xF0000000u + i);   /* calls through the import table go to the host */
    x2c_host_init(argc, argv);
    esp = STACK_TOP;
    PUSH32(0xFFFFFFF0u);
    fprintf(stderr, "x2c: entry %08x\n", entry);
    x2c_call(entry);
    return 0;
}
