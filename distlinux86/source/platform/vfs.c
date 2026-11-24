/* Virtual file system.
 *
 * The game opens its assets with the original DOS-era names (FIELD3.PCX, 1017.RSS ...).  On disk
 * they are now stored as PNG (images) and Ogg Vorbis (sound), which take a fraction of the space.
 * When the game asks for NAME.PCX / NAME.RSS and the file is not there, the converted NAME.png /
 * NAME.ogg is decoded into memory and presented to the game as the byte-identical original format
 * (PCX stream / raw 22 kHz 16-bit stereo PCM).  Nothing else in the game had to change.
 */
#include "bm.h"
#include "vfs.h"

/* ------------------------------------------------------------------ real kernel32 */
static struct {
    HANDLE (__stdcall *CreateFileA)(LPCSTR, DWORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE);
    BOOL (__stdcall *ReadFile)(HANDLE, LPVOID, DWORD, LPDWORD, LPOVERLAPPED);
    DWORD (__stdcall *SetFilePointer)(HANDLE, LONG, PLONG, DWORD);
    BOOL (__stdcall *CloseHandle)(HANDLE);
    DWORD (__stdcall *GetFileType)(HANDLE);
    DWORD (__stdcall *GetFileAttributesA)(LPCSTR);
    HANDLE (__stdcall *FindFirstFileA)(LPCSTR, LPWIN32_FIND_DATAA);
    BOOL (__stdcall *FindNextFileA)(HANDLE, LPWIN32_FIND_DATAA);
    BOOL (__stdcall *FindClose)(HANDLE);
    DWORD (__stdcall *GetFileSize)(HANDLE, LPDWORD);
    DWORD (__stdcall *GetLastError)(void);
    void (__stdcall *SetLastError)(DWORD);
    void *(__stdcall *GlobalAlloc)(UINT, SIZE_T);
    void *(__stdcall *GlobalFree)(void *);
    DWORD (__stdcall *GetTickCount)(void);
} k;
static int k_ready;
static volatile long vlock;
static void vl(void) { while (__sync_lock_test_and_set(&vlock, 1)) { void (__stdcall *s)(DWORD) = bm_api("kernel32.dll", "Sleep"); s(0); } }
static void vu(void) { __sync_lock_release(&vlock); }

static void kinit(void) {
    if (k_ready) return;
#define K(n) k.n = bm_api("kernel32.dll", #n)
    K(CreateFileA); K(ReadFile); K(SetFilePointer); K(CloseHandle); K(GetFileType); K(GetFileAttributesA);
    K(FindFirstFileA); K(FindNextFileA); K(FindClose); K(GetFileSize); K(GetLastError); K(SetLastError);
    K(GlobalAlloc); K(GlobalFree); K(GetTickCount);
    k_ready = 1;
}

/* ------------------------------------------------------------------ virtual handles */
#define VBASE   0x7E000000u
#define NVF     256
typedef struct { unsigned char *data; DWORD size, pos; int used; } vfile_t;
static vfile_t vfiles[NVF];

static int is_vhandle(HANDLE h) { return (unsigned)(UINT_PTR)h >= VBASE && (unsigned)(UINT_PTR)h < VBASE + NVF * 4; }
static vfile_t *vh(HANDLE h) { vfile_t *f = &vfiles[((unsigned)(UINT_PTR)h - VBASE) >> 2]; return f->used ? f : 0; }

static HANDLE vopen(unsigned char *data, DWORD size) {
    int i; HANDLE h = INVALID_HANDLE_VALUE;
    vl();
    for (i = 0; i < NVF; i++)
        if (!vfiles[i].used) { vfiles[i].data = data; vfiles[i].size = size; vfiles[i].pos = 0; vfiles[i].used = 1; h = (HANDLE)(UINT_PTR)(VBASE + i * 4); break; }
    vu();
    if (h == INVALID_HANDLE_VALUE) k.GlobalFree(data);
    return h;
}

/* ------------------------------------------------------------------ path mapping */
enum { KIND_NONE = 0, KIND_SOUND = 1, KIND_IMAGE = 2 };

/* NAME.RSS -> NAME.ogg, NAME.PCX -> NAME.png */
static int alt_path(const char *p, char *out) {
    int n = bm_strlen(p), kind = KIND_NONE;
    if (n < 5 || n >= MAX_PATH) return KIND_NONE;
    if (!bm_stricmp(p + n - 4, ".RSS")) kind = KIND_SOUND;
    else if (!bm_stricmp(p + n - 4, ".PCX")) kind = KIND_IMAGE;
    if (!kind) return KIND_NONE;
    memcpy(out, p, (unsigned)n - 3);
    bm_strcpy(out + n - 3, kind == KIND_SOUND ? "ogg" : "png");
    return kind;
}

