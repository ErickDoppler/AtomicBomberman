/* Windowed replacement for DirectDraw.
 *
 * The game asks for an exclusive 640x480x8 display mode with one primary surface that it locks,
 * draws into and unlocks every frame, plus one 256-colour palette.  Windows 8+ no longer provides
 * such modes natively, so the whole interface is emulated: the surface is plain memory, the
 * palette is a colour table, and Unlock presents the frame into the game window with
 * StretchDIBits.  The window becomes an ordinary scalable window instead of taking over the display.
 *
 * Only the methods the game calls are implemented (found by tracing the restored code):
 *   IDirectDraw        Release, SetCooperativeLevel, SetDisplayMode, RestoreDisplayMode, CreateSurface, CreatePalette
 *   IDirectDrawSurface Release, Lock, Unlock, Restore, SetPalette, GetPixelFormat
 *   IDirectDrawPalette Release, GetEntries, SetEntries
 * Everything else reports E_NOTIMPL.
 */
#include "bm.h"

#define DD_OK              0
#define DDERR_UNSUPPORTED  0x80004001u
#define DDERR_INVALIDMODE  0x8876019Eu

typedef struct { void **vt; int ref; } obj_t;

static void *dd_vt[23], *surf_vt[36], *pal_vt[7];
static obj_t g_dd = { dd_vt, 1 }, g_surf = { surf_vt, 1 }, g_pal = { pal_vt, 1 };

static HWND g_wnd;
static int  g_w, g_h, g_bpp, g_scale_pct = 100;
static unsigned char *g_pix;                 /* the "video memory": g_w * g_h bytes */
static struct { BITMAPINFOHEADER h; RGBQUAD c[256]; } g_bmi;
static unsigned g_frames;

/* user32 / gdi32 loaded on demand */
static struct {
    HDC (__stdcall *GetDC)(HWND);
    int (__stdcall *ReleaseDC)(HWND, HDC);
    int (__stdcall *StretchDIBits)(HDC, int, int, int, int, int, int, int, int, const void *, const BITMAPINFO *, UINT, DWORD);
    int (__stdcall *SetStretchBltMode)(HDC, int);
    LONG (__stdcall *SetWindowLongA)(HWND, int, LONG);
    DWORD (__stdcall *SetClassLongA)(HWND, int, LONG);
    HCURSOR (__stdcall *LoadCursorA)(HINSTANCE, LPCSTR);
    HCURSOR (__stdcall *SetCursor)(HCURSOR);
    BOOL (__stdcall *SetWindowPos)(HWND, HWND, int, int, int, int, UINT);
    BOOL (__stdcall *AdjustWindowRectEx)(LPRECT, DWORD, BOOL, DWORD);
    BOOL (__stdcall *SystemParametersInfoA)(UINT, UINT, PVOID, UINT);
    BOOL (__stdcall *GetClientRect)(HWND, LPRECT);
    DWORD (__stdcall *GetEnvironmentVariableA)(LPCSTR, LPSTR, DWORD);
    BOOL (__stdcall *WriteFile)(HANDLE, LPCVOID, DWORD, LPDWORD, LPOVERLAPPED);
    HANDLE (__stdcall *CreateFileA)(LPCSTR, DWORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE);
    BOOL (__stdcall *CloseHandle)(HANDLE);
    void *(__stdcall *GlobalAlloc)(UINT, SIZE_T);
    void (__stdcall *Sleep)(DWORD);
    DWORD (__stdcall *GetTickCount)(void);
    BOOL (__stdcall *QueryPerformanceCounter)(long long *);
    BOOL (__stdcall *QueryPerformanceFrequency)(long long *);
    UINT (__stdcall *timeBeginPeriod)(UINT);
    SHORT (__stdcall *GetAsyncKeyState)(int);
    HWND (__stdcall *GetForegroundWindow)(void);
    BOOL (__stdcall *GetWindowRect)(HWND, LPRECT);
    LONG (__stdcall *GetWindowLongA)(HWND, int);
    void *(__stdcall *MonitorFromWindow)(HWND, DWORD);
    BOOL (__stdcall *GetMonitorInfoA)(void *, void *);
    BOOL (__stdcall *PatBlt)(HDC, int, int, int, int, DWORD);
    DWORD (__stdcall *GetWindowThreadProcessId)(HWND, DWORD *);
    DWORD (__stdcall *GetCurrentProcessId)(void);
    BOOL (__stdcall *IsWindow)(HWND);
} u;
static int u_ready;
static void uinit(void) {
    if (u_ready) return;
#define U(dll, n) u.n = bm_api(dll, #n)
    U("user32.dll", GetDC); U("user32.dll", ReleaseDC); U("gdi32.dll", StretchDIBits); U("gdi32.dll", SetStretchBltMode);
    U("user32.dll", SetWindowLongA); U("user32.dll", SetClassLongA); U("user32.dll", LoadCursorA); U("user32.dll", SetCursor); U("user32.dll", SetWindowPos); U("user32.dll", AdjustWindowRectEx);
    U("user32.dll", SystemParametersInfoA); U("user32.dll", GetClientRect);
    U("user32.dll", GetAsyncKeyState); U("user32.dll", GetForegroundWindow); U("user32.dll", GetWindowRect); U("user32.dll", GetWindowLongA);
    U("user32.dll", GetWindowThreadProcessId); U("kernel32.dll", GetCurrentProcessId); U("user32.dll", IsWindow);
    U("user32.dll", MonitorFromWindow); U("user32.dll", GetMonitorInfoA); U("gdi32.dll", PatBlt);
    U("kernel32.dll", GetEnvironmentVariableA); U("kernel32.dll", WriteFile); U("kernel32.dll", CreateFileA);
    U("kernel32.dll", CloseHandle); U("kernel32.dll", GlobalAlloc); U("kernel32.dll", Sleep); U("kernel32.dll", GetTickCount); U("kernel32.dll", QueryPerformanceCounter); U("kernel32.dll", QueryPerformanceFrequency);
    u.timeBeginPeriod = bm_api("winmm.dll", "timeBeginPeriod"); if (u.timeBeginPeriod) u.timeBeginPeriod(1);       /* Sleep(1) really sleeps 1 ms */
    u_ready = 1;
}

