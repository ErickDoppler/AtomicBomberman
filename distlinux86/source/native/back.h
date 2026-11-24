/* The display / keyboard / sound back end of the portable build.  Two implementations: back_sdl.c (SDL2: window or
 * the Linux console, keyboard, audio) and back_null.c (no display: scripted keys, for tests).  The rest of the host only
 * sees this interface.  Keys are DirectInput scan codes (the PC set-1 scan code, 0x80 added for the extended keys), which
 * is what the game's key tables use. */
#ifndef BACK_H
#define BACK_H
#include <stdint.h>

enum { BE_NONE = 0, BE_KEY_DOWN, BE_KEY_UP, BE_QUIT, BE_FOCUS };
typedef struct { int type; int a; } back_event_t;       /* KEY_*: a = DirectInput scan code; FOCUS: a = 1 gained / 0 lost */

int  back_init(void);
void back_title(const char *title);
void back_set_mode(int w, int h);                        /* the game's 8-bit video mode */
void back_present(const uint8_t *pix, const uint32_t *pal, int w, int h);   /* pal: 256 entries 0x00RRGGBB */
int  back_poll(back_event_t *e);                         /* next event, 0 when none */
void back_fullscreen(int on);
int  back_is_fullscreen(void);

/* audio: the callback is asked for `frames` stereo 16-bit frames (22050 Hz or what back_audio_open returns) */
int  back_audio_open(int rate, void (*fill)(int16_t *out, int frames));    /* actual rate, 0 = no sound device */
void back_audio_lock(int on);
#endif
