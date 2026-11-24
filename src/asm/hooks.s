# Hand-written glue between the restored game code and the platform layer (src/platform).
# Lives in its own section so the original code section keeps its exact size and addresses.
# tools/emit.py redirects a few calls (PATCH_CALLS) and rewrites some instruction ranges
# (PATCH_RANGES); every other instruction is the original program.
    .intel_syntax noprefix
    .section .text.hook, "x"

# --- network session -----------------------------------------------------------------------
# The game starts a network session from two wrappers (the main menu's "Start Network Game" and
# "Join Network Game"), both calling sub_0040c839 with the role in EAX (2 = server, 1 = client).
# Both calls come here first: force the default protocol to 1 - the (TCP) transport - so the
# "select network protocol" menu never appears, tell the platform layer the role and the player's
# name (the game's node-name buffer d_00460140), then continue into the original routine.
bm_net_session:
    pushad
    mov dword ptr [d_00464828], 1
    push offset d_00460140
    push eax
    call _bm_role_hook
    add esp, 8
    call _bm_session_lobby                  # the TCP lobby / join screen, before the game starts to connect
    mov eax, dword ptr [esp + 28]           # the role the menu asked for ...
    push eax
    call _bm_game_role                      # ... is 2 for the player with node 1 of a dedicated server
    add esp, 4
    mov dword ptr [esp + 28], eax
    popad
    cmp dword ptr [_bm_lobby_cancelled], 0
    jne 2f
    jmp sub_0040c839
2:  mov eax, 1                              # cancelled: the session fails at once, as if it could not connect
    ret

# --- intro ---------------------------------------------------------------------------------
# The start-up sequence (sub_0042b060) shows the publisher logos and the title screen with its
# music before the main menu.  With -skipintro (platform flag _bm_skip_intro) go straight on.
bm_intro:
    cmp dword ptr [_bm_skip_intro], 0
    jne 1f
    call sub_0042b060                       # the intro screens
    pusha
    call _bm_intro_done                     # ... shown once on this computer: remember it
    popa
1:  ret

# --- the game's own screen toolkit, callable from C (cdecl) ---------------------------------
# The TCP lobby screens (src/platform/ui.c) are drawn with the game's own routines, exactly like
# its Options screen: background, outlined font, bomb cursor, present, key queue and the modal
# text prompt that the game uses to ask for the node name.  Watcom register conventions are
# set up here; every thunk preserves all registers except the result in EAX.

# void bm_g_enter(void)        open a menu screen (random background, clear key queue)
    .globl _bm_g_enter
_bm_g_enter:
    pushad
    call sub_004148e5
    call sub_00415ca4
    call sub_00415c1f
    call sub_0041043c
    popad
    ret

# void bm_g_leave(void)
    .globl _bm_g_leave
_bm_g_leave:
    pushad
    mov eax, dword ptr [d_00464948]
    call sub_00410494
    popad
    ret

# void bm_g_begin(void)        start a frame: background
    .globl _bm_g_begin
_bm_g_begin:
    pushad
    call sub_00415ca4
    popad
    ret

# void bm_g_text(const char *text, int x, int y)   outlined text, as the Options screen draws its rows
    .globl _bm_g_text
_bm_g_text:
    pushad
    mov eax, 0x2ec                  # width limit from VALUELST.RES
    call sub_00412135
    mov ebx, eax
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push dword ptr [esp + 52]       # y
    mov edx, dword ptr [esp + 48]   # text
    mov ecx, dword ptr [esp + 52]   # x
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    popad
    ret

# void bm_g_cursor(int x, int y)   the animated bomb
    .globl _bm_g_cursor
_bm_g_cursor:
    pushad
    mov eax, dword ptr [esp + 36]
    mov edx, dword ptr [esp + 40]
    call sub_00413bd6
    popad
    ret

# void bm_g_hint(void)         "Esc" hint of the menu screens
    .globl _bm_g_hint
_bm_g_hint:
    pushad
    call sub_00413fb9
    popad
    ret

# void bm_g_present(void)      show the frame
    .globl _bm_g_present
_bm_g_present:
    pushad
    call sub_00415c1f
    popad
    ret