/* ---- presentation ---- */
static void shot(void) {                      /* BM_SHOT=<file.bmp>: dump the 8-bit frame now and then (testing aid) */
    char path[MAX_PATH]; HANDLE f; DWORD w;
    struct { WORD type; DWORD size, res, off; } __attribute__((packed)) fh;
    BITMAPINFOHEADER bh;
    int y;
    if (!u.GetEnvironmentVariableA("BM_SHOT", path, sizeof path)) return;
    f = u.CreateFileA(path, GENERIC_WRITE, FILE_SHARE_READ, 0, CREATE_ALWAYS, 0, 0);
    if (f == INVALID_HANDLE_VALUE) return;
    bh = g_bmi.h; bh.biHeight = g_h;           /* bottom-up for the file */
    fh.type = 0x4D42; fh.res = 0; fh.off = 14 + 40 + 1024; fh.size = fh.off + (unsigned)(g_w * g_h);
    u.WriteFile(f, &fh, 14, &w, 0); u.WriteFile(f, &bh, 40, &w, 0); u.WriteFile(f, g_bmi.c, 1024, &w, 0);
    for (y = g_h - 1; y >= 0; y--) u.WriteFile(f, g_pix + y * g_w, (DWORD)g_w, &w, 0);
    u.CloseHandle(f);
}

/* The game was written for a display that shows 60-70 frames a second and draws once per refresh; its menu animations
   count frames.  Without the display's refresh as a clock a frame is drawn as fast as the CPU allows, so the pace is kept
   here: a frame is shown at most every FRAME_MS (several presents within a few ms belong to one frame). */
#define FRAME_HZ 60
static long long g_last_present, g_freq;
static void pace(void) {
    long long now, frame, dt;
    if (!g_freq) { u.QueryPerformanceFrequency(&g_freq); if (!g_freq) return; }
    frame = (long long)((unsigned)g_freq / FRAME_HZ);                 /* the counter runs well below 2^32 ticks a second */
    u.QueryPerformanceCounter(&now);
    dt = now - g_last_present;
    if (dt < frame) {
        unsigned left_ms = (unsigned)(frame - dt) * 1000u / (unsigned)g_freq;
        if (left_ms > 1) u.Sleep(left_ms - 1);
        do u.QueryPerformanceCounter(&now); while (now - g_last_present < frame);   /* the last millisecond is waited out */
    }
    g_last_present = now;
}

/* F12: the game fills the whole monitor (a borderless window; the picture keeps its 4:3 shape, the rest is black) and
   back.  The window returns to its place when the focus goes to another program. */
