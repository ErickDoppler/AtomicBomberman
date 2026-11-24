/* USER32 for the portable build: one window class, one window, the message queue, the keyboard, and DirectInput's
 * keyboard (which the game reads with GetDeviceState).  Window messages are built from the back end's events and handed to
 * the game's own window procedure (a translated guest function), exactly as Windows would. */
#include "w32.h"
#include "host.h"
#include "back.h"

#define WM_CREATE 0x0001
#define WM_DESTROY 0x0002
#define WM_ACTIVATE 0x0006
#define WM_SETFOCUS 0x0007
#define WM_KILLFOCUS 0x0008
#define WM_PAINT 0x000F
#define WM_CLOSE 0x0010
#define WM_QUIT 0x0012
#define WM_ACTIVATEAPP 0x001C
#define WM_NCCREATE 0x0081
#define WM_KEYDOWN 0x0100
#define WM_KEYUP 0x0101
#define WM_CHAR 0x0102
#define WM_SYSKEYDOWN 0x0104
#define WM_SYSKEYUP 0x0105

void w32_reg(const char *name, int argc, void *fn);

/* ---------------------------------------------------------------- keyboard: scan codes, virtual keys */
static uint8_t dikdown[256];            /* DirectInput view: scan code -> down */
static uint8_t vkdown[256];             /* Win32 view */
static int dik_to_vk(int d) {
    static const uint8_t t[0x59] = {
        0, 0x1B, '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 0xBD, 0xBB, 0x08, 0x09,
        'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 0xDB, 0xDD, 0x0D, 0x11, 'A', 'S',
        'D', 'F', 'G', 'H', 'J', 'K', 'L', 0xBA, 0xDE, 0xC0, 0x10, 0xDC, 'Z', 'X', 'C', 'V',
        'B', 'N', 'M', 0xBC, 0xBE, 0xBF, 0x10, 0x6A, 0x12, 0x20, 0x14, 0x70, 0x71, 0x72, 0x73, 0x74,
        0x75, 0x76, 0x77, 0x78, 0x79, 0x90, 0x91, 0x67, 0x68, 0x69, 0x6D, 0x64, 0x65, 0x66, 0x6B, 0x61,
        0x62, 0x63, 0x60, 0x6E, 0, 0, 0, 0x7A, 0x7B };
    switch (d) {
    case 0x9C: return 0x0D; case 0x9D: return 0x11; case 0xB5: return 0x6F; case 0xB8: return 0x12; case 0xC7: return 0x24;
    case 0xC8: return 0x26; case 0xC9: return 0x21; case 0xCB: return 0x25; case 0xCD: return 0x27; case 0xCF: return 0x23;
    case 0xD0: return 0x28; case 0xD1: return 0x22; case 0xD2: return 0x2D; case 0xD3: return 0x2E; case 0xDB: case 0xDC: return 0x5B;
    }
    return d >= 0 && d < 0x59 ? t[d] : 0;
}
/* US layout: the character a key produces (for WM_CHAR) */
static int vk_char(int vk, int shift) {
    static const char sh_digits[] = ")!@#$%^&*(";
    if (vk >= 'A' && vk <= 'Z') return shift ? vk : vk + 32;
    if (vk >= '0' && vk <= '9') return shift ? sh_digits[vk - '0'] : vk;
    switch (vk) {
    case 0x20: return ' '; case 0x0D: return 13; case 0x08: return 8; case 0x09: return 9; case 0x1B: return 27;
    case 0xBA: return shift ? ':' : ';'; case 0xBB: return shift ? '+' : '='; case 0xBC: return shift ? '<' : ',';
    case 0xBD: return shift ? '_' : '-'; case 0xBE: return shift ? '>' : '.'; case 0xBF: return shift ? '?' : '/';
    case 0xC0: return shift ? '~' : '`'; case 0xDB: return shift ? '{' : '['; case 0xDC: return shift ? '|' : '\\';
    case 0xDD: return shift ? '}' : ']'; case 0xDE: return shift ? '"' : '\'';
    }
    if (vk >= 0x60 && vk <= 0x69) return '0' + vk - 0x60;
    if (vk == 0x6E) return '.';
    return 0;
}

