/* Process entry: fixes the installation paths, parses the network options, shows the
 * remembered network settings, then hands over to the original start-up code of the game. */
#include "bm.h"

bm_config_t bm_cfg;
#ifndef BM_NATIVE
int bm_skip_intro __asm__("_bm_skip_intro");      /* read by the intro hook in src/asm/hooks.s */
#endif

typedef struct { HANDLE (__stdcall *CreateFileA)(LPCSTR, DWORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE);
                 BOOL (__stdcall *ReadFile)(HANDLE, LPVOID, DWORD, LPDWORD, LPOVERLAPPED);
                 BOOL (__stdcall *WriteFile)(HANDLE, LPCVOID, DWORD, LPDWORD, LPOVERLAPPED);
                 BOOL (__stdcall *CloseHandle)(HANDLE);
                 DWORD (__stdcall *GetFileAttributesA)(LPCSTR);
                 DWORD (__stdcall *GetModuleFileNameA)(HMODULE, LPSTR, DWORD);
                 BOOL (__stdcall *SetCurrentDirectoryA)(LPCSTR);
                 LPSTR (__stdcall *GetCommandLineA)(void);
                 DWORD (__stdcall *GetFileSize)(HANDLE, LPDWORD);
                 BOOL (__stdcall *WritePrivateProfileStringA)(LPCSTR, LPCSTR, LPCSTR, LPCSTR);
                 DWORD (__stdcall *GetPrivateProfileStringA)(LPCSTR, LPCSTR, LPCSTR, LPSTR, DWORD, LPCSTR);
                 UINT (__stdcall *GetPrivateProfileIntA)(LPCSTR, LPCSTR, INT, LPCSTR);
                 void *(__stdcall *GlobalAlloc)(UINT, SIZE_T); } k32_t;
static k32_t k;

static void load_k32(void) {
    k.CreateFileA = bm_api("kernel32.dll", "CreateFileA");
    k.ReadFile = bm_api("kernel32.dll", "ReadFile");
    k.WriteFile = bm_api("kernel32.dll", "WriteFile");
    k.CloseHandle = bm_api("kernel32.dll", "CloseHandle");
    k.GetFileAttributesA = bm_api("kernel32.dll", "GetFileAttributesA");
    k.GetModuleFileNameA = bm_api("kernel32.dll", "GetModuleFileNameA");
    k.SetCurrentDirectoryA = bm_api("kernel32.dll", "SetCurrentDirectoryA");
    k.GetCommandLineA = bm_api("kernel32.dll", "GetCommandLineA");
    k.GetFileSize = bm_api("kernel32.dll", "GetFileSize");
    k.WritePrivateProfileStringA = bm_api("kernel32.dll", "WritePrivateProfileStringA");
    k.GetPrivateProfileStringA = bm_api("kernel32.dll", "GetPrivateProfileStringA");
    k.GetPrivateProfileIntA = bm_api("kernel32.dll", "GetPrivateProfileIntA");
    k.GlobalAlloc = bm_api("kernel32.dll", "GlobalAlloc");
}

/* ---------------------------------------------------------------- CFG.INI
 * The shipped CFG.INI names the machine it was created on (hdhome=C:\INTRPLAY\BOMBRMAN, ...)
 * and the game crashes in its own error handler when that directory is missing.  Point both
 * home directories at the folder the executable lives in. */
