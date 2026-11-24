/* Small compatibility shims. */
#include "bm.h"

/* The game refuses to start twice (a named mutex).  For testing network play on one computer set
 * BM_MULTI=1 and the name is dropped, so several copies can run side by side. */
BM_SHIM(HANDLE, CreateMutexA, (LPSECURITY_ATTRIBUTES sa, BOOL owner, LPCSTR name)) {
    HANDLE (__stdcall *real)(LPSECURITY_ATTRIBUTES, BOOL, LPCSTR) = bm_api("kernel32.dll", "CreateMutexA");
    DWORD (__stdcall *getenv_)(LPCSTR, LPSTR, DWORD) = bm_api("kernel32.dll", "GetEnvironmentVariableA");
    char t[8];
    if (getenv_("BM_MULTI", t, sizeof t)) name = 0;
    return real(sa, owner, name);
}
