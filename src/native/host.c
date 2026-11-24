/* Host side of the translated game: memory, loading, the call bridge in both directions and the program entry. */
#include "host.h"
#include "sys.h"
#include <stdarg.h>
#include "w32.h"

/* x2c_rt.c asks the host for these */
void x2c_host(uint32_t target);
int  x2c_host_sym(uint32_t va);

int host_argc; char **host_argv;
uint64_t host_ms(void) { return sys_ms(); }

void host_log(const char *fmt, ...) {
    static int on = -1;
    va_list ap;
    if (on < 0) on = getenv("X2C_TRACE") != 0;
    if (!on) return;
    va_start(ap, fmt); vfprintf(stderr, fmt, ap); va_end(ap); fputc('\n', stderr);
}

/* ---------------------------------------------------------------- guest heap: first fit with coalescing */
#define HEAP_LO 0x01000000u
#define HEAP_HI 0x1FD00000u
#define STACK_TOP 0x1FFFF000u
typedef struct blk { uint32_t size, next; } blk_t;          /* free block: size (header included), next free block address */
static uint32_t free_head;
static void heap_init(void) { blk_t *b = (blk_t *)(uintptr_t)HEAP_LO; b->size = HEAP_HI - HEAP_LO; b->next = 0; free_head = HEAP_LO; }

uint32_t gmalloc(uint32_t n) {
    uint32_t need = (n + 8 + 15u) & ~15u, *link = &free_head, p;
    while (*link) {
        blk_t *b = (blk_t *)(uintptr_t)*link;
        if (b->size >= need) {
            p = *link;
            if (b->size - need >= 32) {                      /* split */
                blk_t *r = (blk_t *)(uintptr_t)(p + need);
                r->size = b->size - need; r->next = b->next; *link = p + need; b->size = need;
            } else *link = b->next;
            memset((void *)(uintptr_t)(p + 8), 0, b->size - 8);
            *(uint32_t *)(uintptr_t)p = b->size;              /* the header keeps the size; the 4 bytes after it are padding */
            return p + 8;
        }
        link = &b->next;
    }
    host_log("host: out of guest memory (%u bytes)", n);
    return 0;
}
void gfree(uint32_t p) {
    uint32_t a, *link; blk_t *b;
    if (!p) return;
    a = p - 8; b = (blk_t *)(uintptr_t)a;
    b->size = *(uint32_t *)(uintptr_t)a;
    link = &free_head;
    while (*link && *link < a) link = &((blk_t *)(uintptr_t)*link)->next;
    b->next = *link; *link = a;
    if (b->next && a + b->size == b->next) { blk_t *n = (blk_t *)(uintptr_t)b->next; b->size += n->size; b->next = n->next; }   /* merge forward */
    if (link != &free_head) {                                                                                                       /* merge backward */
        blk_t *pb = (blk_t *)((uint8_t *)link - offsetof(blk_t, next));
        if ((uint32_t)(uintptr_t)pb + pb->size == a) { pb->size += b->size; pb->next = b->next; }
    }
}
uint32_t gstring(const char *s) { uint32_t n = (uint32_t)strlen(s) + 1, p = gmalloc(n); memcpy((void *)(uintptr_t)p, s, n); return p; }

/* ---------------------------------------------------------------- symbols of the glue code (hostsyms.c) */
extern const x2c_sym_t x2c_syms[];
extern const unsigned x2c_nsyms;
uint32_t gsym(const char *name) {
    unsigned i;
    for (i = 0; i < x2c_nsyms; i++) if (!strcmp(x2c_syms[i].name, name)) return x2c_syms[i].va;
    return 0;
}

/* ---------------------------------------------------------------- native functions */
typedef struct { const char *name; int argc; void *fn; } nat_t;
static nat_t shims[256]; static unsigned nshims;
void host_shim(const char *name, int argc, void *fn) { if (nshims < 256) { shims[nshims].name = name; shims[nshims].argc = argc; shims[nshims].fn = fn; nshims++; } }
static nat_t dyn[512]; static unsigned ndyn;
uint32_t host_magic(int argc, void *fn) {
    if (ndyn >= 512) { fprintf(stderr, "host: too many native methods\n"); exit(1); }
    dyn[ndyn].argc = argc; dyn[ndyn].fn = fn; dyn[ndyn].name = "method";
    return 0xF1000000u + ndyn++;
}

typedef uintptr_t (*nfn_t)(uintptr_t, uintptr_t, uintptr_t, uintptr_t, uintptr_t, uintptr_t, uintptr_t, uintptr_t);
static void invoke(const nat_t *n) {
    uintptr_t a[8]; int i, cnt = n->argc < 0 ? 8 : n->argc > 8 ? 8 : n->argc;
    uint32_t sp = esp;
    for (i = 0; i < 8; i++) a[i] = i < cnt ? rd32(sp + 4 + 4 * (uint32_t)i) : 0;
    {   uintptr_t r = ((nfn_t)n->fn)(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]);
        eax = (uint32_t)r; host_log("   -> %08x", eax);
    }
    esp = sp + 4 + (n->argc > 0 ? 4 * (uint32_t)n->argc : 0);          /* the callee pops its arguments (stdcall); cdecl callers do */
}

extern const x2c_import_t x2c_imports[];
extern const unsigned x2c_nimports;
static const nat_t *imp_nat[512];
static nat_t imp_store[512];