static unsigned char *slurp(const char *path, DWORD *size) {
    HANDLE h = k.CreateFileA(path, GENERIC_READ, FILE_SHARE_READ, 0, OPEN_EXISTING, 0, 0);
    DWORD n, got; unsigned char *b;
    if (h == INVALID_HANDLE_VALUE) { bm_log("vfs: slurp open %s failed %d", path, (int)k.GetLastError()); return 0; }
    n = k.GetFileSize(h, 0);
    b = k.GlobalAlloc(GPTR, n + 16);
    if (!b || !k.ReadFile(h, b, n, &got, 0) || got != n) { bm_log("vfs: slurp read %s failed n=%d got=%d err=%d", path, (int)n, (int)got, (int)k.GetLastError()); if (b) k.GlobalFree(b); k.CloseHandle(h); return 0; }
    k.CloseHandle(h);
    *size = n;
    return b;
}

/* Loading a screen reads and converts many files without the game looking at its window; after five seconds without
   a handled message Windows calls the window "not responding".  While files are read the messages are handled here,
   at most every 100 ms, exactly as the game's own message pump does. */
static void keep_alive(void) {
    static DWORD last;
    static BOOL (__stdcall *peek)(void *, HWND, UINT, UINT, UINT);
    static BOOL (__stdcall *translate)(const void *);
    static LONG (__stdcall *dispatch)(const void *);
    static void (__stdcall *post_quit)(int);
    unsigned char msg[48];
    DWORD now = k.GetTickCount();
    int n;
    if (now - last < 100) return;
    last = now;
    if (!peek) {
        peek = bm_api("user32.dll", "PeekMessageA"); translate = bm_api("user32.dll", "TranslateMessage");
        dispatch = bm_api("user32.dll", "DispatchMessageA"); post_quit = bm_api("user32.dll", "PostQuitMessage");
        if (!peek || !translate || !dispatch || !post_quit) { peek = 0; return; }
    }
    for (n = 0; n < 50 && peek(msg, 0, 0, 0, 1 /* PM_REMOVE */); n++) {
        if (*(UINT *)(msg + 4) == 0x12 /* WM_QUIT */) { post_quit(*(int *)(msg + 8)); break; }     /* the game's own pump sees it */
        translate(msg);
        dispatch(msg);
    }
}

/* The game folder holds the program and one folder, DATA.  Everything the game looks for directly in its own folder
   (OPTIONS.INI, CFG.INI, the fonts, palettes, texts, the statistics ...) is in DATA\ - this maps such a name,
   relative ("OPTIONS.INI") or absolute ("<game folder>\OPTIONS.INI"), to DATA\<name>.  Names with another folder
   in them ("data\res\x.pcx"), programs and libraries stay as they are. */
static const char *redir(const char *in, char *out) {
    int n = bm_strlen(in), d = bm_strlen(bm_cfg.exedir), i, last = -1, m;
    const char *file = in;
    if (n == 0 || n >= MAX_PATH - 8 || d == 0) return in;
    for (i = 0; i < n; i++) if (in[i] == '\\' || in[i] == '/') last = i;
    if (last < 0) {
        if (n > 1 && in[1] == ':') return in;                       /* "C:name": a drive's own current folder */
    } else {
        if (last + 1 != d || bm_strnicmp(in, bm_cfg.exedir, (unsigned)d)) return in;     /* a file in another folder */
        file = in + last + 1;
    }
    if (!*file || *file == '.') return in;
    m = bm_strlen(file);
    if (m > 4 && (!bm_stricmp(file + m - 4, ".exe") || !bm_stricmp(file + m - 4, ".dll"))) return in;
    if (d + 5 + m >= MAX_PATH) return in;
    bm_strcpy(out, bm_cfg.exedir); bm_strcat(out, "DATA\\"); bm_strcat(out, file);
    return out;
}

/* returns an allocated buffer holding the original-format file, or 0 */
static unsigned char *load_converted(const char *alt, int kind, DWORD *outsize) {
    DWORD n; unsigned char *src = slurp(alt, &n), *res = 0;
    if (!src) return 0;
    bm_log("vfs: converting %s", alt);
    if (kind == KIND_IMAGE) res = bm_png_to_pcx(src, n, outsize);
    else res = bm_ogg_to_pcm(src, n, outsize);
    k.GlobalFree(src);
    keep_alive();
    return res;
}

