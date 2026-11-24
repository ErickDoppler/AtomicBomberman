/* Ogg Vorbis -> raw 16-bit stereo PCM for the portable build: libvorbisfile when it is available (HAVE_VORBIS), otherwise
 * silence of the right length (a build for testing without the library). */
#include "bm.h"
#include "vfs.h"
#include "host.h"

DWORD bm_ogg_pcm_size(const char *path, DWORD fallback) {
    HANDLE (*cf)(LPCSTR, DWORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE) = bm_api("kernel32.dll", "CreateFileA");
    DWORD (*gfs)(HANDLE, LPDWORD) = bm_api("kernel32.dll", "GetFileSize");
    DWORD (*sfp)(HANDLE, LONG, PLONG, DWORD) = bm_api("kernel32.dll", "SetFilePointer");
    BOOL (*rf)(HANDLE, LPVOID, DWORD, LPDWORD, LPOVERLAPPED) = bm_api("kernel32.dll", "ReadFile");
    BOOL (*ch)(HANDLE) = bm_api("kernel32.dll", "CloseHandle");
    HANDLE h = cf(path, GENERIC_READ, FILE_SHARE_READ, 0, OPEN_EXISTING, 0, 0);
    unsigned char buf[70000]; DWORD size, got = 0, res = fallback; int i;
    if (h == INVALID_HANDLE_VALUE) return fallback;
    size = gfs(h, 0);
    sfp(h, size > sizeof buf ? (LONG)(size - sizeof buf) : 0, 0, FILE_BEGIN);
    rf(h, buf, sizeof buf, &got, 0);
    ch(h);
    for (i = (int)got - 14; i >= 0; i--)
        if (buf[i] == 'O' && buf[i + 1] == 'g' && buf[i + 2] == 'g' && buf[i + 3] == 'S') {
            unsigned lo = buf[i + 6] | (buf[i + 7] << 8) | (buf[i + 8] << 16) | ((unsigned)buf[i + 9] << 24);
            res = lo * 4;                                 /* frames * 2 channels * 2 bytes */
            break;
        }
    return res;
}

#ifdef HAVE_VORBIS
#include <vorbis/vorbisfile.h>
typedef struct { const unsigned char *p; size_t n, pos; } memsrc_t;
static size_t cb_read(void *ptr, size_t size, size_t nmemb, void *ds) {
    memsrc_t *m = ds; size_t want = size * nmemb, left = m->n - m->pos;
    if (want > left) want = left;
    memcpy(ptr, m->p + m->pos, want); m->pos += want;
    return size ? want / size : 0;
}
static int cb_seek(void *ds, ogg_int64_t off, int whence) {
    memsrc_t *m = ds; ogg_int64_t np = whence == SEEK_SET ? off : whence == SEEK_CUR ? (ogg_int64_t)m->pos + off : (ogg_int64_t)m->n + off;
    if (np < 0 || np > (ogg_int64_t)m->n) return -1;
    m->pos = (size_t)np; return 0;
}
static long cb_tell(void *ds) { return (long)((memsrc_t *)ds)->pos; }
unsigned char *bm_ogg_to_pcm(const unsigned char *ogg, DWORD n, DWORD *outsize) {
    memsrc_t src = { ogg, n, 0 };
    ov_callbacks cb = { cb_read, cb_seek, 0, cb_tell };
    OggVorbis_File vf; vorbis_info *vi; ogg_int64_t frames; unsigned char *out; unsigned pos = 0, total; int ch, bs;
    if (ov_open_callbacks(&src, &vf, 0, 0, cb) < 0) return 0;
    vi = ov_info(&vf, -1); frames = ov_pcm_total(&vf, -1); ch = vi ? vi->channels : 2;
    if (frames <= 0 || ch < 1 || ch > 2 || frames > 0x3fffffff / 4) { ov_clear(&vf); return 0; }
    total = (unsigned)frames * 4;
    out = (unsigned char *)(uintptr_t)gmalloc(total + 16);
    if (!out) { ov_clear(&vf); return 0; }
    if (ch == 2) {
        while (pos < total) { long r = ov_read(&vf, (char *)out + pos, (int)(total - pos), 0, 2, 1, &bs); if (r <= 0) break; pos += (unsigned)r; }
    } else {
        short tmp[2048]; unsigned f = 0; unsigned short *dst = (unsigned short *)out;
        while (f < (unsigned)frames) {
            long r = ov_read(&vf, (char *)tmp, sizeof tmp, 0, 2, 1, &bs); unsigned i, cnt;
            if (r <= 0) break;
            cnt = (unsigned)r / 2;
            for (i = 0; i < cnt && f < (unsigned)frames; i++, f++) { dst[f * 2] = (unsigned short)tmp[i]; dst[f * 2 + 1] = (unsigned short)tmp[i]; }
        }
    }
    ov_clear(&vf);
    *outsize = total;
    return out;
}
#else
unsigned char *bm_ogg_to_pcm(const unsigned char *ogg, DWORD n, DWORD *outsize) {
    /* no decoder: the length of the sound from the last Ogg page, silence for the content */
    unsigned char *out; DWORD total = 0; long i;
    for (i = (long)n - 14; i >= 0; i--)
        if (ogg[i] == 'O' && ogg[i + 1] == 'g' && ogg[i + 2] == 'g' && ogg[i + 3] == 'S') {
            total = (ogg[i + 6] | (ogg[i + 7] << 8) | (ogg[i + 8] << 16) | ((DWORD)ogg[i + 9] << 24)) * 4;
            break;
        }
    if (!total) return 0;
    out = (unsigned char *)(uintptr_t)gmalloc(total + 16);
    if (!out) return 0;
    *outsize = total;
    return out;
}
#endif