/* ---------------------------------------------------------------- message queue */
typedef struct { uint32_t hwnd, msg, wp, lp, time; } qmsg_t;
#define QN 256
static qmsg_t q[QN]; static int qh, qt;
static int quit_posted, quit_code;
static void post(uint32_t hwnd, uint32_t msg, uint32_t wp, uint32_t lp) {
    int n = (qt + 1) % QN;
    if (n == qh) return;
    q[qt].hwnd = hwnd; q[qt].msg = msg; q[qt].wp = wp; q[qt].lp = lp; q[qt].time = (uint32_t)host_ms();
    qt = n;
}

/* ---------------------------------------------------------------- windows */
#define MAXWIN 8
typedef struct { int used; uint32_t proc; char title[128]; } win_t;
static win_t wins[MAXWIN];
static uint32_t class_proc;               /* the window procedure of the registered class */
static uint32_t hook_proc;                /* WH_KEYBOARD hook */
static uint32_t main_wnd;
#define WH 0x00010000u
static win_t *win_of(uint32_t h) { unsigned i = (h - WH) / 4; return (h >= WH && i < MAXWIN && wins[i].used) ? &wins[i] : 0; }

static DWORD w_RegisterClassA(const uint32_t *wc) { class_proc = wc[1]; return 0xC001; }
static HWND w_CreateWindowExA(DWORD ex, LPCSTR cls, LPCSTR title, DWORD style, int x, int y, int w, int h, HWND parent, HWND menu, HINSTANCE inst, void *param) {
    int i; uint32_t hw; uint32_t cs;
    (void)ex; (void)cls; (void)style; (void)x; (void)y; (void)w; (void)h; (void)parent; (void)menu; (void)inst;
    for (i = 0; i < MAXWIN && wins[i].used; i++) {}
    if (i == MAXWIN) return 0;
    wins[i].used = 1; wins[i].proc = class_proc;
    snprintf(wins[i].title, sizeof wins[i].title, "%s", title ? title : "");
    hw = WH + (uint32_t)i * 4;
    if (!main_wnd) { main_wnd = hw; back_title(wins[i].title); }
    cs = gmalloc(48); wr32(cs, (uint32_t)(uintptr_t)param);                 /* CREATESTRUCT: only lpCreateParams */
    if (class_proc) {
        guest_call(class_proc, 4, hw, WM_NCCREATE, 0, cs);
        guest_call(class_proc, 4, hw, WM_CREATE, 0, cs);
    }
    gfree(cs);
    post(hw, WM_ACTIVATEAPP, 1, 1); post(hw, WM_ACTIVATE, 1, 0); post(hw, WM_SETFOCUS, 0, 0);   /* the new window is active, as Windows tells it */
    return (HWND)(uintptr_t)hw;
}
static BOOL w_UpdateWindow(HWND h) { win_t *w = win_of((uint32_t)(uintptr_t)h); if (w && w->proc) guest_call(w->proc, 4, (uint32_t)(uintptr_t)h, WM_PAINT, 0, 0); return 1; }
static BOOL w_SetWindowTextA(HWND h, LPCSTR t) { win_t *w = win_of((uint32_t)(uintptr_t)h); if (w) snprintf(w->title, sizeof w->title, "%s", t); if ((uint32_t)(uintptr_t)h == main_wnd) back_title(t); return 1; }
static HWND w_GetActiveWindow(void) { return (HWND)(uintptr_t)main_wnd; }
static HWND w_SetFocus(HWND h) { return h; }
static DWORD w_Zero(void) { return 0; }
static DWORD w_One(void) { return 1; }
static int w_GetSystemMetrics(int i) { return i == 0 ? 640 : i == 1 ? 480 : 0; }
static HCURSOR w_LoadCursorA(HINSTANCE i, LPCSTR n) { (void)i; (void)n; return (HCURSOR)(uintptr_t)1; }
static int w_MessageBoxA(HWND h, LPCSTR t, LPCSTR c, UINT f) { (void)h; (void)f; fprintf(stderr, "[%s] %s\n", c ? c : "", t ? t : ""); return 1; }
static int w_ShowCursor(BOOL on) { (void)on; return 1; }
static HCURSOR w_SetCursor(HCURSOR c) { return c; }
static void w_PostQuitMessage(int code) { quit_posted = 1; quit_code = code; }
static uint32_t w_DefWindowProcA(HWND h, UINT msg, uint32_t wp, uint32_t lp) {
    (void)wp; (void)lp;
    if (msg == WM_CLOSE) { win_t *w = win_of((uint32_t)(uintptr_t)h); if (w && w->proc) guest_call(w->proc, 4, (uint32_t)(uintptr_t)h, WM_DESTROY, 0, 0); w_PostQuitMessage(0); }
    return 0;
}