/* ------------------------------------------------------------------ hooked API */
BM_SHIM(HANDLE, CreateFileA, 7, (LPCSTR name, DWORD acc, DWORD share, LPSECURITY_ATTRIBUTES sa, DWORD disp, DWORD flags, HANDLE tmpl)) {
    HANDLE h;
    char alt[MAX_PATH], rd[MAX_PATH]; int kind; DWORD err;
    kinit();
    name = redir(name, rd);
    h = k.CreateFileA(name, acc, share, sa, disp, flags, tmpl);
    if (h != INVALID_HANDLE_VALUE) { bm_log("vfs: open %s ok", name); return h; }
    err = k.GetLastError();
    bm_log("vfs: open %s failed %d acc=%x disp=%d flags=%x", name, (int)err, acc, (int)disp, flags);
    if ((err != ERROR_FILE_NOT_FOUND && err != ERROR_PATH_NOT_FOUND) || (acc & GENERIC_WRITE) || disp != OPEN_EXISTING) return h;
    kind = alt_path(name, alt);
    if (kind) {
        DWORD size; unsigned char *data = load_converted(alt, kind, &size);
        if (data) { k.SetLastError(0); return vopen(data, size); }
        k.SetLastError(err);
    }
    return h;
}

BM_SHIM(BOOL, ReadFile, 5, (HANDLE h, LPVOID buf, DWORD n, LPDWORD got, LPOVERLAPPED ov)) {
    kinit();
    if (is_vhandle(h)) {
        vfile_t *f = vh(h); DWORD left;
        if (!f) return FALSE;
        left = f->pos < f->size ? f->size - f->pos : 0;
        if (n > left) n = left;
        keep_alive();
        bm_log("vfs: read %d at %d of %d", (int)n, (int)f->pos, (int)f->size);
        memcpy(buf, f->data + f->pos, n);
        f->pos += n;
        if (got) *got = n;
        return TRUE;
    }
    { BOOL r = k.ReadFile(h, buf, n, got, ov); bm_log("vfs: real read h=%x n=%d -> %d got %d", (unsigned)(UINT_PTR)h, (int)n, (int)r, got ? (int)*got : -1); return r; }
}

BM_SHIM(DWORD, SetFilePointer, 4, (HANDLE h, LONG lo, PLONG hi, DWORD method)) {
    kinit();
    if (is_vhandle(h)) {
        vfile_t *f = vh(h); LONG64 np;
        if (!f) return 0xFFFFFFFFu;
        np = method == FILE_BEGIN ? (LONG64)lo : method == FILE_CURRENT ? (LONG64)f->pos + lo : (LONG64)f->size + lo;
        if (np < 0) return 0xFFFFFFFFu;
        f->pos = (DWORD)np;
        if (hi) *hi = 0;
        bm_log("vfs: seek method %d off %d -> %d", (int)method, (int)lo, (int)f->pos);
        return f->pos;
    }
    { DWORD r = k.SetFilePointer(h, lo, hi, method); bm_log("vfs: real seek h=%x m=%d lo=%d -> %d", (unsigned)(UINT_PTR)h, (int)method, (int)lo, (int)r); return r; }
}

BM_SHIM(BOOL, CloseHandle, 1, (HANDLE h)) {
    kinit();
    if (is_vhandle(h)) {
        vfile_t *f = vh(h);
        if (f) { vl(); k.GlobalFree(f->data); f->used = 0; vu(); }
        return TRUE;
    }
    bm_log("vfs: close %x", (unsigned)(UINT_PTR)h);
    return k.CloseHandle(h);
}

BM_SHIM(DWORD, GetFileType, 1, (HANDLE h)) {
    kinit();
    { DWORD r = is_vhandle(h) ? FILE_TYPE_DISK : k.GetFileType(h); bm_log("vfs: filetype %x -> %d", (unsigned)(UINT_PTR)h, (int)r); return r; }
}

BM_SHIM(DWORD, GetFileAttributesA, 1, (LPCSTR name)) {
    DWORD a; char alt[MAX_PATH], rd[MAX_PATH];
    kinit();
    name = redir(name, rd);
    a = k.GetFileAttributesA(name);
    if (a != 0xFFFFFFFFu) return a;
    if (alt_path(name, alt)) { a = k.GetFileAttributesA(alt); if (a != 0xFFFFFFFFu) k.SetLastError(0); }
    return a;
}