static int g_full, g_f12_down, g_f12_hooked, g_clear;
static LONG g_win_style;
static RECT g_win_rect;
static void set_fullscreen(int on) {
    if (!g_wnd || on == g_full) return;
    if (on) {
        struct { DWORD cb; RECT mon, work; DWORD flags; } mi;
        void *mon;
        u.GetWindowRect(g_wnd, &g_win_rect);
        g_win_style = u.GetWindowLongA(g_wnd, GWL_STYLE);
        memset(&mi, 0, sizeof mi); mi.cb = sizeof mi;
        mon = u.MonitorFromWindow(g_wnd, 2 /* MONITOR_DEFAULTTONEAREST */);
        if (!mon || !u.GetMonitorInfoA(mon, &mi)) return;
        u.SetWindowLongA(g_wnd, GWL_STYLE, (LONG)(WS_POPUP | WS_VISIBLE));
        u.SetWindowPos(g_wnd, HWND_TOPMOST, mi.mon.left, mi.mon.top, mi.mon.right - mi.mon.left, mi.mon.bottom - mi.mon.top, SWP_FRAMECHANGED | SWP_SHOWWINDOW);
    } else {
        u.SetWindowLongA(g_wnd, GWL_STYLE, g_win_style);
        u.SetWindowPos(g_wnd, HWND_NOTOPMOST, g_win_rect.left, g_win_rect.top, g_win_rect.right - g_win_rect.left, g_win_rect.bottom - g_win_rect.top, SWP_FRAMECHANGED | SWP_SHOWWINDOW);
    }
    g_full = on;
    g_clear = 1;
    bm_log("ddraw: %s", on ? "full screen" : "window");
}

/* does the program have the keyboard focus?  (any window of this process counts: the game may own more than one) */
static int we_have_focus(void) {
    DWORD pid = 0;
    HWND fg = u.GetForegroundWindow();
    if (!fg) return 0;
    u.GetWindowThreadProcessId(fg, &pid);
    return pid == u.GetCurrentProcessId();
}

/* called by the game's own keyboard hook (src/asm/hooks.s bm_key_hook) when F12 goes down: it sees the key even where
   polling the key state does not work */
void bm_toggle_fullscreen(void) __asm__("_bm_toggle_fullscreen");
void bm_toggle_fullscreen(void) {
    uinit();
    bm_log("ddraw: F12 seen by the keyboard hook (full screen %d)", g_full);
    g_f12_hooked = 1;
    if (we_have_focus()) set_fullscreen(!g_full);
}

static void present(void) {
    HDC dc; RECT rc;
    static DWORD away_since;
    int dx = 0, dy = 0, dw, dh, down, focus;
    if (!g_wnd || !g_pix) return;
    focus = we_have_focus();
    down = (u.GetAsyncKeyState(0x7B /* VK_F12 */) & 0x8000) != 0;
    if (down && !g_f12_down && !g_f12_hooked) {                             /* the keyboard hook below did not see it first */
        bm_log("ddraw: F12 pressed (focus %d, full screen %d)", focus, g_full);
        if (focus) set_fullscreen(!g_full);
    }
    if (!down) g_f12_hooked = 0;
    g_f12_down = down;
    if (g_full) {                                                           /* another program has the focus for half a second: back to the window */
        if (focus) away_since = 0;
        else if (!away_since) away_since = u.GetTickCount() | 1;
        else if (u.GetTickCount() - away_since > 500) { away_since = 0; set_fullscreen(0); }
    }
    dc = u.GetDC(g_wnd);
    if (!dc) return;
    u.GetClientRect(g_wnd, &rc);
    dw = rc.right; dh = rc.bottom;
    if (g_full) {                                                           /* keep the 4:3 shape, black bars around */
        dh = dw * g_h / g_w;
        if (dh > rc.bottom) { dh = rc.bottom; dw = dh * g_w / g_h; }
        dx = (rc.right - dw) / 2; dy = (rc.bottom - dh) / 2;
    }
    if (g_clear) { u.PatBlt(dc, 0, 0, rc.right, rc.bottom, 0x42 /* BLACKNESS */); g_clear = 0; }
    u.SetStretchBltMode(dc, COLORONCOLOR);
    u.StretchDIBits(dc, dx, dy, dw, dh, 0, 0, g_w, g_h, g_pix, (const BITMAPINFO *)&g_bmi, DIB_RGB_COLORS, SRCCOPY);
    u.ReleaseDC(g_wnd, dc);
    {   static unsigned every;                                   /* BM_SHOT_EVERY=<n>: dump every n-th frame (default 30; 1 for screens that draw rarely) */
        if (!every) { char e[16]; every = u.GetEnvironmentVariableA("BM_SHOT_EVERY", e, sizeof e) && bm_atoi(e) > 0 ? (unsigned)bm_atoi(e) : 30; }
        if (++g_frames % every == 0) { shot(); if (every >= 30) bm_log("ddraw: frame %d", (int)g_frames); }
    }
}