void x2c_host(uint32_t target) {
    if (target >= 0xF1000000u) {
        unsigned k = target - 0xF1000000u;
        if (k >= ndyn) x2c_unimpl(target, "call to an unknown native method");
        host_log("method %u (argc %d)", k, dyn[k].argc);
        invoke(&dyn[k]);
        return;
    }
    {   unsigned id = target - 0xF0000000u;
        if (id >= x2c_nimports) x2c_unimpl(target, "bad import");
        if (!imp_nat[id]) {
            const x2c_import_t *im = &x2c_imports[id];
            fprintf(stderr, "host: the game calls %s!%s, which is not implemented\n", im->dll, im->name);
            exit(3);
        }
        host_log("import %s", imp_nat[id]->name);
        invoke(imp_nat[id]);
    }
}
int x2c_host_sym(uint32_t va) {
    unsigned i, j;
    if (!va) return 0;
    for (i = 0; i < x2c_nsyms; i++) if (x2c_syms[i].va == va) break;
    if (i == x2c_nsyms) return 0;
    for (j = 0; j < nshims; j++) if (!strcmp(shims[j].name, x2c_syms[i].name)) { host_log("shim %s", shims[j].name); invoke(&shims[j]); return 1; }
    fprintf(stderr, "host: the game calls %s (%08x), which is not implemented natively\n", x2c_syms[i].name, va);
    exit(3);
}

/* ---------------------------------------------------------------- guest calls from native code */
uint32_t guest_call(uint32_t fn, int nargs, ...) {
    uint32_t a[16], r, s_eax = eax, s_ecx = ecx, s_edx = edx, s_ebx = ebx, s_esp = esp, s_ebp = ebp, s_esi = esi, s_edi = edi;
    uint8_t s_cf = cf, s_zf = zf, s_sf = sf, s_of = of, s_pf = pf, s_df = df;
    int i; va_list ap;
    va_start(ap, nargs);
    for (i = 0; i < nargs && i < 16; i++) a[i] = va_arg(ap, uint32_t);
    va_end(ap);
    for (i = nargs - 1; i >= 0; i--) PUSH32(a[i]);
    PUSH32(0xFFFFFFF0u);
    x2c_call(fn);
    r = eax;
    eax = s_eax; ecx = s_ecx; edx = s_edx; ebx = s_ebx; esp = s_esp; ebp = s_ebp; esi = s_esi; edi = s_edi;
    cf = s_cf; zf = s_zf; sf = s_sf; of = s_of; pf = s_pf; df = s_df;
    return r;
}

/* ---------------------------------------------------------------- start-up */
extern void bm_start(void);                         /* src/platform/startup.c: paths, options, command line */
void w32_init(void);                                /* w32.c */
void w32_pump(void);

void host_pump(void) { w32_pump(); }

static void load_image(void) {
    unsigned i;
    for (i = 0; i < x2c_nsections; i++) memcpy((void *)(uintptr_t)x2c_sections[i].va, x2c_sections[i].data, x2c_sections[i].size);
}

static void crashed(uintptr_t fault, uintptr_t code) {
    unsigned i;
    fprintf(stderr, "host: crash at native %p accessing %p\n", (void *)code, (void *)fault);
    fprintf(stderr, "  eax %08x ecx %08x edx %08x ebx %08x esp %08x ebp %08x esi %08x edi %08x\n", eax, ecx, edx, ebx, esp, ebp, esi, edi);
    fprintf(stderr, "  stack:");
    for (i = 0; i < 16 && esp + 4 * i < STACK_TOP + 0x1000; i++) fprintf(stderr, " %08x", rd32(esp + 4 * i));
    fprintf(stderr, "\n");
}

int main(int argc, char **argv) {
    unsigned i;
    host_argc = argc; host_argv = argv;
    sys_on_crash(crashed);
    if (!sys_map_fixed(GUEST_LO, GUEST_HI - GUEST_LO)) {
        fprintf(stderr, "cannot map the game's address space at %08x-%08x\n", GUEST_LO, GUEST_HI);
        return 1;
    }
    load_image();
    heap_init();
    w32_init();                                     /* registers the Windows API stand-ins and resolves the import table */
    for (i = 0; i < x2c_nimports; i++) {
        const x2c_import_t *im = &x2c_imports[i];
        unsigned k;
        wr32(im->iat, 0xF0000000u + i);
        for (k = 0; k < w32_napis; k++)
            if (!strcmp(w32_apis[k].name, im->name)) { imp_store[i].name = w32_apis[k].name; imp_store[i].argc = w32_apis[k].argc; imp_store[i].fn = w32_apis[k].fn; imp_nat[i] = &imp_store[i]; break; }
    }
    esp = STACK_TOP;
    x2c_fs = gmalloc(256);                          /* the thread information block: exception chain end, stack base and limit, self */
    wr32(x2c_fs, 0xFFFFFFFFu); wr32(x2c_fs + 4, STACK_TOP); wr32(x2c_fs + 8, STACK_TOP - 0x100000u); wr32(x2c_fs + 0x18, x2c_fs);
    bm_start();                                     /* what the Windows build runs before the original entry point */
    PUSH32(0xFFFFFFF0u);
    x2c_call(x2c_entry_va);
    return 0;
}