/* ---------------------------------------------------------------- events -> messages */
static int shift_down(void) { return vkdown[0x10]; }
static void di_push(int dik, int down);
static void key_event(int dik, int down) {
    int vk = dik_to_vk(dik), prev = dikdown[dik & 255];
    uint32_t lp = 1u | ((uint32_t)(dik & 0x7f) << 16) | ((dik & 0x80) ? 1u << 24 : 0) | (down ? (prev ? 1u << 30 : 0) : (1u << 30) | (1u << 31));
    dikdown[dik & 255] = down ? 1 : 0;
    di_push(dik, down);
    if (vk) {
        if (vk == 0x10 || vk == 0x11 || vk == 0x12) {                    /* both sides of a modifier share one virtual key */
            int other = vk == 0x10 ? (dik == 0x2A ? 0x36 : 0x2A) : vk == 0x11 ? (dik == 0x1D ? 0x9D : 0x1D) : (dik == 0x38 ? 0xB8 : 0x38);
            vkdown[vk] = (uint8_t)(down || dikdown[other]);
        } else vkdown[vk] = down ? 1 : 0;
    }
    host_log("key dik=%02x vk=%02x down=%d hook=%08x", dik, vk, down, hook_proc);
    if (hook_proc) guest_call(hook_proc, 3, 0, (uint32_t)vk, lp);          /* the game's keyboard hook sees every key first */
    if (!vk) return;
    {   int alt = vkdown[0x12] && !(vk == 0x12);
        uint32_t m = down ? (alt || vk == 0x12 ? WM_SYSKEYDOWN : WM_KEYDOWN) : (alt || vk == 0x12 ? WM_SYSKEYUP : WM_KEYUP);
        if (alt) lp |= 1u << 29;
        post(main_wnd, m, (uint32_t)vk, lp);
    }
}
void w32user_pump(void) {
    back_event_t e;
    while (back_poll(&e)) {
        switch (e.type) {
        case BE_KEY_DOWN: key_event(e.a, 1); break;
        case BE_KEY_UP: key_event(e.a, 0); break;
        case BE_QUIT: post(main_wnd, WM_CLOSE, 0, 0); break;
        case BE_FOCUS: post(main_wnd, WM_ACTIVATEAPP, (uint32_t)e.a, 0); if (!e.a) { memset(dikdown, 0, sizeof dikdown); memset(vkdown, 0, sizeof vkdown); } break;
        }
    }
}

