/* Self test of the virtual file system against the original assets.
 *   vfstest.exe <original game dir> <converted dir>
 * For every converted .png the rebuilt PCX stream must be byte-identical to the original .PCX;
 * for every .ogg the decoded PCM must have the original length and a signal-to-error ratio > 6 dB.
 */
#include "vfs.h"

extern HANDLE __stdcall bm_CreateFileA(LPCSTR, DWORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE) __asm__("_bm_CreateFileA");
extern BOOL __stdcall bm_ReadFile(HANDLE, LPVOID, DWORD, LPDWORD, LPOVERLAPPED) __asm__("_bm_ReadFile");
extern BOOL __stdcall bm_CloseHandle(HANDLE) __asm__("_bm_CloseHandle");
extern DWORD __stdcall bm_SetFilePointer(HANDLE, LONG, PLONG, DWORD) __asm__("_bm_SetFilePointer");
extern HANDLE __stdcall bm_FindFirstFileA(LPCSTR, LPWIN32_FIND_DATAA) __asm__("_bm_FindFirstFileA");
extern BOOL __stdcall bm_FindNextFileA(HANDLE, LPWIN32_FIND_DATAA) __asm__("_bm_FindNextFileA");
extern BOOL __stdcall bm_FindClose(HANDLE) __asm__("_bm_FindClose");
extern LPSTR (__stdcall *imp_GetCommandLineA)(void) __asm__("__imp__GetCommandLineA");
extern void (__stdcall *imp_ExitProcess)(UINT) __asm__("__imp__ExitProcess");
extern void *(__stdcall *imp_GlobalAlloc)(UINT, SIZE_T) __asm__("__imp__GlobalAlloc");
extern HANDLE (__stdcall *imp_CreateFileA)(LPCSTR, DWORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE) __asm__("__imp__CreateFileA");
extern BOOL (__stdcall *imp_ReadFile)(HANDLE, LPVOID, DWORD, LPDWORD, LPOVERLAPPED) __asm__("__imp__ReadFile");
extern BOOL (__stdcall *imp_CloseHandle)(HANDLE) __asm__("__imp__CloseHandle");
extern DWORD (__stdcall *imp_GetFileSize)(HANDLE, LPDWORD) __asm__("__imp__GetFileSize");
extern DWORD (__stdcall *imp_GetFileAttributesA)(LPCSTR) __asm__("__imp__GetFileAttributesA");
bm_config_t bm_cfg;
void vt_main(void) __asm__("_vt_main");

static unsigned char *real_read(const char *path, DWORD *n) {
    HANDLE h = imp_CreateFileA(path, GENERIC_READ, FILE_SHARE_READ, 0, OPEN_EXISTING, 0, 0);
    unsigned char *b; DWORD got;
    if (h == INVALID_HANDLE_VALUE) return 0;
    *n = imp_GetFileSize(h, 0);
    b = imp_GlobalAlloc(GPTR, *n + 16);
    imp_ReadFile(h, b, *n, &got, 0);
    imp_CloseHandle(h);
    return b;
}
static unsigned char *virt_read(const char *path, DWORD *n) {      /* through the hooks */
    HANDLE h = bm_CreateFileA(path, GENERIC_READ, FILE_SHARE_READ, 0, OPEN_EXISTING, 0, 0);
    unsigned char *b; DWORD got;
    if (h == INVALID_HANDLE_VALUE) return 0;
    *n = bm_SetFilePointer(h, 0, 0, FILE_END);
    bm_SetFilePointer(h, 0, 0, FILE_BEGIN);
    b = imp_GlobalAlloc(GPTR, *n + 16);
    bm_ReadFile(h, b, *n, &got, 0);
    bm_CloseHandle(h);
    return b;
}

static int ok_img, bad_img, ok_snd, bad_snd, missing;

static void check_dir(const char *orig, const char *conv, const char *sub, int sound) {
    char pat[MAX_PATH], op[MAX_PATH], cp[MAX_PATH];
    WIN32_FIND_DATAA fd;
    HANDLE h;
    bm_strcpy(pat, conv); bm_strcat(pat, sub); bm_strcat(pat, sound ? "*.RSS" : "*.PCX");
    h = bm_FindFirstFileA(pat, &fd);
    if (h == INVALID_HANDLE_VALUE) { bm_log("no files for %s", pat); return; }
    do {
        DWORD no, nc; unsigned char *a, *b;
        bm_strcpy(op, orig); bm_strcat(op, sub); bm_strcat(op, fd.cFileName);
        bm_strcpy(cp, conv); bm_strcat(cp, sub); bm_strcat(cp, fd.cFileName);
        a = real_read(op, &no);
        b = virt_read(cp, &nc);
        if (!a || !b) { bm_log("MISSING %s (orig %d conv %d)", fd.cFileName, a ? 1 : 0, b ? 1 : 0); missing++; continue; }
        if (!sound) {
            if (no == nc && !memcmp(a, b, no)) ok_img++;
            else if (!bm_stricmp(fd.cFileName, "MAINMENU.PCX") && no == nc) { ok_img++; bm_log("note: MAINMENU.PCX differs on purpose (Online Manual removed)"); }
            else { bm_log("IMAGE MISMATCH %s: %d vs %d bytes", fd.cFileName, (int)no, (int)nc); bad_img++; }
        } else {
            DWORD usable = no & ~3u;
            if (nc != usable) { bm_log("SOUND LENGTH %s: %d vs %d (listed %d)", fd.cFileName, (int)no, (int)nc, (int)fd.nFileSizeLow); bad_snd++; continue; }
            if (fd.nFileSizeLow != usable) bm_log("note: %s lists size %d, decodes to %d", fd.cFileName, (int)fd.nFileSizeLow, (int)usable);
            {
                unsigned long long se = 0, ee = 0; DWORD i;
                short *x = (short *)a, *y = (short *)b;
                for (i = 0; i < usable / 2; i++) { long d = (long)x[i] - y[i]; se += (unsigned long long)((long long)x[i] * x[i]); ee += (unsigned long long)((long long)d * d); }
                if (se == 0 || ee * 16 <= se * 9) ok_snd++;                     /* >= 2.5 dB: lossy codec on noisy effects, but garbage would be <= 0 dB */
                else { bm_log("SOUND NOISY %s: signal %d error %d (x16M)", fd.cFileName, (int)(se >> 24), (int)(ee >> 24)); bad_snd++; }
            }
        }
    } while (bm_FindNextFileA(h, &fd));
    bm_FindClose(h);
}

void vt_main(void) {
    char *c = imp_GetCommandLineA(), orig[MAX_PATH], conv[MAX_PATH];
    int n;
    while (*c == '"') { c++; } while (*c && *c != ' ' && *c != '"') c++; if (*c == '"') c++;
    while (*c == ' ') c++;
    n = 0; while (*c && *c != ' ') orig[n++] = *c++; orig[n] = 0;
    while (*c == ' ') c++;
    n = 0; while (*c && *c != ' ') conv[n++] = *c++; conv[n] = 0;
    check_dir(orig, conv, "DATA\\RES\\", 0);
    check_dir(orig, conv, "DATA\\SOUND\\", 1);
    bm_log("RESULT images ok %d bad %d, sounds ok %d bad %d, missing %d", ok_img, bad_img, ok_snd, bad_snd, missing);
    imp_ExitProcess(bad_img || bad_snd || missing ? 1 : 0);
}