/* ---- directory enumeration: *.RSS / *.PCX also list the converted files, under their old names ---- */
typedef struct { HANDLE h; char alt[MAX_PATH]; char dir[MAX_PATH]; int phase; int used; } vfind_t;
#define NVFIND 16
#define VFBASE 0x7D000000u
static vfind_t vfinds[NVFIND];

static void rename_back(vfind_t *v, WIN32_FIND_DATAA *fd) {
    int n = bm_strlen(fd->cFileName);
    if (n > 4 && !bm_stricmp(fd->cFileName + n - 4, ".ogg")) {
        char full[MAX_PATH];
        bm_strcpy(full, v->dir); bm_strcat(full, fd->cFileName);
        fd->nFileSizeLow = bm_ogg_pcm_size(full, fd->nFileSizeLow);   /* decoded size: 4 bytes per frame */
        fd->nFileSizeHigh = 0;
        bm_strcpy(fd->cFileName + n - 4, ".RSS");
    } else if (n > 4 && !bm_stricmp(fd->cFileName + n - 4, ".png")) bm_strcpy(fd->cFileName + n - 4, ".PCX");
}

BM_SHIM(HANDLE, FindFirstFileA, 2, (LPCSTR pat, LPWIN32_FIND_DATAA fd)) {
    int i, n;
    HANDLE h;
    char rd[MAX_PATH];
    kinit();
    pat = redir(pat, rd);
    n = bm_strlen(pat);
    h = k.FindFirstFileA(pat, fd);
    if (n > 4 && n < MAX_PATH && (!bm_stricmp(pat + n - 4, ".RSS") || !bm_stricmp(pat + n - 4, ".PCX"))) {
        char alt[MAX_PATH]; int kind = alt_path(pat, alt);
        (void)kind;
        vl();
        for (i = 0; i < NVFIND && vfinds[i].used; i++) {}
        if (i < NVFIND) {
            vfinds[i].used = 1; vfinds[i].h = h; vfinds[i].phase = (h == INVALID_HANDLE_VALUE) ? 1 : 0;
            bm_strcpy(vfinds[i].alt, alt);
            { int q = bm_strlen(pat); while (q > 0 && pat[q - 1] != '\\' && pat[q - 1] != '/') q--; memcpy(vfinds[i].dir, pat, (unsigned)q); vfinds[i].dir[q] = 0; }
            vu();
            if (h == INVALID_HANDLE_VALUE) {
                vfinds[i].h = k.FindFirstFileA(alt, fd);
                if (vfinds[i].h == INVALID_HANDLE_VALUE) { vl(); vfinds[i].used = 0; vu(); return INVALID_HANDLE_VALUE; }
                rename_back(&vfinds[i], fd);
            }
            return (HANDLE)(UINT_PTR)(VFBASE + i * 4);
        }
        vu();
    }
    return h;
}

BM_SHIM(BOOL, FindNextFileA, 2, (HANDLE h, LPWIN32_FIND_DATAA fd)) {
    kinit();
    if ((unsigned)(UINT_PTR)h >= VFBASE && (unsigned)(UINT_PTR)h < VFBASE + NVFIND * 4) {
        vfind_t *v = &vfinds[((unsigned)(UINT_PTR)h - VFBASE) >> 2];
        if (v->phase == 0) {
            if (k.FindNextFileA(v->h, fd)) return TRUE;
            k.FindClose(v->h);
            v->h = k.FindFirstFileA(v->alt, fd);
            v->phase = 1;
            if (v->h == INVALID_HANDLE_VALUE) { k.SetLastError(ERROR_NO_MORE_FILES); return FALSE; }
            rename_back(v, fd);
            return TRUE;
        }
        if (k.FindNextFileA(v->h, fd)) { rename_back(v, fd); return TRUE; }
        return FALSE;
    }
    return k.FindNextFileA(h, fd);
}

BM_SHIM(BOOL, FindClose, 1, (HANDLE h)) {
    kinit();
    if ((unsigned)(UINT_PTR)h >= VFBASE && (unsigned)(UINT_PTR)h < VFBASE + NVFIND * 4) {
        vfind_t *v = &vfinds[((unsigned)(UINT_PTR)h - VFBASE) >> 2];
        if (v->h != INVALID_HANDLE_VALUE) k.FindClose(v->h);
        vl(); v->used = 0; vu();
        return TRUE;
    }
    return k.FindClose(h);
}