static BOOL w_PeekMessageA(uint32_t *msg, HWND h, UINT lo, UINT hi, UINT remove) {
    (void)h; (void)lo; (void)hi;
    host_pump();
    if (qh != qt) {
        msg[0] = q[qh].hwnd; msg[1] = q[qh].msg; msg[2] = q[qh].wp; msg[3] = q[qh].lp; msg[4] = q[qh].time; msg[5] = 0; msg[6] = 0;
        if (remove & 1) qh = (qh + 1) % QN;
        return 1;
    }
    if (quit_posted) { msg[0] = 0; msg[1] = WM_QUIT; msg[2] = (uint32_t)quit_code; msg[3] = 0; msg[4] = (uint32_t)host_ms(); msg[5] = msg[6] = 0; if (remove & 1) quit_posted = 0; return 1; }
    return 0;
}
static BOOL w_TranslateMessage(const uint32_t *msg) {
    if (msg[1] == WM_KEYDOWN || msg[1] == WM_SYSKEYDOWN) {
        int c = msg[1] == WM_KEYDOWN ? vk_char((int)msg[2], shift_down()) : 0;
        if (c) post(msg[0], WM_CHAR, (uint32_t)c, msg[3]);
        return c != 0;
    }
    return 0;
}
static uint32_t w_DispatchMessageA(const uint32_t *msg) {
    host_log("dispatch msg=%x wp=%x lp=%x", msg[1], msg[2], msg[3]);
    win_t *w = win_of(msg[0]);
    uint32_t proc = w && w->proc ? w->proc : class_proc;
    return proc ? guest_call(proc, 4, msg[0], msg[1], msg[2], msg[3]) : 0;
}
static SHORT w_GetKeyState(int vk) { return (SHORT)((vk >= 0 && vk < 256 && vkdown[vk]) ? 0xFF80 : 0); }
static SHORT w_GetAsyncKeyState(int vk) { host_pump(); return (SHORT)((vk >= 0 && vk < 256 && vkdown[vk]) ? 0x8000 : 0); }
static HANDLE w_SetWindowsHookExA(int id, uint32_t proc, HINSTANCE m, DWORD tid) { (void)m; (void)tid; if (id == 2) hook_proc = proc; return (HANDLE)(uintptr_t)0x900; }
static BOOL w_UnhookWindowsHookEx(HANDLE h) { (void)h; hook_proc = 0; return 1; }
static uint32_t w_CallNextHookEx(HANDLE h, int code, uint32_t wp, uint32_t lp) { (void)h; (void)code; (void)wp; (void)lp; return 0; }

/* ---------------------------------------------------------------- DirectInput (the keyboard only) */
static uint32_t di_vt, dev_vt, di_obj, dev_obj;
static uint32_t di_ok(void) { return 0; }
static uint32_t di_addref(uint32_t t) { (void)t; return 1; }
static uint32_t di_create_device(uint32_t t, uint32_t guid, uint32_t *out, uint32_t outer) { (void)t; (void)guid; (void)outer; *out = dev_obj; host_log("dinput: CreateDevice"); return 0; }
static uint32_t dev_get_state(uint32_t t, uint32_t cb, uint8_t *data) {
    host_log("dinput GetDeviceState cb=%u", cb);
    int i; (void)t;
    host_pump();
    for (i = 0; i < (int)cb; i++) data[i] = (uint8_t)(i < 256 && dikdown[i] ? 0x80 : 0);
    return 0;
}
/* buffered keyboard data (DIDEVICEOBJECTDATA: offset = scan code, data = 0x80 down / 0 up, time stamp, sequence): what the game reads */
typedef struct { uint32_t ofs, data, time, seq; } didata_t;
#define DIQ 128
static didata_t diq[DIQ]; static int diqh, diqt; static uint32_t diseq;
static void di_push(int dik, int down) {
    int nx = (diqt + 1) % DIQ;
    if (nx == diqh) return;
    diq[diqt].ofs = (uint32_t)dik; diq[diqt].data = down ? 0x80u : 0; diq[diqt].time = (uint32_t)host_ms(); diq[diqt].seq = ++diseq;
    diqt = nx;
}
static uint32_t dev_get_data(uint32_t t, uint32_t cb, void *d, uint32_t *n, uint32_t flags) {
    uint32_t cnt = 0, max; int h = diqh;
    (void)t; (void)cb;
    host_pump();
    max = n ? *n : 0;
    if (max == 0xFFFFFFFFu) { diqh = diqt; *n = 0; return 0; }          /* flush */
    while (h != diqt && cnt < max) { memcpy((uint8_t *)d + cnt * 16, &diq[h], 16); h = (h + 1) % DIQ; cnt++; }
    if (!(flags & 1)) diqh = h;                                          /* DIGDD_PEEK leaves them in the buffer */
    if (n) *n = cnt;
    return 0;
}
static uint32_t dev_unsupported(uint32_t t) {
    host_log("dinput UNSUPPORTED call"); (void)t; host_log("dinput: unimplemented method"); return 0x80004001u; }