# int bm_g_key(void)           next key event, -1 when none (0x148 up, 0x150 down, 0xd enter, 0x1b esc ...)
    .globl _bm_g_key
_bm_g_key:
    pushad
    call sub_004102b7
    mov dword ptr [esp + 28], eax
    popad
    ret

# int bm_g_value(int id)       number from VALUELST.RES
    .globl _bm_g_value
_bm_g_value:
    pushad
    mov eax, dword ptr [esp + 36]
    call sub_00412135
    mov dword ptr [esp + 28], eax
    popad
    ret

# int bm_g_prompt(char *buf, int maxlen, const char *title)   the game's modal input box; 0 = Enter pressed
    .globl _bm_g_prompt
_bm_g_prompt:
    pushad
    mov eax, dword ptr [esp + 36]
    mov edx, dword ptr [esp + 40]
    mov ebx, dword ptr [esp + 44]
    push ebx
    push edx
    push eax
    call sub_00431178               # save the screen under the box
    pop eax
    pop edx
    pop ebx
    push 0xb4
    mov ecx, 0x19
    call sub_0042e938
    mov dword ptr [esp + 28], eax
    call sub_00431360               # restore it
    popad
    ret

# --- notice box ------------------------------------------------------------------------------------
# bm_notice: EAX = message number from MESSAGES.TXT; shows the game's own notice box ("NOTE!" + text),
# exactly as the old screens did for their errors.  Used by src/asm/session_join.s.
    .globl bm_notice
bm_notice:
    push ebx
    push ecx
    push edx
    push eax
    call sub_00431178                       # save the screen under the box
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    pop eax
    call sub_004124a4                       # the message text
    mov edx, eax
    mov eax, 0x5f
    call sub_004124a4                       # the title
    call sub_00414340                       # the box, waits for a key
    call sub_00431360                       # restore the screen
    pop edx
    pop ecx
    pop ebx
    ret

# --- tables of the game's network layer, sized for ten participants --------------------------
# The restored code (tools/emit.py NET_SYMBOLS) addresses these instead of the original, smaller
# tables, which stay in place unused so that no other address moves.  A session holds the host and up
# to nine clients.
    .section .bss.hook, "bw"
    .align 4
    .space 4                                # the dword view of bm_net_part reads two bytes before it
    .globl bm_net_part
bm_net_part:    .space 20                   # participant ids, 10 words (the host first)
    .globl bm_net_ids
bm_net_ids:     .space 20                   # ids of the clients that joined (9 words used)
    .globl bm_net_names
bm_net_names:   .space 36                   # one name buffer pointer per client (9 used)
    .globl bm_net_flags
bm_net_flags:   .space 36                   # one flag per client (9 used)

# --- controller setup screen of a network game ------------------------------------------------
# Replaces both "call sub_0042123f" (default controllers) of the setup screen, the host's and the
# client's: the defaults are made first, then every player of the lobby gets his slot - slot i for the
# i-th player, the host first.  This computer's slot becomes a keyboard player (type 2, "KEY 0"), the
# others become "NET" (type 4), unused slots stay off (type 0).  Outside a network game nothing changes.
    .section .text.hook, "x"
    .globl bm_assign_slots
bm_assign_slots:
    call sub_0042123f
    pusha
    call _bm_setup_unlock_all               # the host: nobody has locked a position yet
    xor esi, esi
.Lassign_next:
    push esi
    call _bm_slot_kind
    add esp, 4
    cmp eax, -1
    je .Lassign_done                        # not a network game
    mov edx, eax                            # 0 off, 2 keyboard, 4 net: this is the controller type
    xor ebx, ebx                            # sub-type: keyboard layout 0
    mov eax, esi
    call sub_00421e33
    inc esi
    cmp esi, 10
    jl .Lassign_next
.Lassign_done:
    popa
    ret

# Replaces "mov eax, [d_00464964]" at the start of drawing a row of the setup screen (0x41142b): the
# row's text so far is at [ebp-0x11c], the slot number at [ebp-0x1c].  The player's name is appended.
    .globl bm_row_append
