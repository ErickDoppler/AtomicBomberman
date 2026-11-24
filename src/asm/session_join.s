# "Join Network Game" - replaces the original sub_0042b47d (0x42b47d..0x42b9ce), which was the IPX
# server browser ("Available net games", pick one with Enter) followed by a "Joined... waiting for
# server to start" screen.
#
# The TCP lobby has already connected this game to the server, and that server is the only game on the
# virtual network, so there is nothing to choose: wait for its announcement, join the game in server
# slot 0 and wait for the start message.  Nothing is drawn or read from the keyboard; failures are
# reported with the game's own notice box (the messages the old screens used).  All calls are to the
# original routines, in the order the original used them.
#
# Locals: [ebp-4] start of the current wait, [ebp-8] time now.
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 24                             # the same frame as session_host.s: node 1 of a dedicated server continues there
.Ljoin_begin:
    mov eax, 1                              # role 1 = client: protocol 1 (TCP), TCP join screen (hooks.s -> platform layer)
    call bm_net_session
    test eax, eax
    jne .Ljoin_out
    call _bm_is_game_server                 # node 1 of a dedicated server runs the game server logic
    test eax, eax
    je .Ljoin_client
    mov dword ptr [ebp - 20], 0
    jmp .Lhost_init
.Ljoin_client:
    call sub_004121ff
    mov dword ptr [d_004646bc], 0
    call sub_00411cf8
    call sub_004224e2
    call sub_0040ff57
    mov eax, 0x410
    call sub_0042741e
    mov dword ptr [d_0046492c], 0xffffffff
    call sub_0040f243                       # empty server table
    call sub_0043acf8
    mov dword ptr [ebp - 4], eax
.Ljoin_find:                                # the server announces itself once a second
    call sub_0040ea1e
    xor eax, eax
    call sub_0040f163                       # server in slot 0 (0 = none yet)
    test eax, eax
    jne .Ljoin_found
    call sub_0043acf8
    sub eax, dword ptr [ebp - 4]
    cmp eax, 12000
    jg .Ljoin_noserver
    mov eax, 0x64
    call sub_00413cb0
    jmp .Ljoin_find
.Ljoin_found:
    xor eax, eax
    call sub_0040f1bd                       # clients already on that server
    cmp eax, 9
    jl .Ljoin_request
    mov eax, 7                              # "Requested server already full!"
    call bm_notice
    jmp .Ljoin_cleanup
.Ljoin_request:
    xor eax, eax
    call sub_0040f364                       # no join answer yet
    xor eax, eax
    call sub_0040f320                       # the game has not started - cleared here, once: the host's player list can arrive
                                            # while the join answer is still being waited for, and must not be forgotten
    call sub_0043acf8
    mov dword ptr [ebp - 4], eax
.Ljoin_ask:                                 # ask to join every second, for up to 3 s
    xor eax, eax
    call sub_0040ec6f
    call sub_0040ea1e
    mov eax, 0x3e8
    call sub_00413cb0
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
    call sub_0040f386
    test eax, eax
    jne .Ljoin_answer
    mov eax, dword ptr [ebp - 4]
    add eax, 0xbb8
    cmp eax, dword ptr [ebp - 8]
    ja .Ljoin_ask
.Ljoin_answer:
    call sub_0040f386
    test eax, eax
    je .Ljoin_refused
    call sub_0043acf8
    mov dword ptr [ebp - 4], eax
.Ljoin_wait:                                # wait for the server's start message
    call sub_0040ea1e
    call sub_0040ea1e
    call sub_0040f342
    test eax, eax
    jne .Ljoin_play
    xor eax, eax
    call sub_0040f163
    test eax, eax
    je .Ljoin_gone                          # the server has disappeared
    call sub_0043acf8
    sub eax, dword ptr [ebp - 4]
    cmp eax, 30000
    jg .Ljoin_cleanup                       # no start within 30 s: back to the menu
    mov eax, 0x64
    call sub_00413cb0
    jmp .Ljoin_wait
.Ljoin_play:
    inc dword ptr [d_004642c4]
    call sub_0042a3f6                       # play the network game
    push dword ptr [d_004600ec]
    push dword ptr [d_00460068]
    push dword ptr [d_00464a68]
    call _bm_dbg_ret                        # diagnostics: why did the game return? (exit flag, joined, host done)
    add esp, 12
    jmp .Ljoin_cleanup
.Ljoin_noserver:
    mov eax, 0x3d                           # "No net games found!"
    call bm_notice
    jmp .Ljoin_cleanup
.Ljoin_refused:
    mov eax, 0x64                           # "Unable to connect to server..."
    call bm_notice
    jmp .Ljoin_cleanup
.Ljoin_gone:
    mov eax, 0x6e                           # "The server seems to have bailed out on this game!"
    call bm_notice
.Ljoin_cleanup:
    call sub_0040edc9
    call sub_0040ea1e
    call sub_0040ffbc
    call sub_00422552
    call sub_0040cbb9
    call sub_004121ff
.Ljoin_ended:
    call _bm_fuse_tripped                   # the server was lost: back to the join screen
    test eax, eax
    jne .Ljoin_begin
.Ljoin_out:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
