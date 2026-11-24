/* Back end without a display, for tests: frames are not shown, keys come from a script.
 *   BM_KEYS=<frame>:<scancode hex>[u],...   e.g. "100:1c,103:1cu" presses Enter at frame 100 and releases it at 103
 *   BM_QUIT_AT=<frame>                      closes the game at that frame
 * A frame is one back_present() call. */
#include "back.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

static unsigned frame;
static struct { unsigned at; int key, up; } script[256];
static int nscript, next_script, quit_sent;
static unsigned quit_at;

int back_init(void) {
    const char *k = getenv("BM_KEYS"), *q = getenv("BM_QUIT_AT");
    if (q) quit_at = (unsigned)atoi(q);
    while (k && *k && nscript < 256) {
        char *e;
        unsigned at = (unsigned)strtoul(k, &e, 10);
        int key, up = 0;
        if (*e != ':') break;
        key = (int)strtoul(e + 1, &e, 16);
        if (*e == 'u') { up = 1; e++; }
        script[nscript].at = at; script[nscript].key = key; script[nscript].up = up; nscript++;
        k = *e == ',' ? e + 1 : e;
        if (!*e) break;
    }
    return 0;
}
void back_title(const char *t) { (void)t; }
void back_set_mode(int w, int h) { (void)w; (void)h; }
void back_present(const uint8_t *pix, const uint32_t *pal, int w, int h) { (void)pix; (void)pal; (void)w; (void)h; frame++; }
int back_poll(back_event_t *e) {
    if (next_script < nscript && script[next_script].at <= frame) {
        e->type = script[next_script].up ? BE_KEY_UP : BE_KEY_DOWN; e->a = script[next_script].key; next_script++;
        return 1;
    }
    if (quit_at && frame >= quit_at && !quit_sent) { quit_sent = 1; e->type = BE_QUIT; e->a = 0; return 1; }
    return 0;
}
void back_fullscreen(int on) { (void)on; }
int back_is_fullscreen(void) { return 0; }
int back_audio_open(int rate, void (*fill)(int16_t *, int)) { (void)rate; (void)fill; return 0; }
void back_audio_lock(int on) { (void)on; }
