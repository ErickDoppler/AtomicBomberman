/* The game hides the mouse pointer (ShowCursor(FALSE), SetCursor(NULL)) because it ran full screen
 * with its own drawing.  In a window that leaves the player without a pointer, so these two
 * imports keep the standard arrow visible while the game has the focus. */
#include "bm.h"

static HCURSOR arrow(void) {
    static HCURSOR c;
    if (!c) c = ((HCURSOR (__stdcall *)(HINSTANCE, LPCSTR))bm_api("user32.dll", "LoadCursorA"))(0, IDC_ARROW);
    return c;
}

BM_SHIM(int, ShowCursor, (BOOL show)) {
    static int once;
    int (__stdcall *real)(BOOL) = bm_api("user32.dll", "ShowCursor");
    (void)show;
    if (!once) { once = 1; while (real(TRUE) < 0) {} }      /* make sure the display counter is >= 0 */
    return 1;
}

BM_SHIM(HCURSOR, SetCursor, (HCURSOR c)) {
    HCURSOR (__stdcall *real)(HCURSOR) = bm_api("user32.dll", "SetCursor");
    return real(c ? c : arrow());
}