/* ---- IUnknown-ish helpers ---- */
static HRESULT __stdcall stub(void) { return (HRESULT)DDERR_UNSUPPORTED; }
static ULONG __stdcall addref(obj_t *o) { return (ULONG)++o->ref; }
static ULONG __stdcall release(obj_t *o) { return (ULONG)(o->ref > 0 ? --o->ref : 0); }   /* objects are static */
static HRESULT __stdcall qi(obj_t *o, const void *iid, void **out) { (void)o; (void)iid; *out = 0; return (HRESULT)0x80004002; }

/* ---- IDirectDraw ---- */
static HRESULT __stdcall dd_SetCooperativeLevel(obj_t *o, HWND wnd, DWORD flags) { (void)o; (void)flags; g_wnd = wnd; uinit(); return DD_OK; }
static HRESULT __stdcall dd_RestoreDisplayMode(obj_t *o) { (void)o; return DD_OK; }

static HRESULT __stdcall dd_SetDisplayMode(obj_t *o, DWORD w, DWORD h, DWORD bpp) {
    RECT wa, r; int pct = 90, cw, ch, x, y, aw, ah;
    char env[16];
    (void)o;
    uinit();
    if (bpp != 8) return (HRESULT)DDERR_INVALIDMODE;
    g_w = (int)w; g_h = (int)h; g_bpp = (int)bpp;
    if (!g_pix) g_pix = u.GlobalAlloc(GPTR, (SIZE_T)(w * h));
    memset(&g_bmi, 0, sizeof g_bmi);
    g_bmi.h.biSize = sizeof(BITMAPINFOHEADER); g_bmi.h.biWidth = g_w; g_bmi.h.biHeight = -g_h;
    g_bmi.h.biPlanes = 1; g_bmi.h.biBitCount = 8; g_bmi.h.biCompression = BI_RGB; g_bmi.h.biClrUsed = 256;
    if (g_wnd) {
        u.SystemParametersInfoA(SPI_GETWORKAREA, 0, &wa, 0);
        /* biggest window that fits ~90 % of the work area, never smaller than the native mode */
        {
            int fx = (wa.right - wa.left) * 100 / (int)w, fy = (wa.bottom - wa.top - 40) * 100 / (int)h;
            pct = (fx < fy ? fx : fy) * 90 / 100;
            if (pct < 100) pct = 100;
            if (pct > 300) pct = 300;
            if (u.GetEnvironmentVariableA("BM_SCALE", env, sizeof env)) pct = bm_atoi(env);
            g_scale_pct = pct;
        }
        cw = (int)w * pct / 100; ch = (int)h * pct / 100;
        u.SetWindowLongA(g_wnd, GWL_STYLE, WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX);
        u.SetWindowLongA(g_wnd, GWL_EXSTYLE, 0);
        { HCURSOR arrow = u.LoadCursorA(0, IDC_ARROW); u.SetClassLongA(g_wnd, GCL_HCURSOR, (LONG)(UINT_PTR)arrow); u.SetCursor(arrow); }   /* visible pointer over the game window */
        r.left = 0; r.top = 0; r.right = cw; r.bottom = ch;
        u.AdjustWindowRectEx(&r, WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX, FALSE, 0);
        aw = r.right - r.left; ah = r.bottom - r.top;
        x = wa.left + ((wa.right - wa.left) - aw) / 2; y = wa.top + ((wa.bottom - wa.top) - ah) / 2;
        u.SetWindowPos(g_wnd, HWND_NOTOPMOST, x, y, aw, ah, SWP_FRAMECHANGED | SWP_SHOWWINDOW);
    }
    bm_log("ddraw: windowed %dx%d, scale %d%%", (int)w, (int)h, g_scale_pct);
    return DD_OK;
}

static HRESULT __stdcall dd_CreateSurface(obj_t *o, void *desc, obj_t **out, void *outer) {
    (void)o; (void)desc; (void)outer;
    *out = &g_surf; g_surf.ref = 1;
    return DD_OK;
}

static HRESULT __stdcall dd_CreatePalette(obj_t *o, DWORD flags, const unsigned char *ents, obj_t **out, void *outer) {
    int i;
    (void)o; (void)flags; (void)outer;
    for (i = 0; i < 256; i++) { g_bmi.c[i].rgbRed = ents[i * 4]; g_bmi.c[i].rgbGreen = ents[i * 4 + 1]; g_bmi.c[i].rgbBlue = ents[i * 4 + 2]; g_bmi.c[i].rgbReserved = 0; }
    *out = &g_pal; g_pal.ref = 1;
    return DD_OK;
}

