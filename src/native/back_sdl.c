/* SDL2 back end: a window (or the full screen / the Linux console through SDL's KMS/DRM driver), the keyboard and the audio
 * device.  SDL's own header is not needed: the handful of functions and structures used are declared here, so the game builds
 * on a machine that only has the SDL2 runtime library (link with -l:libSDL2-2.0.so.0). */
#include "back.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* ---- the part of the SDL2 API in use (ABI of SDL 2.0.x) ---- */
typedef struct SDL_Window SDL_Window;
typedef struct SDL_Renderer SDL_Renderer;
typedef struct SDL_Texture SDL_Texture;
typedef struct { int x, y, w, h; } SDL_Rect;
typedef union { uint32_t type; uint8_t pad[56]; } SDL_Event;
typedef struct {
    int freq; uint16_t format; uint8_t channels, silence; uint16_t samples, padding; uint32_t size;
    void (*callback)(void *userdata, uint8_t *stream, int len); void *userdata;
} SDL_AudioSpec;
int SDL_Init(uint32_t flags);
const char *SDL_GetError(void);
SDL_Window *SDL_CreateWindow(const char *title, int x, int y, int w, int h, uint32_t flags);
SDL_Renderer *SDL_CreateRenderer(SDL_Window *w, int index, uint32_t flags);
SDL_Texture *SDL_CreateTexture(SDL_Renderer *r, uint32_t format, int access, int w, int h);
int SDL_UpdateTexture(SDL_Texture *t, const SDL_Rect *rect, const void *pixels, int pitch);
int SDL_RenderClear(SDL_Renderer *r);
int SDL_RenderCopy(SDL_Renderer *r, SDL_Texture *t, const SDL_Rect *src, const SDL_Rect *dst);
void SDL_RenderPresent(SDL_Renderer *r);
int SDL_RenderSetLogicalSize(SDL_Renderer *r, int w, int h);
int SDL_RenderSetIntegerScale(SDL_Renderer *r, int enable);
int SDL_SetWindowFullscreen(SDL_Window *w, uint32_t flags);
void SDL_SetWindowTitle(SDL_Window *w, const char *title);
void SDL_SetWindowSize(SDL_Window *w, int width, int height);
int SDL_ShowCursor(int toggle);
int SDL_PollEvent(SDL_Event *e);
int SDL_GetDisplayBounds(int index, SDL_Rect *r);
int SDL_OpenAudio(SDL_AudioSpec *want, SDL_AudioSpec *have);
void SDL_PauseAudio(int pause);
void SDL_LockAudio(void);
void SDL_UnlockAudio(void);
void SDL_Delay(uint32_t ms);

#define SDL_INIT_AUDIO 0x10u
#define SDL_INIT_VIDEO 0x20u
#define SDL_WINDOWPOS_CENTERED 0x2FFF0000
#define SDL_WINDOW_SHOWN 0x4u
#define SDL_WINDOW_FULLSCREEN_DESKTOP 0x1001u
#define SDL_RENDERER_PRESENTVSYNC 0x4u
#define SDL_PIXELFORMAT_ARGB8888 0x16362004u
#define SDL_TEXTUREACCESS_STREAMING 1
#define AUDIO_S16SYS 0x8010
#define EV_QUIT 0x100u
#define EV_WINDOW 0x200u
#define EV_KEYDOWN 0x300u
#define EV_KEYUP 0x301u
#define WIN_FOCUS_GAINED 12
#define WIN_FOCUS_LOST 13

static SDL_Window *win;
static SDL_Renderer *ren;
static SDL_Texture *tex;
static int vw = 640, vh = 480, full;
static uint32_t *rgb;
static void (*audio_fill)(int16_t *, int);