bm_row_append:
    pusha
    mov eax, dword ptr [ebp - 0x1c]
    imul edx, eax, 0x98
    movzx edx, byte ptr [edx + d_00461bc4 + 0x10]   # controller type of the slot
    push edx
    push eax
    lea eax, [ebp - 0x11c]
    push eax
    call _bm_row_cat
    add esp, 12
    popa
    mov eax, dword ptr [d_00464964]         # the instruction that was replaced
    ret

# Replaces the "call sub_004102b7" that fetches the next key of the setup screen (0x411709).  When no key
# is pending and this computer is the host of a network game whose players have all locked their positions,
# the host gets the key the screen answers to by starting the game (0x385: the same key that tells a client
# the host has started).  Everything else is the original key.
    .globl bm_setup_key
bm_setup_key:
    call sub_004102b7
    cmp eax, -1
    je .Lkey_idle
    cmp eax, -2
    jne .Lkey_real
    jmp .Lkey_idle
.Lkey_real:
    pusha
    push eax
    call _bm_dbg_key                        # log the key (diagnostics)
    add esp, 4
    popa
    ret
.Lkey_unused:
.Lkey_idle:
    push eax
    push ecx
    push edx
    call _bm_setup_all_locked
    test eax, eax
    pop edx
    pop ecx
    jz .Lkey_none
    add esp, 4                              # forget the original key
    mov eax, 0x385
    ret
.Lkey_none:
    pop eax
.Lkey_out:
    ret

# Replaces the handling of the "drop bomb" key of the setup screen (0x411b4b..0x411b91): the player agrees
# with his position and it is locked; the host starts the game by itself when everybody has locked.
    .globl bm_setup_lock_key
bm_setup_lock_key:
    pusha
    call _bm_setup_lock
    popa
    ret

# --- the fuse ----------------------------------------------------------------------------------
# Every call of the game's network pump (sub_0040ea1e) comes here first (PATCH_CALLS).  After the pump the TCP layer
# is asked whether somebody was lost (_bm_fuse):
#   2: the session is over (the client lost its server, the host its last client): the game leaves it as it does when
#      the player presses Esc - the exit flag d_00464a68 is set;
#   1: a client dropped during the match: its game id is removed as if it had said goodbye, its personage dies for
#      everybody (the game's own "player died" message 0x32 is sent and applied here), the match goes on;
#   3: the same at the controller setup screen: the slot is switched off (here and at the others).
    .globl bm_pump
bm_pump:
    call sub_0040ea1e
    pusha
    push dword ptr [d_00464a68]
    call _bm_dbg_flag                       # log when the game's exit flag changes (diagnostics)
    add esp, 4
    sub esp, 8
.Lpump_poll:
    mov eax, esp
    push eax
    call _bm_fuse
    add esp, 4
    cmp eax, 2
    je .Lpump_exit
    test eax, eax
    jz .Lpump_done
    mov esi, eax
    mov ebx, dword ptr [esp]                # slot
    mov edi, dword ptr [esp + 4]            # game id of the client
    test edi, edi
    jz .Lpump_noleave
    sub esp, 16                             # a "leave" message from that client, as the game's handler expects it
    mov dword ptr [esp], 0
    mov dword ptr [esp + 4], 0
    mov dword ptr [esp + 8], 0
    mov dword ptr [esp + 12], 0
    mov word ptr [esp + 2], di              # sender
    mov eax, dword ptr [d_004600d4]
    mov word ptr [esp + 4], ax              # addressed to this computer
    mov eax, esp
    call ptr_0040d2f8                       # forget the client's id and name
    add esp, 16
    mov eax, edi
    call sub_0040c38f                       # remove it from the participants, pending messages no longer wait for it
.Lpump_noleave:
    cmp esi, 3
    je .Lpump_setup
    imul edx, ebx, 0x98                     # match: the personage dies where it stands
    movsx esi, word ptr [edx + d_00461bc4 + 0x6a]
    movsx edi, word ptr [edx + d_00461bc4 + 0x6c]
    sub esp, 16
    mov dword ptr [esp], 0
    mov dword ptr [esp + 4], 0
    mov dword ptr [esp + 8], 0
    mov dword ptr [esp + 12], 0
    mov word ptr [esp], si
    mov word ptr [esp + 2], di
    mov eax, ebx
    mov edx, esp
    call sub_00422646                       # here ...
    add esp, 16
    mov eax, ebx
    mov edx, esi
    mov ebx, edi
    call sub_0040ff14                       # ... and at the other players
    jmp .Lpump_poll
