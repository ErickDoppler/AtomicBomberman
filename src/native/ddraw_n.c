/* DirectDraw for the portable build: the game asks for an 8-bit 640x480 mode with one primary surface that it locks,
 * draws into and unlocks every frame, plus one 256-colour palette.  The surface is plain guest memory, the palette a colour
 * table; Unlock presents the frame through the back end (a window, or the console).  The same interface as src/platform/
 * ddraw.c emulates on Windows, built from the guest side: the COM objects live in guest memory and their methods are host
 * functions (host_magic). */
#include "w32.h"
#include "host.h"
#include "back.h"
#include "sys.h"

#define DD_OK 0
#define DDERR_UNSUPPORTED 0x80004001u
#define DDERR_INVALIDMODE 0x8876019Eu

static uint32_t g_dd, g_surf, g_pal;           /* guest addresses of the three objects */
static int g_w = 640, g_h = 480;
static uint8_t *g_pix;
static uint32_t pal[256];
static unsigned g_frames;

/* ---- the display's refresh imitated: a frame is shown at most every 1/60 s ---- */
static void pace(void) {
    static double next;
    double now = (double)host_ms();
    if (next == 0) next = now;
    if (now < next) { while (now < next - 1) { host_pump(); sys_sleep((unsigned)(next - now - 1)); now = (double)host_ms(); } while ((double)host_ms() < next) {} }
    next += 1000.0 / 60.0;
    if (next < (double)host_ms() - 100) next = (double)host_ms();     /* fell far behind: do not rush to catch up */
}

/* BM_SHOT=<file.bmp>, BM_SHOT_EVERY=<n>: dump every n-th frame (a testing aid, as in the Windows build) */
static void shot(void) {
    const char *path = getenv("BM_SHOT"); FILE *f; unsigned char hdr[54]; int y, i;
    unsigned size = 14 + 40 + 1024 + (unsigned)(g_w * g_h);
    if (!path) return;
    f = fopen(path, "wb");
    if (!f) return;
    memset(hdr, 0, sizeof hdr);
    hdr[0] = 'B'; hdr[1] = 'M'; memcpy(hdr + 2, &size, 4); hdr[10] = 14 + 40 + 0; hdr[11] = 4;      /* offset 1078 */
    hdr[14] = 40; memcpy(hdr + 18, &g_w, 4); memcpy(hdr + 22, &g_h, 4); hdr[26] = 1; hdr[28] = 8; hdr[46] = 0; hdr[47] = 1;
    fwrite(hdr, 1, 54, f);
    for (i = 0; i < 256; i++) { unsigned char c[4]; c[0] = (unsigned char)pal[i]; c[1] = (unsigned char)(pal[i] >> 8); c[2] = (unsigned char)(pal[i] >> 16); c[3] = 0; fwrite(c, 1, 4, f); }
    for (y = g_h - 1; y >= 0; y--) fwrite(g_pix + y * g_w, 1, (size_t)g_w, f);
    fclose(f);
}
static void present(void) {
    static unsigned every;
    if (!g_pix) return;
    back_present(g_pix, pal, g_w, g_h);
    if (!every) { const char *e = getenv("BM_SHOT_EVERY"); every = e && atoi(e) > 0 ? (unsigned)atoi(e) : 30; }
    if (++g_frames % every == 0) shot();
}

/* ---- IUnknown ---- */
static uint32_t u_qi(uint32_t o, uint32_t iid, uint32_t *out) { (void)o; (void)iid; if (out) *out = 0; return 0x80004002u; }
static uint32_t u_addref(uint32_t o) { (void)o; return 1; }
static uint32_t u_release(uint32_t o) { (void)o; return 0; }
static uint32_t stub(uint32_t o) { (void)o; host_log("ddraw: unsupported method"); return DDERR_UNSUPPORTED; }

/* ---- IDirectDraw ---- */
static uint32_t dd_SetCooperativeLevel(uint32_t o, uint32_t wnd, uint32_t flags) { (void)o; (void)wnd; (void)flags; return DD_OK; }
static uint32_t dd_RestoreDisplayMode(uint32_t o) { (void)o; return DD_OK; }
static uint32_t dd_SetDisplayMode(uint32_t o, uint32_t w, uint32_t h, uint32_t bpp) {
    (void)o;
    if (bpp != 8) return DDERR_INVALIDMODE;
    g_w = (int)w; g_h = (int)h;
    if (!g_pix) g_pix = (uint8_t *)(uintptr_t)gmalloc(w * h);
    back_set_mode(g_w, g_h);
    return DD_OK;
}
static uint32_t dd_CreateSurface(uint32_t o, uint32_t desc, uint32_t *out, uint32_t outer) { (void)o; (void)desc; (void)outer; *out = g_surf; return DD_OK; }
static uint32_t dd_CreatePalette(uint32_t o, uint32_t flags, const uint8_t *e, uint32_t *out, uint32_t outer) {
    int i; (void)o; (void)flags; (void)outer;
    for (i = 0; i < 256; i++) pal[i] = ((uint32_t)e[i * 4] << 16) | ((uint32_t)e[i * 4 + 1] << 8) | e[i * 4 + 2];
    *out = g_pal;
    return DD_OK;
}