/* ---- IDirectDrawSurface ---- */
static HRESULT __stdcall s_Lock(obj_t *o, const RECT *rect, unsigned *desc, DWORD flags, HANDLE ev) {
    (void)o; (void)rect; (void)flags; (void)ev;
    desc[1] = 0x2 | 0x4 | 0x8 | 0x800 | 0x1000;          /* HEIGHT WIDTH PITCH LPSURFACE PIXELFORMAT */
    desc[2] = (unsigned)g_h; desc[3] = (unsigned)g_w; desc[4] = (unsigned)g_w;
    desc[9] = (unsigned)(UINT_PTR)g_pix;                  /* lpSurface at 0x24 */
    desc[0x48 / 4] = 32; desc[0x4c / 4] = 0x20; desc[0x54 / 4] = 8;   /* DDPIXELFORMAT: palette indexed, 8 bits */
    return DD_OK;
}
static HRESULT __stdcall s_Unlock(obj_t *o, void *p) {      /* the end of a drawn frame: this is where the display's refresh is imitated */
    static DWORD t0, n;
    DWORD now;
    (void)o; (void)p;
    pace();
    present();
    now = u.GetTickCount(); n++;
    if (now - t0 >= 2000) { bm_log("ddraw: %d unlocks in %d ms", (int)n, (int)(now - t0)); t0 = now; n = 0; }
    return DD_OK;
}
static HRESULT __stdcall s_Restore(obj_t *o) { (void)o; return DD_OK; }
static HRESULT __stdcall s_SetPalette(obj_t *o, obj_t *pal) { (void)o; (void)pal; present(); return DD_OK; }
static HRESULT __stdcall s_GetPixelFormat(obj_t *o, unsigned *pf) {
    (void)o; memset(pf, 0, 32); pf[0] = 32; pf[1] = 0x20; pf[3] = 8; return DD_OK;
}

/* ---- IDirectDrawPalette ---- */
static HRESULT __stdcall p_SetEntries(obj_t *o, DWORD flags, DWORD start, DWORD count, const unsigned char *ents) {
    DWORD i;
    (void)o; (void)flags;
    if (start + count > 256) return (HRESULT)DDERR_UNSUPPORTED;
    for (i = 0; i < count; i++) {
        g_bmi.c[start + i].rgbRed = ents[i * 4]; g_bmi.c[start + i].rgbGreen = ents[i * 4 + 1]; g_bmi.c[start + i].rgbBlue = ents[i * 4 + 2];
    }
    present();
    return DD_OK;
}
static HRESULT __stdcall p_GetEntries(obj_t *o, DWORD flags, DWORD start, DWORD count, unsigned char *ents) {
    DWORD i;
    (void)o; (void)flags;
    if (start + count > 256) return (HRESULT)DDERR_UNSUPPORTED;
    for (i = 0; i < count; i++) {
        ents[i * 4] = g_bmi.c[start + i].rgbRed; ents[i * 4 + 1] = g_bmi.c[start + i].rgbGreen; ents[i * 4 + 2] = g_bmi.c[start + i].rgbBlue; ents[i * 4 + 3] = 0;
    }
    return DD_OK;
}

static void build_tables(void) {
    int i;
    for (i = 0; i < 23; i++) dd_vt[i] = (void *)stub;
    for (i = 0; i < 36; i++) surf_vt[i] = (void *)stub;
    for (i = 0; i < 7; i++) pal_vt[i] = (void *)stub;
    dd_vt[0] = surf_vt[0] = pal_vt[0] = (void *)qi;
    dd_vt[1] = surf_vt[1] = pal_vt[1] = (void *)addref;
    dd_vt[2] = surf_vt[2] = pal_vt[2] = (void *)release;
    dd_vt[5] = (void *)dd_CreatePalette; dd_vt[6] = (void *)dd_CreateSurface;
    dd_vt[19] = (void *)dd_RestoreDisplayMode; dd_vt[20] = (void *)dd_SetCooperativeLevel; dd_vt[21] = (void *)dd_SetDisplayMode;
    surf_vt[21] = (void *)s_GetPixelFormat; surf_vt[25] = (void *)s_Lock; surf_vt[27] = (void *)s_Restore;
    surf_vt[31] = (void *)s_SetPalette; surf_vt[32] = (void *)s_Unlock;
    pal_vt[4] = (void *)p_GetEntries; pal_vt[6] = (void *)p_SetEntries;
}

BM_SHIM(HRESULT, DirectDrawCreate, (const void *guid, obj_t **out, void *outer)) {
    (void)guid; (void)outer;
    build_tables();
    uinit();
    g_dd.ref = 1;
    *out = &g_dd;
    return DD_OK;
}