/* test aid, as in back_null.c: BM_KEYS=<frame>:<scancode hex>[u],...  and BM_QUIT_AT=<frame> */
static unsigned frame_n;
static struct { unsigned at; int key, up; } script[256];
static int nscript, next_script, quit_sent;
static unsigned quit_at;
static void parse_script(void) {
    const char *k = getenv("BM_KEYS"), *q = getenv("BM_QUIT_AT");
    if (q) quit_at = (unsigned)atoi(q);
    while (k && *k && nscript < 256) {
        char *e; unsigned at = (unsigned)strtoul(k, &e, 10); int key, up = 0;
        if (*e != ':') break;
        key = (int)strtoul(e + 1, &e, 16);
        if (*e == 'u') { up = 1; e++; }
        script[nscript].at = at; script[nscript].key = key; script[nscript].up = up; nscript++;
        k = *e == ',' ? e + 1 : e;
        if (!*e) break;
    }
}

int back_init(void) {
    parse_script();
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO) != 0) {
        if (SDL_Init(SDL_INIT_VIDEO) != 0) { fprintf(stderr, "SDL: %s\n", SDL_GetError()); return -1; }   /* no sound device is not fatal */
    }
    return 0;
}

void back_title(const char *t) { if (win) SDL_SetWindowTitle(win, t); }

void back_set_mode(int w, int h) {
    int scale = 2; const char *e = getenv("BM_SCALE"); SDL_Rect r;
    vw = w; vh = h;
    if (SDL_GetDisplayBounds(0, &r) == 0 && !e) {                    /* the biggest whole multiple that fits ~90 % of the screen */
        scale = r.h * 9 / 10 / h < r.w * 9 / 10 / w ? r.h * 9 / 10 / h : r.w * 9 / 10 / w;
        if (scale < 1) scale = 1; if (scale > 4) scale = 4;
    } else if (e) scale = atoi(e) / 100 > 0 ? atoi(e) / 100 : 1;
    free(rgb); rgb = (uint32_t *)malloc((size_t)w * (size_t)h * 4);
    if (!win) {
        win = SDL_CreateWindow("Atomic Bomberman", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, w * scale, h * scale, SDL_WINDOW_SHOWN);
        if (!win) { fprintf(stderr, "SDL: %s\n", SDL_GetError()); exit(1); }
        ren = SDL_CreateRenderer(win, -1, getenv("BM_VSYNC") ? SDL_RENDERER_PRESENTVSYNC : 0);
        if (!ren) ren = SDL_CreateRenderer(win, -1, 0);
        if (!ren) { fprintf(stderr, "SDL: %s\n", SDL_GetError()); exit(1); }
        SDL_RenderSetLogicalSize(ren, w, h);                          /* keeps the 4:3 shape, black bars around */
        SDL_ShowCursor(0);
        if (getenv("BM_FULLSCREEN")) back_fullscreen(1);
    }
    if (tex) { /* a new mode: the old texture is simply replaced */ }
    tex = SDL_CreateTexture(ren, SDL_PIXELFORMAT_ARGB8888, SDL_TEXTUREACCESS_STREAMING, w, h);
}

void back_present(const uint8_t *pix, const uint32_t *pal, int w, int h) {
    int n = w * h, i;
    frame_n++;
    if (!tex || !rgb) return;
    for (i = 0; i < n; i++) rgb[i] = 0xFF000000u | pal[pix[i]];
    SDL_UpdateTexture(tex, 0, rgb, w * 4);
    SDL_RenderClear(ren);
    SDL_RenderCopy(ren, tex, 0, 0);
    SDL_RenderPresent(ren);
}