static void fix_cfg(void) {
    char path[MAX_PATH], *buf, *out, *p, *e;
    HANDLE h; DWORD size, got;
    bm_strcpy(path, bm_cfg.exedir); bm_strcat(path, "DATA\\CFG.INI");
    h = k.CreateFileA(path, GENERIC_READ, FILE_SHARE_READ, 0, OPEN_EXISTING, 0, 0);
    if (h == INVALID_HANDLE_VALUE) {
        static const char fresh[] = "hdhome=\r\ncdhome=\r\nsoundonoff=1\r\nnetonoff=1\r\n";
        buf = k.GlobalAlloc(GPTR, 4096);
        bm_strcpy(buf, fresh); size = (DWORD)bm_strlen(buf);
    } else {
        size = k.GetFileSize(h, 0);
        buf = k.GlobalAlloc(GPTR, size + 1);
        k.ReadFile(h, buf, size, &got, 0);
        k.CloseHandle(h);
    }
    out = k.GlobalAlloc(GPTR, size + 1024);
    p = buf; e = out;
    while (*p) {
        char *eol = p; int isHome = 0;
        while (*eol && *eol != '\n') eol++;
        if (!bm_strnicmp(p, "hdhome=", 7) || !bm_strnicmp(p, "cdhome=", 7)) isHome = 1;
        if (isHome) {
            const char *dir = bm_cfg.exedir; int n;
            memcpy(e, p, 7); e += 7;
            n = bm_strlen(dir); if (n && dir[n - 1] == '\\') n--;
            memcpy(e, dir, (unsigned)n); e += n;
            *e++ = '\r'; *e++ = '\n';
        } else {
            memcpy(e, p, (unsigned)(eol - p)); e += eol - p;
            if (*eol) *e++ = '\n';
        }
        p = *eol ? eol + 1 : eol;
    }
    *e = 0;
    if (!(e - out == (long)size && !memcmp(out, buf, size))) {
        h = k.CreateFileA(path, GENERIC_WRITE, 0, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
        if (h != INVALID_HANDLE_VALUE) { k.WriteFile(h, out, (DWORD)(e - out), &got, 0); k.CloseHandle(h); }
    }
}

/* ---------------------------------------------------------------- OPTIONS.INI
 * The game stalls at start-up when OPTIONS.INI does not exist (it never creates one itself before
 * reading it), so provide the stock defaults when the file is missing. */
static const char default_options[] =
    ";Bomberman Options file.\r\nlevelno=6\r\nnum_to_win_match=15\r\nenclosement_depth=1\r\nconveyor_speed=1\r\nteam_play=1\r\n"
    "random_start=1\r\nstomped_bombs_detonate=1\r\nwin_by_kills=0\r\ngoldman=0\r\nschemefilename=BASIC.SCH\r\nplaytime=150\r\n"
    "assign_keyboards=1\r\ndiseases_destroyable=1\r\nlost_net_revert_ai=0\r\ndisable_game_music=0\r\nmodemport=2\r\nmodembaud=19200\r\n"
    "modemirq=3\r\nmodemdial=555-1212\r\nnetprotocol=0\r\nsmallmemory=0\r\n"
    "keydef=0,0,200\r\nkeydef=0,1,205\r\nkeydef=0,2,208\r\nkeydef=0,3,203\r\nkeydef=0,4,57\r\nkeydef=0,5,28\r\nkeydef=0,6,0\r\nkeydef=0,7,0\r\nkeydef=0,8,0\r\nkeydef=0,9,0\r\n"
    "keydef=1,0,19\r\nkeydef=1,1,34\r\nkeydef=1,2,33\r\nkeydef=1,3,32\r\nkeydef=1,4,31\r\nkeydef=1,5,30\r\nkeydef=1,6,0\r\nkeydef=1,7,0\r\nkeydef=1,8,0\r\nkeydef=1,9,0\r\n";

static void ensure_options(void) {
    char path[MAX_PATH]; HANDLE h; DWORD got;
    bm_strcpy(path, bm_cfg.exedir); bm_strcat(path, "DATA\\OPTIONS.INI");
    if (k.GetFileAttributesA(path) != 0xFFFFFFFFu) return;
    h = k.CreateFileA(path, GENERIC_WRITE, 0, 0, CREATE_NEW, FILE_ATTRIBUTE_NORMAL, 0);
    if (h != INVALID_HANDLE_VALUE) { k.WriteFile(h, default_options, (DWORD)(sizeof default_options - 1), &got, 0); k.CloseHandle(h); }
}

/* ---------------------------------------------------------------- options */
static void ini_path(char *d) { bm_strcpy(d, bm_cfg.exedir); bm_strcat(d, "DATA\\BM95NET.INI"); }

static void load_ini(void) {
    char p[MAX_PATH];
    ini_path(p);
    bm_cfg.mode = BM_NET_ASK;
    bm_cfg.port = (int)k.GetPrivateProfileIntA("network", "hostport", 5000, p);
    bm_cfg.jport = (int)k.GetPrivateProfileIntA("network", "joinport", 5000, p);
    k.GetPrivateProfileStringA("network", "joinaddress", "127.0.0.1", bm_cfg.address, sizeof bm_cfg.address, p);
}
/* the last host port / server that actually worked */
void bm_save_ini(void) {
    char p[MAX_PATH], num[16];
    ini_path(p);
    bm_utoa(num, (unsigned)bm_cfg.port);
    k.WritePrivateProfileStringA("network", "hostport", num, p);
    bm_utoa(num, (unsigned)bm_cfg.jport);
    k.WritePrivateProfileStringA("network", "joinport", num, p);
    k.WritePrivateProfileStringA("network", "joinaddress", bm_cfg.address, p);
}

/* returns 1 when the command line decided everything (no dialog) */
/* The intro screens (publisher logos, title) are shown the first time the game runs on a computer; after that the game
   starts straight at the main menu.  "-intro" shows them again, "-skipintro" never shows them.  The computer remembers
   it with a marker file in the user's local application data. */
static int force_intro;
static int intro_marker(char *path, int size) {
#ifdef BM_NATIVE
    {   const char *x = bm_getenv("XDG_DATA_HOME"), *h = bm_getenv("HOME"), *l = bm_getenv("LOCALAPPDATA");
        if (l) { bm_strcpy(path, l); }
        else if (x) { bm_strcpy(path, x); }
        else if (h) { bm_strcpy(path, h); bm_strcat(path, "/.local/share"); }
        else return 0;
        bm_strcat(path, "\\AtomicBomberman");
        return 1;
    }
#endif
    DWORD (__stdcall *getenv_)(LPCSTR, LPSTR, DWORD) = bm_api("kernel32.dll", "GetEnvironmentVariableA");
    DWORD n;
    if (!getenv_) return 0;
    n = getenv_("LOCALAPPDATA", path, (DWORD)size - 40);
    if (!n) n = getenv_("APPDATA", path, (DWORD)size - 40);
    if (!n || n >= (DWORD)size - 40) return 0;
    bm_strcat(path, "\\AtomicBomberman");
    return 1;
}
static void intro_decide(void) {
    char path[300];
    DWORD (__stdcall *attrs)(LPCSTR) = bm_api("kernel32.dll", "GetFileAttributesA");
    if (bm_skip_intro || force_intro || !attrs || !intro_marker(path, sizeof path)) return;
    bm_strcat(path, "\\intro_seen");
    if (attrs(path) != 0xFFFFFFFFu) bm_skip_intro = 1;                    /* seen before */
}
void bm_intro_done(void) __asm__("_bm_intro_done");
void bm_intro_done(void) {
    char path[300];
    BOOL (__stdcall *mkdir)(LPCSTR, LPSECURITY_ATTRIBUTES) = bm_api("kernel32.dll", "CreateDirectoryA");
    HANDLE (__stdcall *create)(LPCSTR, DWORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE) = bm_api("kernel32.dll", "CreateFileA");
    BOOL (__stdcall *closeh)(HANDLE) = bm_api("kernel32.dll", "CloseHandle");
    HANDLE h;
    if (!mkdir || !create || !closeh || !intro_marker(path, sizeof path)) return;
    mkdir(path, 0);
    bm_strcat(path, "\\intro_seen");
    h = create(path, GENERIC_WRITE, 0, 0, CREATE_ALWAYS, 0, 0);
    if (h != INVALID_HANDLE_VALUE) closeh(h);
}

static int parse_cmdline(void) {
    char *c = k.GetCommandLineA();
    int decided = 0;
    /* skip program name */
    if (*c == '"') { c++; while (*c && *c != '"') c++; if (*c) c++; } else { while (*c && *c != ' ') c++; }
    while (*c) {
        char tok[160]; int n = 0;
        while (*c == ' ') c++;
        if (!*c) break;
        while (*c && *c != ' ' && n < 159) tok[n++] = *c++;
        tok[n] = 0;
        if (!bm_stricmp(tok, "-skipintro") || !bm_stricmp(tok, "/skipintro")) { bm_skip_intro = 1; continue; }
        if (!bm_stricmp(tok, "-intro") || !bm_stricmp(tok, "/intro")) { force_intro = 1; continue; }
        if (!bm_stricmp(tok, "-local") || !bm_stricmp(tok, "/local")) { bm_cfg.mode = BM_NET_OFF; decided = 1; }
        else if (!bm_strnicmp(tok, "-host", 5) || !bm_strnicmp(tok, "/host", 5)) {
            char *v = tok + 5;
            if (*v == '=' || *v == ':') v++;
            if (!*v) { while (*c == ' ') c++; n = 0; while (*c && *c != ' ' && n < 20) v[n++] = *c++; v[n] = 0; }
            bm_cfg.mode = BM_NET_HOST; if (bm_atoi(v) > 0) bm_cfg.port = bm_atoi(v); decided = 1;
        } else if (!bm_strnicmp(tok, "-join", 5) || !bm_strnicmp(tok, "/join", 5)) {
            char *v = tok + 5, *colon;
            if (*v == '=') v++;
            if (!*v) { while (*c == ' ') c++; n = 0; while (*c && *c != ' ' && n < 120) v[n++] = *c++; v[n] = 0; }
            colon = v + bm_strlen(v);
            while (colon > v && *colon != ':') colon--;
            if (*colon == ':') { *colon = 0; bm_cfg.jport = bm_atoi(colon + 1); }
            bm_strcpy(bm_cfg.address, v);
            bm_cfg.mode = BM_NET_JOIN; decided = 1;
        }
    }
    return decided;
}

/* ---------------------------------------------------------------- 256-colour display
 * The game drives DirectDraw in an 8-bit palettised mode.  Windows 8 and later only provide that
 * through the "DWM8And16BitMitigation" compatibility layer, which the OS normally attaches to an
 * executable after it has failed once (and remembers per path).  Request the layer up front by
 * restarting ourselves with __COMPAT_LAYER set, so the game works from any folder first time. */
#ifndef BM_NATIVE
static void relaunch_with_layer(void) {
    DWORD (__stdcall *getenv_)(LPCSTR, LPSTR, DWORD) = bm_api("kernel32.dll", "GetEnvironmentVariableA");
    BOOL (__stdcall *setenv_)(LPCSTR, LPCSTR) = bm_api("kernel32.dll", "SetEnvironmentVariableA");
    BOOL (__stdcall *create)(LPCSTR, LPSTR, LPSECURITY_ATTRIBUTES, LPSECURITY_ATTRIBUTES, BOOL, DWORD, LPVOID, LPCSTR, LPSTARTUPINFOA, LPPROCESS_INFORMATION) = bm_api("kernel32.dll", "CreateProcessA");
    DWORD (__stdcall *wait)(HANDLE, DWORD) = bm_api("kernel32.dll", "WaitForSingleObject");
    BOOL (__stdcall *exitcode)(HANDLE, LPDWORD) = bm_api("kernel32.dll", "GetExitCodeProcess");
    LONG (__stdcall *rtlver)(void *) = bm_api("ntdll.dll", "RtlGetVersion");
    extern void (__stdcall *imp_ExitProcess)(UINT) __asm__("__imp__ExitProcess");
    char cur[512], *cmd, *c;
    struct { DWORD size, major, minor, build, platform; WCHAR csd[128]; } vi;
    STARTUPINFOA si; PROCESS_INFORMATION pi; DWORD code = 0;
    memset(&vi, 0, sizeof vi); vi.size = sizeof vi;
    if (rtlver && !rtlver(&vi) && (vi.major < 6 || (vi.major == 6 && vi.minor < 2))) return;   /* Windows 7: native 8-bit works */
    if (!setenv_ || !create || !getenv_) return;
    if (getenv_("__COMPAT_LAYER", cur, sizeof cur)) {
        for (c = cur; *c; c++) if (!bm_strnicmp(c, "DWM8And16BitMitigation", 22)) return;       /* already applied */
        if (getenv_("BM_NO_RELAUNCH", cur, sizeof cur)) return;
    }
    if (getenv_("BM_NO_RELAUNCH", cur, sizeof cur)) return;
    {
        char *args = k.GetCommandLineA();
        int n = bm_strlen(args);
        cmd = k.GlobalAlloc(GPTR, (SIZE_T)n + 8);
        memcpy(cmd, args, (unsigned)n + 1);
    }
    setenv_("__COMPAT_LAYER", "DWM8And16BitMitigation");
    memset(&si, 0, sizeof si); si.cb = sizeof si;
    if (!create(0, cmd, 0, 0, FALSE, 0, 0, 0, &si, &pi)) { bm_log("relaunch failed, continuing in this process"); return; }
    wait(pi.hProcess, INFINITE);
    exitcode(pi.hProcess, &code);
    imp_ExitProcess(code);
}

#endif /* !BM_NATIVE */

/* ---------------------------------------------------------------- entry point */
#ifndef BM_NATIVE
extern void bm_entry(void) __asm__("_bm_entry");        /* original program entry (restored code) */
extern void bm_start(void) __asm__("_bm_start");
extern void (__stdcall *imp_ExitProcess)(UINT) __asm__("__imp__ExitProcess");
#endif

void bm_start(void) {
    char *s;
    int decided;
    load_k32();
#ifndef BM_NATIVE
    if (0) relaunch_with_layer();     /* no longer needed: ddraw.c emulates the 8-bit display mode */
#endif
    k.GetModuleFileNameA(0, bm_cfg.exedir, sizeof bm_cfg.exedir);
    for (s = bm_cfg.exedir + bm_strlen(bm_cfg.exedir); s > bm_cfg.exedir && s[-1] != '\\'; s--) {}
    *s = 0;
    k.SetCurrentDirectoryA(bm_cfg.exedir);
    {   char dd[MAX_PATH];                                  /* the folder with everything but the program */
        BOOL (__stdcall *mk)(LPCSTR, LPSECURITY_ATTRIBUTES) = bm_api("kernel32.dll", "CreateDirectoryA");
        bm_strcpy(dd, bm_cfg.exedir); bm_strcat(dd, "DATA");
        if (mk) mk(dd, 0);
    }
    fix_cfg();
    ensure_options();
    load_ini();
    decided = parse_cmdline();
    intro_decide();
    bm_cfg.preset = decided ? bm_cfg.mode : BM_NET_ASK;
    if (!decided) bm_cfg.mode = BM_NET_ASK;
    bm_log("start: net mode %d host port %d join %s:%d", bm_cfg.mode, bm_cfg.port, bm_cfg.address, bm_cfg.jport);
#ifndef BM_NATIVE
    __asm__ volatile("jmp _bm_entry");
    for (;;) {}
#endif
}
