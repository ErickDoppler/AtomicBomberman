/* Ogg Vorbis -> raw PCM, through the Xiph libvorbisfile DLL that ships next to the executable. */
#include "vfs.h"

typedef struct { const unsigned char *p; unsigned n, pos; } memsrc_t;
typedef struct { unsigned (*read)(void *, unsigned, unsigned, void *);
                 int (*seek)(void *, long long, int);
                 int (*close)(void *);
                 long (*tell)(void *); } ovcb_t;
typedef struct { int version, channels; long rate; } vinfo_t;

static struct {
    int (*ov_open_callbacks)(void *, void *, const char *, long, ovcb_t);
    long long (*ov_pcm_total)(void *, int);
    vinfo_t *(*ov_info)(void *, int);
    long (*ov_read)(void *, char *, int, int, int, int, int *);
    int (*ov_clear)(void *);
} ov;
static int ov_state;     /* 0 untried, 1 ok, -1 missing */

static unsigned cb_read(void *ptr, unsigned size, unsigned nmemb, void *ds) {
    memsrc_t *m = ds; unsigned want = size * nmemb, left = m->n - m->pos;
    if (want > left) want = left;
    memcpy(ptr, m->p + m->pos, want);
    m->pos += want;
    return size ? want / size : 0;
}
static int cb_seek(void *ds, long long off, int whence) {
    memsrc_t *m = ds; long long np = whence == 0 ? off : whence == 1 ? (long long)m->pos + off : (long long)m->n + off;
    if (np < 0 || np > (long long)m->n) return -1;
    m->pos = (unsigned)np;
    return 0;
}
static int cb_close(void *ds) { (void)ds; return 0; }
static long cb_tell(void *ds) { return (long)((memsrc_t *)ds)->pos; }

static int ov_init(void) {
    if (ov_state) return ov_state > 0;
    char path[MAX_PATH];
    HMODULE (__stdcall *load)(LPCSTR, HANDLE, DWORD) = bm_api("kernel32.dll", "LoadLibraryExA");
    void *(__stdcall *proc)(HMODULE, LPCSTR) = bm_api("kernel32.dll", "GetProcAddress");
    HMODULE m = 0;
    if (load && proc) {
        bm_strcpy(path, bm_cfg.exedir); bm_strcat(path, "DATA\\libvorbisfile-3.dll");
        m = load(path, 0, 8 /* LOAD_WITH_ALTERED_SEARCH_PATH: libvorbis and libogg are found next to it */);
        if (!m) m = load("libvorbisfile-3.dll", 0, 0);                 /* or next to the program */
    }
    if (m) {
        ov.ov_open_callbacks = proc(m, "ov_open_callbacks");
        ov.ov_pcm_total = proc(m, "ov_pcm_total");
        ov.ov_info = proc(m, "ov_info");
        ov.ov_read = proc(m, "ov_read");
        ov.ov_clear = proc(m, "ov_clear");
    }
    ov_state = (ov.ov_open_callbacks && ov.ov_pcm_total && ov.ov_info && ov.ov_read && ov.ov_clear) ? 1 : -1;
    if (ov_state < 0) bm_log("vfs: libvorbisfile-3.dll not found");
    return ov_state > 0;
}

unsigned char *bm_ogg_to_pcm(const unsigned char *ogg, DWORD n, DWORD *outsize) {
    memsrc_t src = { ogg, n, 0 };
    ovcb_t cb = { cb_read, cb_seek, cb_close, cb_tell };
    void *(__stdcall *galloc)(UINT, SIZE_T) = bm_api("kernel32.dll", "GlobalAlloc");
    void *(__stdcall *gfree)(void *) = bm_api("kernel32.dll", "GlobalFree");
    unsigned char *vf, *out;
    long long frames; vinfo_t *vi; unsigned pos, total; int ch, bs;
    if (!ov_init()) return 0;
    vf = galloc(GPTR, 4096);
    if (!vf) return 0;
    if (ov.ov_open_callbacks(&src, vf, 0, 0, cb) < 0) { gfree(vf); return 0; }
    vi = ov.ov_info(vf, -1);
    frames = ov.ov_pcm_total(vf, -1);
    ch = vi ? vi->channels : 2;
    if (frames <= 0 || ch < 1 || ch > 2 || frames > 0x3fffffff / 4) { ov.ov_clear(vf); gfree(vf); return 0; }
    total = (unsigned)frames * 4;
    out = galloc(GPTR, total + 16);
    if (!out) { ov.ov_clear(vf); gfree(vf); return 0; }
    pos = 0;
    if (ch == 2) {
        while (pos < total) {
            long r = ov.ov_read(vf, (char *)out + pos, (int)(total - pos), 0, 2, 1, &bs);
            if (r <= 0) break;
            pos += (unsigned)r;
        }
    } else {                                           /* mono source: duplicate to both channels */
        unsigned short *dst = (unsigned short *)out; unsigned f = 0;
        short tmp[2048];
        while (f < (unsigned)frames) {
            long r = ov.ov_read(vf, (char *)tmp, sizeof tmp, 0, 2, 1, &bs);
            unsigned i, cnt;
            if (r <= 0) break;
            cnt = (unsigned)r / 2;
            for (i = 0; i < cnt && f < (unsigned)frames; i++, f++) { dst[f * 2] = (unsigned short)tmp[i]; dst[f * 2 + 1] = (unsigned short)tmp[i]; }
        }
    }
    ov.ov_clear(vf); gfree(vf);
    *outsize = total;
    return out;
}

DWORD bm_ogg_pcm_size(const char *path, DWORD fallback) {
    HANDLE (__stdcall *cf)(LPCSTR, DWORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE) = bm_api("kernel32.dll", "CreateFileA");
    DWORD (__stdcall *gfs)(HANDLE, LPDWORD) = bm_api("kernel32.dll", "GetFileSize");
    DWORD (__stdcall *sfp)(HANDLE, LONG, PLONG, DWORD) = bm_api("kernel32.dll", "SetFilePointer");
    BOOL (__stdcall *rf)(HANDLE, LPVOID, DWORD, LPDWORD, LPOVERLAPPED) = bm_api("kernel32.dll", "ReadFile");
    BOOL (__stdcall *ch)(HANDLE) = bm_api("kernel32.dll", "CloseHandle");
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
