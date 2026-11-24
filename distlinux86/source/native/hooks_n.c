/* The seam between the translated game and the platform layer in the portable build:
 *  - the platform functions the restored assembly calls (src/asm/hooks.s: _bm_fuse, _bm_session_lobby ...) are registered
 *    with the host under their names,
 *  - the glue routines the platform layer calls in the game (_bm_g_text ...) are wrappers that run the translated code. */
#include "bm.h"
#include "host.h"

unsigned host_gsym(const char *name) { return gsym(name); }

/* ---- the platform functions the game calls (cdecl: argc -1) ---- */
int bm_expected_clients(void); void bm_role_hook(int role, const char *nodename); int bm_session_lobby(void);
int bm_slot_kind(int slot); void bm_row_cat(char *row, int slot, int type); void bm_setup_lock(void); int bm_setup_all_locked(void);
void bm_setup_unlock_all(void); int bm_fuse(int *out); int bm_fuse_tripped(void); void bm_dbg_flag(int v); void bm_dbg_key(int k);
void bm_dbg_ret(int flag, int joined, int hostdone); int bm_game_role(int role); int bm_is_game_server(void); int bm_is_dedicated_session(void);
void bm_sleep_ms(int ms); void bm_intro_done(void);
void ddraw_n_init(void); void dsound_init(void);

#define H(n) host_shim(#n, -1, (void *)n)
void hooks_init(void) {
    H(bm_expected_clients); H(bm_role_hook); H(bm_session_lobby); H(bm_slot_kind); H(bm_row_cat); H(bm_setup_lock); H(bm_setup_all_locked);
    H(bm_setup_unlock_all); H(bm_fuse); H(bm_fuse_tripped); H(bm_dbg_flag); H(bm_dbg_key); H(bm_dbg_ret); H(bm_game_role);
    H(bm_is_game_server); H(bm_is_dedicated_session); H(bm_sleep_ms); H(bm_intro_done);
}

/* ---- the game's drawing / input glue, from src/asm/hooks.s ---- */
static uint32_t scratch, scratch2;
static uint32_t gtext(const char *s, uint32_t *slot) {
    size_t n = strlen(s) + 1;
    if (!*slot) *slot = gmalloc(512);
    if (n > 511) n = 511;
    memcpy((void *)(uintptr_t)*slot, s, n); ((char *)(uintptr_t)*slot)[n - 1] = 0;
    return *slot;
}
#define GCALL(name) static uint32_t a_; if (!a_) a_ = gsym(name)
void bm_g_enter(void) { GCALL("bm_g_enter"); guest_call(a_, 0); }
void bm_g_leave(void) { GCALL("bm_g_leave"); guest_call(a_, 0); }
void bm_g_begin(void) { GCALL("bm_g_begin"); guest_call(a_, 0); }
void bm_g_text(const char *text, int x, int y) { GCALL("bm_g_text"); guest_call(a_, 3, gtext(text, &scratch), (uint32_t)x, (uint32_t)y); }
void bm_g_cursor(int x, int y) { GCALL("bm_g_cursor"); guest_call(a_, 2, (uint32_t)x, (uint32_t)y); }
void bm_g_hint(void) { GCALL("bm_g_hint"); guest_call(a_, 0); }
void bm_g_present(void) { GCALL("bm_g_present"); guest_call(a_, 0); }
int  bm_g_key(void) { GCALL("bm_g_key"); return (int)guest_call(a_, 0); }
int  bm_g_value(int id) { GCALL("bm_g_value"); return (int)guest_call(a_, 1, (uint32_t)id); }
int  bm_g_prompt(char *buf, int maxlen, const char *title) {
    int r; uint32_t b;
    GCALL("bm_g_prompt");
    b = gtext(buf, &scratch);
    r = (int)guest_call(a_, 3, b, (uint32_t)maxlen, gtext(title, &scratch2));
    memcpy(buf, (void *)(uintptr_t)b, (size_t)maxlen < 511 ? (size_t)maxlen : 511);
    return r;
}