/* ---- IDirectDrawSurface ---- */
static uint32_t s_Lock(uint32_t o, uint32_t rect, uint32_t *desc, uint32_t flags, uint32_t ev) {
    (void)o; (void)rect; (void)flags; (void)ev;
    desc[1] = 0x2 | 0x4 | 0x8 | 0x800 | 0x1000;          /* HEIGHT WIDTH PITCH LPSURFACE PIXELFORMAT */
    desc[2] = (uint32_t)g_h; desc[3] = (uint32_t)g_w; desc[4] = (uint32_t)g_w;
    desc[9] = (uint32_t)(uintptr_t)g_pix;                /* lpSurface at 0x24 */
    desc[0x48 / 4] = 32; desc[0x4c / 4] = 0x20; desc[0x54 / 4] = 8;     /* DDPIXELFORMAT: palette indexed, 8 bits */
    return DD_OK;
}
static uint32_t s_Unlock(uint32_t o, uint32_t p) { (void)o; (void)p; pace(); host_pump(); present(); return DD_OK; }
static uint32_t s_Restore(uint32_t o) { (void)o; return DD_OK; }
static uint32_t s_SetPalette(uint32_t o, uint32_t p) { (void)o; (void)p; present(); return DD_OK; }
static uint32_t s_GetPixelFormat(uint32_t o, uint32_t *pf) { (void)o; memset(pf, 0, 32); pf[0] = 32; pf[1] = 0x20; pf[3] = 8; return DD_OK; }

/* ---- IDirectDrawPalette ---- */
static uint32_t p_SetEntries(uint32_t o, uint32_t flags, uint32_t start, uint32_t count, const uint8_t *e) {
    uint32_t i; (void)o; (void)flags;
    if (start + count > 256) return DDERR_UNSUPPORTED;
    for (i = 0; i < count; i++) pal[start + i] = ((uint32_t)e[i * 4] << 16) | ((uint32_t)e[i * 4 + 1] << 8) | e[i * 4 + 2];
    present();
    return DD_OK;
}
static uint32_t p_GetEntries(uint32_t o, uint32_t flags, uint32_t start, uint32_t count, uint8_t *e) {
    uint32_t i; (void)o; (void)flags;
    if (start + count > 256) return DDERR_UNSUPPORTED;
    for (i = 0; i < count; i++) { e[i * 4] = (uint8_t)(pal[start + i] >> 16); e[i * 4 + 1] = (uint8_t)(pal[start + i] >> 8); e[i * 4 + 2] = (uint8_t)pal[start + i]; e[i * 4 + 3] = 0; }
    return DD_OK;
}

static uint32_t build(int n, void **fn, int *ac) {
    uint32_t vt = gmalloc((uint32_t)n * 4), o = gmalloc(8); int i;
    for (i = 0; i < n; i++) wr32(vt + 4 * (uint32_t)i, host_magic(ac[i], fn[i]));
    wr32(o, vt);
    return o;
}
#define SET(i, f, a) do { fn[i] = (void *)(f); ac[i] = (a); } while (0)
static uint32_t w_DirectDrawCreate(const void *guid, uint32_t *out, void *outer) {
    void *fn[36]; int ac[36], i;
    (void)guid; (void)outer;
    if (!g_dd) {
        for (i = 0; i < 36; i++) { fn[i] = (void *)stub; ac[i] = 1; }
        SET(0, u_qi, 3); SET(1, u_addref, 1); SET(2, u_release, 1);
        SET(5, dd_CreatePalette, 5); SET(6, dd_CreateSurface, 4); SET(19, dd_RestoreDisplayMode, 1); SET(20, dd_SetCooperativeLevel, 3); SET(21, dd_SetDisplayMode, 4);
        g_dd = build(23, fn, ac);
        for (i = 0; i < 36; i++) { fn[i] = (void *)stub; ac[i] = 1; }
        SET(0, u_qi, 3); SET(1, u_addref, 1); SET(2, u_release, 1);
        SET(21, s_GetPixelFormat, 2); SET(25, s_Lock, 5); SET(27, s_Restore, 1); SET(31, s_SetPalette, 2); SET(32, s_Unlock, 2);
        g_surf = build(36, fn, ac);
        for (i = 0; i < 36; i++) { fn[i] = (void *)stub; ac[i] = 1; }
        SET(0, u_qi, 3); SET(1, u_addref, 1); SET(2, u_release, 1); SET(4, p_GetEntries, 5); SET(6, p_SetEntries, 5);
        g_pal = build(7, fn, ac);
    }
    *out = g_dd;
    return DD_OK;
}
/* F12 (seen by the game's keyboard hook): full screen and back */
static void w_toggle_fullscreen(void) { back_fullscreen(!back_is_fullscreen()); }

void ddraw_n_init(void) {
    w32_reg("DirectDrawCreate", 3, (void *)w_DirectDrawCreate);
    host_shim("bm_DirectDrawCreate", 3, (void *)w_DirectDrawCreate);
    host_shim("bm_toggle_fullscreen", -1, (void *)w_toggle_fullscreen);
}
