/* Stand-in for <windows.h> in the portable (native) build: the types, constants and structures the platform layer
 * (src/platform) and the host (src/native) use.  The functions themselves are in w32.c, reached through bm_api() exactly
 * as the Windows build reaches the real ones.  Layouts shared with the guest (the translated game) are the Win32 ones. */
#ifndef W32_H
#define W32_H
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#define __stdcall
#define MAX_PATH 260
#define IDC_ARROW ((LPCSTR)32512)
#define INVALID_HANDLE_VALUE ((HANDLE)(intptr_t)-1)
#define TRUE 1
#define FALSE 0
#define INFINITE 0xFFFFFFFFu
#define GPTR 0x40
#define GENERIC_READ 0x80000000u
#define GENERIC_WRITE 0x40000000u
#define FILE_SHARE_READ 1
#define FILE_SHARE_WRITE 2
#define CREATE_NEW 1
#define CREATE_ALWAYS 2
#define OPEN_EXISTING 3
#define OPEN_ALWAYS 4
#define FILE_ATTRIBUTE_NORMAL 0x80
#define FILE_ATTRIBUTE_DIRECTORY 0x10
#define FILE_BEGIN 0
#define FILE_CURRENT 1
#define FILE_END 2
#define FILE_TYPE_DISK 1
#define ERROR_FILE_NOT_FOUND 2
#define ERROR_PATH_NOT_FOUND 3
#define ERROR_NO_MORE_FILES 18

typedef uint8_t BYTE;
typedef uint16_t WORD;
typedef uint32_t DWORD;
typedef int32_t LONG;
typedef int64_t LONG64;
typedef uint32_t UINT;
typedef int32_t INT;
typedef int BOOL;
typedef int16_t SHORT;
typedef uint32_t ULONG;
typedef uint16_t WCHAR;
typedef int32_t HRESULT;
typedef size_t SIZE_T;
typedef uintptr_t UINT_PTR;
typedef intptr_t INT_PTR;
#define bm_getenv getenv
typedef void *HANDLE, *HWND, *HDC, *HMODULE, *HINSTANCE, *HCURSOR, *LPVOID, *PVOID, *LPSECURITY_ATTRIBUTES, *LPOVERLAPPED;
typedef const void *LPCVOID;
typedef char *LPSTR;
typedef const char *LPCSTR;
typedef DWORD *LPDWORD;
typedef LONG *PLONG;
typedef void *FARPROC;
typedef DWORD (*LPTHREAD_START_ROUTINE)(void *);

typedef struct { LONG left, top, right, bottom; } RECT, *LPRECT;
typedef struct { DWORD lo, hi; } FILETIME_;
/* WIN32_FIND_DATAA as the guest sees it */
typedef struct {
    DWORD dwFileAttributes; FILETIME_ ftCreationTime, ftLastAccessTime, ftLastWriteTime;
    DWORD nFileSizeHigh, nFileSizeLow, dwReserved0, dwReserved1;
    char cFileName[MAX_PATH]; char cAlternateFileName[14];
} WIN32_FIND_DATAA, *LPWIN32_FIND_DATAA;

/* the platform layer's own helpers (rt_native.c) */
void *bm_api(const char *dll, const char *name);

/* the emulated Win32 API (w32.c) */
typedef struct { const char *name; int argc; void *fn; } w32_api_t;      /* argc: stdcall arguments of the guest import */
extern w32_api_t w32_apis[];
extern unsigned w32_napis;
void w32_reg(const char *name, int argc, void *fn);

#endif