/* SDL scan code (USB usage) -> DirectInput scan code */
static int dik_of(int sc) {
    static const uint8_t letters[26] = { 0x1E, 0x30, 0x2E, 0x20, 0x12, 0x21, 0x22, 0x23, 0x17, 0x24, 0x25, 0x26, 0x32, 0x31, 0x18, 0x19, 0x10, 0x13, 0x1F, 0x14, 0x16, 0x2F, 0x11, 0x2D, 0x15, 0x2C };
    static const uint8_t keypad[10] = { 0x52, 0x4F, 0x50, 0x51, 0x4B, 0x4C, 0x4D, 0x47, 0x48, 0x49 };
    if (sc >= 4 && sc <= 29) return letters[sc - 4];
    if (sc >= 30 && sc <= 38) return 0x02 + (sc - 30);
    if (sc == 39) return 0x0B;
    if (sc >= 58 && sc <= 67) return 0x3B + (sc - 58);
    if (sc >= 89 && sc <= 98) return keypad[sc == 98 ? 0 : sc - 88];
    switch (sc) {
    case 40: return 0x1C; case 41: return 0x01; case 42: return 0x0E; case 43: return 0x0F; case 44: return 0x39; case 45: return 0x0C;
    case 46: return 0x0D; case 47: return 0x1A; case 48: return 0x1B; case 49: return 0x2B; case 51: return 0x27; case 52: return 0x28;
    case 53: return 0x29; case 54: return 0x33; case 55: return 0x34; case 56: return 0x35; case 57: return 0x3A; case 68: return 0x57;
    case 69: return 0x58; case 70: return 0xB7; case 71: return 0x46; case 72: return 0xC5; case 73: return 0xD2; case 74: return 0xC7;
    case 75: return 0xC9; case 76: return 0xD3; case 77: return 0xCF; case 78: return 0xD1; case 79: return 0xCD; case 80: return 0xCB;
    case 81: return 0xD0; case 82: return 0xC8; case 83: return 0x45; case 84: return 0xB5; case 85: return 0x37; case 86: return 0x4A;
    case 87: return 0x4E; case 88: return 0x9C; case 99: return 0x53;
    case 224: return 0x1D; case 225: return 0x2A; case 226: return 0x38; case 227: return 0xDB; case 228: return 0x9D; case 229: return 0x36;
    case 230: return 0xB8; case 231: return 0xDC;
    }
    return 0;
}

int back_poll(back_event_t *e) {
    SDL_Event ev;
    if (next_script < nscript && script[next_script].at <= frame_n) {
        e->type = script[next_script].up ? BE_KEY_UP : BE_KEY_DOWN; e->a = script[next_script].key; next_script++;
        return 1;
    }
    if (quit_at && frame_n >= quit_at && !quit_sent) { quit_sent = 1; e->type = BE_QUIT; e->a = 0; return 1; }
    while (SDL_PollEvent(&ev)) {
        if (ev.type == EV_QUIT) { e->type = BE_QUIT; e->a = 0; return 1; }
        if (ev.type == EV_KEYDOWN || ev.type == EV_KEYUP) {
            int sc = *(int32_t *)(ev.pad + 16), d = dik_of(sc);
            if (ev.pad[13] || !d) continue;                           /* key repeat is the game's own business */
            e->type = ev.type == EV_KEYDOWN ? BE_KEY_DOWN : BE_KEY_UP; e->a = d;
            return 1;
        }
        if (ev.type == EV_WINDOW && (ev.pad[12] == WIN_FOCUS_GAINED || ev.pad[12] == WIN_FOCUS_LOST)) {
            e->type = BE_FOCUS; e->a = ev.pad[12] == WIN_FOCUS_GAINED; return 1;
        }
    }
    return 0;
}

void back_fullscreen(int on) { if (win && SDL_SetWindowFullscreen(win, on ? SDL_WINDOW_FULLSCREEN_DESKTOP : 0) == 0) full = on; }
int back_is_fullscreen(void) { return full; }

static void sdl_audio_cb(void *ud, uint8_t *stream, int len) { (void)ud; if (audio_fill) audio_fill((int16_t *)stream, len / 4); else memset(stream, 0, (size_t)len); }
int back_audio_open(int rate, void (*fill)(int16_t *, int)) {
    SDL_AudioSpec want, have;
    memset(&want, 0, sizeof want);
    want.freq = rate; want.format = AUDIO_S16SYS; want.channels = 2; want.samples = 1024; want.callback = sdl_audio_cb;
    audio_fill = fill;
    if (SDL_OpenAudio(&want, &have) != 0) { fprintf(stderr, "SDL audio: %s\n", SDL_GetError()); return 0; }
    SDL_PauseAudio(0);
    return have.freq;
}
void back_audio_lock(int on) { if (on) SDL_LockAudio(); else SDL_UnlockAudio(); }