static uint32_t w_DirectInputCreateA(HINSTANCE inst, DWORD ver, uint32_t *out, void *outer) {
    (void)inst; (void)ver; (void)outer;
    *out = di_obj;
    return 0;
}
static uint32_t make_obj(uint32_t *vt_out, int n, void **fns, int *argcs) {
    uint32_t vt = gmalloc((uint32_t)n * 4), o = gmalloc(8);
    int i;
    for (i = 0; i < n; i++) wr32(vt + 4 * (uint32_t)i, host_magic(argcs[i], fns[i]));
    wr32(o, vt);
    if (vt_out) *vt_out = vt;
    return o;
}
static void dinput_init(void) {
    void *f1[8] = { di_ok, di_addref, di_addref, di_create_device, di_ok, di_ok, di_ok, di_ok };
    int a1[8] = { 3, 1, 1, 4, 4, 2, 2, 3 };
    void *f2[18]; int a2[18]; int i;
    for (i = 0; i < 18; i++) { f2[i] = dev_unsupported; a2[i] = 1; }
    f2[0] = di_ok; a2[0] = 3; f2[1] = di_addref; f2[2] = di_addref;
    f2[7] = di_ok; a2[7] = 1;                                 /* Acquire */
    f2[8] = di_ok; a2[8] = 1;                                 /* Unacquire */
    f2[9] = dev_get_state; a2[9] = 3;
    f2[10] = dev_get_data; a2[10] = 5;
    f2[11] = di_ok; a2[11] = 2;                               /* SetDataFormat */
    f2[12] = di_ok; a2[12] = 2;                               /* SetEventNotification */
    f2[13] = di_ok; a2[13] = 3;                               /* SetCooperativeLevel */
    f2[5] = di_ok; a2[5] = 3; f2[6] = di_ok; a2[6] = 3;       /* Get/SetProperty */
    f2[3] = di_ok; a2[3] = 2;                                 /* GetCapabilities */
    di_obj = make_obj(&di_vt, 8, f1, a1);
    dev_obj = make_obj(&dev_vt, 18, f2, a2);
}

void w32user_init(void) {
    w32_reg("RegisterClassA", 1, (void *)w_RegisterClassA); w32_reg("CreateWindowExA", 12, (void *)w_CreateWindowExA);
    w32_reg("UpdateWindow", 1, (void *)w_UpdateWindow); w32_reg("SetWindowTextA", 2, (void *)w_SetWindowTextA);
    w32_reg("GetActiveWindow", 0, (void *)w_GetActiveWindow); w32_reg("SetFocus", 1, (void *)w_SetFocus);
    w32_reg("GetSystemMetrics", 1, (void *)w_GetSystemMetrics); w32_reg("LoadCursorA", 2, (void *)w_LoadCursorA);
    w32_reg("LoadIconA", 2, (void *)w_LoadCursorA); w32_reg("MessageBoxA", 4, (void *)w_MessageBoxA);
    w32_reg("ShowCursor", 1, (void *)w_ShowCursor); w32_reg("SetCursor", 1, (void *)w_SetCursor); w32_reg("PostQuitMessage", 1, (void *)w_PostQuitMessage);
    w32_reg("DefWindowProcA", 4, (void *)w_DefWindowProcA); w32_reg("PeekMessageA", 5, (void *)w_PeekMessageA);
    w32_reg("TranslateMessage", 1, (void *)w_TranslateMessage); w32_reg("DispatchMessageA", 1, (void *)w_DispatchMessageA);
    w32_reg("GetKeyState", 1, (void *)w_GetKeyState); w32_reg("GetAsyncKeyState", 1, (void *)w_GetAsyncKeyState);
    w32_reg("SetWindowsHookExA", 4, (void *)w_SetWindowsHookExA); w32_reg("UnhookWindowsHookEx", 1, (void *)w_UnhookWindowsHookEx);
    w32_reg("CallNextHookEx", 4, (void *)w_CallNextHookEx); w32_reg("GetUpdateRect", 3, (void *)w_Zero);
    w32_reg("DirectInputCreateA", 4, (void *)w_DirectInputCreateA);
    (void)w_One;
    dinput_init();
}
