# "Start Network Game" - replaces the original sub_0042b0ce (0x42b0ce..0x42b47d), which was the IPX
# server screen: a "Connected network players" list that the player confirmed with Enter.
#
# The TCP lobby (src/platform/ui.c) has already gathered the players, so the session now starts by
# itself: bring the game's network layer up as a server, announce the game, wait until a client has
# joined at game level, send the start message and play.  Nothing is drawn or read from the keyboard
# here.  All calls are to the original routines, in the order the original used them.
#
# Locals: [ebp-4] time of the last server announcement, [ebp-8] start of the wait, [ebp-12] counter,
# [ebp-16] clients joined, [ebp-20] time the first client was seen.
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 24
    mov dword ptr [ebp - 20], 0
.Lhost_begin:
    mov dword ptr [ebp - 20], 0
    mov eax, 2                            # role 2 = server: protocol 1 (TCP), TCP lobby (hooks.s -> platform layer)
    call bm_net_session
    test eax, eax
    jne .Lhost_out
.Lhost_init:
    call sub_004121ff
    mov dword ptr [d_004646bc], 0
    call sub_00411cf8
    call sub_004224e2
    call sub_0040ff57
    mov dword ptr [d_00464990], 1
    mov eax, 0x410
    call sub_0042741e
    mov dword ptr [d_0046492c], 0xffffffff
    call sub_0040f290                       # empty client table
    call sub_0043acf8                       # milliseconds
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 8], eax
.Lhost_wait:
    call sub_0040ea1e                       # receive / process network messages
    call sub_0040ea1e
    call sub_0043acf8
    mov edx, dword ptr [ebp - 4]
    add edx, 0x3e8
    cmp edx, eax
    jg .Lhost_nobeacon
    mov dword ptr [ebp - 4], eax
    call sub_0040ebc1                       # announce this game once a second
    call sub_0040ea1e
.Lhost_nobeacon:
    call sub_00410262                       # number of clients that have joined the game
    test eax, eax
    jne .Lhost_some
    call sub_0043acf8
    sub eax, dword ptr [ebp - 8]
    cmp eax, 15000
    jg .Lhost_cleanup                       # nobody joined in 15 s: back to the menu
    jmp .Lhost_sleep
.Lhost_some:                                # start when every TCP client has joined, or 4 s after the first
    mov dword ptr [ebp - 16], eax
    call _bm_expected_clients               # players connected over TCP (platform layer)
    cmp dword ptr [ebp - 16], eax
    jge .Lhost_go
    cmp dword ptr [ebp - 20], 0
    jne .Lhost_seen
    call sub_0043acf8
    mov dword ptr [ebp - 20], eax
.Lhost_seen:
    call sub_0043acf8
    sub eax, dword ptr [ebp - 20]
    cmp eax, 4000
    jg .Lhost_go
.Lhost_sleep:
    mov eax, 0x64
    call sub_00413cb0                       # 100 ms, keeps the window responsive
    jmp .Lhost_wait
.Lhost_go:
    inc dword ptr [d_004642c0]
    mov dword ptr [ebp - 12], 0
.Lhost_sync:                                # five rounds: send the player list, let it arrive
    cmp dword ptr [ebp - 12], 5
    jge .Lhost_start
    call sub_0040ed08
    call sub_0040ea1e
    mov eax, 0x64
    call sub_00413cb0
    inc dword ptr [ebp - 12]
    jmp .Lhost_sync
.Lhost_start:
    call sub_0040fe88                       # tell the clients the game starts
    call sub_0040ea1e
    call sub_0042a3f6                       # play the network game
.Lhost_cleanup:
    call sub_0040ec29
    call sub_0040ea1e
    call sub_0040ffbc
    call sub_00422552
    call sub_0040cbb9
    call sub_004121ff
.Lhost_ended:
    call _bm_fuse_tripped                   # every client was lost: back to the lobby
    test eax, eax
    jne .Lhost_restart
.Lhost_out:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
.Lhost_restart:
    call _bm_is_dedicated_session           # on a dedicated server back to the join screen, otherwise to the lobby
    test eax, eax
    jne .Ljoin_begin
    jmp .Lhost_begin
