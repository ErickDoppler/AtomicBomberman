#ifndef VFS_H
#define VFS_H
#include "bm.h"

/* png.c: PNG (8-bit indexed, with the private 'bmHD' chunk holding the original PCX header and
 * palette trailer) -> the original PCX byte stream.  Returns a GlobalAlloc'd buffer or 0. */
unsigned char *bm_png_to_pcx(const unsigned char *png, DWORD n, DWORD *outsize);

/* ogg.c: Ogg Vorbis -> raw signed 16-bit stereo PCM (the RSS layout).  Returns a GlobalAlloc'd buffer or 0. */
unsigned char *bm_ogg_to_pcm(const unsigned char *ogg, DWORD n, DWORD *outsize);
/* decoded byte size of an .ogg file, read from its last page header (cheap); fallback if unreadable */
DWORD bm_ogg_pcm_size(const char *path, DWORD fallback);

/* inflate.c */
int bm_inflate(const unsigned char *in, unsigned inlen, unsigned char *out, unsigned *outlen);

#endif