.Lpump_setup:
    mov esi, ebx                            # setup screen: the slot is off
    mov eax, esi
    xor edx, edx
    xor ebx, ebx
    call sub_00421e33
    mov eax, esi
    xor edx, edx
    xor ebx, ebx
    call sub_0040ee16
    jmp .Lpump_poll
.Lpump_exit:
    mov dword ptr [d_00464a68], 2
.Lpump_done:
    add esp, 8
    popa
    ret

# --- shorter waits while the host sends the level data to the clients ---------------------------------
# The game wrote its waiting loops for slow links: the client asked for ONE missing piece of the field per round,
# half of the rounds not at all, and a round took 100 ms; before the first round it waited two seconds.  Over a
# real network that is far too slow (tens of seconds for the "Sending data to clients" dialog).  Now a round takes
# about 10 ms (this routine replaces the 100 ms sleep: sleep 10 ms, then what the original sleep routine did after
# every sleep - handle the window's messages), up to 16 pieces are asked for in every round (tools/emit.py).
    .globl bm_nap
bm_nap:
    pusha
    push 10
    call _bm_sleep_ms
    add esp, 4
    call sub_0043a56c
    popa
    ret

# --- the window gets or loses the focus (WM_ACTIVATEAPP, replaces 0x443ead..0x443eb7) --------------------------------
# The original handler stored wParam in the game's "active" flag (d_0045c4e0), which also pauses the game and stops its
# drawing while the window is in the background, then released the keyboard / mouse (sub_0043b430(0)) or took them
# again (sub_0043b430(1)).  A network host must go on in the background, so the flag is always "active" - but the
# input still has to follow the focus: while the window is inactive the DirectInput devices and the keyboard hook are
# released (nothing else can be done with them), and when it is activated again they are acquired and the game's key
# tables are reset (a key released in another program is not "held" any more).  The original branches do exactly that;
# this routine only keeps the flag set and returns wParam, the code behind it (tools/emit.py) takes the branch.
# The game's keyboard hook (0x43b548, a thread hook: it sees every key of the game's window) starts by loading wParam
# (the virtual key) and lParam into ebx / esi; this routine does that and, on the first press of F12, switches between
# the window and full screen.  [esp+4] is the return address of this call: arguments are 4 bytes further than in the hook.
    .globl bm_key_hook
bm_key_hook:
    mov ebx, dword ptr [esp + 0x14]         # wParam: virtual key
    mov esi, dword ptr [esp + 0x18]         # lParam
    cmp ebx, 0x7b                           # VK_F12
    jne 1f
    cmp dword ptr [esp + 0x10], 0           # nCode < 0: not for us
    jl 1f
    test esi, 0x80000000                    # key release
    jnz 1f
    test esi, 0x40000000                    # auto repeat
    jnz 1f
    pusha
    call _bm_toggle_fullscreen
    popa
1:  ret

    .globl bm_activateapp
bm_activateapp:
    mov dword ptr [d_0045c4e0], 1           # the game is always "active"
    mov eax, esi                            # wParam: 0 = the window loses the focus
    ret

# --- closing the window (Alt+F4, the close button) ------------------------------------------------------------
# DefWindowProc ends the program on WM_CLOSE at once: none of the game's exit work runs (the options are written by an
# exit callback, the network session is left by another).  The window procedure sends WM_CLOSE here (0x443e82, the
# place where messages it does not handle go to DefWindowProc); the game's own exit routine - the one behind "Exit
# Bomberman" - does it properly.  ebx = the message.
    .globl bm_wm_misc
bm_wm_misc:
    cmp ebx, 0x10                           # WM_CLOSE
    jne 1f
    pusha
    xor eax, eax
    call sub_004128c9                       # runs the exit callbacks (options saved, session left) and ends the program
    popa
1:  jmp loc_00443f46
