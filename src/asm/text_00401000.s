# code 0x00401000 - 0x00411000
    .intel_syntax noprefix
    .text
loc_00401000:
    int3
    jmp loc_00401000
ptr_00401003:
    .byte 0x90,0x90,0x90,0x90,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_00401010:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_0045e010], 0
    je loc_00401045
    mov ebx, 0x2f
    mov edx, offset d_00458004
    mov eax, dword ptr [d_0045e010]
    call sub_0041863d
    mov dword ptr [d_0045e010], 0
loc_00401045:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040104c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    call sub_00401010
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00401066:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, offset ptr_0040104c
    call sub_00410ebf
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00401085:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x120
    mov dword ptr [ebp - 0x1c], eax
    call sub_00401010
    mov edx, offset d_0045800f
    mov eax, dword ptr [ebp - 0x1c]
    call sub_004514fc
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    je loc_004012ed
    mov dword ptr [ebp - 0x10], 1
loc_004010bc:
    cmp dword ptr [ebp - 0x10], 2
    jle loc_004010cf
    jmp loc_004012c5
loc_004010c7:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_004010bc
loc_004010cf:
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0x18]
    call sub_004515e8
loc_004010de:
    mov byte ptr [ebp - 0x80], 0
    mov ebx, dword ptr [ebp - 0x18]
    mov edx, 0x63
    lea eax, [ebp - 0x80]
    call sub_004515ff
    cmp byte ptr [ebp - 0x80], 0
    je loc_00401286
    mov edx, 0xa
    lea eax, [ebp - 0x80]
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_00401118
    mov eax, dword ptr [ebp - 0x14]
    mov byte ptr [eax], 0
loc_00401118:
    lea eax, [ebp - 0x80]
    mov dword ptr [ebp - 0x14], eax
    mov dword ptr [ebp - 0xc], 0
loc_00401125:
    cmp dword ptr [ebp - 0xc], 0x28
    jl loc_00401135
    jmp loc_00401192
loc_0040112d:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_00401125
loc_00401135:
    mov edx, 0x2c
    mov eax, dword ptr [ebp - 0x14]
    call sub_0045167a
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov dword ptr [edx + ebp - 0x120], eax
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    cmp dword ptr [eax + ebp - 0x120], 0
    je loc_0040118e
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov eax, dword ptr [eax + ebp - 0x120]
    mov byte ptr [eax], 0
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    inc dword ptr [eax + ebp - 0x120]
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov eax, dword ptr [eax + ebp - 0x120]
    mov dword ptr [ebp - 0x14], eax
    jmp loc_00401190
loc_0040118e:
    jmp loc_00401192
loc_00401190:
    jmp loc_0040112d
loc_00401192:
    cmp byte ptr [ebp - 0x80], 0x2d
    jne loc_00401286
    xor eax, eax
    mov al, byte ptr [ebp - 0x7f]
    call sub_0045168e
    cmp eax, 0x43
    jne loc_00401286
    cmp dword ptr [ebp - 0xc], 9
    jne loc_00401286
    cmp dword ptr [ebp - 0x10], 2
    jne loc_00401280
    imul eax, dword ptr [ebp - 8], 0x70
    mov edx, dword ptr [d_0045e010]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov ebx, 0x32
    mov edx, dword ptr [ebp - 0x120]
    mov eax, dword ptr [ebp - 4]
    call sub_0045169c
    mov eax, dword ptr [ebp - 0x11c]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x34], edx
    mov ebx, 0x1e
    mov edx, dword ptr [ebp - 0x118]
    mov eax, dword ptr [ebp - 4]
    add eax, 0x38
    call sub_0045169c
    mov eax, dword ptr [ebp - 0x114]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x58], edx
    mov eax, dword ptr [ebp - 0x110]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x5c], edx
    mov eax, dword ptr [ebp - 0x10c]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x60], edx
    mov eax, dword ptr [ebp - 0x108]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x64], edx
    mov eax, dword ptr [ebp - 0x104]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x68], edx
    mov eax, dword ptr [ebp - 0x100]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x6c], edx
loc_00401280:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
loc_00401286:
    mov eax, dword ptr [ebp - 0x18]
    test byte ptr [eax + 0xc], 0x10
    je loc_004010de
    cmp dword ptr [ebp - 0x10], 1
    jne loc_004012c0
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_0045e014], eax
    mov ecx, 0x81
    mov ebx, offset d_00458004
    mov edx, dword ptr [d_0045e014]
    mov eax, 0x70
    call sub_00418511
    mov dword ptr [d_0045e010], eax
loc_004012c0:
    jmp loc_004010c7
loc_004012c5:
    mov eax, dword ptr [ebp - 0x18]
    call sub_0045172e
    mov dword ptr [d_0045e018], 1
    push dword ptr [d_0045e014]
    mov eax, offset d_00458012
    push eax
    call sub_0042c0c8
    add esp, 8
    jmp loc_00401309
loc_004012ed:
    mov dword ptr [d_0045e018], 0
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, offset d_00458031
    push eax
    call sub_0042c0c8
    add esp, 8
loc_00401309:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00401312:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_0046489c], 0
    je loc_00401338
    call sub_0040197f
    mov dword ptr [d_004648b0], 0xffffffff
loc_00401338:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040133f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x74
    .byte 0x81,0xec,0x74,0x00,0x00,0x00
    cmp dword ptr [d_0046489c], 0
    je loc_00401512
    call sub_004121ff
    inc dword ptr [d_004648b0]
    mov eax, dword ptr [d_004648b0]
    cmp eax, dword ptr [d_0045e014]
    jl loc_004013ac
    xor ecx, ecx
    mov cl, byte ptr [d_0049d38f]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x4c9
    call sub_004124a4
    mov edx, eax
    mov eax, 0x4c4
    call sub_004124a4
    call sub_00414340
    mov dword ptr [d_00464a68], 0xa
    jmp loc_00401512
loc_004013ac:
    imul eax, dword ptr [d_004648b0], 0x70
    mov edx, dword ptr [d_0045e010]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov edx, dword ptr [ebp - 0x10]
    add edx, 0x38
    mov eax, offset d_004648c4
    call sub_0045189e
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x34]
    mov dword ptr [d_00464998], eax
    call sub_00404833
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, 0x4d3
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor ecx, ecx
    mov cl, byte ptr [d_00495390]
    xor ebx, ebx
    mov bl, byte ptr [d_0049d38f]
    lea edx, [ebp - 0x74]
    mov eax, 0x4ce
    call sub_004124a4
    call sub_00414340
    cmp dword ptr [d_00464ae8], 0
    je loc_00401512
    mov dword ptr [ebp - 0xc], 0
loc_0040142f:
    cmp dword ptr [ebp - 0xc], 0xc8
    jl loc_00401445
    jmp loc_00401512
loc_0040143d:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040142f
loc_00401445:
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 8], edx
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 4]
    je loc_0040150d
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046460c]
    xor dword ptr [eax + d_0046460c], edx
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046460c]
    xor dword ptr [eax + d_0046460c], edx
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046460c]
    xor dword ptr [eax + d_0046460c], edx
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046465c]
    xor dword ptr [eax + d_0046465c], edx
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046465c]
    xor dword ptr [eax + d_0046465c], edx
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046465c]
    xor dword ptr [eax + d_0046465c], edx
loc_0040150d:
    jmp loc_0040143d
loc_00401512:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040151b:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    cmp dword ptr [d_0046489c], 0
    je loc_004015bd
    imul eax, dword ptr [d_004648b0], 0x70
    mov edx, dword ptr [d_0045e010]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov dword ptr [d_00464894], 0
    mov dword ptr [ebp - 8], 0
loc_00401559:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00401569
    jmp loc_00401573
loc_00401561:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00401559
loc_00401569:
    mov eax, dword ptr [ebp - 8]
    call sub_0042288c
    jmp loc_00401561
loc_00401573:
    mov dword ptr [ebp - 8], 0
loc_0040157a:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    cmp eax, dword ptr [edx + 0x68]
    jl loc_0040158f
    jmp loc_00401596
loc_00401587:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040157a
loc_0040158f:
    call sub_00422928
    jmp loc_00401587
loc_00401596:
    call sub_00401994
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x64]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x60]
    call sub_00401b05
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x5c]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x58]
    call sub_00401aae
loc_004015bd:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004015c6:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    lea edx, [ebp - 4]
    mov eax, offset d_0045805f
    call sub_00411d17
    call sub_0041404b
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_004016a6
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    or eax, 0x10000
    push eax
    push 0x64
    push 0x64
    xor ecx, ecx
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, 0x4e2
    call sub_004124a4
    call sub_0041485a
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    jl loc_0040162c
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [ebp - 4]
    jl loc_0040162e
loc_0040162c:
    jmp loc_00401699
loc_0040162e:
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    add eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax]
    call sub_00411d17
    call sub_00401085
    xor ecx, ecx
    mov cl, byte ptr [d_00495390]
    xor ebx, ebx
    mov bl, byte ptr [d_0049d38f]
    mov eax, 0x4ba
    call sub_004124a4
    mov edx, eax
    mov eax, 0x5f
    call sub_004124a4
    call sub_00414340
    mov dword ptr [d_0046489c], 1
    mov dword ptr [ebp - 0xc], 0
loc_0040167f:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_0040168f
    jmp loc_00401699
loc_00401687:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040167f
loc_0040168f:
    mov eax, dword ptr [ebp - 0xc]
    call sub_0042288c
    jmp loc_00401687
loc_00401699:
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00414173
    jmp loc_004016d1
loc_004016a6:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d38f]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x4bf
    call sub_004124a4
    mov edx, eax
    mov eax, 0x61
    call sub_004124a4
    call sub_00414340
loc_004016d1:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004016da:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    call sub_00401f76
    call sub_00410578
    cmp eax, 1
    jg loc_00401701
    mov dword ptr [d_00464894], 2
loc_00401701:
    cmp dword ptr [d_00464820], 0
    jne loc_0040173c
    mov eax, dword ptr [d_00464958]
    add dword ptr [d_004646c0], eax
    mov eax, 0x19
    call sub_00412135
    imul eax, dword ptr [d_0046494c]
    add eax, eax
    cmp eax, dword ptr [d_004646c0]
    jae loc_0040173a
    mov dword ptr [d_00464894], 1
loc_0040173a:
    jmp loc_00401746
loc_0040173c:
    mov dword ptr [d_004646c0], 0
loc_00401746:
    mov dword ptr [ebp - 8], 0
loc_0040174d:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_0040175d
    jmp loc_00401786
loc_00401755:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040174d
loc_0040175d:
    xor ebx, ebx
    lea edx, [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00421dd2
    cmp dword ptr [ebp - 4], 1
    je loc_00401776
    cmp dword ptr [ebp - 4], 0
    jne loc_00401778
loc_00401776:
    jmp loc_00401784
loc_00401778:
    mov eax, dword ptr [ebp - 8]
    call sub_004228c4
    test eax, eax
    jne loc_00401796
loc_00401784:
    jmp loc_00401755
loc_00401786:
    dec dword ptr [d_004648b0]
    mov dword ptr [d_00464894], 2
loc_00401796:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040179f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_004646c0], 0
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_004017be:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_0045e020], 0
    je loc_004017f3
    mov ebx, 0x2a
    mov edx, offset d_00458068
    mov eax, dword ptr [d_0045e020]
    call sub_0041863d
    mov dword ptr [d_0045e020], 0
loc_004017f3:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004017fa:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00422e48
    test eax, eax
    je loc_00401825
    mov dword ptr [ebp - 4], 0
    jmp loc_0040187b
loc_00401825:
    cmp dword ptr [d_0045e01c], 2
    jne loc_00401856
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425fb9
    cmp eax, 1
    je loc_00401847
    mov dword ptr [ebp - 0x10], 1
    jmp loc_0040184e
loc_00401847:
    mov dword ptr [ebp - 0x10], 0
loc_0040184e:
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 4], eax
    jmp loc_0040187b
loc_00401856:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425fb9
    test eax, eax
    jne loc_0040186e
    mov dword ptr [ebp - 0x14], 1
    jmp loc_00401875
loc_0040186e:
    mov dword ptr [ebp - 0x14], 0
loc_00401875:
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 4], eax
loc_0040187b:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00401886:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov ecx, 0x41
    mov ebx, offset d_00458068
    mov edx, 0x98
    mov eax, 0x64
    call sub_00418511
    mov dword ptr [d_0045e020], eax
    mov eax, offset ptr_004017be
    call sub_00410ebf
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004018c3:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [d_0045e020]
    mov dword ptr [ebp - 4], eax
loc_004018e0:
    cmp dword ptr [ebp - 8], 0x64
    jl loc_004018fa
    jmp loc_0040190b
loc_004018e8:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_004018e0
loc_004018fa:
    mov ebx, 0x98
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_00451940
    jmp loc_004018e8
loc_0040190b:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00401914:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_0045e020]
    mov dword ptr [ebp - 8], eax
loc_00401931:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_0040194b
    jmp loc_0040196c
loc_00401939:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00401931
loc_0040194b:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    jne loc_0040196a
    mov ebx, 0x98
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_00451940
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00401973
loc_0040196a:
    jmp loc_00401939
loc_0040196c:
    mov dword ptr [ebp - 4], 0
loc_00401973:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040197f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00401994:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    call sub_004018c3
    mov dword ptr [d_00464820], 1
    mov dword ptr [d_004646c0], 0
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004019c2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    call sub_00401914
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_00401a9b
    mov dword ptr [ebp - 0x10], 0
loc_004019e9:
    cmp dword ptr [ebp - 0x10], 0xc8
    jl loc_004019ff
    jmp loc_00401a9b
loc_004019f7:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_004019e9
loc_004019ff:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648ac]
    mov dword ptr [ebp - 0xc], edx
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648b4]
    mov dword ptr [ebp - 8], edx
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425fb9
    cmp eax, 1
    je loc_004019f7
    mov ebx, 3
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00422351
    test eax, eax
    je loc_00401a96
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0xc]
    call sub_00426524
    mov edx, eax
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [eax + 0x14], edx
    mov eax, dword ptr [ebp - 8]
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [eax + 0x20], edx
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [eax + 0x18], edx
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 4], eax
    jmp loc_00401aa2
loc_00401a96:
    jmp loc_004019f7
loc_00401a9b:
    mov dword ptr [ebp - 4], 0
loc_00401aa2:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00401aae:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 8], 0
loc_00401ac8:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0x10]
    jl loc_00401ada
    jmp loc_00401afd
loc_00401ad2:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00401ac8
loc_00401ada:
    call sub_004019c2
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00401afb
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x70], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], 1
loc_00401afb:
    jmp loc_00401ad2
loc_00401afd:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00401b05:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 8], 0
loc_00401b1f:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0x10]
    jl loc_00401b31
    jmp loc_00401b54
loc_00401b29:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00401b1f
loc_00401b31:
    call sub_004019c2
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00401b52
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x70], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], 2
loc_00401b52:
    jmp loc_00401b29
loc_00401b54:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00401b5c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xb0
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [ebp - 0x24]
    cmp dword ptr [eax + 4], 1
    jne loc_00401bab
    mov eax, dword ptr [ebp - 0x24]
    cmp byte ptr [eax + 0x92], 0
    jne loc_00401bab
    mov eax, dword ptr [ebp - 0x24]
    mov byte ptr [eax + 0x92], 1
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x18]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x14]
    call sub_0042665c
    call sub_0042583b
loc_00401bab:
    mov eax, dword ptr [ebp - 0x24]
    cmp dword ptr [eax + 8], 0
    je loc_00401bc2
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [eax], 0
    jmp loc_00401f6d
loc_00401bc2:
    mov eax, dword ptr [d_00464958]
    mov edx, dword ptr [ebp - 0x24]
    imul eax, dword ptr [edx + 0x70]
    xor edx, edx
    div dword ptr [d_0046494c]
    lea edx, [eax + 0x64]
    mov eax, dword ptr [ebp - 0x24]
    add dword ptr [eax + 0x74], edx
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x24]
    sub dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [eax + d_0045bedc]
    mov eax, dword ptr [ebp - 0x24]
    sub dword ptr [eax + 0x20], edx
loc_00401c0f:
    mov eax, dword ptr [ebp - 0x24]
    cmp dword ptr [eax + 0x74], 0
    jle loc_00401ed8
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x1c]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x20], eax
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x20]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x24]
    inc word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x24]
    sub dword ptr [eax + 0x74], 0x64
    mov eax, dword ptr [ebp - 0x20]
    call sub_00426599
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x1c]
    call sub_004265eb
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [ebp - 0x10]
    imul edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov ebx, dword ptr [ebp - 0xc]
    imul ebx, dword ptr [eax + d_0045bedc]
    mov eax, ebx
    add edx, eax
    mov dword ptr [ebp - 0x18], edx
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [ebp - 0xc]
    imul edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov ebx, dword ptr [ebp - 0x10]
    imul ebx, dword ptr [eax + d_0045bedc]
    mov eax, ebx
    sub edx, eax
    mov dword ptr [ebp - 0x14], edx
    cmp dword ptr [ebp - 0x18], 0
    jne loc_00401e01
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x20]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x28], edx
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x1c]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0x2c], edx
    mov edx, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [ebp - 0x28]
    call sub_004017fa
    test eax, eax
    jne loc_00401d3f
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [eax + 0x74], 0
    jmp loc_00401d7b
loc_00401d3f:
    mov eax, 0x4b0
    call sub_00412135
    cmp eax, 1
    jge loc_00401d57
    mov dword ptr [ebp - 0x30], 1
    jmp loc_00401d64
loc_00401d57:
    mov eax, 0x4b0
    call sub_00412135
    mov dword ptr [ebp - 0x30], eax
loc_00401d64:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x30]
    test edx, edx
    jne loc_00401e01
loc_00401d7b:
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    je loc_00401d9b
    mov eax, dword ptr [ebp - 0x24]
    inc word ptr [eax + 0x2c]
    jmp loc_00401da2
loc_00401d9b:
    mov eax, dword ptr [ebp - 0x24]
    dec word ptr [eax + 0x2c]
loc_00401da2:
    mov eax, dword ptr [ebp - 0x24]
    and word ptr [eax + 0x2c], 3
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x20]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x34], edx
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x1c]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0x38], edx
    mov edx, dword ptr [ebp - 0x38]
    mov eax, dword ptr [ebp - 0x34]
    call sub_004017fa
    test eax, eax
    jne loc_00401e01
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [eax + 0x74], 0
loc_00401e01:
    mov dword ptr [ebp - 0x3c], 0xa
    mov eax, dword ptr [ebp - 0x20]
    call sub_0042665c
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp - 0x1c]
    call sub_004266a3
    mov dword ptr [ebp - 0x44], eax
    mov edx, dword ptr [ebp - 0x44]
    mov eax, dword ptr [ebp - 0x40]
    call sub_0042708d
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00401e82
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [eax + 8], 1
    mov eax, dword ptr [ebp - 0x24]
    cmp dword ptr [eax + 4], 1
    jne loc_00401e5f
    mov eax, 0x51e
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    call sub_00421c71
loc_00401e5f:
    mov eax, dword ptr [ebp - 0x24]
    cmp dword ptr [eax + 4], 2
    jne loc_00401e82
    mov eax, 0x528
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    call sub_00421c71
loc_00401e82:
    mov dword ptr [ebp - 0x3c], 0xa
loc_00401e89:
    mov edx, dword ptr [ebp - 0x44]
    mov eax, dword ptr [ebp - 0x40]
    call sub_00421cb5
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_00401eb5
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 1
    je loc_00401eb3
    mov edx, 0xffffffff
    mov eax, dword ptr [ebp - 8]
    call sub_0041de63
loc_00401eb3:
    jmp loc_00401eb7
loc_00401eb5:
    jmp loc_00401ec1
loc_00401eb7:
    mov eax, dword ptr [ebp - 0x3c]
    dec dword ptr [ebp - 0x3c]
    test eax, eax
    jg loc_00401e89
loc_00401ec1:
    mov eax, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x24]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x24]
    mov dword ptr [edx + 0x20], eax
    jmp loc_00401c0f
loc_00401ed8:
    mov eax, dword ptr [ebp - 0x24]
    cmp dword ptr [eax + 4], 2
    jne loc_00401f07
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    call sub_00413aed
    push eax
    mov eax, offset d_00458071
    push eax
    lea eax, [ebp - 0xa8]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_00401f2b
loc_00401f07:
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    call sub_00413aed
    push eax
    mov eax, offset d_0045807a
    push eax
    lea eax, [ebp - 0xa8]
    push eax
    call sub_004518d0
    add esp, 0xc
loc_00401f2b:
    lea eax, [ebp - 0xa8]
    call sub_0041d957
    mov dword ptr [ebp - 0xac], eax
    mov eax, dword ptr [ebp - 0x24]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0xac]
    call sub_0041daa7
    mov dword ptr [ebp - 0xb0], eax
    mov ebx, dword ptr [ebp - 0xb0]
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00415920
loc_00401f6d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00401f76:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 4], 0
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_0045e020]
    mov dword ptr [ebp - 8], eax
loc_00401f9a:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_00401fb4
    jmp loc_00401ffb
loc_00401fa2:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00401f9a
loc_00401fb4:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00401ff9
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [d_0045e01c], eax
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 1
    jb loc_00401fe4
    cmp dword ptr [ebp - 0x10], 2
    jbe loc_00401fe6
    jmp loc_00401ff0
loc_00401fe4:
    jmp loc_00401ff0
loc_00401fe6:
    mov eax, dword ptr [ebp - 8]
    call sub_00401b5c
    jmp loc_00401ff9
loc_00401ff0:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], 0
loc_00401ff9:
    jmp loc_00401fa2
loc_00401ffb:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00464820], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040200c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x6c
    .byte 0x81,0xec,0x6c,0x00,0x00,0x00
    mov dword ptr [ebp - 4], 0
loc_00402021:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_00402031
    jmp loc_0040204b
loc_00402029:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00402021
loc_00402031:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046429c]
    add dword ptr [eax + d_0046442c], edx
    jmp loc_00402029
loc_0040204b:
    mov edx, offset d_0045809c
    mov eax, dword ptr [d_0045b7b0]
    call sub_004514fc
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_00402082
    mov ecx, dword ptr [ebp - 8]
    mov ebx, 1
    mov edx, 0x190
    mov eax, offset d_0046442c
    call sub_00451958
    mov eax, dword ptr [ebp - 8]
    call sub_0045172e
loc_00402082:
    mov edx, offset d_0045809f
    mov eax, dword ptr [d_0045b7b4]
    call sub_004514fc
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_00402147
    mov eax, 0x384
    call sub_004124a4
    push eax
    mov eax, offset d_004580a2
    push eax
    mov eax, dword ptr [ebp - 8]
    push eax
    call sub_00451b3e
    add esp, 0xc
    mov eax, 0x389
    call sub_004124a4
    push eax
    mov eax, offset d_004580a2
    push eax
    mov eax, dword ptr [ebp - 8]
    push eax
    call sub_00451b3e
    add esp, 0xc
    mov dword ptr [ebp - 4], 0
loc_004020df:
    cmp dword ptr [ebp - 4], 0x13
    jl loc_004020ef
    jmp loc_0040213f
loc_004020e7:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_004020df
loc_004020ef:
    mov eax, dword ptr [ebp - 4]
    add eax, 0x38e
    call sub_004124a4
    push eax
    mov eax, offset d_004580a7
    push eax
    lea eax, [ebp - 0x6c]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    push dword ptr [eax + d_0046429c]
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    push dword ptr [eax + d_0046442c]
    lea eax, [ebp - 0x6c]
    push eax
    mov eax, offset d_004580ab
    push eax
    mov eax, dword ptr [ebp - 8]
    push eax
    call sub_00451b3e
    add esp, 0x14
    jmp loc_004020e7
loc_0040213f:
    mov eax, dword ptr [ebp - 8]
    call sub_0045172e
loc_00402147:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00402150:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov edx, offset d_004580bc
    mov eax, dword ptr [d_0045b7b0]
    call sub_004514fc
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00402195
    mov ecx, dword ptr [ebp - 4]
    mov ebx, 1
    mov edx, 0x190
    mov eax, offset d_0046442c
    call sub_00451b5f
    mov eax, dword ptr [ebp - 4]
    call sub_0045172e
loc_00402195:
    mov eax, offset ptr_0040200c
    call sub_00410ebf
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_004021a8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004021bd:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, offset ptr_004021a8
    call sub_00410ebf
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004021dc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004021f1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00402206:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x70
    .byte 0x81,0xec,0x70,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 1
    jb loc_0040222b
    cmp dword ptr [ebp - 8], 1
    jbe loc_0040224b
    cmp dword ptr [ebp - 8], 2
    je loc_00402265
    jmp loc_0040227d
loc_0040222b:
    cmp dword ptr [ebp - 8], 0
    jne loc_0040227d
    push dword ptr [d_0045b7b8]
    mov eax, offset d_004580c0
    push eax
    lea eax, [ebp - 0x70]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_0040227d
loc_0040224b:
    push dword ptr [d_0045b7b8]
    mov eax, offset d_004580ce
    push eax
    lea eax, [ebp - 0x70]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_0040227d
loc_00402265:
    push dword ptr [d_0045b7b8]
    mov eax, offset d_004580dc
    push eax
    lea eax, [ebp - 0x70]
    push eax
    call sub_004518d0
    add esp, 0xc
loc_0040227d:
    lea eax, [ebp - 0x70]
    call sub_0041d957
    mov dword ptr [ebp - 0xc], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041daa7
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004022a1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], 0
loc_004022b6:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004022ce
    # jmp 0x402345
    .byte 0xe9
    .long loc_00402345 - . - 4
loc_004022c6:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_004022b6
loc_004022ce:
    mov dword ptr [ebp - 0x14], 0
loc_004022d5:
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004022ea
    jmp loc_00402343
loc_004022e2:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_004022d5
loc_004022ea:
    mov eax, dword ptr [ebp - 0x14]
    call sub_00426524
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x10]
    call sub_0042655f
    mov dword ptr [ebp - 8], eax
    xor eax, eax
    call sub_00402206
    mov edx, dword ptr [ebp - 8]
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, eax
    mov eax, ecx
    call sub_00415920
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00404852
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00402341
    mov eax, dword ptr [ebp - 4]
    call sub_00402206
    mov edx, dword ptr [ebp - 8]
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, eax
    mov eax, ecx
    call sub_00415920
loc_00402341:
    jmp loc_004022e2
loc_00402343:
    jmp loc_004022c6
loc_00402345:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040234e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov ecx, 0xa
    mov eax, dword ptr [d_00464a70]
    mov edx, dword ptr [d_00464a70]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov ebx, eax
    mov eax, 0x2bc
    call sub_004124a4
    mov edx, eax
    mov eax, dword ptr [d_00464ae4]
    call sub_004172ba
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004023a2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xd8
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 8], 0x19
    mov dword ptr [ebp - 4], 0x190
    mov eax, dword ptr [ebp - 0x10]
    add eax, 0x352
    call sub_004124a4
    push eax
    mov eax, 0x2fa
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    push dword ptr [eax + d_004647a4]
    mov eax, offset d_004580ea
    push eax
    lea eax, [ebp - 0xd8]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov eax, dword ptr [ebp - 4]
    push eax
    mov ecx, dword ptr [ebp - 8]
    lea ebx, [ebp - 0x74]
    mov edx, 0x14
    lea eax, [ebp - 0xd8]
    call sub_0042e938
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], -1
    je loc_00402441
    lea eax, [ebp - 0xd8]
    call sub_004516c1
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov dword ptr [edx + d_004647a4], eax
loc_00402441:
    mov eax, dword ptr [ebp - 0x10]
    add eax, 0x352
    call sub_004124a4
    push eax
    mov eax, 0x2fc
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor ecx, ecx
    mov cl, byte ptr [d_0049d38f]
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    lea eax, [ebp - 0x74]
    call sub_0042ede0
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], -1
    je loc_00402494
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [edx + d_004647e0], eax
loc_00402494:
    mov eax, dword ptr [ebp - 0x10]
    add eax, 0x352
    call sub_004124a4
    push eax
    mov eax, 0x2fe
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor ecx, ecx
    mov cl, byte ptr [d_0049d38f]
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    lea eax, [ebp - 0x74]
    call sub_0042ede0
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], -1
    je loc_004024e7
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [edx + d_00464764], eax
loc_004024e7:
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    cmp dword ptr [eax + d_00464764], 0
    je loc_0040257c
    mov eax, dword ptr [ebp - 0x10]
    add eax, 0x352
    call sub_004124a4
    push eax
    mov eax, 0x300
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    push dword ptr [eax + d_004646c4]
    mov eax, offset d_004580ed
    push eax
    lea eax, [ebp - 0xd8]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov eax, dword ptr [ebp - 4]
    push eax
    mov ecx, dword ptr [ebp - 8]
    lea ebx, [ebp - 0x74]
    mov edx, 0x14
    lea eax, [ebp - 0xd8]
    call sub_0042e938
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], -1
    je loc_0040257a
    lea eax, [ebp - 0xd8]
    call sub_004516c1
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov dword ptr [edx + d_004646c4], eax
loc_0040257a:
    jmp loc_0040258c
loc_0040257c:
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov dword ptr [eax + d_004646c4], 0
loc_0040258c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00402595:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xac
    mov dword ptr [ebp - 0xc], 0
loc_004025aa:
    cmp dword ptr [ebp - 0xc], 0xd
    jl loc_004025ba
    jmp loc_004025ca
loc_004025b2:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_004025aa
loc_004025ba:
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov dword ptr [eax + ebp - 0x40], 0xffffffff
    jmp loc_004025b2
loc_004025ca:
    call sub_00431178
    call sub_0041043c
    mov dword ptr [ebp - 8], 0
loc_004025db:
    call sub_00415ca4
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_00497f8f]
    push eax
    push 0x1e
    mov ecx, 0x1e
    mov ebx, 0x12c
    mov eax, 0x2f2
    call sub_004124a4
    mov esi, dword ptr [d_00464ae4]
    mov edx, eax
    mov eax, esi
    call sub_0041696c
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    call dword ptr [d_0045c37c]
    mov edx, 0x1dc
    sub edx, eax
    mov eax, edx
    push eax
    mov ecx, 0x14
    mov ebx, 0x1f4
    mov eax, 0x2e1
    call sub_004124a4
    mov edx, eax
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov dword ptr [ebp - 0xc], 0
loc_0040265c:
    cmp dword ptr [ebp - 0xc], 0xd
    jl loc_0040266f
    jmp loc_00402815
loc_00402667:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040265c
loc_0040266f:
    mov dword ptr [ebp - 0x44], 0xa
    imul eax, dword ptr [ebp - 0xc], 0x18
    add eax, 0x3c
    mov dword ptr [ebp - 0x48], eax
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    cmp dword ptr [eax + ebp - 0x40], -1
    jne loc_004026c9
    push 0
    mov eax, 0x2f3
    call sub_004124a4
    push eax
    push -1
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0x1388
    push eax
    push -1
    mov ecx, 0xffffffff
    mov ebx, dword ptr [ebp - 0x48]
    sub ebx, 4
    mov edx, dword ptr [ebp - 0x44]
    mov eax, dword ptr [d_00464ae4]
    call sub_00432298
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov dword ptr [edx + ebp - 0x40], eax
loc_004026c9:
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0x352
    call sub_004124a4
    push eax
    mov eax, 0x2f4
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xac]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d37a]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    push eax
    mov ecx, dword ptr [ebp - 0x44]
    add ecx, 0x50
    mov ebx, 0x64
    lea edx, [ebp - 0xac]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov eax, dword ptr [eax + d_004647e0]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    push dword ptr [eax + d_004647a4]
    mov eax, 0x2f5
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xac]
    push eax
    call sub_004518d0
    add esp, 0x10
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    push eax
    mov ecx, dword ptr [ebp - 0x44]
    add ecx, 0xc8
    mov ebx, 0x12c
    lea edx, [ebp - 0xac]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    cmp dword ptr [eax + d_00464764], 0
    je loc_004027c4
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    push dword ptr [eax + d_004646c4]
    mov eax, 0x2f7
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xac]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_004027de
loc_004027c4:
    mov eax, 0x2f6
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xac]
    push eax
    call sub_004518d0
    add esp, 8
loc_004027de:
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    push eax
    mov ecx, dword ptr [ebp - 0x44]
    add ecx, 0x1b8
    mov ebx, 0xa0
    lea edx, [ebp - 0xac]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    jmp loc_00402667
loc_00402815:
    call sub_00415c1f
    call sub_004102b7
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0x1388
    jl loc_00402834
    cmp dword ptr [ebp - 4], 0x1395
    jl loc_00402836
loc_00402834:
    jmp loc_00402843
loc_00402836:
    mov eax, dword ptr [ebp - 4]
    sub eax, 0x1388
    call sub_004023a2
loc_00402843:
    cmp dword ptr [ebp - 4], 0x20
    jb loc_0040286e
    cmp dword ptr [ebp - 4], 0x20
    jbe loc_00402890
    cmp dword ptr [ebp - 4], 0x71
    jb loc_00402866
    cmp dword ptr [ebp - 4], 0x71
    jbe loc_00402890
    cmp dword ptr [ebp - 4], 0x13b
    je loc_00402884
    jmp loc_00402897
loc_00402866:
    cmp dword ptr [ebp - 4], 0x51
    je loc_00402890
    jmp loc_00402897
loc_0040286e:
    cmp dword ptr [ebp - 4], 0xd
    jb loc_00402882
    cmp dword ptr [ebp - 4], 0xd
    jbe loc_00402890
    cmp dword ptr [ebp - 4], 0x1b
    je loc_00402890
    jmp loc_00402897
loc_00402882:
    jmp loc_00402897
loc_00402884:
    call sub_0041431c
    call sub_00431178
    jmp loc_00402897
loc_00402890:
    mov dword ptr [ebp - 8], 1
loc_00402897:
    cmp dword ptr [ebp - 8], 0
    je loc_004025db
    mov dword ptr [ebp - 0xc], 0
loc_004028a8:
    cmp dword ptr [ebp - 0xc], 0xd
    jl loc_004028b8
    jmp loc_004028c9
loc_004028b0:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_004028a8
loc_004028b8:
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov eax, dword ptr [eax + ebp - 0x40]
    call sub_0043322c
    jmp loc_004028b0
loc_004028c9:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004028d2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x118
    mov dword ptr [ebp - 0x28], eax
    call sub_004148e5
    mov edx, offset d_004648c4
    lea eax, [ebp - 0x8c]
    call sub_0045189e
    cmp dword ptr [ebp - 0x28], 0
    je loc_0040291b
    call sub_004049c0
    mov eax, 0x2d9
    call sub_004124a4
    mov edx, eax
    mov eax, offset d_004648c4
    call sub_0045189e
    jmp loc_0040292f
loc_0040291b:
    call sub_00407582
    mov eax, offset d_004648c4
    call sub_00411d17
    call sub_00403eee
loc_0040292f:
    call sub_00431178
    mov dword ptr [ebp - 0x14], 0
    mov dword ptr [ebp - 0x18], 0
loc_00402942:
    cmp dword ptr [ebp - 0x18], 0xa
    jl loc_00402952
    jmp loc_00402963
loc_0040294a:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    jmp loc_00402942
loc_00402952:
    call sub_004102b7
    mov eax, 0xa
    call sub_00413cb0
    jmp loc_0040294a
loc_00402963:
    call sub_0041043c
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 0x24], 0
    mov dword ptr [ebp - 0x20], 0
loc_0040297d:
    call sub_00415ca4
    call sub_004022a1
    lea edx, [ebp - 8]
    lea eax, [ebp - 0xc]
    call sub_00431804
    call sub_004318c4
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 0x14]
    call sub_00402206
    mov edx, dword ptr [ebp - 8]
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, eax
    mov eax, ecx
    call sub_00415920
    call sub_00415b22
    mov eax, offset d_00464700
    push eax
    mov eax, offset d_004648c4
    push eax
    mov eax, 0x2e6
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xf0]
    push eax
    call sub_004518d0
    add esp, 0x10
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 5
    mov ecx, 0x14
    mov ebx, 0x1f4
    lea edx, [ebp - 0xf0]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    push dword ptr [d_004647a0]
    mov eax, 0x2e7
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xf0]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x17
    mov ecx, 0x14
    mov ebx, 0x1f4
    lea edx, [ebp - 0xf0]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, dword ptr [ebp - 0x10]
    inc eax
    push eax
    mov eax, 0x2e2
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xf0]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x29
    mov ecx, 0x14
    mov ebx, 0xc8
    lea edx, [ebp - 0xf0]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    call dword ptr [d_0045c37c]
    mov edx, 0x1dc
    sub edx, eax
    mov eax, edx
    push eax
    mov ecx, 0x14
    mov ebx, 0x1f4
    mov eax, 0x2e1
    call sub_004124a4
    mov edx, eax
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov dword ptr [ebp - 0x18], 0
loc_00402ae6:
    cmp dword ptr [ebp - 0x18], 0xa
    jl loc_00402af9
    jmp loc_00402bc9
loc_00402af1:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    jmp loc_00402ae6
loc_00402af9:
    mov eax, dword ptr [ebp - 0x18]
    inc eax
    push eax
    mov eax, offset d_004580ea
    push eax
    lea eax, [ebp - 0xf0]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov eax, dword ptr [ebp - 0x18]
    call sub_00416867
    push eax
    mov eax, dword ptr [ebp - 0x18]
    call sub_0041672f
    push eax
    imul eax, dword ptr [ebp - 0x18], 0xc
    mov edx, dword ptr [d_0046481c]
    add eax, edx
    mov eax, dword ptr [eax + 4]
    call sub_0042655f
    sub eax, 0x24
    push eax
    imul eax, dword ptr [ebp - 0x18], 0xc
    mov edx, dword ptr [d_0046481c]
    add eax, edx
    mov eax, dword ptr [eax]
    call sub_00426524
    lea ecx, [eax - 0x14]
    mov ebx, 0x28
    lea edx, [ebp - 0xf0]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    imul eax, dword ptr [ebp - 0x18], 0xc
    mov edx, dword ptr [d_0046481c]
    add eax, edx
    push dword ptr [eax + 8]
    mov eax, offset d_004580f0
    push eax
    lea eax, [ebp - 0xf0]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea ebx, [ebp - 0xf0]
    imul eax, dword ptr [ebp - 0x18], 0xc
    mov edx, dword ptr [d_0046481c]
    add eax, edx
    mov eax, dword ptr [eax + 4]
    call sub_0042655f
    lea edx, [eax - 0x24]
    imul eax, dword ptr [ebp - 0x18], 0xc
    mov ecx, dword ptr [d_0046481c]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_00426524
    sub eax, 0x14
    call sub_0041735a
    jmp loc_00402af1
loc_00402bc9:
    call sub_00415c1f
    test dword ptr [ebp - 4], 1
    je loc_00402bf7
    mov ebx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 8]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    call sub_0042665c
    call sub_004048eb
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
loc_00402bf7:
    test dword ptr [ebp - 4], 2
    je loc_00402d4a
    mov eax, dword ptr [ebp - 0xc]
    call sub_0042665c
    mov dword ptr [ebp - 0xf8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_004266a3
    mov dword ptr [ebp - 0xf4], eax
    cmp dword ptr [ebp - 0xf8], 0
    jge loc_00402c33
    mov dword ptr [ebp - 0xf8], 0
loc_00402c33:
    mov eax, dword ptr [ebp - 0xf8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00402c4d
    mov eax, dword ptr [d_004648ac]
    dec eax
    mov dword ptr [ebp - 0xf8], eax
loc_00402c4d:
    cmp dword ptr [ebp - 0xf4], 0
    jge loc_00402c60
    mov dword ptr [ebp - 0xf4], 0
loc_00402c60:
    mov eax, dword ptr [ebp - 0xf4]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00402c7a
    mov eax, dword ptr [d_004648b4]
    dec eax
    mov dword ptr [ebp - 0xf4], eax
loc_00402c7a:
    imul edx, dword ptr [ebp - 0x10], 0xc
    mov eax, dword ptr [d_0046481c]
    add edx, eax
    mov eax, dword ptr [ebp - 0xf8]
    mov dword ptr [edx], eax
    imul eax, dword ptr [ebp - 0x10], 0xc
    mov edx, dword ptr [d_0046481c]
    add edx, eax
    mov eax, dword ptr [ebp - 0xf4]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_00402d4a
    .byte 0x8d,0x40,0x00
ptr_00402cb0:
    cmp dword ptr [ecx], eax
    jb loc_00402cb4
loc_00402cb4:
    .byte 0x6f,0x00,0x6e,0x00,0x6c,0x00,0x62,0x00,0x5d,0x00,0x52,0x00,0x4f,0x00,0x4e,0x00
    .byte 0x4c,0x00,0x42,0x00,0x3b,0x00,0x31,0x00,0x30,0x00,0x2f,0x00,0x2e,0x00,0x2b,0x00
    .byte 0x29,0x00,0x1e,0x00,0x19,0x00,0x0b,0x00,0x07,0x00,0x04,0x00,0x00,0x00
ptr_00402ce2:
    .long loc_0040311b
    .long ptr_00403016
    .long ptr_00402f6b
    .long ptr_00402f53
    .long ptr_00402f53
    .long ptr_00403067
    .long ptr_00402f53
    .long ptr_00402d98
    .long ptr_00402db0
    .long ptr_00402dec
    .long ptr_00402dc8
    .long ptr_00402dd4
    .long ptr_00402de0
    .long ptr_00402d98
    .long ptr_00402ec2
    .long ptr_00402e1a
    .long ptr_00402e0a
    .long ptr_00403067
    .long ptr_00402e7a
    .long ptr_00402db0
    .long ptr_00402ec2
    .long ptr_00402e1a
    .long ptr_00402e0a
    .long ptr_00403067
    .long ptr_00402e7a
    .long ptr_00402d89
loc_00402d4a:
    call sub_004102b7
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x1c]
    sub eax, 2
    mov dword ptr [ebp - 0xfc], eax
    cmp dword ptr [ebp - 0xfc], 0x139
    ja loc_0040311b
    mov eax, dword ptr [ebp - 0xfc]
    mov ecx, 0x1a
    mov edi, offset ptr_00402cb0
    # repne scasw ax, word ptr es:[edi]
    .byte 0xf2,0x66,0xaf
    jmp dword ptr cs:[ecx*4 + ptr_00402ce2]
ptr_00402d89:
    call sub_0041431c
    call sub_00431178
    jmp loc_0040311b
ptr_00402d98:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_00402dab
    mov dword ptr [ebp - 0x10], 0
loc_00402dab:
    jmp loc_0040311b
ptr_00402db0:
    mov eax, dword ptr [ebp - 0x10]
    dec dword ptr [ebp - 0x10]
    cmp dword ptr [ebp - 0x10], 0
    jge loc_00402dc3
    mov dword ptr [ebp - 0x10], 9
loc_00402dc3:
    jmp loc_0040311b
ptr_00402dc8:
    mov dword ptr [ebp - 0x14], 0
    jmp loc_0040311b
ptr_00402dd4:
    mov dword ptr [ebp - 0x14], 1
    jmp loc_0040311b
ptr_00402de0:
    mov dword ptr [ebp - 0x14], 2
    jmp loc_0040311b
ptr_00402dec:
    inc dword ptr [d_0045b7b8]
    cmp dword ptr [d_0045b7b8], 0
    jle loc_00402e05
    mov dword ptr [d_0045b7b8], 0xffffffff
loc_00402e05:
    jmp loc_0040311b
ptr_00402e0a:
    call sub_00402595
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_0040311b
ptr_00402e1a:
    mov edx, offset d_00464700
    lea eax, [ebp - 0xf0]
    call sub_0045189e
    push 0xb4
    mov ecx, 0x19
    mov eax, 0x2d8
    call sub_004124a4
    mov ebx, eax
    mov edx, 0x1e
    lea eax, [ebp - 0xf0]
    call sub_0042e938
    mov dword ptr [ebp - 0x100], eax
    cmp dword ptr [ebp - 0x100], -1
    je loc_00402e75
    lea edx, [ebp - 0xf0]
    mov eax, offset d_00464700
    call sub_0045189e
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
loc_00402e75:
    jmp loc_0040311b
ptr_00402e7a:
    imul eax, dword ptr [ebp - 0x10], 0xc
    mov edx, dword ptr [d_0046481c]
    add eax, edx
    cmp dword ptr [eax + 8], 0
    jne loc_00402e98
    mov dword ptr [ebp - 0x104], 1
    jmp loc_00402ea2
loc_00402e98:
    mov dword ptr [ebp - 0x104], 0
loc_00402ea2:
    imul eax, dword ptr [ebp - 0x10], 0xc
    mov edx, dword ptr [d_0046481c]
    add edx, eax
    mov eax, dword ptr [ebp - 0x104]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_0040311b
ptr_00402ec2:
    push dword ptr [d_004647a0]
    mov eax, offset d_004580ea
    push eax
    lea eax, [ebp - 0xf0]
    push eax
    call sub_004518d0
    add esp, 0xc
    push 0xb4
    mov ecx, 0x19
    mov eax, 0x2e3
    call sub_004124a4
    mov ebx, eax
    mov edx, 0x1e
    lea eax, [ebp - 0xf0]
    call sub_0042e938
    mov dword ptr [ebp - 0x108], eax
    cmp dword ptr [ebp - 0x108], -1
    je loc_00402f4e
    lea eax, [ebp - 0xf0]
    call sub_004516c1
    mov dword ptr [d_004647a0], eax
    cmp dword ptr [d_004647a0], 0
    jge loc_00402f35
    mov dword ptr [d_004647a0], 0
loc_00402f35:
    cmp dword ptr [d_004647a0], 0x64
    jle loc_00402f48
    mov dword ptr [d_004647a0], 0x64
loc_00402f48:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
loc_00402f4e:
    jmp loc_0040311b
ptr_00402f53:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    cmp dword ptr [ebp - 0x14], 2
    jle loc_00402f66
    mov dword ptr [ebp - 0x14], 0
loc_00402f66:
    jmp loc_0040311b
ptr_00402f6b:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2f8
    call sub_004124a4
    mov edx, eax
    mov eax, 0x61
    call sub_004124a4
    call sub_0041456c
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 1
    # jne 0x403011
    .byte 0x0f,0x85
    .long loc_00403011 - . - 4
    mov dword ptr [ebp - 0x10c], 0
loc_00402fad:
    mov eax, dword ptr [ebp - 0x10c]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00402fcb
    jmp loc_0040300b
loc_00402fbd:
    mov eax, dword ptr [ebp - 0x10c]
    inc dword ptr [ebp - 0x10c]
    jmp loc_00402fad
loc_00402fcb:
    mov dword ptr [ebp - 0x110], 0
loc_00402fd5:
    mov eax, dword ptr [ebp - 0x110]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00402ff3
    jmp loc_00403009
loc_00402fe5:
    mov eax, dword ptr [ebp - 0x110]
    inc dword ptr [ebp - 0x110]
    jmp loc_00402fd5
loc_00402ff3:
    mov ebx, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x10c]
    mov eax, dword ptr [ebp - 0x110]
    call sub_004048eb
    jmp loc_00402fe5
loc_00403009:
    jmp loc_00402fbd
loc_0040300b:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
loc_00403011:
    jmp loc_0040311b
ptr_00403016:
    cmp dword ptr [ebp - 0x24], 0
    je loc_00403057
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2e4
    call sub_004124a4
    mov edx, eax
    mov eax, 0x61
    call sub_004124a4
    call sub_0041456c
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 1
    jne loc_00403055
    call sub_004049c0
loc_00403055:
    jmp loc_0040305c
loc_00403057:
    call sub_004049c0
loc_0040305c:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_0040311b
ptr_00403067:
    cmp dword ptr [ebp - 0x24], 0
    je loc_00403114
    xor ecx, ecx
    mov cl, byte ptr [d_00495390]
    xor ebx, ebx
    mov bl, byte ptr [d_0049d38f]
    mov eax, 0x2df
    call sub_004124a4
    mov edx, eax
    mov eax, 0x5f
    call sub_004124a4
    call sub_0041456c
    mov dword ptr [ebp - 0x114], eax
    cmp dword ptr [ebp - 0x114], 1
    jne loc_00403114
    mov edx, offset d_004648c4
    lea eax, [ebp - 0xf0]
    call sub_0045189e
    push 0xb4
    mov ecx, 0x19
    mov eax, 0x2e0
    call sub_004124a4
    mov ebx, eax
    mov edx, 0x1e
    lea eax, [ebp - 0xf0]
    call sub_0042e938
    mov dword ptr [ebp - 0x118], eax
    cmp dword ptr [ebp - 0x118], -1
    je loc_00403105
    lea edx, [ebp - 0xf0]
    mov eax, offset d_004648c4
    call sub_0045189e
    call sub_0040497c
loc_00403105:
    mov eax, offset d_004648c4
    call sub_00411d17
    call sub_00403c16
loc_00403114:
    mov dword ptr [ebp - 0x20], 1
loc_0040311b:
    cmp dword ptr [ebp - 0x20], 0
    je loc_0040297d
    mov eax, offset d_004648c4
    push eax
    mov eax, 0x2d2
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xf0]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor ecx, ecx
    mov cl, byte ptr [d_00495390]
    xor ebx, ebx
    mov bl, byte ptr [d_0049d38f]
    xor edx, edx
    lea eax, [ebp - 0xf0]
    call sub_0041456c
    test eax, eax
    jg loc_00403176
    lea edx, [ebp - 0x8c]
    mov eax, offset d_004648c4
    call sub_0045189e
loc_00403176:
    call sub_00431360
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00403184:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    call sub_004148e5
    mov dword ptr [ebp - 0xc], 0
    call sub_0041043c
loc_004031a3:
    call sub_00415ca4
    call sub_0040234e
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d37a]
    push eax
    mov eax, 0x32b
    call sub_00412135
    push eax
    mov eax, 0x32a
    call sub_00412135
    mov ecx, eax
    mov eax, 0x32d
    call sub_00412135
    mov ebx, eax
    mov eax, 0x2da
    call sub_004124a4
    mov edx, eax
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov dword ptr [ebp - 8], 0
loc_004031fd:
    cmp dword ptr [ebp - 8], 3
    jl loc_0040320d
    jmp loc_0040326d
loc_00403205:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_004031fd
loc_0040320d:
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x331
    call sub_00412135
    mov edx, dword ptr [ebp - 8]
    imul edx, eax
    mov eax, 0x330
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x32f
    call sub_00412135
    mov ecx, eax
    mov eax, 0x332
    call sub_00412135
    mov ebx, eax
    mov eax, dword ptr [ebp - 8]
    add eax, 0x2db
    call sub_004124a4
    mov edx, eax
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    jmp loc_00403205
loc_0040326d:
    call sub_00415c1f
    call sub_004102b7
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], -1
    je loc_00403286
    cmp dword ptr [ebp - 4], -2
    jne loc_00403288
loc_00403286:
    jmp loc_00403292
loc_00403288:
    mov eax, 0x14
    call sub_00427961
loc_00403292:
    cmp dword ptr [ebp - 4], 0x32
    jb loc_004032bd
    cmp dword ptr [ebp - 4], 0x32
    jbe loc_004032e8
    cmp dword ptr [ebp - 4], 0x71
    jb loc_004032b5
    cmp dword ptr [ebp - 4], 0x71
    jbe loc_004032f4
    cmp dword ptr [ebp - 4], 0x13b
    je loc_004032d3
    jmp loc_004032fb
loc_004032b5:
    cmp dword ptr [ebp - 4], 0x51
    je loc_004032f4
    jmp loc_004032fb
loc_004032bd:
    cmp dword ptr [ebp - 4], 0x1b
    jb loc_004032d1
    cmp dword ptr [ebp - 4], 0x1b
    jbe loc_004032f4
    cmp dword ptr [ebp - 4], 0x31
    je loc_004032df
    jmp loc_004032fb
loc_004032d1:
    jmp loc_004032fb
loc_004032d3:
    call sub_0041431c
    call sub_00431178
    jmp loc_004032fb
loc_004032df:
    xor eax, eax
    call sub_004028d2
    jmp loc_004032fb
loc_004032e8:
    mov eax, 1
    call sub_004028d2
    jmp loc_004032fb
loc_004032f4:
    mov dword ptr [ebp - 0xc], 1
loc_004032fb:
    cmp dword ptr [ebp - 0xc], 0
    je loc_004031a3
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040330e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_00464964]
    mov dword ptr [ebp - 4], eax
    mov dword ptr [d_00464964], 0
    call sub_004021dc
    call sub_00403184
    call sub_004021f1
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00464964], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040334e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00403363:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, offset ptr_0040334e
    call sub_00410ebf
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00403382:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, 0x3ee
    call sub_00412135
    mov edx, dword ptr [ebp - 8]
    imul edx, eax
    mov dword ptr [ebp - 0x14], edx
    fild dword ptr [ebp - 0x14]
    fmul qword ptr [d_004580fc]
    fmul qword ptr [d_00458104]
    fstp qword ptr [ebp - 0x1c]
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    mov dword ptr [ebp - 0x14], eax
    fild dword ptr [ebp - 0x14]
    fdivr qword ptr [ebp - 0x1c]
    fstp qword ptr [ebp - 0x10]
    mov eax, 0x3ea
    call sub_00412135
    mov dword ptr [ebp - 0x1c], eax
    fild dword ptr [ebp - 0x1c]
    fstp qword ptr [ebp - 0x1c]
    fld qword ptr [ebp - 0x10]
    sub esp, 8
    fstp qword ptr [esp]
    call sub_00433aff
    fmul qword ptr [ebp - 0x1c]
    fstp qword ptr [ebp - 0x1c]
    mov eax, 0x3e8
    call sub_00412135
    mov dword ptr [ebp - 0x14], eax
    fild dword ptr [ebp - 0x14]
    fadd qword ptr [ebp - 0x1c]
    call sub_00433b38
    fistp dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040341f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, 0x3ef
    call sub_00412135
    mov edx, dword ptr [ebp - 8]
    imul edx, eax
    mov dword ptr [ebp - 0x14], edx
    fild dword ptr [ebp - 0x14]
    fmul qword ptr [d_0045810c]
    fmul qword ptr [d_00458114]
    fstp qword ptr [ebp - 0x1c]
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    mov dword ptr [ebp - 0x14], eax
    fild dword ptr [ebp - 0x14]
    fdivr qword ptr [ebp - 0x1c]
    fstp qword ptr [ebp - 0x10]
    mov eax, 0x3eb
    call sub_00412135
    mov dword ptr [ebp - 0x1c], eax
    fild dword ptr [ebp - 0x1c]
    fstp qword ptr [ebp - 0x1c]
    fld qword ptr [ebp - 0x10]
    sub esp, 8
    fstp qword ptr [esp]
    call sub_00433b0b
    fmul qword ptr [ebp - 0x1c]
    fstp qword ptr [ebp - 0x1c]
    mov eax, 0x3e9
    call sub_00412135
    mov dword ptr [ebp - 0x14], eax
    fild dword ptr [ebp - 0x14]
    fsub qword ptr [ebp - 0x1c]
    call sub_00433b38
    fistp dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004034bc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x28
    .byte 0x81,0xec,0x28,0x00,0x00,0x00
    cmp dword ptr [d_004648bc], 0
    je loc_00403a93
    cmp dword ptr [d_0046492c], -1
    je loc_00403a93
    mov dword ptr [d_0045e02c], 0xffffffff
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    add edx, edx
    dec edx
    mov dword ptr [d_0045e028], edx
    mov dword ptr [d_0045e034], 0
    mov eax, 0x3ec
    call sub_00412135
    imul ebx, eax, 6
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [d_0045e024], edx
    mov eax, 0x3ec
    call sub_00412135
    imul ebx, eax, 6
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [d_0045e038], edx
    call sub_0045190a
    mov edx, eax
    mov ebx, 0x14
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    add edx, 0x14
    mov dword ptr [d_0045e030], edx
    call sub_0045190a
    mov edx, eax
    mov ebx, 0x14
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov eax, dword ptr [d_0045e030]
    add edx, eax
    mov dword ptr [d_0045e03c], edx
    call sub_004151ad
    mov eax, offset d_0045811c
    call sub_00411d17
    call sub_004151cc
    call sub_00415189
    call sub_00415ca4
    call sub_00415c1f
    call sub_0041043c
    mov dword ptr [ebp - 0x10], 0
loc_004035c1:
    call sub_00415ca4
    call sub_00429790
    cmp dword ptr [d_0045e03c], 0
    jle loc_004036b9
    cmp dword ptr [d_0045e03c], 6
    jle loc_004035eb
    mov eax, dword ptr [d_0045e03c]
    mov dword ptr [ebp - 0x18], eax
    jmp loc_004035f2
loc_004035eb:
    mov dword ptr [ebp - 0x18], 6
loc_004035f2:
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 0xc], 0
loc_004035ff:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [ebp - 8]
    jl loc_00403614
    jmp loc_004036b9
loc_0040360c:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_004035ff
loc_00403614:
    mov eax, dword ptr [d_0045e028]
    add dword ptr [d_0045e038], eax
    cmp dword ptr [d_0045e038], 0
    jge loc_0040363b
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    add dword ptr [d_0045e038], eax
loc_0040363b:
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    cmp eax, dword ptr [d_0045e038]
    jg loc_00403663
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    sub dword ptr [d_0045e038], eax
loc_00403663:
    mov eax, 0x3ec
    call sub_00412135
    imul edx, eax, 6
    mov ebx, 6
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov ebx, eax
    mov eax, dword ptr [d_0045e038]
    mov edx, dword ptr [d_0045e038]
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_004036b4
    mov eax, 0x514
    call sub_00427961
    cmp dword ptr [d_0045e034], 1
    jne loc_004036b4
    dec dword ptr [d_0045e03c]
    cmp dword ptr [d_0045e03c], 0
    je loc_004036b9
loc_004036b4:
    jmp loc_0040360c
loc_004036b9:
    cmp dword ptr [d_0045e030], 0
    jle loc_0040379d
    cmp dword ptr [d_0045e030], 6
    jle loc_004036d9
    mov eax, dword ptr [d_0045e030]
    mov dword ptr [ebp - 0x1c], eax
    jmp loc_004036e0
loc_004036d9:
    mov dword ptr [ebp - 0x1c], 6
loc_004036e0:
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 0xc], 0
loc_004036ed:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [ebp - 8]
    jl loc_00403702
    jmp loc_0040379d
loc_004036fa:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_004036ed
loc_00403702:
    mov eax, dword ptr [d_0045e028]
    sub dword ptr [d_0045e024], eax
    cmp dword ptr [d_0045e024], 0
    jge loc_00403729
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    add dword ptr [d_0045e024], eax
loc_00403729:
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    cmp eax, dword ptr [d_0045e024]
    jg loc_00403751
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    sub dword ptr [d_0045e024], eax
loc_00403751:
    mov eax, 0x3ec
    call sub_00412135
    imul edx, eax, 6
    mov ebx, 6
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov ebx, eax
    mov eax, dword ptr [d_0045e024]
    mov edx, dword ptr [d_0045e024]
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_00403798
    cmp dword ptr [d_0045e034], 1
    jne loc_00403798
    dec dword ptr [d_0045e030]
    cmp dword ptr [d_0045e030], 0
    je loc_0040379d
loc_00403798:
    jmp loc_004036fa
loc_0040379d:
    mov eax, dword ptr [d_0045e024]
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 0xc], 0
loc_004037ac:
    cmp dword ptr [ebp - 0xc], 6
    jl loc_004037bc
    jmp loc_0040381f
loc_004037b4:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_004037ac
loc_004037bc:
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov ebx, dword ptr [eax + d_0045b7bc]
    mov eax, dword ptr [ebp - 4]
    call sub_0040341f
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    call sub_00403382
    call sub_00425c7f
    mov eax, 0x3ec
    call sub_00412135
    imul edx, eax, 6
    mov ebx, 6
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    add dword ptr [ebp - 4], eax
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    cmp eax, dword ptr [ebp - 4]
    jg loc_0040381d
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    sub dword ptr [ebp - 4], eax
loc_0040381d:
    jmp loc_004037b4
loc_0040381f:
    mov eax, offset d_00458129
    call sub_0041d957
    mov dword ptr [ebp - 0x24], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0x24]
    call sub_0041daa7
    mov dword ptr [ebp - 0x20], eax
    mov ebx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [d_0045e038]
    call sub_0040341f
    mov edx, eax
    mov eax, dword ptr [d_0045e038]
    call sub_00403382
    call sub_00415920
    cmp dword ptr [d_0045e034], 2
    jne loc_0040392b
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x3e9
    call sub_00412135
    lea ecx, [eax - 0x14]
    mov eax, 0x3e8
    call sub_00412135
    mov ebx, eax
    mov eax, 0x316
    call sub_004124a4
    mov esi, dword ptr [d_00464ae4]
    mov edx, eax
    mov eax, esi
    call sub_004172ba
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x3e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x3e8
    call sub_00412135
    mov ebx, eax
    mov eax, dword ptr [d_0045e02c]
    add eax, 0x320
    call sub_004124a4
    mov esi, dword ptr [d_00464ae4]
    mov edx, eax
    mov eax, esi
    call sub_004172ba
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x3e9
    call sub_00412135
    lea ecx, [eax + 0x14]
    mov eax, 0x3e8
    call sub_00412135
    mov ebx, eax
    mov eax, 0x317
    call sub_004124a4
    mov edx, eax
    mov eax, dword ptr [d_00464ae4]
    call sub_004172ba
loc_0040392b:
    call sub_00413fb9
    call sub_00415c1f
    cmp dword ptr [d_0045e030], 0
    jne loc_00403947
    cmp dword ptr [d_0045e03c], 0
    je loc_0040394c
loc_00403947:
    jmp loc_004039de
loc_0040394c:
    cmp dword ptr [d_0045e02c], -1
    # jne 0x4039d4
    .byte 0x0f,0x85
    .long loc_004039d4 - . - 4
    mov eax, dword ptr [d_0045e038]
    mov dword ptr [ebp - 0x28], eax
    mov eax, dword ptr [ebp - 0x28]
    cmp eax, dword ptr [d_0045e024]
    jge loc_0040397c
    mov eax, 0x3ec
    call sub_00412135
    imul eax, eax, 6
    add dword ptr [ebp - 0x28], eax
loc_0040397c:
    mov eax, 0x3ec
    call sub_00412135
    imul edx, eax, 6
    mov ebx, 6
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov ebx, eax
    mov edx, dword ptr [ebp - 0x28]
    sub edx, dword ptr [d_0045e024]
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    shl eax, 2
    mov eax, dword ptr [eax + d_0045b7bc]
    mov dword ptr [d_0045e02c], eax
    cmp dword ptr [d_0045e02c], 0xd
    jne loc_004039ca
    mov eax, 0x528
    call sub_00427961
    jmp loc_004039d4
loc_004039ca:
    mov eax, 0x51e
    call sub_00427961
loc_004039d4:
    mov dword ptr [d_0045e034], 2
loc_004039de:
    call sub_004102b7
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], -1
    je loc_004039f2
    cmp dword ptr [ebp - 0x14], -2
    jne loc_004039f4
loc_004039f2:
    jmp loc_004039fe
loc_004039f4:
    mov eax, 0x14
    call sub_00427961
loc_004039fe:
    cmp dword ptr [ebp - 0x14], 0x1b
    jb loc_00403a26
    cmp dword ptr [ebp - 0x14], 0x1b
    jbe loc_00403a51
    cmp dword ptr [ebp - 0x14], 0x20
    jb loc_00403a24
    cmp dword ptr [ebp - 0x14], 0x20
    jbe loc_00403a2c
    cmp dword ptr [ebp - 0x14], 0x13b
    je loc_00403a6e
    # jmp 0x403a89
    .byte 0xe9
    .long loc_00403a89 - . - 4
loc_00403a24:
    jmp loc_00403a89
loc_00403a26:
    cmp dword ptr [ebp - 0x14], 0xd
    jne loc_00403a89
loc_00403a2c:
    cmp dword ptr [d_0045e034], 0
    jne loc_00403a3f
    mov dword ptr [d_0045e034], 1
loc_00403a3f:
    cmp dword ptr [d_0045e034], 2
    jne loc_00403a4f
    mov dword ptr [ebp - 0x10], 1
loc_00403a4f:
    jmp loc_00403a89
loc_00403a51:
    mov dword ptr [d_0046492c], 0xffffffff
    mov dword ptr [d_00464a68], 2
    mov dword ptr [ebp - 0x10], 1
    jmp loc_00403a89
loc_00403a6e:
    call sub_0040c06a
    cmp eax, 1
    jne loc_00403a84
    mov eax, 0x28
    call sub_00427961
    jmp loc_00403a89
loc_00403a84:
    call sub_0041431c
loc_00403a89:
    cmp dword ptr [ebp - 0x10], 0
    je loc_004035c1
loc_00403a93:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00403a9c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_0045e02c]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00403abe:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_0045e040], 0
    je loc_00403b43
    mov dword ptr [ebp - 4], 0
loc_00403adc:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00403af1
    jmp loc_00403b25
loc_00403ae9:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00403adc
loc_00403af1:
    mov ebx, 0x33
    mov edx, offset d_00458130
    mov ecx, dword ptr [ebp - 4]
    shl ecx, 2
    mov eax, dword ptr [d_0045e040]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_0041863d
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_0045e040]
    add eax, edx
    mov dword ptr [eax], 0
    jmp loc_00403ae9
loc_00403b25:
    mov ebx, 0x36
    mov edx, offset d_00458130
    mov eax, dword ptr [d_0045e040]
    call sub_0041863d
    mov dword ptr [d_0045e040], 0
loc_00403b43:
    cmp dword ptr [d_0046481c], 0
    je loc_00403b6a
    mov ebx, 0x3a
    mov edx, offset d_00458130
    mov eax, dword ptr [d_0046481c]
    call sub_0041863d
    mov dword ptr [d_0046481c], 0
loc_00403b6a:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00403b73:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov ecx, 0x45
    mov ebx, offset d_00458130
    mov edx, dword ptr [d_004648b4]
    mov eax, 4
    call sub_00418511
    mov dword ptr [d_0045e040], eax
    mov dword ptr [ebp - 4], 0
loc_00403ba7:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00403bbc
    jmp loc_00403bea
loc_00403bb4:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00403ba7
loc_00403bbc:
    mov ecx, 0x47
    mov ebx, offset d_00458130
    mov edx, 1
    mov eax, dword ptr [d_004648ac]
    inc eax
    call sub_00418511
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov ebx, dword ptr [d_0045e040]
    add eax, ebx
    mov dword ptr [eax], edx
    jmp loc_00403bb4
loc_00403bea:
    mov ebx, 0x49
    mov edx, offset d_00458130
    mov eax, 0x78
    call sub_004184d0
    mov dword ptr [d_0046481c], eax
    mov eax, offset ptr_00403abe
    call sub_00410ebf
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00403c16:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x74
    .byte 0x81,0xec,0x74,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov edx, dword ptr [ebp - 0xc]
    lea eax, [ebp - 0x74]
    call sub_0045189e
    mov edx, 0x2e
    lea eax, [ebp - 0x74]
    call sub_00451d5e
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00403c4e
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
loc_00403c4e:
    mov edx, offset d_00458139
    lea eax, [ebp - 0x74]
    call sub_00451d78
    mov edx, offset d_0045813e
    mov eax, dword ptr [ebp - 0xc]
    call sub_00411d17
    call sub_004514fc
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 0
    je loc_00403eab
    mov eax, offset d_00458141
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    mov eax, offset d_00458174
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    mov eax, offset d_004581b7
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    push 2
    mov eax, offset d_004581e6
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 0xc
    mov eax, offset d_004581ed
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    mov eax, offset d_00464700
    push eax
    mov eax, offset d_00458218
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 0xc
    mov eax, offset d_0045821f
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    push dword ptr [d_004647a0]
    mov eax, offset d_00458248
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 0xc
    mov eax, offset d_0045824f
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    mov eax, offset d_0045828a
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    mov eax, offset d_004582a1
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    mov dword ptr [ebp - 8], 0
loc_00403d55:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00403d6a
    jmp loc_00403d91
loc_00403d62:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00403d55
loc_00403d6a:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_0045e040]
    add eax, edx
    push dword ptr [eax]
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_004582b8
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 0x10
    jmp loc_00403d62
loc_00403d91:
    mov eax, offset d_004582c3
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    mov dword ptr [ebp - 8], 0
loc_00403daa:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00403dba
    jmp loc_00403dfe
loc_00403db2:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00403daa
loc_00403dba:
    imul eax, dword ptr [ebp - 8], 0xc
    mov edx, dword ptr [d_0046481c]
    add eax, edx
    push dword ptr [eax + 8]
    imul eax, dword ptr [ebp - 8], 0xc
    mov edx, dword ptr [d_0046481c]
    add eax, edx
    push dword ptr [eax + 4]
    imul eax, dword ptr [ebp - 8], 0xc
    mov edx, dword ptr [d_0046481c]
    add eax, edx
    push dword ptr [eax]
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_004582f0
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 0x18
    jmp loc_00403db2
loc_00403dfe:
    mov eax, offset d_00458300
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    mov eax, offset d_00458329
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    mov eax, offset d_0045836b
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 8
    mov dword ptr [ebp - 8], 0
loc_00403e3b:
    cmp dword ptr [ebp - 8], 0xd
    jl loc_00403e4b
    jmp loc_00403ea1
loc_00403e43:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00403e3b
loc_00403e4b:
    mov eax, dword ptr [ebp - 8]
    add eax, 0x320
    call sub_004124a4
    push eax
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    push dword ptr [eax + d_004647e0]
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    push dword ptr [eax + d_004646c4]
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    push dword ptr [eax + d_00464764]
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    push dword ptr [eax + d_004647a4]
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_004583af
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_00451b3e
    add esp, 0x20
    jmp loc_00403e43
loc_00403ea1:
    mov eax, dword ptr [ebp - 0x10]
    call sub_0045172e
    jmp loc_00403ee5
loc_00403eab:
    mov eax, dword ptr [ebp - 0xc]
    call sub_00411d17
    push eax
    mov eax, 0x2c6
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    xor edx, edx
    lea eax, [ebp - 0x74]
    call sub_00414340
loc_00403ee5:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00403eee:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xec
    mov dword ptr [ebp - 0x20], eax
    mov dword ptr [ebp - 0x10], 0
loc_00403f06:
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_00403f19
    jmp loc_00403fce
loc_00403f11:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00403f06
loc_00403f19:
    mov eax, dword ptr [ebp - 0x10]
    add eax, eax
    add eax, 0x258
    call sub_00412135
    mov dword ptr [ebp - 0xb4], eax
    mov eax, dword ptr [ebp - 0x10]
    add eax, eax
    add eax, 0x259
    call sub_00412135
    mov dword ptr [ebp - 0xb0], eax
loc_00403f43:
    cmp dword ptr [ebp - 0xb4], 0
    jge loc_00403f59
    mov eax, dword ptr [d_004648ac]
    add dword ptr [ebp - 0xb4], eax
    jmp loc_00403f43
loc_00403f59:
    mov eax, dword ptr [ebp - 0xb4]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00403f74
    mov eax, dword ptr [d_004648ac]
    sub dword ptr [ebp - 0xb4], eax
    jmp loc_00403f59
loc_00403f74:
    cmp dword ptr [ebp - 0xb0], 0
    jge loc_00403f8a
    mov eax, dword ptr [d_004648b4]
    add dword ptr [ebp - 0xb0], eax
    jmp loc_00403f74
loc_00403f8a:
    mov eax, dword ptr [ebp - 0xb0]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00403fa5
    mov eax, dword ptr [d_004648b4]
    sub dword ptr [ebp - 0xb0], eax
    jmp loc_00403f8a
loc_00403fa5:
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xb4]
    mov dword ptr [edx + d_0046460c], eax
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xb0]
    mov dword ptr [edx + d_0046465c], eax
    jmp loc_00403f11
loc_00403fce:
    mov dword ptr [ebp - 4], 0
    call sub_004049c0
    mov edx, dword ptr [ebp - 0x20]
    lea eax, [ebp - 0xac]
    call sub_0045189e
    mov edx, 0x2e
    lea eax, [ebp - 0xac]
    call sub_00451d5e
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 0
    je loc_00404007
    mov eax, dword ptr [ebp - 0x1c]
    mov byte ptr [eax], 0
loc_00404007:
    mov edx, offset d_00458139
    lea eax, [ebp - 0xac]
    call sub_00451d78
    mov edx, offset d_004583c9
    lea eax, [ebp - 0xac]
    call sub_00411d17
    call sub_004514fc
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    je loc_004045d8
loc_00404039:
    mov byte ptr [ebp - 0xac], 0
    mov ebx, dword ptr [ebp - 0x18]
    mov edx, 0x63
    lea eax, [ebp - 0xac]
    call sub_004515ff
    cmp byte ptr [ebp - 0xac], 0
    je loc_004045c1
    mov edx, 0xa
    lea eax, [ebp - 0xac]
    call sub_0045167a
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 0
    je loc_0040407f
    mov eax, dword ptr [ebp - 0x1c]
    mov byte ptr [eax], 0
loc_0040407f:
    lea eax, [ebp - 0xac]
    mov dword ptr [ebp - 0x1c], eax
    mov dword ptr [ebp - 0x14], 0
loc_0040408f:
    cmp dword ptr [ebp - 0x14], 0xa
    jl loc_0040409f
    jmp loc_004040ed
loc_00404097:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_0040408f
loc_0040409f:
    mov edx, 0x2c
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0045167a
    mov edx, dword ptr [ebp - 0x14]
    shl edx, 2
    mov dword ptr [edx + ebp - 0x48], eax
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    cmp dword ptr [eax + ebp - 0x48], 0
    je loc_004040e9
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov eax, dword ptr [eax + ebp - 0x48]
    mov byte ptr [eax], 0
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    inc dword ptr [eax + ebp - 0x48]
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov eax, dword ptr [eax + ebp - 0x48]
    mov dword ptr [ebp - 0x1c], eax
    jmp loc_004040eb
loc_004040e9:
    jmp loc_004040ed
loc_004040eb:
    jmp loc_00404097
loc_004040ed:
    cmp byte ptr [ebp - 0xac], 0x2d
    jne loc_004045c1
    mov al, byte ptr [ebp - 0xab]
    mov byte ptr [ebp - 0xb8], al
    cmp byte ptr [ebp - 0xb8], 0x50
    jb loc_00404152
    cmp byte ptr [ebp - 0xb8], 0x50
    jbe loc_0040441d
    cmp byte ptr [ebp - 0xb8], 0x53
    jb loc_00404140
    cmp byte ptr [ebp - 0xb8], 0x53
    jbe loc_004042ad
    cmp byte ptr [ebp - 0xb8], 0x56
    je loc_00404177
    jmp loc_00404596
loc_00404140:
    cmp byte ptr [ebp - 0xb8], 0x52
    je loc_004041ed
    jmp loc_00404596
loc_00404152:
    cmp byte ptr [ebp - 0xb8], 0x42
    jb loc_00404172
    cmp byte ptr [ebp - 0xb8], 0x42
    jbe loc_004041d5
    cmp byte ptr [ebp - 0xb8], 0x4e
    je loc_004041bd
    jmp loc_00404596
loc_00404172:
    jmp loc_00404596
loc_00404177:
    mov eax, dword ptr [ebp - 0x48]
    call sub_004516c1
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 2
    je loc_004041b8
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2d6
    call sub_004124a4
    mov edx, eax
    mov eax, 0x2d5
    call sub_004124a4
    call sub_00414340
    jmp loc_004045c1
loc_004041b8:
    jmp loc_004045c1
loc_004041bd:
    cmp dword ptr [ebp - 0x14], 0
    je loc_004041d0
    mov edx, dword ptr [ebp - 0x48]
    mov eax, offset d_00464700
    call sub_0045189e
loc_004041d0:
    jmp loc_004045c1
loc_004041d5:
    cmp dword ptr [ebp - 0x14], 0
    je loc_004041e8
    mov eax, dword ptr [ebp - 0x48]
    call sub_004516c1
    mov dword ptr [d_004647a0], eax
loc_004041e8:
    jmp loc_004045c1
loc_004041ed:
    cmp dword ptr [ebp - 4], 2
    je loc_0040421e
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2d6
    call sub_004124a4
    mov edx, eax
    mov eax, 0x2d5
    call sub_004124a4
    call sub_00414340
loc_0040421e:
    cmp dword ptr [ebp - 0x14], 2
    jne loc_0040427d
    mov eax, dword ptr [ebp - 0x48]
    call sub_004516c1
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    jl loc_00404240
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00404242
loc_00404240:
    jmp loc_0040427b
loc_00404242:
    mov eax, dword ptr [ebp - 0x44]
    call sub_00451dab
    cmp eax, dword ptr [d_004648ac]
    je loc_0040425e
    mov eax, offset d_004583cc
    call sub_0041284a
    jmp loc_0040427d
loc_0040425e:
    mov ebx, dword ptr [d_004648ac]
    mov edx, dword ptr [ebp - 0x44]
    mov ecx, dword ptr [ebp - 8]
    shl ecx, 2
    mov eax, dword ptr [d_0045e040]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_00451dc4
loc_0040427b:
    jmp loc_004042a8
loc_0040427d:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2ee
    call sub_004124a4
    mov edx, eax
    mov eax, 0x61
    call sub_004124a4
    call sub_00414340
loc_004042a8:
    jmp loc_004045c1
loc_004042ad:
    cmp dword ptr [ebp - 0x14], 3
    je loc_004042bd
    cmp dword ptr [ebp - 0x14], 4
    jne loc_004043ed
loc_004042bd:
    mov eax, dword ptr [ebp - 0x48]
    call sub_004516c1
    mov dword ptr [ebp - 0xbc], eax
    mov eax, dword ptr [ebp - 0x44]
    call sub_004516c1
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x40]
    call sub_004516c1
    mov dword ptr [ebp - 8], eax
loc_004042e1:
    cmp dword ptr [ebp - 0xc], 0
    jge loc_004042f1
    mov eax, dword ptr [d_004648ac]
    add dword ptr [ebp - 0xc], eax
    jmp loc_004042e1
loc_004042f1:
    cmp dword ptr [ebp - 8], 0
    jge loc_00404301
    mov eax, dword ptr [d_004648b4]
    add dword ptr [ebp - 8], eax
    jmp loc_004042f1
loc_00404301:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jle loc_00404315
    mov eax, dword ptr [d_004648ac]
    dec eax
    mov dword ptr [ebp - 0xc], eax
loc_00404315:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jle loc_00404329
    mov eax, dword ptr [d_004648b4]
    dec eax
    mov dword ptr [ebp - 8], eax
loc_00404329:
    cmp dword ptr [ebp - 0xbc], 0
    jl loc_0040433b
    cmp dword ptr [ebp - 0xbc], 0xa
    jl loc_00404340
loc_0040433b:
    jmp loc_004043eb
loc_00404340:
    imul eax, dword ptr [ebp - 0xbc], 0xc
    mov edx, dword ptr [d_0046481c]
    add edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [edx], eax
    imul eax, dword ptr [ebp - 0xbc], 0xc
    mov edx, dword ptr [d_0046481c]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [edx + 4], eax
    mov edx, dword ptr [ebp - 0xbc]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [edx + d_0046460c], eax
    mov edx, dword ptr [ebp - 0xbc]
    shl edx, 2
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [edx + d_0046465c], eax
    cmp dword ptr [ebp - 0x14], 4
    jne loc_004043eb
    mov eax, dword ptr [ebp - 0x3c]
    call sub_004516c1
    test eax, eax
    je loc_004043ab
    mov dword ptr [ebp - 0xc0], 1
    jmp loc_004043b5
loc_004043ab:
    mov dword ptr [ebp - 0xc0], 0
loc_004043b5:
    cmp dword ptr [ebp - 0xc0], 0
    je loc_004043ca
    mov dword ptr [ebp - 0xc4], 1
    jmp loc_004043d4
loc_004043ca:
    mov dword ptr [ebp - 0xc4], 0
loc_004043d4:
    imul edx, dword ptr [ebp - 0xbc], 0xc
    mov eax, dword ptr [d_0046481c]
    add edx, eax
    mov eax, dword ptr [ebp - 0xc4]
    mov dword ptr [edx + 8], eax
loc_004043eb:
    jmp loc_00404418
loc_004043ed:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2ef
    call sub_004124a4
    mov edx, eax
    mov eax, 0x61
    call sub_004124a4
    call sub_00414340
loc_00404418:
    jmp loc_004045c1
loc_0040441d:
    cmp dword ptr [ebp - 0x14], 5
    jl loc_00404569
    mov eax, dword ptr [ebp - 0x48]
    call sub_004516c1
    mov dword ptr [ebp - 0xc8], eax
    mov eax, dword ptr [ebp - 0x44]
    call sub_004516c1
    mov dword ptr [ebp - 0xcc], eax
    mov eax, dword ptr [ebp - 0x40]
    call sub_004516c1
    mov dword ptr [ebp - 0xd0], eax
    mov eax, dword ptr [ebp - 0x3c]
    call sub_004516c1
    mov dword ptr [ebp - 0xd4], eax
    mov eax, dword ptr [ebp - 0x38]
    call sub_004516c1
    mov dword ptr [ebp - 0xd8], eax
    cmp dword ptr [ebp - 0xc8], 0
    jl loc_0040447f
    cmp dword ptr [ebp - 0xc8], 0xd
    jl loc_00404484
loc_0040447f:
    jmp loc_00404567
loc_00404484:
    cmp dword ptr [ebp - 0xcc], 0
    jge loc_00404497
    mov dword ptr [ebp - 0xcc], 0
loc_00404497:
    mov edx, dword ptr [ebp - 0xc8]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xcc]
    mov dword ptr [edx + d_004647a4], eax
    cmp dword ptr [ebp - 0xd0], 0
    je loc_004044c1
    mov dword ptr [ebp - 0xdc], 1
    jmp loc_004044cb
loc_004044c1:
    mov dword ptr [ebp - 0xdc], 0
loc_004044cb:
    cmp dword ptr [ebp - 0xdc], 0
    je loc_004044e0
    mov dword ptr [ebp - 0xe0], 1
    jmp loc_004044ea
loc_004044e0:
    mov dword ptr [ebp - 0xe0], 0
loc_004044ea:
    mov edx, dword ptr [ebp - 0xc8]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xe0]
    mov dword ptr [edx + d_00464764], eax
    mov edx, dword ptr [ebp - 0xc8]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xd4]
    mov dword ptr [edx + d_004646c4], eax
    cmp dword ptr [ebp - 0xd8], 0
    je loc_00404529
    mov dword ptr [ebp - 0xe4], 1
    jmp loc_00404533
loc_00404529:
    mov dword ptr [ebp - 0xe4], 0
loc_00404533:
    cmp dword ptr [ebp - 0xe4], 0
    je loc_00404548
    mov dword ptr [ebp - 0xe8], 1
    jmp loc_00404552
loc_00404548:
    mov dword ptr [ebp - 0xe8], 0
loc_00404552:
    mov edx, dword ptr [ebp - 0xc8]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xe8]
    mov dword ptr [edx + d_004647e0], eax
loc_00404567:
    jmp loc_00404594
loc_00404569:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2f0
    call sub_004124a4
    mov edx, eax
    mov eax, 0x61
    call sub_004124a4
    call sub_00414340
loc_00404594:
    jmp loc_004045c1
loc_00404596:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2f1
    call sub_004124a4
    mov edx, eax
    mov eax, 0x61
    call sub_004124a4
    call sub_00414340
loc_004045c1:
    mov eax, dword ptr [ebp - 0x18]
    test byte ptr [eax + 0xc], 0x10
    je loc_00404039
    mov eax, dword ptr [ebp - 0x18]
    call sub_0045172e
    jmp loc_0040461b
loc_004045d8:
    lea eax, [ebp - 0xac]
    call sub_00411d17
    push eax
    mov eax, 0x2c7
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xac]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    xor edx, edx
    lea eax, [ebp - 0xac]
    call sub_00414340
loc_0040461b:
    mov dword ptr [ebp - 0xec], 0
loc_00404625:
    cmp dword ptr [ebp - 0xec], 0xa
    jl loc_0040463e
    jmp loc_0040465c
loc_00404630:
    mov eax, dword ptr [ebp - 0xec]
    inc dword ptr [ebp - 0xec]
    jmp loc_00404625
loc_0040463e:
    imul edx, dword ptr [ebp - 0xec], 0xc
    mov eax, dword ptr [d_0046481c]
    add eax, edx
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0xec]
    call sub_00422437
    jmp loc_00404630
loc_0040465c:
    mov dword ptr [ebp - 0x10], 0
loc_00404663:
    cmp dword ptr [ebp - 0x10], 0xd
    jl loc_00404673
    jmp loc_004046c3
loc_0040466b:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00404663
loc_00404673:
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    cmp dword ptr [eax + d_004647a4], 0
    jle loc_00404699
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [eax + d_004647a4]
    mov eax, dword ptr [ebp - 0x10]
    add eax, 0x32
    call sub_004121bf
loc_00404699:
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    cmp dword ptr [eax + d_00464764], 0
    je loc_004046c1
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [eax + d_004646c4]
    mov eax, dword ptr [ebp - 0x10]
    add eax, 0x190
    call sub_004121bf
loc_004046c1:
    jmp loc_0040466b
loc_004046c3:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004046cc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    call sub_0040c06a
    cmp eax, 1
    jne loc_00404754
    mov eax, 0x12e
    call sub_004124a4
    call sub_00412e0c
    xor eax, eax
    call sub_00412e33
loc_004046fa:
    call bm_pump
    call sub_004102b7
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0x1b
    jne loc_00404732
    mov dword ptr [d_0046492c], 0xffffffff
    mov dword ptr [d_00464a68], 2
    mov eax, dword ptr [d_00464a68]
    call sub_0040fb44
    call bm_pump
    jmp loc_0040473b
loc_00404732:
    cmp dword ptr [d_00464954], 0
    je loc_004046fa
loc_0040473b:
    mov eax, 0x64
    call sub_00412e33
    mov dword ptr [d_00464954], 0
    jmp loc_0040482a
loc_00404754:
    mov eax, offset d_004648c4
    call sub_00403eee
    call sub_0040c06a
    cmp eax, 2
    jne loc_0040482a
    mov dword ptr [ebp - 8], 0x13e
    mov ebx, 0x160
    mov edx, offset d_00458130
    mov eax, dword ptr [ebp - 8]
    call sub_004184d0
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax], 0x4f
    mov dword ptr [ebp - 0xc], 0
loc_00404797:
    cmp dword ptr [ebp - 0xc], 0x4f
    jb loc_004047a7
    jmp loc_004047e5
loc_0040479f:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_00404797
loc_004047a7:
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov edx, dword ptr [ebp - 0xc]
    add edx, edx
    add edx, edx
    add edx, dword ptr [ebp - 0x10]
    mov ax, word ptr [eax + d_0045b7d4]
    mov word ptr [edx + 2], ax
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045b7d4]
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    add eax, eax
    add eax, eax
    add eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 4], dx
    jmp loc_0040479f
loc_004047e5:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041022d
    mov ebx, 0x16a
    mov edx, offset d_00458130
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041863d
    mov dword ptr [ebp - 0xc], 0
loc_00404809:
    cmp dword ptr [ebp - 0xc], 5
    jl loc_00404819
    jmp loc_0040482a
loc_00404811:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_00404809
loc_00404819:
    call bm_pump
    mov eax, 0x64
    call sub_00413cb0
    jmp loc_00404811
loc_0040482a:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00404833:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, offset d_004648c4
    call sub_00403eee
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00404852:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    cmp dword ptr [ebp - 0xc], 0
    jl loc_00404876
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jl loc_0040487f
loc_00404876:
    mov dword ptr [ebp - 4], 1
    jmp loc_004048e0
loc_0040487f:
    cmp dword ptr [ebp - 8], 0
    jl loc_00404890
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00404899
loc_00404890:
    mov dword ptr [ebp - 4], 1
    jmp loc_004048e0
loc_00404899:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_0045e040]
    add eax, edx
    mov eax, dword ptr [eax]
    add eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax], 0x3a
    jne loc_004048b9
    mov dword ptr [ebp - 4], 2
    jmp loc_004048e0
loc_004048b9:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_0045e040]
    add eax, edx
    mov eax, dword ptr [eax]
    add eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax], 0x23
    jne loc_004048d9
    mov dword ptr [ebp - 4], 1
    jmp loc_004048e0
loc_004048d9:
    mov dword ptr [ebp - 4], 0
loc_004048e0:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004048eb:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 8], ebx
    cmp dword ptr [ebp - 0x10], 0
    jl loc_00404911
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00404916
loc_00404911:
    # jmp 0x404975
    .byte 0xe9
    .long loc_00404975 - . - 4
loc_00404916:
    cmp dword ptr [ebp - 0xc], 0
    jl loc_00404927
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00404929
loc_00404927:
    jmp loc_00404975
loc_00404929:
    cmp dword ptr [ebp - 8], 1
    jb loc_0040493d
    cmp dword ptr [ebp - 8], 1
    jbe loc_00404945
    cmp dword ptr [ebp - 8], 2
    je loc_0040494e
    jmp loc_00404957
loc_0040493d:
    cmp dword ptr [ebp - 8], 0
    je loc_00404957
    jmp loc_00404957
loc_00404945:
    mov dword ptr [ebp - 4], 0x23
    jmp loc_0040495e
loc_0040494e:
    mov dword ptr [ebp - 4], 0x3a
    jmp loc_0040495e
loc_00404957:
    mov dword ptr [ebp - 4], 0x2e
loc_0040495e:
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov eax, dword ptr [d_0045e040]
    add eax, edx
    mov edx, dword ptr [eax]
    add edx, dword ptr [ebp - 0x10]
    mov al, byte ptr [ebp - 4]
    mov byte ptr [edx], al
loc_00404975:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0040497c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov edx, 0x2e
    mov eax, offset d_004648c4
    call sub_00451d5e
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_004049a8
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
loc_004049a8:
    mov edx, offset d_00458139
    mov eax, offset d_004648c4
    call sub_00451d78
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004049c0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov edx, offset d_004583e3
    mov eax, offset d_00464700
    call sub_0045189e
    mov dword ptr [d_004647a0], 0x5a
    mov dword ptr [ebp - 4], 0
loc_004049ee:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00404a03
    jmp loc_00404a50
loc_004049fb:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_004049ee
loc_00404a03:
    test dword ptr [ebp - 4], 1
    je loc_00404a2e
    mov ebx, dword ptr [d_004648ac]
    mov edx, offset d_004583f6
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov ecx, dword ptr [d_0045e040]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_00451dc4
    jmp loc_00404a4e
loc_00404a2e:
    mov ebx, dword ptr [d_004648ac]
    mov edx, offset d_00458406
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov ecx, dword ptr [d_0045e040]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_00451dc4
loc_00404a4e:
    jmp loc_004049fb
loc_00404a50:
    mov dword ptr [ebp - 4], 0
loc_00404a57:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_00404a6a
    jmp loc_00404b14
loc_00404a62:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00404a57
loc_00404a6a:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    add eax, 0x258
    call sub_00412135
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    add eax, 0x259
    call sub_00412135
    mov dword ptr [ebp - 8], eax
loc_00404a8e:
    cmp dword ptr [ebp - 0xc], 0
    jge loc_00404a9e
    mov eax, dword ptr [d_004648ac]
    add dword ptr [ebp - 0xc], eax
    jmp loc_00404a8e
loc_00404a9e:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00404ab3
    mov eax, dword ptr [d_004648ac]
    sub dword ptr [ebp - 0xc], eax
    jmp loc_00404a9e
loc_00404ab3:
    cmp dword ptr [ebp - 8], 0
    jge loc_00404ac3
    mov eax, dword ptr [d_004648b4]
    add dword ptr [ebp - 8], eax
    jmp loc_00404ab3
loc_00404ac3:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00404ad8
    mov eax, dword ptr [d_004648b4]
    sub dword ptr [ebp - 8], eax
    jmp loc_00404ac3
loc_00404ad8:
    imul eax, dword ptr [ebp - 4], 0xc
    mov edx, dword ptr [d_0046481c]
    add edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [edx], eax
    imul edx, dword ptr [ebp - 4], 0xc
    mov eax, dword ptr [d_0046481c]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [edx + 4], eax
    mov ebx, dword ptr [ebp - 4]
    and ebx, 1
    imul eax, dword ptr [ebp - 4], 0xc
    mov edx, dword ptr [d_0046481c]
    add eax, edx
    mov dword ptr [eax + 8], ebx
    jmp loc_00404a62
loc_00404b14:
    mov dword ptr [ebp - 4], 0
loc_00404b1b:
    cmp dword ptr [ebp - 4], 0xf
    jl loc_00404b2b
    jmp loc_00404b6d
loc_00404b23:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00404b1b
loc_00404b2b:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_004647a4], 0
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_00464764], 0
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_004646c4], 0
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_004647e0], 0
    jmp loc_00404b23
loc_00404b6d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    call sub_004049c0
    mov edx, offset d_00458416
    mov eax, offset d_00464700
    call sub_0045189e
    mov dword ptr [d_004647a0], 0x64
    mov dword ptr [ebp - 4], 0
loc_00404ba9:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00404bbe
    jmp loc_00404be0
loc_00404bb6:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00404ba9
loc_00404bbe:
    mov ebx, dword ptr [d_004648ac]
    mov edx, offset d_00458406
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov ecx, dword ptr [d_0045e040]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_00451dc4
    jmp loc_00404bb6
loc_00404be0:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00404be9:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x110
    mov dword ptr [ebp - 0x10], eax
    mov eax, 0x2d7
    call sub_004124a4
    mov ebx, offset d_0045e044
    mov edx, eax
    mov eax, ebx
    call sub_0045189e
    mov edx, offset d_004583c9
    mov eax, dword ptr [ebp - 0x10]
    call sub_00411d17
    call sub_004514fc
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_00404cc7
loc_00404c31:
    mov byte ptr [ebp - 0x110], 0
    mov ebx, dword ptr [ebp - 8]
    mov edx, 0xff
    lea eax, [ebp - 0x110]
    call sub_004515ff
    cmp byte ptr [ebp - 0x110], 0x2d
    jne loc_00404c5d
    cmp byte ptr [ebp - 0x10f], 0x4e
    je loc_00404c5f
loc_00404c5d:
    jmp loc_00404cb2
loc_00404c5f:
    mov edx, 0x2c
    lea eax, [ebp - 0x110]
    call sub_0045167a
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    je loc_00404cb2
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov byte ptr [ebp - 0xad], 0
    mov edx, dword ptr [ebp - 0xc]
    mov eax, offset d_0045e044
    call sub_0045189e
    mov edx, 0xa
    mov eax, offset d_0045e044
    call sub_0045167a
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    je loc_00404cb0
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax], 0
loc_00404cb0:
    jmp loc_00404cbf
loc_00404cb2:
    mov eax, dword ptr [ebp - 8]
    test byte ptr [eax + 0xc], 0x10
    je loc_00404c31
loc_00404cbf:
    mov eax, dword ptr [ebp - 8]
    call sub_0045172e
loc_00404cc7:
    mov dword ptr [ebp - 4], offset d_0045e044
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00404cda:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_0045e0a8], 0
    je loc_00404d0f
    mov ebx, 0x24
    mov edx, offset d_00458420
    mov eax, dword ptr [d_0045e0a8]
    call sub_0041863d
    mov dword ptr [d_0045e0a8], 0
loc_00404d0f:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00404d16:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov ecx, 0x2d
    mov ebx, offset d_00458420
    mov edx, 0x64
    mov eax, 0x98
    call sub_00418511
    mov dword ptr [d_0045e0a8], eax
    mov eax, offset ptr_00404cda
    call sub_00410ebf
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00404d53:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [d_0045e0ac], 0
    mov dword ptr [d_0045e0b0], 0
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [d_0045e0a8]
    mov dword ptr [ebp - 4], eax
loc_00404d84:
    cmp dword ptr [ebp - 8], 0x64
    jl loc_00404d9e
    jmp loc_00404daf
loc_00404d8c:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_00404d84
loc_00404d9e:
    mov ebx, 0x98
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_00451940
    jmp loc_00404d8c
loc_00404daf:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00404db8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax]
    and eax, 0xff
    call sub_00451de9
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0x6e
    jb loc_00404dfd
    cmp dword ptr [ebp - 0xc], 0x6e
    jbe loc_00404e05
    cmp dword ptr [ebp - 0xc], 0x73
    jb loc_00404dfb
    cmp dword ptr [ebp - 0xc], 0x73
    jbe loc_00404e17
    cmp dword ptr [ebp - 0xc], 0x77
    je loc_00404e20
    jmp loc_00404e29
loc_00404dfb:
    jmp loc_00404e29
loc_00404dfd:
    cmp dword ptr [ebp - 0xc], 0x65
    je loc_00404e0e
    jmp loc_00404e29
loc_00404e05:
    mov dword ptr [ebp - 4], 0
    jmp loc_00404e30
loc_00404e0e:
    mov dword ptr [ebp - 4], 1
    jmp loc_00404e30
loc_00404e17:
    mov dword ptr [ebp - 4], 2
    jmp loc_00404e30
loc_00404e20:
    mov dword ptr [ebp - 4], 3
    jmp loc_00404e30
loc_00404e29:
    mov dword ptr [ebp - 4], 0xffffffff
loc_00404e30:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00404e3c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    cmp dword ptr [d_0045e0b0], 0x64
    jge loc_00404e86
    mov eax, dword ptr [d_0045e0b0]
    inc dword ptr [d_0045e0b0]
    imul eax, eax, 0x98
    mov edx, dword ptr [d_0045e0a8]
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov ebx, 0x98
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_00451940
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00404e8d
loc_00404e86:
    mov dword ptr [ebp - 4], 0
loc_00404e8d:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00404e99:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x208
    push dword ptr [d_0046499c]
    mov eax, offset d_00458428
    push eax
    lea eax, [ebp - 0x1fc]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov edx, offset d_00458434
    lea eax, [ebp - 0x1fc]
    call sub_00411d17
    call sub_004514fc
    mov dword ptr [ebp - 0x14], eax
    lea eax, [ebp - 0x1fc]
    call sub_00411d17
    push eax
    mov eax, offset d_00458437
    push eax
    call sub_0042c0c8
    add esp, 8
    cmp dword ptr [ebp - 0x14], 0
    je loc_00405508
loc_00404efe:
    mov byte ptr [ebp - 0x1fc], 0
    mov ebx, dword ptr [ebp - 0x14]
    mov edx, 0xff
    lea eax, [ebp - 0x1fc]
    call sub_004515ff
    cmp byte ptr [ebp - 0x1fc], 0
    je loc_004054f1
    mov edx, 0xa
    lea eax, [ebp - 0x1fc]
    call sub_0045167a
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 0
    je loc_00404f44
    mov eax, dword ptr [ebp - 0x1c]
    mov byte ptr [eax], 0
loc_00404f44:
    mov al, byte ptr [ebp - 0x1fc]
    mov byte ptr [ebp - 0x200], al
    cmp byte ptr [ebp - 0x200], 0x2d
    jne loc_004054f1
    lea eax, [ebp - 0x1fc]
    push eax
    mov eax, offset d_00458462
    push eax
    call sub_0042c0c8
    add esp, 8
    mov dword ptr [ebp - 0x18], 0
    lea eax, [ebp - 0x1fb]
    mov dword ptr [ebp - 0x1c], eax
loc_00404f82:
    mov edx, 0x2c
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0045167a
    mov dword ptr [ebp - 0x20], eax
    cmp dword ptr [ebp - 0x20], 0
    je loc_00404fa1
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    mov byte ptr [eax], 0
loc_00404fa1:
    mov edx, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [edx + ebp - 0xfc], eax
    mov eax, dword ptr [ebp - 0x20]
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 0
    jne loc_00404f82
    mov eax, dword ptr [ebp - 0xfc]
    mov al, byte ptr [eax]
    mov byte ptr [ebp - 0x204], al
    cmp byte ptr [ebp - 0x204], 0x43
    jb loc_00405011
    cmp byte ptr [ebp - 0x204], 0x43
    jbe loc_0040524b
    cmp byte ptr [ebp - 0x204], 0x54
    jb loc_0040500c
    cmp byte ptr [ebp - 0x204], 0x54
    jbe loc_00405366
    cmp byte ptr [ebp - 0x204], 0x57
    je loc_00405139
    jmp loc_004054c7
loc_0040500c:
    jmp loc_004054c7
loc_00405011:
    cmp byte ptr [ebp - 0x204], 0x41
    jne loc_004054c7
    cmp dword ptr [ebp - 0x18], 4
    je loc_0040504e
    mov eax, offset d_00458471
    push eax
    lea eax, [ebp - 0x84]
    push eax
    call sub_004518d0
    add esp, 8
    lea eax, [ebp - 0x84]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0040504e:
    mov eax, dword ptr [ebp - 0xf8]
    call sub_00404db8
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], -1
    jne loc_00405093
    mov eax, dword ptr [ebp - 0xf8]
    push eax
    mov eax, offset d_004584a2
    push eax
    lea eax, [ebp - 0x84]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x84]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_00405093:
    mov eax, dword ptr [ebp - 0xf4]
    call sub_004516c1
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0xf0]
    call sub_004516c1
    mov dword ptr [ebp - 0x10], eax
loc_004050af:
    cmp dword ptr [ebp - 8], 0
    jge loc_004050bf
    mov eax, dword ptr [d_004648ac]
    add dword ptr [ebp - 8], eax
    jmp loc_004050af
loc_004050bf:
    cmp dword ptr [ebp - 0x10], 0
    jge loc_004050cf
    mov eax, dword ptr [d_004648b4]
    add dword ptr [ebp - 0x10], eax
    jmp loc_004050bf
loc_004050cf:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004050e3
    mov eax, dword ptr [d_004648ac]
    dec eax
    mov dword ptr [ebp - 8], eax
loc_004050e3:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004050f7
    mov eax, dword ptr [d_004648b4]
    dec eax
    mov dword ptr [ebp - 0x10], eax
loc_004050f7:
    call sub_00404e3c
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00405134
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], 0
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov word ptr [edx + 0x2c], ax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x20], eax
loc_00405134:
    jmp loc_004054f1
loc_00405139:
    cmp dword ptr [ebp - 0x18], 6
    je loc_00405169
    mov eax, offset d_004584c5
    push eax
    lea eax, [ebp - 0x84]
    push eax
    call sub_004518d0
    add esp, 8
    lea eax, [ebp - 0x84]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_00405169:
    mov eax, dword ptr [ebp - 0xf0]
    call sub_004516c1
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0xec]
    call sub_004516c1
    mov dword ptr [ebp - 0x10], eax
loc_00405185:
    cmp dword ptr [ebp - 8], 0
    jge loc_00405195
    mov eax, dword ptr [d_004648ac]
    add dword ptr [ebp - 8], eax
    jmp loc_00405185
loc_00405195:
    cmp dword ptr [ebp - 0x10], 0
    jge loc_004051a5
    mov eax, dword ptr [d_004648b4]
    add dword ptr [ebp - 0x10], eax
    jmp loc_00405195
loc_004051a5:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004051b9
    mov eax, dword ptr [d_004648ac]
    dec eax
    mov dword ptr [ebp - 8], eax
loc_004051b9:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004051cd
    mov eax, dword ptr [d_004648b4]
    dec eax
    mov dword ptr [ebp - 0x10], eax
loc_004051cd:
    call sub_00404e3c
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00405246
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], 1
    mov eax, dword ptr [ebp - 0xf8]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 0x34], dx
    mov eax, dword ptr [ebp - 0xf4]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 0x2c], dx
    mov eax, dword ptr [ebp - 0xe8]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 0x2e], dx
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x92], 0
loc_00405246:
    jmp loc_004054f1
loc_0040524b:
    cmp dword ptr [ebp - 0x18], 4
    je loc_0040527b
    mov eax, offset d_00458503
    push eax
    lea eax, [ebp - 0x84]
    push eax
    call sub_004518d0
    add esp, 8
    lea eax, [ebp - 0x84]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0040527b:
    mov eax, dword ptr [ebp - 0xf8]
    call sub_00404db8
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], -1
    jne loc_004052c0
    mov eax, dword ptr [ebp - 0xf8]
    push eax
    mov eax, offset d_00458534
    push eax
    lea eax, [ebp - 0x84]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x84]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_004052c0:
    mov eax, dword ptr [ebp - 0xf4]
    call sub_004516c1
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0xf0]
    call sub_004516c1
    mov dword ptr [ebp - 0x10], eax
loc_004052dc:
    cmp dword ptr [ebp - 8], 0
    jge loc_004052ec
    mov eax, dword ptr [d_004648ac]
    add dword ptr [ebp - 8], eax
    jmp loc_004052dc
loc_004052ec:
    cmp dword ptr [ebp - 0x10], 0
    jge loc_004052fc
    mov eax, dword ptr [d_004648b4]
    add dword ptr [ebp - 0x10], eax
    jmp loc_004052ec
loc_004052fc:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00405310
    mov eax, dword ptr [d_004648ac]
    dec eax
    mov dword ptr [ebp - 8], eax
loc_00405310:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00405324
    mov eax, dword ptr [d_004648b4]
    dec eax
    mov dword ptr [ebp - 0x10], eax
loc_00405324:
    call sub_00404e3c
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00405361
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], 2
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov word ptr [edx + 0x2c], ax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x20], eax
loc_00405361:
    jmp loc_004054f1
loc_00405366:
    call sub_0040c06a
    test eax, eax
    jne loc_004054f1
    cmp dword ptr [ebp - 0x18], 3
    je loc_004053a3
    mov eax, offset d_00458557
    push eax
    lea eax, [ebp - 0x84]
    push eax
    call sub_004518d0
    add esp, 8
    lea eax, [ebp - 0x84]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_004053a3:
    mov eax, dword ptr [ebp - 0xf8]
    mov al, byte ptr [eax]
    and eax, 0xff
    call sub_0045168e
    cmp eax, 0x48
    # jne 0x40542e
    .byte 0x0f,0x85
    .long loc_0040542e - . - 4
    mov dword ptr [ebp - 0x208], 0
loc_004053c8:
    cmp dword ptr [ebp - 0x208], 0x64
    jl loc_004053e1
    jmp loc_0040542c
loc_004053d3:
    mov eax, dword ptr [ebp - 0x208]
    inc dword ptr [ebp - 0x208]
    jmp loc_004053c8
loc_004053e1:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648ac]
    mov dword ptr [ebp - 8], edx
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648b4]
    mov dword ptr [ebp - 0x10], edx
    mov eax, dword ptr [ebp - 8]
    and eax, 1
    mov edx, dword ptr [ebp - 0x10]
    and edx, 1
    cmp eax, edx
    je loc_0040542a
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 8]
    call sub_00405654
    test eax, eax
    je loc_0040542c
loc_0040542a:
    jmp loc_004053d3
loc_0040542c:
    jmp loc_00405492
loc_0040542e:
    mov eax, dword ptr [ebp - 0xf8]
    call sub_004516c1
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0xf4]
    call sub_004516c1
    mov dword ptr [ebp - 0x10], eax
loc_0040544a:
    cmp dword ptr [ebp - 8], 0
    jge loc_0040545a
    mov eax, dword ptr [d_004648ac]
    add dword ptr [ebp - 8], eax
    jmp loc_0040544a
loc_0040545a:
    cmp dword ptr [ebp - 0x10], 0
    jge loc_0040546a
    mov eax, dword ptr [d_004648b4]
    add dword ptr [ebp - 0x10], eax
    jmp loc_0040545a
loc_0040546a:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_0040547e
    mov eax, dword ptr [d_004648ac]
    dec eax
    mov dword ptr [ebp - 8], eax
loc_0040547e:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00405492
    mov eax, dword ptr [d_004648b4]
    dec eax
    mov dword ptr [ebp - 0x10], eax
loc_00405492:
    call sub_00404e3c
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_004054c5
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], 3
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x20], eax
loc_004054c5:
    jmp loc_004054f1
loc_004054c7:
    mov eax, offset d_00458586
    push eax
    lea eax, [ebp - 0x84]
    push eax
    call sub_004518d0
    add esp, 8
    lea eax, [ebp - 0x84]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_004054f1:
    mov eax, dword ptr [ebp - 0x14]
    test byte ptr [eax + 0xc], 0x10
    je loc_00404efe
    mov eax, dword ptr [ebp - 0x14]
    call sub_0045172e
    jmp loc_00405516
loc_00405508:
    mov eax, offset d_004585ba
    push eax
    call sub_0042c0c8
    add esp, 4
loc_00405516:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040551f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    call sub_00404d53
    call sub_0040c06a
    cmp eax, 1
    jne loc_0040563c
    mov dword ptr [ebp - 4], 0
loc_00405547:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_00405557
    jmp loc_0040556e
loc_0040554f:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00405547
loc_00405557:
    imul eax, dword ptr [ebp - 4], 0x98
    mov edx, dword ptr [d_0045e0a8]
    add eax, edx
    mov dword ptr [eax], 0xffffffff
    jmp loc_0040554f
loc_0040556e:
    mov eax, 0x134
    call sub_004124a4
    call sub_00412e0c
loc_0040557d:
    call sub_004102b7
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0x1b
    jne loc_0040559a
    mov dword ptr [d_00464a68], 2
    jmp loc_00405630
loc_0040559a:
    call bm_pump
    mov eax, 0x64
    call sub_00413cb0
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 4], 0
loc_004055b7:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_004055c7
    jmp loc_00405608
loc_004055bf:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_004055b7
loc_004055c7:
    imul eax, dword ptr [ebp - 4], 0x98
    mov edx, dword ptr [d_0045e0a8]
    add eax, edx
    cmp dword ptr [eax], -1
    jne loc_00405606
    cmp dword ptr [ebp - 8], 0
    jne loc_00405600
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    je loc_00405600
    mov eax, dword ptr [ebp - 4]
    call sub_0040f830
loc_00405600:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
loc_00405606:
    jmp loc_004055bf
loc_00405608:
    imul edx, dword ptr [ebp - 8], 0x64
    mov ebx, 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, 0x64
    sub edx, eax
    mov eax, edx
    call sub_00412e33
    cmp dword ptr [ebp - 8], 0
    jne loc_0040557d
loc_00405630:
    mov eax, 0x64
    call sub_00412e33
    jmp loc_0040564b
loc_0040563c:
    call sub_00404e99
    mov dword ptr [d_0045e0ac], 1
loc_0040564b:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00405654:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x14], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_0045e0a8]
    mov dword ptr [ebp - 8], eax
loc_00405676:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_00405690
    jmp loc_004056b8
loc_0040567e:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00405676
loc_00405690:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_004056b6
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x1c]
    cmp eax, dword ptr [ebp - 0x14]
    jne loc_004056b6
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x20]
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_004056b6
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_004056bf
loc_004056b6:
    jmp loc_0040567e
loc_004056b8:
    mov dword ptr [ebp - 4], 0
loc_004056bf:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004056ca:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x84
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_0045e0a8]
    mov dword ptr [ebp - 0x10], eax
loc_004056e7:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_00405704
    jmp loc_00405a78
loc_004056f2:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    add dword ptr [ebp - 0x10], 0x98
    jmp loc_004056e7
loc_00405704:
    mov eax, dword ptr [ebp - 0x10]
    cmp dword ptr [eax], 0
    jne loc_00405722
    jmp loc_00405a73
    .byte 0x90
ptr_00405712:
    .long ptr_00405742
    .long ptr_004057c3
    .long ptr_0040592f
    .long ptr_004059c4
loc_00405722:
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebp - 0x78], eax
    cmp dword ptr [ebp - 0x78], 3
    ja loc_00405a5f
    mov eax, dword ptr [ebp - 0x78]
    shl eax, 2
    jmp dword ptr cs:[eax + ptr_00405712]
ptr_00405742:
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00425fb9
    test eax, eax
    jne loc_004057be
    mov eax, dword ptr [ebp - 0x10]
    inc word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    call sub_00413aed
    push eax
    mov eax, offset d_004585e6
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x74]
    call sub_0041d957
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x10]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 8]
    call sub_0041daa7
    mov dword ptr [ebp - 4], eax
    mov ebx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x20]
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00426524
    call sub_00415920
loc_004057be:
    jmp loc_00405a73
ptr_004057c3:
    mov eax, dword ptr [ebp - 0x10]
    cmp byte ptr [eax + 0x92], 0
    jne loc_004058bb
    mov eax, dword ptr [ebp - 0x10]
    mov byte ptr [eax + 0x92], 1
    call sub_0040c06a
    cmp eax, 1
    je loc_004058bb
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00425e9b
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0040fde8
loc_00405811:
    call sub_0045190a
    mov edx, eax
    mov ebx, 4
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x7c], edx
    mov eax, dword ptr [ebp - 0x7c]
    shl eax, 2
    mov edx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [edx + 0x1c]
    add edx, dword ptr [eax + d_0045becc]
    mov dword ptr [ebp - 0x80], edx
    mov eax, dword ptr [ebp - 0x7c]
    shl eax, 2
    mov edx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [edx + 0x20]
    add edx, dword ptr [eax + d_0045bedc]
    mov dword ptr [ebp - 0x84], edx
    cmp dword ptr [ebp - 0x80], 0
    jl loc_00405865
    mov eax, dword ptr [ebp - 0x80]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00405867
loc_00405865:
    jmp loc_00405870
loc_00405867:
    cmp dword ptr [ebp - 0x84], 0
    jge loc_00405872
loc_00405870:
    jmp loc_00405880
loc_00405872:
    mov eax, dword ptr [ebp - 0x84]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00405882
loc_00405880:
    jmp loc_00405811
loc_00405882:
    mov eax, dword ptr [ebp - 0x84]
    push eax
    mov eax, dword ptr [ebp - 0x80]
    push eax
    mov eax, offset d_004585f5
    push eax
    call sub_0042c0c8
    add esp, 0xc
    xor ebx, ebx
    mov edx, dword ptr [ebp - 0x84]
    mov eax, dword ptr [ebp - 0x80]
    call sub_00425e9b
    xor ebx, ebx
    mov edx, dword ptr [ebp - 0x84]
    mov eax, dword ptr [ebp - 0x80]
    call sub_0040fde8
loc_004058bb:
    mov eax, dword ptr [ebp - 0x10]
    cmp word ptr [eax + 0x34], 0
    je loc_0040592a
    mov eax, dword ptr [ebp - 0x10]
    inc word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x10]
    mov ax, word ptr [eax + 0x34]
    and eax, 0xffff
    push eax
    mov eax, offset d_00458609
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x74]
    call sub_0041d957
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x10]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 8]
    call sub_0041daa7
    mov dword ptr [ebp - 4], eax
    mov ebx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x20]
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00426524
    call sub_00415920
loc_0040592a:
    jmp loc_00405a73
ptr_0040592f:
    mov eax, dword ptr [ebp - 0x10]
    inc word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00425fb9
    test eax, eax
    jne loc_004059bf
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [edx + 0x2a]
    sar eax, 0x10
    call sub_00413aed
    push eax
    mov eax, offset d_00458617
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x74]
    call sub_0041d957
    mov dword ptr [ebp - 8], eax
    mov edx, dword ptr [ebp - 0x10]
    mov dx, word ptr [edx + 0x30]
    and edx, 0xffff
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    call sub_0041daa7
    mov dword ptr [ebp - 4], eax
    mov ebx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x20]
    call sub_0042655f
    mov ecx, eax
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [edx + 0x1c]
    call sub_00426524
    mov edx, ecx
    call sub_00415920
loc_004059bf:
    jmp loc_00405a73
ptr_004059c4:
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00425fb9
    test eax, eax
    jne loc_00405a5d
    mov eax, offset d_00458629
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 8
    lea eax, [ebp - 0x74]
    call sub_0041d957
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x10]
    cmp word ptr [eax + 0x30], 0
    je loc_00405a29
    mov eax, dword ptr [ebp - 0x10]
    inc word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x10]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 8]
    call sub_0041da5c
    cmp edx, eax
    jle loc_00405a29
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 0x30], 0
loc_00405a29:
    mov eax, dword ptr [ebp - 0x10]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 8]
    call sub_0041daa7
    mov dword ptr [ebp - 4], eax
    mov ebx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x20]
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00426524
    call sub_00415920
loc_00405a5d:
    jmp loc_00405a73
loc_00405a5f:
    mov eax, dword ptr [ebp - 0x10]
    push dword ptr [eax + 4]
    mov eax, offset d_0045863a
    push eax
    call sub_0042c0c8
    add esp, 8
loc_00405a73:
    jmp loc_004056f2
loc_00405a78:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00405a81:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x14], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 0xc], ebx
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [d_0045e0a8]
    mov dword ptr [ebp - 8], eax
loc_00405aa5:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_00405ac2
    # jmp 0x405b11
    .byte 0xe9
    .long loc_00405b11 - . - 4
loc_00405ab0:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00405aa5
loc_00405ac2:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00405b0f
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0x14]
    je loc_00405b0f
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 4], 1
    jne loc_00405b0f
    mov eax, dword ptr [ebp - 8]
    mov dx, word ptr [eax + 0x2c]
    mov eax, dword ptr [ebp - 0x14]
    cmp dx, word ptr [eax + 0x2e]
    jne loc_00405b0f
    cmp dword ptr [ebp - 0x10], 0
    je loc_00405afc
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax], edx
loc_00405afc:
    cmp dword ptr [ebp - 0xc], 0
    je loc_00405b0d
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], edx
loc_00405b0d:
    jmp loc_00405b33
loc_00405b0f:
    jmp loc_00405ab0
loc_00405b11:
    cmp dword ptr [ebp - 0x10], 0
    je loc_00405b22
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax], edx
loc_00405b22:
    cmp dword ptr [ebp - 0xc], 0
    je loc_00405b33
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], edx
loc_00405b33:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00405b3a:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x14], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 0xc], ebx
    mov dword ptr [ebp - 8], ecx
    cmp dword ptr [ebp - 0x14], 0
    jl loc_00405b5d
    cmp dword ptr [ebp - 0x14], 0x64
    jl loc_00405b5f
loc_00405b5d:
    jmp loc_00405bb2
loc_00405b5f:
    imul eax, dword ptr [ebp - 0x14], 0x98
    mov edx, dword ptr [d_0045e0a8]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp + 0x14]
    mov edx, dword ptr [ebp - 4]
    mov word ptr [edx + 0x2c], ax
    mov eax, dword ptr [ebp + 0x18]
    mov edx, dword ptr [ebp - 4]
    mov word ptr [edx + 0x2e], ax
    mov eax, dword ptr [ebp + 0x1c]
    mov edx, dword ptr [ebp - 4]
    mov word ptr [edx + 0x34], ax
loc_00405bb2:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0x10
sub_00405bba:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xb0
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [d_0045e0ac], 0
    je loc_00405ce4
    mov eax, dword ptr [d_0045e0b0]
    call sub_0040f862
    cmp dword ptr [ebp - 8], 0
    jl loc_00405bee
    cmp dword ptr [ebp - 8], 0x64
    jl loc_00405bf3
loc_00405bee:
    jmp loc_00405ce4
loc_00405bf3:
    cmp dword ptr [ebp - 8], 0x5a
    jl loc_00405c00
    mov dword ptr [ebp - 8], 0x5a
loc_00405c00:
    imul eax, dword ptr [ebp - 8], 0x98
    mov edx, dword ptr [d_0045e0a8]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    lea eax, [ebp - 0xac]
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 0xb0], 0
loc_00405c25:
    cmp dword ptr [ebp - 0xb0], 0xa
    jl loc_00405c41
    jmp loc_00405cd9
loc_00405c33:
    mov eax, dword ptr [ebp - 0xb0]
    inc dword ptr [ebp - 0xb0]
    jmp loc_00405c25
loc_00405c41:
    mov edx, dword ptr [ebp - 8]
    add edx, dword ptr [ebp - 0xb0]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 2
    mov word ptr [eax], dx
    mov edx, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 2
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax + 0x1c]
    mov word ptr [edx], ax
    mov edx, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 2
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax + 0x20]
    mov word ptr [edx], ax
    mov edx, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 2
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax]
    mov word ptr [edx], ax
    mov edx, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 2
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax + 4]
    mov word ptr [edx], ax
    mov edx, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 2
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax + 0x2c]
    mov word ptr [edx], ax
    mov edx, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 2
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax + 0x2e]
    mov word ptr [edx], ax
    mov edx, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 2
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax + 0x34]
    mov word ptr [edx], ax
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_00405c33
loc_00405cd9:
    lea eax, [ebp - 0xac]
    call sub_0040f7ff
loc_00405ce4:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00405ced:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_0045e0ac], 0
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00405d0c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [d_0045e0a8]
    mov dword ptr [ebp - 4], eax
loc_00405d29:
    cmp dword ptr [ebp - 8], 0x64
    jl loc_00405d43
    jmp loc_00405d75
loc_00405d31:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_00405d29
loc_00405d43:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 0
    je loc_00405d73
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 1
    jb loc_00405d68
    cmp dword ptr [ebp - 0xc], 1
    jbe loc_00405d6a
    cmp dword ptr [ebp - 0xc], 3
    je loc_00405d6a
    jmp loc_00405d73
loc_00405d68:
    jmp loc_00405d73
loc_00405d6a:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
loc_00405d73:
    jmp loc_00405d31
loc_00405d75:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00405d7e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    call sub_0040c06a
    cmp eax, 1
    jne loc_00405dc6
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
loc_00405d9f:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_00405daf
    jmp loc_00405dc6
loc_00405da7:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00405d9f
loc_00405daf:
    imul eax, dword ptr [ebp - 4], 0x98
    mov edx, dword ptr [d_0045e0a8]
    add eax, edx
    mov dword ptr [eax], 0
    jmp loc_00405da7
loc_00405dc6:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00405dcf:
    .long d_00458660
    .long d_00458665
    .long d_0045866b
    .long d_00458671
    .long d_00458677
ptr_00405de3:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov edx, offset d_004587a7
    mov eax, dword ptr [d_0045b910]
    call sub_004514fc
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_0040607d
    mov eax, offset d_004587aa
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 8
    push dword ptr [d_00464998]
    mov eax, offset d_004587c4
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464a7c]
    mov eax, offset d_004587d0
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464974]
    mov eax, offset d_004587e5
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464930]
    mov eax, offset d_004587fb
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464964]
    mov eax, offset d_0045880e
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464ae8]
    mov eax, offset d_0045881c
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464940]
    mov eax, offset d_0045882d
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_0046497c]
    mov eax, offset d_00458848
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_004648bc]
    mov eax, offset d_00458859
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    mov eax, offset d_004648c4
    push eax
    mov eax, offset d_00458865
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464948]
    mov eax, offset d_00458878
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464968]
    mov eax, offset d_00458885
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464990]
    mov eax, offset d_0045889a
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464928]
    mov eax, offset d_004588b3
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_004648c0]
    mov eax, offset d_004588ca
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464970]
    mov eax, offset d_004588e1
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_0046482c]
    mov eax, offset d_004588ef
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_004648b8]
    mov eax, offset d_004588fd
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    mov eax, offset d_00464830
    push eax
    mov eax, offset d_0045890a
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464828]
    mov eax, offset d_00458918
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    push dword ptr [d_00464824]
    mov eax, offset d_00458928
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    mov dword ptr [ebp - 0xc], 0
loc_0040601e:
    cmp dword ptr [ebp - 0xc], 2
    jl loc_0040602e
    jmp loc_00406075
loc_00406026:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040601e
loc_0040602e:
    mov dword ptr [ebp - 8], 0
loc_00406035:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00406045
    jmp loc_00406073
loc_0040603d:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00406035
loc_00406045:
    imul eax, dword ptr [ebp - 0xc], 0x28
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    add eax, edx
    push dword ptr [eax + d_004645bc]
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, offset d_00458938
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0x14
    jmp loc_0040603d
loc_00406073:
    jmp loc_00406026
loc_00406075:
    mov eax, dword ptr [ebp - 4]
    call sub_0045172e
loc_0040607d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00406086:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov edx, offset d_00458949
    mov eax, dword ptr [d_0045b910]
    call sub_004514fc
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_004060c3
    mov eax, dword ptr [ebp - 8]
    call sub_0045172e
    call sub_00406238
    call sub_004121ff
    # jmp 0x406141
    .byte 0xe9
    .long loc_00406141 - . - 4
loc_004060c3:
    mov eax, 0x51e
    call sub_004124a4
    mov dword ptr [ebp - 0x10], eax
    mov eax, 0x51f
    call sub_004124a4
    mov dword ptr [ebp - 0xc], eax
    call sub_00431178
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x64
    push 0x64
    xor ecx, ecx
    mov ebx, 2
    lea edx, [ebp - 0x10]
    mov eax, 0x514
    call sub_004124a4
    call sub_0041485a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jl loc_0040613c
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00464824], eax
    cmp dword ptr [d_00464824], 0
    je loc_0040612d
    mov eax, offset d_0045894c
    call sub_0041302d
    jmp loc_00406137
loc_0040612d:
    mov eax, offset d_00458956
    call sub_0041302d
loc_00406137:
    call sub_004121ff
loc_0040613c:
    call sub_00431360
loc_00406141:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040614a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [d_004645bc], 0xc8
    mov dword ptr [d_004645c0], 0xcd
    mov dword ptr [d_004645c4], 0xd0
    mov dword ptr [d_004645c8], 0xcb
    mov dword ptr [d_004645cc], 0x39
    mov dword ptr [d_004645d0], 0x1c
    mov dword ptr [d_004645e4], 0x13
    mov dword ptr [d_004645e8], 0x22
    mov dword ptr [d_004645ec], 0x21
    mov dword ptr [d_004645f0], 0x20
    mov dword ptr [d_004645f4], 0x1f
    cmp dword ptr [d_004a2ca4], 0
    jne loc_004061d8
    mov dword ptr [ebp - 0x10], 0x1e
    jmp loc_00406227
loc_004061d8:
    cmp dword ptr [d_004a2ca4], 1
    jne loc_004061ea
    mov dword ptr [ebp - 0xc], 0x10
    jmp loc_00406221
loc_004061ea:
    cmp dword ptr [d_004a2ca4], 4
    jne loc_004061fc
    mov dword ptr [ebp - 8], 0x1e
    jmp loc_0040621b
loc_004061fc:
    cmp dword ptr [d_004a2ca4], 3
    jne loc_0040620e
    mov dword ptr [ebp - 4], 0x1e
    jmp loc_00406215
loc_0040620e:
    mov dword ptr [ebp - 4], 0x1e
loc_00406215:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [ebp - 8], eax
loc_0040621b:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0xc], eax
loc_00406221:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 0x10], eax
loc_00406227:
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [d_004645f8], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00406238:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x14c
    mov edx, offset d_00458949
    mov eax, dword ptr [d_0045b910]
    call sub_004514fc
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    je loc_004066f8
loc_00406262:
    mov ebx, 0x100
    xor edx, edx
    lea eax, [ebp - 0x10c]
    call sub_00451940
    mov byte ptr [ebp - 0x10c], 0
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, 0xff
    lea eax, [ebp - 0x10c]
    call sub_004515ff
    cmp byte ptr [ebp - 0x10b], 0
    je loc_004066e3
    mov edx, 0x3d
    lea eax, [ebp - 0x10c]
    call sub_0045167a
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_004066e3
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov byte ptr [eax], 0
    mov edx, 0xa
    mov eax, dword ptr [ebp - 8]
    call sub_0045167a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_004062dd
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
loc_004062dd:
    mov edx, offset d_00458961
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_00406303
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464998], eax
    jmp loc_004066e3
loc_00406303:
    mov edx, offset d_00458969
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_00406329
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464a7c], eax
    jmp loc_004066e3
loc_00406329:
    mov edx, offset d_0045897a
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_0040634f
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464974], eax
    jmp loc_004066e3
loc_0040634f:
    mov edx, offset d_0045898c
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_00406375
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464930], eax
    jmp loc_004066e3
loc_00406375:
    mov edx, offset d_0045899b
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_0040639b
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464964], eax
    jmp loc_004066e3
loc_0040639b:
    mov edx, offset d_004589a5
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_004063c1
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464940], eax
    jmp loc_004066e3
loc_004063c1:
    mov edx, offset d_004589bc
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_004063e7
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464ae8], eax
    jmp loc_004066e3
loc_004063e7:
    mov edx, offset d_004589c9
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_0040640d
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_0046497c], eax
    jmp loc_004066e3
loc_0040640d:
    mov edx, offset d_004589d6
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_00406433
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_004648bc], eax
    jmp loc_004066e3
loc_00406433:
    mov edx, offset d_004589de
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_00406459
    mov edx, dword ptr [ebp - 8]
    mov eax, offset d_004648c4
    call sub_0045189e
    jmp loc_004066e3
loc_00406459:
    mov edx, offset d_004589ed
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_0040647f
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464948], eax
    jmp loc_004066e3
loc_0040647f:
    mov edx, offset d_004589f6
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_004064a5
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464968], eax
    jmp loc_004066e3
loc_004064a5:
    mov edx, offset d_00458a07
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_004064cb
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464990], eax
    jmp loc_004066e3
loc_004064cb:
    mov edx, offset d_00458a1c
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_004064f1
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464928], eax
    jmp loc_004066e3
loc_004064f1:
    mov edx, offset d_00458a2f
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_00406517
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_004648c0], eax
    jmp loc_004066e3
loc_00406517:
    mov edx, offset d_00458a42
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_0040653d
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464970], eax
    jmp loc_004066e3
loc_0040653d:
    mov edx, offset d_00458a4c
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_00406563
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_0046482c], eax
    jmp loc_004066e3
loc_00406563:
    mov edx, offset d_00458a56
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_00406589
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_004648b8], eax
    jmp loc_004066e3
loc_00406589:
    mov edx, offset d_00458a5f
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_004065af
    mov edx, dword ptr [ebp - 8]
    mov eax, offset d_00464830
    call sub_0045189e
    jmp loc_004066e3
loc_004065af:
    mov edx, offset d_00458a69
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_004065d5
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464828], eax
    jmp loc_004066e3
loc_004065d5:
    mov edx, offset d_00458a75
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_004065fb
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [d_00464824], eax
    jmp loc_004066e3
loc_004065fb:
    mov edx, offset d_00458a81
    lea eax, [ebp - 0x10c]
    call sub_00451df7
    test eax, eax
    jne loc_004066b6
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov dword ptr [ebp - 0x110], eax
    cmp dword ptr [ebp - 0x110], 0
    jl loc_00406633
    cmp dword ptr [ebp - 0x110], 1
    jle loc_00406638
loc_00406633:
    # jmp 0x4066b4
    .byte 0xe9
    .long loc_004066b4 - . - 4
loc_00406638:
    mov edx, 0x2c
    mov eax, dword ptr [ebp - 8]
    call sub_0045167a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_004066b4
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 4]
    call sub_004516c1
    mov dword ptr [ebp - 0x114], eax
    cmp dword ptr [ebp - 0x114], 0
    jl loc_00406674
    cmp dword ptr [ebp - 0x114], 0xa
    jl loc_00406676
loc_00406674:
    jmp loc_004066b4
loc_00406676:
    mov edx, 0x2c
    mov eax, dword ptr [ebp - 4]
    call sub_0045167a
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_004066b4
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 8]
    call sub_004516c1
    mov edx, eax
    imul ebx, dword ptr [ebp - 0x110], 0x28
    mov eax, dword ptr [ebp - 0x114]
    shl eax, 2
    add eax, ebx
    mov dword ptr [eax + d_004645bc], edx
loc_004066b4:
    jmp loc_004066e3
loc_004066b6:
    push dword ptr [d_0045b910]
    mov eax, offset d_00458a88
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, dword ptr [ebp - 8]
    push eax
    lea eax, [ebp - 0x10c]
    push eax
    mov eax, offset d_00458ab2
    push eax
    call sub_0042c0c8
    add esp, 0xc
loc_004066e3:
    mov eax, dword ptr [ebp - 0xc]
    test byte ptr [eax + 0xc], 0x10
    je loc_00406262
    mov eax, dword ptr [ebp - 0xc]
    call sub_0045172e
loc_004066f8:
    cmp dword ptr [d_00464998], -1
    jge loc_0040670b
    mov dword ptr [d_00464998], 0xffffffff
loc_0040670b:
    mov eax, 0x23
    call sub_00412135
    cmp eax, dword ptr [d_00464998]
    jg loc_0040672d
    mov eax, 0x23
    call sub_00412135
    dec eax
    mov dword ptr [d_00464998], eax
loc_0040672d:
    cmp dword ptr [d_00464a7c], 1
    jge loc_00406740
    mov dword ptr [d_00464a7c], 1
loc_00406740:
    cmp dword ptr [d_00464974], 0
    jge loc_00406753
    mov dword ptr [d_00464974], 0
loc_00406753:
    mov eax, 0x1c
    call sub_00412135
    cmp eax, dword ptr [d_00464974]
    jg loc_00406775
    mov eax, 0x1c
    call sub_00412135
    dec eax
    mov dword ptr [d_00464974], eax
loc_00406775:
    cmp dword ptr [d_00464930], 0
    jge loc_00406788
    mov dword ptr [d_00464930], 0
loc_00406788:
    mov eax, 0xbd
    call sub_00412135
    cmp eax, dword ptr [d_00464930]
    jg loc_004067aa
    mov eax, 0xbd
    call sub_00412135
    dec eax
    mov dword ptr [d_00464930], eax
loc_004067aa:
    cmp dword ptr [d_00464948], 0x3c
    jge loc_004067bd
    mov dword ptr [d_00464948], 0x3c
loc_004067bd:
    cmp dword ptr [d_00464948], 0x3e9
    je loc_004067df
    cmp dword ptr [d_00464948], 0x258
    jle loc_004067df
    mov dword ptr [d_00464948], 0x258
loc_004067df:
    cmp dword ptr [d_00464828], 0
    jge loc_004067f2
    mov dword ptr [d_00464828], 0
loc_004067f2:
    cmp dword ptr [d_00464828], 3
    jle loc_00406805
    mov dword ptr [d_00464828], 3
loc_00406805:
    mov eax, dword ptr [d_00464948]
    call sub_00410494
    cmp dword ptr [d_00464964], 0
    je loc_00406824
    mov dword ptr [ebp - 0x118], 1
    jmp loc_0040682e
loc_00406824:
    mov dword ptr [ebp - 0x118], 0
loc_0040682e:
    cmp dword ptr [ebp - 0x118], 0
    je loc_00406843
    mov dword ptr [ebp - 0x11c], 1
    jmp loc_0040684d
loc_00406843:
    mov dword ptr [ebp - 0x11c], 0
loc_0040684d:
    mov eax, dword ptr [ebp - 0x11c]
    mov dword ptr [d_00464964], eax
    cmp dword ptr [d_00464ae8], 0
    je loc_0040686d
    mov dword ptr [ebp - 0x120], 1
    jmp loc_00406877
loc_0040686d:
    mov dword ptr [ebp - 0x120], 0
loc_00406877:
    cmp dword ptr [ebp - 0x120], 0
    je loc_0040688c
    mov dword ptr [ebp - 0x124], 1
    jmp loc_00406896
loc_0040688c:
    mov dword ptr [ebp - 0x124], 0
loc_00406896:
    mov eax, dword ptr [ebp - 0x124]
    mov dword ptr [d_00464ae8], eax
    cmp dword ptr [d_00464940], 0
    je loc_004068b6
    mov dword ptr [ebp - 0x128], 1
    jmp loc_004068c0
loc_004068b6:
    mov dword ptr [ebp - 0x128], 0
loc_004068c0:
    cmp dword ptr [ebp - 0x128], 0
    je loc_004068d5
    mov dword ptr [ebp - 0x12c], 1
    jmp loc_004068df
loc_004068d5:
    mov dword ptr [ebp - 0x12c], 0
loc_004068df:
    mov eax, dword ptr [ebp - 0x12c]
    mov dword ptr [d_00464940], eax
    cmp dword ptr [d_0046497c], 0
    je loc_004068ff
    mov dword ptr [ebp - 0x130], 1
    jmp loc_00406909
loc_004068ff:
    mov dword ptr [ebp - 0x130], 0
loc_00406909:
    cmp dword ptr [ebp - 0x130], 0
    je loc_0040691e
    mov dword ptr [ebp - 0x134], 1
    jmp loc_00406928
loc_0040691e:
    mov dword ptr [ebp - 0x134], 0
loc_00406928:
    mov eax, dword ptr [ebp - 0x134]
    mov dword ptr [d_0046497c], eax
    cmp dword ptr [d_004648bc], 0
    je loc_00406948
    mov dword ptr [ebp - 0x138], 1
    jmp loc_00406952
loc_00406948:
    mov dword ptr [ebp - 0x138], 0
loc_00406952:
    cmp dword ptr [ebp - 0x138], 0
    je loc_00406967
    mov dword ptr [ebp - 0x13c], 1
    jmp loc_00406971
loc_00406967:
    mov dword ptr [ebp - 0x13c], 0
loc_00406971:
    mov eax, dword ptr [ebp - 0x13c]
    mov dword ptr [d_004648bc], eax
    cmp dword ptr [d_00464968], 0
    je loc_00406991
    mov dword ptr [ebp - 0x140], 1
    jmp loc_0040699b
loc_00406991:
    mov dword ptr [ebp - 0x140], 0
loc_0040699b:
    cmp dword ptr [ebp - 0x140], 0
    je loc_004069b0
    mov dword ptr [ebp - 0x144], 1
    jmp loc_004069ba
loc_004069b0:
    mov dword ptr [ebp - 0x144], 0
loc_004069ba:
    mov eax, dword ptr [ebp - 0x144]
    mov dword ptr [d_00464968], eax
    cmp dword ptr [d_00464824], 0
    je loc_004069da
    mov dword ptr [ebp - 0x148], 1
    jmp loc_004069e4
loc_004069da:
    mov dword ptr [ebp - 0x148], 0
loc_004069e4:
    cmp dword ptr [ebp - 0x148], 0
    je loc_004069f9
    mov dword ptr [ebp - 0x14c], 1
    jmp loc_00406a03
loc_004069f9:
    mov dword ptr [ebp - 0x14c], 0
loc_00406a03:
    mov eax, dword ptr [ebp - 0x14c]
    mov dword ptr [d_00464824], eax
    cmp dword ptr [d_00464964], 0
    je loc_00406a21
    mov dword ptr [d_0046497c], 0
loc_00406a21:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00406a2a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_00464998], 0
    mov dword ptr [d_00464970], 2
    mov dword ptr [d_0046482c], 0x4b00
    mov dword ptr [d_004648b8], 3
    mov edx, offset d_00458ac6
    mov eax, offset d_00464830
    call sub_0045189e
    call sub_0040614a
    mov edx, offset d_00458acf
    mov eax, offset d_004648c4
    call sub_0045189e
    mov eax, offset d_004648c4
    call sub_00412a3b
    call sub_00406238
    mov eax, offset ptr_00405de3
    call sub_00410ebf
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00406aa3:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x118
    mov eax, 0x2da
    call sub_00412135
    mov dword ptr [ebp - 0x20], eax
    mov eax, 0x2db
    call sub_00412135
    mov dword ptr [ebp - 0x1c], eax
    mov eax, 0x2dc
    call sub_00412135
    mov dword ptr [ebp - 8], eax
    mov eax, 0x2dd
    call sub_00412135
    mov dword ptr [ebp - 4], eax
    call sub_004151ad
    cmp dword ptr [d_0045e0b8], 0
    jl loc_00406b10
    push dword ptr [d_0045e0b8]
    mov eax, offset d_00458ad9
    push eax
    lea eax, [ebp - 0x88]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_00406b63
loc_00406b10:
    mov eax, 0x23
    call sub_00412135
    cmp eax, 1
    jle loc_00406b31
    mov eax, 0x23
    call sub_00412135
    mov dword ptr [ebp - 0x8c], eax
    jmp loc_00406b3b
loc_00406b31:
    mov dword ptr [ebp - 0x8c], 1
loc_00406b3b:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x8c]
    push edx
    mov edx, offset d_00458ad9
    push edx
    lea edx, [ebp - 0x88]
    push edx
    call sub_004518d0
    add esp, 0xc
loc_00406b63:
    lea ebx, [ebp - 0xc]
    lea edx, [ebp - 0x10]
    lea eax, [ebp - 0x88]
    call sub_00411d17
    call sub_004150f0
    mov dword ptr [ebp - 0x24], eax
    cmp dword ptr [ebp - 0x24], 0
    # je 0x406c05
    .byte 0x0f,0x84
    .long loc_00406c05 - . - 4
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov ecx, dword ptr [ebp - 4]
    imul ecx, dword ptr [d_004648a0]
    add ecx, 0x16
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [d_004648a4]
    lea ebx, [eax + 0x18]
    mov edx, dword ptr [ebp - 0x1c]
    sub edx, 0x14
    mov eax, dword ptr [ebp - 0x20]
    sub eax, 0x16
    call sub_004168b5
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, dword ptr [ebp - 4]
    imul eax, dword ptr [d_004648a0]
    add eax, 0x12
    push eax
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [d_004648a4]
    lea ecx, [eax + 0x14]
    mov ebx, dword ptr [ebp - 0x1c]
    sub ebx, 0x12
    mov edx, dword ptr [ebp - 0x20]
    sub edx, 0x14
    imul eax, dword ptr [d_00464a70], 0x30
    add eax, dword ptr [ebp - 0x24]
    call sub_004152d7
    mov ebx, 0x15d
    mov edx, offset d_00458ae5
    mov eax, dword ptr [ebp - 0x24]
    call sub_0041863d
loc_00406c05:
    mov dword ptr [ebp - 0x14], 0
loc_00406c0c:
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [ebp - 4]
    jl loc_00406c21
    jmp loc_00406dd0
loc_00406c19:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_00406c0c
loc_00406c21:
    mov dword ptr [ebp - 0x18], 0
loc_00406c28:
    mov eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [ebp - 8]
    jl loc_00406c3d
    jmp loc_00406dcb
loc_00406c35:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    jmp loc_00406c28
loc_00406c3d:
    mov eax, dword ptr [ebp - 0x18]
    imul eax, dword ptr [d_004648a4]
    mov edx, dword ptr [ebp - 0x20]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov eax, dword ptr [ebp - 0x14]
    imul eax, dword ptr [d_004648a0]
    mov edx, dword ptr [ebp - 0x1c]
    add edx, eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 0x98], 0
    test dword ptr [ebp - 0x18], 1
    je loc_00406c7d
    test dword ptr [ebp - 0x14], 1
    jne loc_00406c7f
loc_00406c7d:
    jmp loc_00406c8b
loc_00406c7f:
    mov dword ptr [ebp - 0x98], offset d_00458aef
    jmp loc_00406cb8
loc_00406c8b:
    cmp dword ptr [ebp - 0x18], 1
    jg loc_00406c97
    cmp dword ptr [ebp - 0x14], 1
    jle loc_00406cb8
loc_00406c97:
    call sub_0045190a
    mov edx, eax
    mov ebx, 5
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    je loc_00406cb8
    mov dword ptr [ebp - 0x98], offset d_00458af5
loc_00406cb8:
    cmp dword ptr [ebp - 0x98], 0
    je loc_00406dc6
    cmp dword ptr [d_0045e0b8], 0
    jl loc_00406cdb
    mov eax, dword ptr [d_0045e0b8]
    mov dword ptr [ebp - 0x9c], eax
    jmp loc_00406d1e
loc_00406cdb:
    mov eax, 0x23
    call sub_00412135
    cmp eax, 1
    jle loc_00406cfc
    mov eax, 0x23
    call sub_00412135
    mov dword ptr [ebp - 0xa0], eax
    jmp loc_00406d06
loc_00406cfc:
    mov dword ptr [ebp - 0xa0], 1
loc_00406d06:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0xa0]
    mov dword ptr [ebp - 0x9c], edx
loc_00406d1e:
    mov eax, dword ptr [ebp - 0x98]
    push eax
    mov eax, dword ptr [ebp - 0x9c]
    push eax
    mov eax, offset d_00458afb
    push eax
    lea eax, [ebp - 0x118]
    push eax
    call sub_004518d0
    add esp, 0x10
    lea eax, [ebp - 0x118]
    call sub_0041d957
    mov dword ptr [ebp - 0x94], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0x94]
    call sub_0041daa7
    mov dword ptr [ebp - 0x90], eax
    lea eax, [ebp - 0xa8]
    push eax
    lea ecx, [ebp - 0xac]
    lea ebx, [ebp - 0xb0]
    lea edx, [ebp - 0xb4]
    mov eax, dword ptr [ebp - 0x90]
    call sub_0041c5e0
    mov dword ptr [ebp - 0xa4], eax
    push dword ptr [d_004648a4]
    push dword ptr [d_004648a0]
    mov ecx, dword ptr [d_004648a4]
    mov ebx, dword ptr [ebp - 0x14]
    imul ebx, dword ptr [d_004648a0]
    add ebx, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x18]
    imul edx, dword ptr [d_004648a4]
    add edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0xa4]
    call sub_0041532b
loc_00406dc6:
    jmp loc_00406c35
loc_00406dcb:
    jmp loc_00406c19
loc_00406dd0:
    call sub_00415189
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00406dde:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x94
    mov dword ptr [ebp - 0x10], 2
    cmp dword ptr [d_0046489c], 0
    jne loc_004074d3
    call sub_004148e5
    call sub_00415ca4
    call sub_00415c1f
    mov eax, dword ptr [d_00464998]
    mov dword ptr [d_0045e0b8], eax
    mov eax, dword ptr [d_00464a7c]
    mov dword ptr [d_0045e0b4], eax
    call sub_0040c06a
    cmp eax, 2
    jne loc_00406e46
    mov eax, dword ptr [d_0045e0b4]
    call sub_0040fad5
    mov eax, dword ptr [d_0045e0b8]
    call sub_0040fa66
    call bm_pump
loc_00406e46:
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 0x14], 0
    mov dword ptr [ebp - 0x18], 0
    mov dword ptr [ebp - 0xc], 1
    call sub_0041043c
loc_00406e68:
    call sub_00415ca4
    call bm_pump
    call sub_00429790
    cmp dword ptr [d_0045e0b8], 0
    jl loc_00406e9d
    push dword ptr [d_0045e0b8]
    mov eax, offset d_00458b06
    push eax
    lea eax, [ebp - 0x94]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_00406ead
loc_00406e9d:
    mov edx, offset d_00458b09
    lea eax, [ebp - 0x94]
    call sub_0045189e
loc_00406ead:
    mov eax, dword ptr [d_0045e0b8]
    add eax, 0x96
    call sub_004124a4
    push eax
    mov eax, 0xd2
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x80]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2e1
    call sub_00412135
    mov eax, 0x2e0
    call sub_00412135
    push eax
    mov eax, 0x2df
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2e2
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x80]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, dword ptr [d_0046497c]
    add eax, 0xd0
    call sub_004124a4
    push eax
    push dword ptr [d_0045e0b4]
    mov eax, 0xd3
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x80]
    push eax
    call sub_004518d0
    add esp, 0x10
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2e0
    call sub_00412135
    mov edx, eax
    mov eax, 0x2e1
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2df
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2e2
    call sub_00412135
    lea edx, [ebp - 0x80]
    mov esi, dword ptr [d_00464ae4]
    mov ebx, eax
    mov eax, esi
    call sub_0041696c
    call sub_0040c06a
    cmp eax, 1
    je loc_00406fd7
    mov eax, 0x2e1
    call sub_00412135
    mov edx, dword ptr [ebp - 0x18]
    imul edx, eax
    mov eax, 0x2e0
    call sub_00412135
    add eax, 0x10
    add edx, eax
    mov eax, 0x2df
    call sub_00412135
    sub eax, 0x14
    call sub_00413bd6
loc_00406fd7:
    cmp dword ptr [ebp - 0xc], 0
    je loc_00406fe9
    call sub_00406aa3
    mov dword ptr [ebp - 0xc], 0
loc_00406fe9:
    call sub_0040c06a
    cmp eax, 1
    je loc_00406ff8
    call sub_00413fb9
loc_00406ff8:
    call sub_00415c1f
    call bm_pump
    call sub_0040c06a
    cmp eax, 1
    jne loc_00407030
    call sub_0040f386
    test eax, eax
    jne loc_00407030
    mov dword ptr [ebp - 0x14], 1
    call sub_0042a015
    mov dword ptr [d_00464a68], 2
    jmp loc_004074c9
loc_00407030:
    call sub_0040c06a
    cmp eax, 1
    jne loc_0040707e
    call sub_0040fb22
    cmp eax, dword ptr [d_0045e0b4]
    je loc_00407059
    call sub_0040fb22
    mov dword ptr [d_0045e0b4], eax
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
loc_00407059:
    call sub_0040fab3
    cmp eax, dword ptr [d_0045e0b8]
    je loc_0040707e
    call sub_0040fab3
    mov dword ptr [d_0045e0b8], eax
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
loc_0040707e:
    call sub_004102b7
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], -1
    je loc_00407092
    cmp dword ptr [ebp - 0x1c], -2
    jne loc_00407094
loc_00407092:
    jmp loc_0040709e
loc_00407094:
    mov eax, 0x14
    call sub_00427961
loc_0040709e:
    cmp dword ptr [ebp - 0x1c], 0x148
    jb loc_00407135
    cmp dword ptr [ebp - 0x1c], 0x148
    jbe loc_00407196
    cmp dword ptr [ebp - 0x1c], 0x150
    jb loc_00407108
    cmp dword ptr [ebp - 0x1c], 0x150
    jbe loc_004071c7
    cmp dword ptr [ebp - 0x1c], 0x174
    jb loc_004070f6
    cmp dword ptr [ebp - 0x1c], 0x174
    jbe loc_004071fa
    cmp dword ptr [ebp - 0x1c], 0x386
    je loc_00407424
    jmp loc_004074b9
loc_004070f6:
    cmp dword ptr [ebp - 0x1c], 0x173
    je loc_0040724f
    jmp loc_004074b9
loc_00407108:
    cmp dword ptr [ebp - 0x1c], 0x14b
    jb loc_00407130
    cmp dword ptr [ebp - 0x1c], 0x14b
    jbe loc_00407346
    cmp dword ptr [ebp - 0x1c], 0x14d
    je loc_004072a4
    jmp loc_004074b9
loc_00407130:
    jmp loc_004074b9
loc_00407135:
    cmp dword ptr [ebp - 0x1c], 0x20
    jb loc_00407172
    cmp dword ptr [ebp - 0x1c], 0x20
    jbe loc_004073e5
    cmp dword ptr [ebp - 0x1c], 0x120
    jb loc_0040716d
    cmp dword ptr [ebp - 0x1c], 0x120
    jbe loc_0040749e
    cmp dword ptr [ebp - 0x1c], 0x13b
    je loc_00407481
    jmp loc_004074b9
loc_0040716d:
    jmp loc_004074b9
loc_00407172:
    cmp dword ptr [ebp - 0x1c], 0xd
    jb loc_00407191
    cmp dword ptr [ebp - 0x1c], 0xd
    jbe loc_004073e5
    cmp dword ptr [ebp - 0x1c], 0x1b
    je loc_00407464
    jmp loc_004074b9
loc_00407191:
    jmp loc_004074b9
loc_00407196:
    call sub_0040c06a
    cmp eax, 1
    jne loc_004071af
    mov eax, 0x28
    call sub_00427961
    jmp loc_004074b9
loc_004071af:
    mov eax, dword ptr [ebp - 0x18]
    dec dword ptr [ebp - 0x18]
    cmp dword ptr [ebp - 0x18], 0
    jge loc_004071c2
    mov eax, dword ptr [ebp - 0x10]
    dec eax
    mov dword ptr [ebp - 0x18], eax
loc_004071c2:
    jmp loc_004074b9
loc_004071c7:
    call sub_0040c06a
    cmp eax, 1
    jne loc_004071e0
    mov eax, 0x28
    call sub_00427961
    jmp loc_004074b9
loc_004071e0:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [ebp - 0x10]
    jl loc_004071f5
    mov dword ptr [ebp - 0x18], 0
loc_004071f5:
    jmp loc_004074b9
loc_004071fa:
    call sub_0040c06a
    cmp eax, 1
    jne loc_00407213
    mov eax, 0x28
    call sub_00427961
    jmp loc_004074b9
loc_00407213:
    cmp dword ptr [ebp - 0x18], 1
    jne loc_0040724a
    add dword ptr [d_0045e0b4], 5
    cmp dword ptr [d_0045e0b4], 0x64
    jle loc_00407233
    mov dword ptr [d_0045e0b4], 0x64
loc_00407233:
    mov eax, dword ptr [d_0045e0b4]
    call sub_0040fad5
    call bm_pump
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
loc_0040724a:
    jmp loc_004074b9
loc_0040724f:
    call sub_0040c06a
    cmp eax, 1
    jne loc_00407268
    mov eax, 0x28
    call sub_00427961
    jmp loc_004074b9
loc_00407268:
    cmp dword ptr [ebp - 0x18], 1
    jne loc_0040729f
    sub dword ptr [d_0045e0b4], 5
    cmp dword ptr [d_0045e0b4], 1
    jge loc_00407288
    mov dword ptr [d_0045e0b4], 1
loc_00407288:
    mov eax, dword ptr [d_0045e0b4]
    call sub_0040fad5
    call bm_pump
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
loc_0040729f:
    jmp loc_004074b9
loc_004072a4:
    call sub_0040c06a
    cmp eax, 1
    jne loc_004072bd
    mov eax, 0x28
    call sub_00427961
    jmp loc_004074b9
loc_004072bd:
    cmp dword ptr [ebp - 0x18], 0
    jbe loc_004072d0
    cmp dword ptr [ebp - 0x18], 1
    je loc_00407311
    # jmp 0x407341
    .byte 0xe9
    .long loc_00407341 - . - 4
    jmp loc_00407341
loc_004072d0:
    inc dword ptr [d_0045e0b8]
    mov eax, 0x23
    call sub_00412135
    cmp eax, dword ptr [d_0045e0b8]
    jg loc_004072f2
    mov dword ptr [d_0045e0b8], 0xffffffff
loc_004072f2:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [d_0045e0b8]
    call sub_0040fa66
    call bm_pump
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
    jmp loc_00407341
loc_00407311:
    inc dword ptr [d_0045e0b4]
    cmp dword ptr [d_0045e0b4], 0x64
    jle loc_0040732a
    mov dword ptr [d_0045e0b4], 0x64
loc_0040732a:
    mov eax, dword ptr [d_0045e0b4]
    call sub_0040fad5
    call bm_pump
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
loc_00407341:
    jmp loc_004074b9
loc_00407346:
    call sub_0040c06a
    cmp eax, 1
    jne loc_0040735f
    mov eax, 0x28
    call sub_00427961
    jmp loc_004074b9
loc_0040735f:
    cmp dword ptr [ebp - 0x18], 0
    jbe loc_00407372
    cmp dword ptr [ebp - 0x18], 1
    je loc_004073b0
    # jmp 0x4073e0
    .byte 0xe9
    .long loc_004073e0 - . - 4
    jmp loc_004073e0
loc_00407372:
    dec dword ptr [d_0045e0b8]
    cmp dword ptr [d_0045e0b8], -1
    jge loc_00407391
    mov eax, 0x23
    call sub_00412135
    dec eax
    mov dword ptr [d_0045e0b8], eax
loc_00407391:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [d_0045e0b8]
    call sub_0040fa66
    call bm_pump
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
    jmp loc_004073e0
loc_004073b0:
    dec dword ptr [d_0045e0b4]
    cmp dword ptr [d_0045e0b4], 1
    jge loc_004073c9
    mov dword ptr [d_0045e0b4], 1
loc_004073c9:
    mov eax, dword ptr [d_0045e0b4]
    call sub_0040fad5
    call bm_pump
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
loc_004073e0:
    jmp loc_004074b9
loc_004073e5:
    call sub_0040c06a
    cmp eax, 1
    jne loc_004073fb
    mov eax, 0x28
    call sub_00427961
    jmp loc_00407462
loc_004073fb:
    call sub_0043acf8
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 8]
    jae loc_00407411
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [ebp - 8], eax
loc_00407411:
    call sub_004148ac
    imul eax, eax, 0x3e8
    add eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 4]
    jae loc_00407462
loc_00407424:
    mov eax, 0xa
    call sub_00427961
    mov eax, dword ptr [d_0045e0b8]
    mov dword ptr [d_00464998], eax
    mov eax, dword ptr [d_0045e0b4]
    mov dword ptr [d_00464a7c], eax
    mov dword ptr [ebp - 0x14], 1
    call sub_0040c06a
    cmp eax, 2
    jne loc_00407462
    mov eax, 0x386
    call sub_0040f064
    call bm_pump
loc_00407462:
    jmp loc_004074b9
loc_00407464:
    mov dword ptr [d_0046492c], 0xffffffff
    mov dword ptr [d_00464a68], 2
    mov dword ptr [ebp - 0x14], 1
    jmp loc_004074b9
loc_00407481:
    call sub_0040c06a
    cmp eax, 1
    jne loc_00407497
    mov eax, 0x28
    call sub_00427961
    jmp loc_004074b9
loc_00407497:
    call sub_0041431c
    jmp loc_004074b9
loc_0040749e:
    call sub_0040c06a
    cmp eax, 1
    jne loc_004074b4
    mov eax, 0x28
    call sub_00427961
    jmp loc_004074b9
loc_004074b4:
    call sub_00413d45
loc_004074b9:
    cmp dword ptr [d_00464a68], 0
    je loc_004074c9
    mov dword ptr [ebp - 0x14], 1
loc_004074c9:
    cmp dword ptr [ebp - 0x14], 0
    je loc_00406e68
loc_004074d3:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004074dc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x68
    .byte 0x81,0xec,0x68,0x00,0x00,0x00
    call sub_0040fe34
    lea ecx, [ebp - 0x68]
    mov edx, eax
    mov eax, ecx
    call sub_0045189e
    call sub_00431178
    push 0xb4
    mov ecx, 0x19
    mov eax, 0x122
    call sub_004124a4
    mov ebx, eax
    mov edx, 0x1e
    lea eax, [ebp - 0x68]
    call sub_0042e938
    mov dword ptr [ebp - 4], eax
    call sub_00431360
    cmp dword ptr [ebp - 4], 0
    jne loc_00407539
    lea eax, [ebp - 0x68]
    call sub_0040fe55
loc_00407539:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00407542:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x140
    call sub_004124a4
    mov edx, eax
    mov eax, 0x5e
    call sub_004124a4
    call sub_00414340
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00407582:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x74
    .byte 0x81,0xec,0x74,0x00,0x00,0x00
    lea edx, [ebp - 0xc]
    mov eax, offset d_00458b0b
    call sub_00411d17
    call sub_0041404b
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 0
    je loc_004076ca
    mov dword ptr [ebp - 8], 0
loc_004075b6:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0xc]
    jl loc_004075c8
    jmp loc_0040762f
loc_004075c0:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_004075b6
loc_004075c8:
    mov ebx, dword ptr [ebp - 8]
    shl ebx, 2
    add ebx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebx]
    call sub_00404be9
    push eax
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    add eax, dword ptr [ebp - 0x10]
    push dword ptr [eax]
    mov eax, offset d_00458b11
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0x10
    mov ebx, 0x2b2
    mov edx, offset d_00458ae5
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    add eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax]
    call sub_0041863d
    mov ebx, 0x2b3
    mov edx, offset d_00458ae5
    lea eax, [ebp - 0x74]
    call sub_004186ac
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    add edx, dword ptr [ebp - 0x10]
    mov dword ptr [edx], eax
    jmp loc_004075c0
loc_0040762f:
    call sub_00431178
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    or eax, 0x10000
    push eax
    push 0x64
    push 0x64
    xor ecx, ecx
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, 0x2d1
    call sub_004124a4
    call sub_0041485a
    mov dword ptr [ebp - 8], eax
    call sub_00431360
    cmp dword ptr [ebp - 8], -1
    je loc_004076bd
    cmp dword ptr [ebp - 8], 0
    jl loc_00407678
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0xc]
    jl loc_0040767a
loc_00407678:
    jmp loc_004076bd
loc_0040767a:
    mov edx, 0x3a
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    add eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax]
    call sub_0045167a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_0040769e
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
loc_0040769e:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    add edx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [edx]
    mov eax, offset d_004648c4
    call sub_0045189e
    mov eax, offset d_004648c4
    call sub_00412a3b
loc_004076bd:
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00414173
    jmp loc_004076f5
loc_004076ca:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2d0
    call sub_004124a4
    mov edx, eax
    mov eax, 0x5f
    call sub_004124a4
    call sub_00414340
loc_004076f5:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004076fe:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jle loc_00407808
    cmp dword ptr [d_00464948], 0x3e9
    jne loc_00407734
    mov dword ptr [d_00464948], 0x3c
    jmp loc_004078f5
loc_00407734:
    cmp dword ptr [d_00464948], 0x258
    jne loc_0040774f
    mov dword ptr [d_00464948], 0x3e9
    jmp loc_004078f5
loc_0040774f:
    cmp dword ptr [d_00464948], 0x12c
    jne loc_0040776a
    mov dword ptr [d_00464948], 0x258
    jmp loc_004078f5
loc_0040776a:
    cmp dword ptr [d_00464948], 0xf0
    jne loc_00407785
    mov dword ptr [d_00464948], 0x12c
    jmp loc_004078f5
loc_00407785:
    cmp dword ptr [d_00464948], 0xb4
    jne loc_004077a0
    mov dword ptr [d_00464948], 0xf0
    jmp loc_004078f5
loc_004077a0:
    cmp dword ptr [d_00464948], 0x96
    jne loc_004077bb
    mov dword ptr [d_00464948], 0xb4
    jmp loc_004078f5
loc_004077bb:
    cmp dword ptr [d_00464948], 0x78
    jne loc_004077d3
    mov dword ptr [d_00464948], 0x96
    jmp loc_004078f5
loc_004077d3:
    cmp dword ptr [d_00464948], 0x5a
    jne loc_004077eb
    mov dword ptr [d_00464948], 0x78
    jmp loc_004078f5
loc_004077eb:
    cmp dword ptr [d_00464948], 0x3c
    jne loc_00407803
    mov dword ptr [d_00464948], 0x5a
    jmp loc_004078f5
loc_00407803:
    jmp loc_004078e6
loc_00407808:
    cmp dword ptr [d_00464948], 0x3e9
    jne loc_00407823
    mov dword ptr [d_00464948], 0x258
    jmp loc_004078f5
loc_00407823:
    cmp dword ptr [d_00464948], 0x258
    jne loc_0040783e
    mov dword ptr [d_00464948], 0x12c
    jmp loc_004078f5
loc_0040783e:
    cmp dword ptr [d_00464948], 0x12c
    jne loc_00407859
    mov dword ptr [d_00464948], 0xf0
    jmp loc_004078f5
loc_00407859:
    cmp dword ptr [d_00464948], 0xf0
    jne loc_00407874
    mov dword ptr [d_00464948], 0xb4
    # jmp 0x4078f5
    .byte 0xe9
    .long loc_004078f5 - . - 4
loc_00407874:
    cmp dword ptr [d_00464948], 0xb4
    jne loc_0040788f
    mov dword ptr [d_00464948], 0x96
    # jmp 0x4078f5
    .byte 0xe9
    .long loc_004078f5 - . - 4
loc_0040788f:
    cmp dword ptr [d_00464948], 0x96
    jne loc_004078a7
    mov dword ptr [d_00464948], 0x78
    jmp loc_004078f5
loc_004078a7:
    cmp dword ptr [d_00464948], 0x78
    jne loc_004078bc
    mov dword ptr [d_00464948], 0x5a
    jmp loc_004078f5
loc_004078bc:
    cmp dword ptr [d_00464948], 0x5a
    jne loc_004078d1
    mov dword ptr [d_00464948], 0x3c
    jmp loc_004078f5
loc_004078d1:
    cmp dword ptr [d_00464948], 0x3c
    jne loc_004078e6
    mov dword ptr [d_00464948], 0x3e9
    jmp loc_004078f5
loc_004078e6:
    mov eax, 0x64
    call sub_00412135
    mov dword ptr [d_00464948], eax
loc_004078f5:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004078fe:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    cmp dword ptr [d_00464948], 0x3e9
    jne loc_00407927
    mov eax, 0x118
    call sub_004124a4
    mov dword ptr [ebp - 4], eax
    jmp loc_0040797f
loc_00407927:
    mov ebx, 0x3c
    mov eax, dword ptr [d_00464948]
    mov edx, dword ptr [d_00464948]
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 8], edx
    mov ebx, 0x3c
    mov eax, dword ptr [d_00464948]
    mov edx, dword ptr [d_00464948]
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, 0x119
    call sub_004124a4
    push eax
    mov eax, offset d_0045e0bc
    push eax
    call sub_004518d0
    add esp, 0x10
    mov dword ptr [ebp - 4], offset d_0045e0bc
loc_0040797f:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040798b:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x7c
    .byte 0x81,0xec,0x7c,0x00,0x00,0x00
    push dword ptr [d_00464970]
    mov eax, offset d_00458b06
    push eax
    lea eax, [ebp - 0x68]
    push eax
    call sub_004518d0
    add esp, 0xc
    push 0xb4
    mov ecx, 0x19
    mov eax, 0x285
    call sub_004124a4
    mov ebx, eax
    mov edx, 0x14
    lea eax, [ebp - 0x68]
    call sub_0042e938
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], -1
    je loc_004079ea
    lea eax, [ebp - 0x68]
    call sub_004516c1
    mov dword ptr [d_00464970], eax
loc_004079ea:
    push dword ptr [d_004648b8]
    mov eax, offset d_00458b06
    push eax
    lea eax, [ebp - 0x68]
    push eax
    call sub_004518d0
    add esp, 0xc
    push 0xb4
    mov ecx, 0x19
    mov eax, 0x286
    call sub_004124a4
    mov ebx, eax
    mov edx, 0x14
    lea eax, [ebp - 0x68]
    call sub_0042e938
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], -1
    je loc_00407a3b
    lea eax, [ebp - 0x68]
    call sub_004516c1
    mov dword ptr [d_004648b8], eax
loc_00407a3b:
    lea edi, [ebp - 0x7c]
    mov esi, offset ptr_00405dcf
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x64
    push 0x64
    xor ecx, ecx
    mov ebx, 5
    lea edx, [ebp - 0x7c]
    mov eax, 0x287
    call sub_004124a4
    call sub_0041485a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jl loc_00407a8a
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + ebp - 0x7c]
    call sub_004516c1
    mov dword ptr [d_0046482c], eax
loc_00407a8a:
    mov edx, offset d_00464830
    lea eax, [ebp - 0x68]
    call sub_0045189e
    push 0xb4
    mov ecx, 0x19
    mov eax, 0x288
    call sub_004124a4
    mov ebx, eax
    mov edx, 0x1e
    lea eax, [ebp - 0x68]
    call sub_0042e938
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], -1
    je loc_00407ad0
    lea edx, [ebp - 0x68]
    mov eax, offset d_00464830
    call sub_0045189e
loc_00407ad0:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00407ad9:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x7c
    .byte 0x81,0xec,0x7c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0x18]
    push eax
    mov eax, 0x451
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x7c]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x7c]
    call sub_00412e0c
    xor eax, eax
    call sub_00412e33
    mov dword ptr [ebp - 0x10], 0
    mov eax, 0x1f4
    call sub_00413cb0
    call sub_0041043c
loc_00407b31:
    call sub_004102b7
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0x1b
    jne loc_00407b46
    mov dword ptr [ebp - 0x10], 1
loc_00407b46:
    mov dword ptr [ebp - 0xc], 0
loc_00407b4d:
    cmp dword ptr [ebp - 0xc], 0x100
    jl loc_00407b60
    jmp loc_00407b7b
loc_00407b58:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_00407b4d
loc_00407b60:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_00407b79
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 0x10], 1
loc_00407b79:
    jmp loc_00407b58
loc_00407b7b:
    cmp dword ptr [ebp - 0x10], 0
    je loc_00407b31
    mov eax, 0x64
    call sub_00412e33
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00407b9d:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xb8
    mov dword ptr [ebp - 0x10], 0
    call sub_00431178
    mov dword ptr [ebp - 0x14], 0
    call sub_0041043c
loc_00407bc3:
    call sub_00415ca4
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d37a]
    push eax
    push 0x14
    mov ecx, 0x14
    mov ebx, 0x190
    mov eax, 0x44c
    call sub_004124a4
    mov edx, eax
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov dword ptr [ebp - 0x20], 0
loc_00407c01:
    cmp dword ptr [ebp - 0x20], 2
    jl loc_00407c14
    jmp loc_00407d4c
loc_00407c0c:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_00407c01
loc_00407c14:
    mov dword ptr [ebp - 0x1c], 0
loc_00407c1b:
    cmp dword ptr [ebp - 0x1c], 6
    jl loc_00407c2e
    jmp loc_00407d47
loc_00407c26:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_00407c1b
loc_00407c2e:
    imul eax, dword ptr [ebp - 0x20], 0x140
    add eax, 0x64
    mov dword ptr [ebp - 0xc], eax
    imul eax, dword ptr [ebp - 0x1c], 0x3c
    add eax, 0x3c
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 0x10], 0
    jne loc_00407cbb
    mov eax, dword ptr [ebp - 0x1c]
    add eax, 0x460
    call sub_004124a4
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, 0x456
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xb4]
    push eax
    call sub_004518d0
    add esp, 0x10
    push 0
    lea eax, [ebp - 0xb4]
    push eax
    push -1
    imul eax, dword ptr [ebp - 0x20], 0x3e8
    add eax, 0x3e8
    add eax, dword ptr [ebp - 0x1c]
    push eax
    push -1
    mov ecx, 0xffffffff
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [d_00464ae4]
    call sub_00432298
    mov ebx, eax
    imul edx, dword ptr [ebp - 0x20], 0x18
    mov eax, dword ptr [ebp - 0x1c]
    shl eax, 2
    add eax, edx
    mov dword ptr [eax + ebp - 0x50], ebx
loc_00407cbb:
    imul edx, dword ptr [ebp - 0x20], 0x28
    mov eax, dword ptr [ebp - 0x1c]
    shl eax, 2
    add eax, edx
    mov eax, dword ptr [eax + d_004645bc]
    and eax, 0x7f
    mov dword ptr [ebp - 0xb8], eax
    cmp dword ptr [ebp - 0xb8], 0
    jl loc_00407ce8
    cmp dword ptr [ebp - 0xb8], 0x59
    jb loc_00407cea
loc_00407ce8:
    jmp loc_00407d42
loc_00407cea:
    mov eax, dword ptr [ebp - 0xb8]
    shl eax, 2
    push dword ptr [eax + d_0045b914]
    mov eax, 0x474
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xb4]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, dword ptr [ebp - 8]
    add eax, 0x16
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, 0xc8
    lea edx, [ebp - 0xb4]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
loc_00407d42:
    jmp loc_00407c26
loc_00407d47:
    jmp loc_00407c0c
loc_00407d4c:
    cmp dword ptr [ebp - 0x10], 0
    jne loc_00407d84
    push 0
    mov eax, 0x46a
    call sub_004124a4
    push eax
    push -1
    push 0x3e7
    push -1
    mov ecx, 0xffffffff
    mov ebx, 0x1ae
    mov edx, 0x28
    mov eax, dword ptr [d_00464ae4]
    call sub_00432298
    mov dword ptr [ebp - 0x18], eax
loc_00407d84:
    mov dword ptr [ebp - 0x10], 1
    call sub_00415c1f
    call sub_004102b7
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0x3e8
    jl loc_00407daa
    cmp dword ptr [ebp - 4], 0xbb7
    jl loc_00407daf
loc_00407daa:
    jmp loc_00407e59
loc_00407daf:
    mov edx, dword ptr [ebp - 4]
    sub edx, 0x3e8
    mov ebx, 0x3e8
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x20], eax
    imul edx, dword ptr [ebp - 0x20], 0x3e8
    mov ebx, dword ptr [ebp - 4]
    sub ebx, 0x3e8
    sub ebx, edx
    mov dword ptr [ebp - 0x1c], ebx
    mov edx, dword ptr [ebp - 0x1c]
    push edx
    mov edx, dword ptr [ebp - 0x20]
    push edx
    mov edx, offset d_00458b18
    push edx
    call sub_0042c0c8
    add esp, 0xc
    cmp dword ptr [ebp - 0x20], 0
    jl loc_00407dfe
    cmp dword ptr [ebp - 0x20], 1
    jle loc_00407e00
loc_00407dfe:
    jmp loc_00407e59
loc_00407e00:
    cmp dword ptr [ebp - 0x1c], 0
    jl loc_00407e0c
    cmp dword ptr [ebp - 0x1c], 6
    jl loc_00407e0e
loc_00407e0c:
    jmp loc_00407e59
loc_00407e0e:
    mov eax, dword ptr [ebp - 0x1c]
    add eax, 0x460
    call sub_004124a4
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, 0x456
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xb4]
    push eax
    call sub_004518d0
    add esp, 0x10
    lea eax, [ebp - 0xb4]
    call sub_00407ad9
    mov edx, eax
    imul ebx, dword ptr [ebp - 0x20], 0x28
    mov eax, dword ptr [ebp - 0x1c]
    shl eax, 2
    add eax, ebx
    mov dword ptr [eax + d_004645bc], edx
loc_00407e59:
    cmp dword ptr [ebp - 4], 0x20
    jb loc_00407e8c
    cmp dword ptr [ebp - 4], 0x20
    # jbe 0x407ed4
    .byte 0x0f,0x86
    .long loc_00407ed4 - . - 4
    cmp dword ptr [ebp - 4], 0x13b
    jb loc_00407e8a
    cmp dword ptr [ebp - 4], 0x13b
    # jbe 0x407edd
    .byte 0x0f,0x86
    .long loc_00407edd - . - 4
    cmp dword ptr [ebp - 4], 0x3e7
    je loc_00407ea2
    jmp loc_00407ee2
loc_00407e8a:
    jmp loc_00407ee2
loc_00407e8c:
    cmp dword ptr [ebp - 4], 0xd
    jb loc_00407ea0
    cmp dword ptr [ebp - 4], 0xd
    jbe loc_00407ed4
    cmp dword ptr [ebp - 4], 0x1b
    je loc_00407ed4
    jmp loc_00407ee2
loc_00407ea0:
    jmp loc_00407ee2
loc_00407ea2:
    call sub_0040614a
    xor ecx, ecx
    mov cl, byte ptr [d_00495390]
    xor ebx, ebx
    mov bl, byte ptr [d_0049d38f]
    mov eax, 0x46b
    call sub_004124a4
    mov edx, eax
    mov eax, 0x5f
    call sub_004124a4
    call sub_00414340
    jmp loc_00407ee2
loc_00407ed4:
    mov dword ptr [ebp - 0x14], 1
    jmp loc_00407ee2
loc_00407edd:
    call sub_0041431c
loc_00407ee2:
    cmp dword ptr [ebp - 0x14], 0
    je loc_00407bc3
    cmp dword ptr [ebp - 0x10], 0
    je loc_00407f41
    mov dword ptr [ebp - 0x20], 0
loc_00407ef9:
    cmp dword ptr [ebp - 0x20], 2
    jl loc_00407f09
    jmp loc_00407f39
loc_00407f01:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_00407ef9
loc_00407f09:
    mov dword ptr [ebp - 0x1c], 0
loc_00407f10:
    cmp dword ptr [ebp - 0x1c], 6
    jl loc_00407f20
    jmp loc_00407f37
loc_00407f18:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_00407f10
loc_00407f20:
    imul edx, dword ptr [ebp - 0x20], 0x18
    mov eax, dword ptr [ebp - 0x1c]
    shl eax, 2
    add eax, edx
    mov eax, dword ptr [eax + ebp - 0x50]
    call sub_0043322c
    jmp loc_00407f18
loc_00407f37:
    jmp loc_00407f01
loc_00407f39:
    mov eax, dword ptr [ebp - 0x18]
    call sub_0043322c
loc_00407f41:
    call sub_00431360
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00407f4f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 4], 0
loc_00407f64:
    cmp dword ptr [ebp - 4], 5
    jl loc_00407f74
    jmp loc_00407f8d
loc_00407f6c:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00407f64
loc_00407f74:
    mov eax, dword ptr [ebp - 4]
    add eax, 0x276
    call sub_004124a4
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov dword ptr [edx + ebp - 0x18], eax
    jmp loc_00407f6c
loc_00407f8d:
    mov eax, 0x275
    call sub_004124a4
    mov dword ptr [ebp - 0x18], eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x96
    push 0x96
    xor ecx, ecx
    mov eax, 0x456
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x18]
    mov eax, 0x26c
    call sub_004124a4
    call sub_0041485a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jl loc_00407fdb
    cmp dword ptr [ebp - 4], 3
    jle loc_00407fdd
loc_00407fdb:
    jmp loc_00407fe5
loc_00407fdd:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00464828], eax
loc_00407fe5:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00407fee:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    call sub_00431178
    cmp dword ptr [d_00464824], 0
    je loc_0040803a
    xor ecx, ecx
    mov cl, byte ptr [d_0049d38f]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x529
    call sub_004124a4
    mov edx, eax
    mov eax, 0x528
    call sub_004124a4
    call sub_0041456c
    mov dword ptr [ebp - 4], eax
    jmp loc_00408068
loc_0040803a:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d38f]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x52b
    call sub_004124a4
    mov edx, eax
    mov eax, 0x52a
    call sub_004124a4
    call sub_0041456c
    mov dword ptr [ebp - 4], eax
loc_00408068:
    call sub_00431360
    cmp dword ptr [ebp - 4], 1
    jne loc_004080d3
    call sub_00431178
    xor ecx, ecx
    mov cl, byte ptr [d_0049d38f]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x52e
    call sub_004124a4
    mov edx, eax
    mov eax, 0x52d
    call sub_004124a4
    call sub_00414340
    call sub_00431360
    cmp dword ptr [d_00464824], 0
    jne loc_004080ba
    mov dword ptr [ebp - 8], 1
    jmp loc_004080c1
loc_004080ba:
    mov dword ptr [ebp - 8], 0
loc_004080c1:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_00464824], eax
    mov eax, 0x14
    call sub_004128c9
loc_004080d3:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004080dc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xc0
    # --- patched: original code of 0x004080ea..0x004080f1 replaced (see hooks.s)
    mov dword ptr [ebp - 4], 0x10
    call sub_004148e5
    call sub_00415ca4
    call sub_00415c1f
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 0xc], 0
    call sub_0041043c
loc_00408113:
    call sub_00415ca4
    call sub_00429790
    mov eax, dword ptr [d_00464964]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, 0xfa
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    mov eax, 0x2ea
    call sub_00412135
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, dword ptr [d_00464ae8]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, 0xfb
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2ea
    call sub_00412135
    mov edx, eax
    mov eax, 0x2eb
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    lea edx, [ebp - 0x74]
    mov esi, dword ptr [d_00464ae4]
    mov ebx, eax
    mov eax, esi
    call sub_0041696c
    call sub_0040fe34
    push eax
    mov eax, 0xfc
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    add eax, eax
    mov edx, eax
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, dword ptr [d_00464930]
    add eax, 0x127
    call sub_004124a4
    push eax
    mov eax, 0xfd
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    lea edx, [eax + eax*2]
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, dword ptr [d_00464940]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, 0xfe
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    shl eax, 2
    mov edx, eax
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    lea edx, [ebp - 0x74]
    mov esi, dword ptr [d_00464ae4]
    mov ebx, eax
    mov eax, esi
    call sub_0041696c
    mov eax, dword ptr [d_0046497c]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, 0xff
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    lea edx, [eax + eax*4]
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, dword ptr [d_004648bc]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, 0x100
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    imul edx, eax, 6
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    lea edx, [ebp - 0x74]
    mov esi, dword ptr [d_00464ae4]
    mov ebx, eax
    mov eax, esi
    call sub_0041696c
    mov eax, dword ptr [d_00464974]
    add eax, 0x13b
    call sub_004124a4
    push eax
    mov eax, 0x101
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    imul edx, eax, 7
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, offset d_004648c4
    push eax
    mov eax, 0x102
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    shl eax, 3
    mov edx, eax
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    call sub_004078fe
    push eax
    mov eax, 0x103
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    lea edx, [eax + eax*8]
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    lea edx, [ebp - 0x74]
    mov esi, dword ptr [d_00464ae4]
    mov ebx, eax
    mov eax, esi
    call sub_0041696c
    mov eax, dword ptr [d_00464968]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, 0x104
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    imul edx, eax, 0xa
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    lea edx, [ebp - 0x74]
    mov esi, dword ptr [d_00464ae4]
    mov ebx, eax
    mov eax, esi
    call sub_0041696c
    mov eax, dword ptr [d_00464990]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, 0x105
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    imul edx, eax, 0xb
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, dword ptr [d_00464928]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, 0x106
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    imul edx, eax, 0xc
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    lea edx, [ebp - 0x74]
    mov esi, dword ptr [d_00464ae4]
    mov ebx, eax
    mov eax, esi
    call sub_0041696c
    mov eax, dword ptr [d_004648c0]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, 0x107
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    imul edx, eax, 0xd
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    # --- patched: original code of 0x00408772..0x004087f0 replaced (see hooks.s)
    .fill 126, 1, 0x90
    mov eax, 0x109
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 8
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    # --- patched: original code of 0x00408821..0x00408824 replaced (see hooks.s)
    imul edx, eax, 0xe
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    # --- patched: original code of 0x00408856..0x004088c1 replaced (see hooks.s)
    .fill 107, 1, 0x90
    cmp dword ptr [d_00464824], 0
    jne loc_004088d3
    mov dword ptr [ebp - 0x78], 1
    jmp loc_004088da
loc_004088d3:
    mov dword ptr [ebp - 0x78], 0
loc_004088da:
    mov eax, dword ptr [ebp - 0x78]
    add eax, 0x19
    call sub_004124a4
    push eax
    mov eax, 0x10b
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2eb
    call sub_00412135
    # --- patched: original code of 0x00408917..0x0040891a replaced (see hooks.s)
    imul edx, eax, 0xf
    mov eax, 0x2ea
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2e9
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2ec
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, 0x2eb
    call sub_00412135
    mov edx, dword ptr [ebp - 0xc]
    imul edx, eax
    mov eax, 0x2ea
    call sub_00412135
    add eax, 0x10
    add edx, eax
    mov eax, 0x2e9
    call sub_00412135
    sub eax, 0x14
    call sub_00413bd6
    call sub_00413fb9
    call sub_00415c1f
    call sub_004102b7
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], -1
    je loc_0040899b
    cmp dword ptr [ebp - 0x10], -2
    jne loc_0040899d
loc_0040899b:
    jmp loc_004089a7
loc_0040899d:
    mov eax, 0x14
    call sub_00427961
loc_004089a7:
    cmp dword ptr [ebp - 0x10], 0x13b
    jb loc_00408a0a
    cmp dword ptr [ebp - 0x10], 0x13b
    jbe loc_00409008
    cmp dword ptr [ebp - 0x10], 0x14b
    jb loc_004089fc
    cmp dword ptr [ebp - 0x10], 0x14b
    jbe loc_00408d7f
    cmp dword ptr [ebp - 0x10], 0x14d
    jb loc_004089f7
    cmp dword ptr [ebp - 0x10], 0x14d
    jbe loc_00408ab7
    cmp dword ptr [ebp - 0x10], 0x150
    je loc_00408a50
    jmp loc_0040900d
loc_004089f7:
    jmp loc_0040900d
loc_004089fc:
    cmp dword ptr [ebp - 0x10], 0x148
    je loc_00408a38
    jmp loc_0040900d
loc_00408a0a:
    cmp dword ptr [ebp - 0x10], 0x1b
    jb loc_00408a29
    cmp dword ptr [ebp - 0x10], 0x1b
    jbe loc_00408fff
    cmp dword ptr [ebp - 0x10], 0x20
    je loc_00408ab7
    jmp loc_0040900d
loc_00408a29:
    cmp dword ptr [ebp - 0x10], 0xd
    je loc_00408ab7
    jmp loc_0040900d
loc_00408a38:
    mov eax, dword ptr [ebp - 0xc]
    dec dword ptr [ebp - 0xc]
    cmp dword ptr [ebp - 0xc], 0
    jge loc_00408a4b
    mov eax, dword ptr [ebp - 4]
    dec eax
    mov dword ptr [ebp - 0xc], eax
loc_00408a4b:
    jmp loc_0040900d
loc_00408a50:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [ebp - 4]
    jl loc_00408a65
    mov dword ptr [ebp - 0xc], 0
loc_00408a65:
    jmp loc_0040900d
    .byte 0x90
ptr_00408a6b:
    .long ptr_00408ace
    .long ptr_00408b11
    .long ptr_00408b37
    .long ptr_00408b41
    .long ptr_00408b69
    .long ptr_00408b98
    .long ptr_00408bda
    .long ptr_00408c13
    .long ptr_00408c3b
    .long ptr_00408c45
    .long ptr_00408c54
    .long ptr_00408c83
    .long ptr_00408cb2
    .long ptr_00408cde
    # --- patched: original code of 0x00408aa3..0x00408ab7 replaced (see hooks.s)
    .long ptr_00408d11
    .long ptr_00408d1f
    .long loc_00408d2b
    .long loc_00408d2b
    .long loc_00408d2b
loc_00408ab7:
    cmp dword ptr [ebp - 0xc], 0x12
    ja loc_00408d2b
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    jmp dword ptr cs:[eax + ptr_00408a6b]
ptr_00408ace:
    cmp dword ptr [d_00464964], 0
    jne loc_00408ae0
    mov dword ptr [ebp - 0x7c], 1
    jmp loc_00408ae7
loc_00408ae0:
    mov dword ptr [ebp - 0x7c], 0
loc_00408ae7:
    mov eax, dword ptr [ebp - 0x7c]
    mov dword ptr [d_00464964], eax
    mov dword ptr [d_0046492c], 0xffffffff
    cmp dword ptr [d_00464964], 0
    je loc_00408b0c
    mov dword ptr [d_0046497c], 0
loc_00408b0c:
    jmp loc_00408d2b
ptr_00408b11:
    cmp dword ptr [d_00464ae8], 0
    jne loc_00408b23
    mov dword ptr [ebp - 0x80], 1
    jmp loc_00408b2a
loc_00408b23:
    mov dword ptr [ebp - 0x80], 0
loc_00408b2a:
    mov eax, dword ptr [ebp - 0x80]
    mov dword ptr [d_00464ae8], eax
    jmp loc_00408d2b
ptr_00408b37:
    call sub_004074dc
    jmp loc_00408d2b
ptr_00408b41:
    inc dword ptr [d_00464930]
    mov eax, 0xbd
    call sub_00412135
    dec eax
    cmp eax, dword ptr [d_00464930]
    jge loc_00408b64
    mov dword ptr [d_00464930], 0
loc_00408b64:
    jmp loc_00408d2b
ptr_00408b69:
    cmp dword ptr [d_00464940], 0
    jne loc_00408b7e
    mov dword ptr [ebp - 0x84], 1
    jmp loc_00408b88
loc_00408b7e:
    mov dword ptr [ebp - 0x84], 0
loc_00408b88:
    mov eax, dword ptr [ebp - 0x84]
    mov dword ptr [d_00464940], eax
    jmp loc_00408d2b
ptr_00408b98:
    cmp dword ptr [d_0046497c], 0
    jne loc_00408bad
    mov dword ptr [ebp - 0x88], 1
    jmp loc_00408bb7
loc_00408bad:
    mov dword ptr [ebp - 0x88], 0
loc_00408bb7:
    mov eax, dword ptr [ebp - 0x88]
    mov dword ptr [d_0046497c], eax
    cmp dword ptr [d_00464964], 0
    je loc_00408bd5
    mov dword ptr [d_0046497c], 0
loc_00408bd5:
    jmp loc_00408d2b
ptr_00408bda:
    cmp dword ptr [d_004648bc], 0
    jne loc_00408bef
    mov dword ptr [ebp - 0x8c], 1
    jmp loc_00408bf9
loc_00408bef:
    mov dword ptr [ebp - 0x8c], 0
loc_00408bf9:
    mov eax, dword ptr [ebp - 0x8c]
    mov dword ptr [d_004648bc], eax
    mov dword ptr [d_0046492c], 0xffffffff
    jmp loc_00408d2b
ptr_00408c13:
    inc dword ptr [d_00464974]
    mov eax, 0x1c
    call sub_00412135
    dec eax
    cmp eax, dword ptr [d_00464974]
    jge loc_00408c36
    mov dword ptr [d_00464974], 0
loc_00408c36:
    jmp loc_00408d2b
ptr_00408c3b:
    call sub_00407582
    jmp loc_00408d2b
ptr_00408c45:
    mov eax, 1
    call sub_004076fe
    jmp loc_00408d2b
ptr_00408c54:
    cmp dword ptr [d_00464968], 0
    jne loc_00408c69
    mov dword ptr [ebp - 0x90], 1
    jmp loc_00408c73
loc_00408c69:
    mov dword ptr [ebp - 0x90], 0
loc_00408c73:
    mov eax, dword ptr [ebp - 0x90]
    mov dword ptr [d_00464968], eax
    jmp loc_00408d2b
ptr_00408c83:
    cmp dword ptr [d_00464990], 0
    jne loc_00408c98
    mov dword ptr [ebp - 0x94], 1
    jmp loc_00408ca2
loc_00408c98:
    mov dword ptr [ebp - 0x94], 0
loc_00408ca2:
    mov eax, dword ptr [ebp - 0x94]
    mov dword ptr [d_00464990], eax
    # jmp 0x408d2b
    .byte 0xe9
    .long loc_00408d2b - . - 4
ptr_00408cb2:
    .byte 0x83,0x3d
    .long d_00464928
    .byte 0x00,0x75,0x0c,0xc7,0x85,0x68,0xff,0xff,0xff,0x01,0x00,0x00,0x00,0xeb
    # or al, bh
    .byte 0x0a,0xc7
    test dword ptr [eax - 1], ebp
    .byte 0xff,0xff,0x00,0x00,0x00,0x00,0x8b,0x85,0x68,0xff,0xff,0xff,0xa3
    .long d_00464928
    .byte 0xeb,0x4d
ptr_00408cde:
    .byte 0x83,0x3d
    .long d_004648c0
    .byte 0x00,0x75,0x0c,0xc7,0x85,0x64,0xff,0xff,0xff,0x01,0x00,0x00,0x00,0xeb,0x0a,0xc7
    .byte 0x85,0x64,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x8b,0x85,0x64,0xff,0xff,0xff,0xa3
    .long d_004648c0
    .byte 0xeb,0x21
ptr_00408d0a:
    .byte 0xe8,0x7c,0xec,0xff,0xff,0xeb,0x1a
ptr_00408d11:
    .byte 0xe8,0x87,0xee,0xff,0xff,0xeb,0x13
ptr_00408d18:
    .byte 0xe8,0x32,0xf2,0xff,0xff,0xeb,0x0c
ptr_00408d1f:
    .byte 0xe8,0xca,0xf2,0xff,0xff,0xeb,0x05
ptr_00408d26:
    .byte 0xe8,0x17,0xe8,0xff,0xff
loc_00408d2b:
    jmp loc_0040900d
    .byte 0x8d,0x40,0x00
ptr_00408d33:
    .long ptr_00408d96
    .long ptr_00408de2
    .long ptr_00408e11
    .long ptr_00408e1b
    .long ptr_00408e3f
    .long ptr_00408e6e
    .long ptr_00408eb0
    .long ptr_00408ee9
    .long ptr_00408f0d
    .long ptr_00408f17
    .long ptr_00408f26
    .long ptr_00408f55
    .long ptr_00408f84
    .long ptr_00408fb0
    # --- patched: original code of 0x00408d6b..0x00408d7f replaced (see hooks.s)
    .long ptr_00408fe3
    .long ptr_00408ff1
    .long loc_00408ffd
    .long loc_00408ffd
    .long loc_00408ffd
loc_00408d7f:
    cmp dword ptr [ebp - 0xc], 0x12
    ja loc_00408ffd
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    jmp dword ptr cs:[eax + ptr_00408d33]
ptr_00408d96:
    cmp dword ptr [d_00464964], 0
    jne loc_00408dab
    mov dword ptr [ebp - 0xa0], 1
    jmp loc_00408db5
loc_00408dab:
    mov dword ptr [ebp - 0xa0], 0
loc_00408db5:
    mov eax, dword ptr [ebp - 0xa0]
    mov dword ptr [d_00464964], eax
    mov dword ptr [d_0046492c], 0xffffffff
    cmp dword ptr [d_00464964], 0
    je loc_00408ddd
    mov dword ptr [d_0046497c], 0
loc_00408ddd:
    jmp loc_00408ffd
ptr_00408de2:
    cmp dword ptr [d_00464ae8], 0
    jne loc_00408df7
    mov dword ptr [ebp - 0xa4], 1
    jmp loc_00408e01
loc_00408df7:
    mov dword ptr [ebp - 0xa4], 0
loc_00408e01:
    mov eax, dword ptr [ebp - 0xa4]
    mov dword ptr [d_00464ae8], eax
    jmp loc_00408ffd
ptr_00408e11:
    call sub_004074dc
    jmp loc_00408ffd
ptr_00408e1b:
    dec dword ptr [d_00464930]
    cmp dword ptr [d_00464930], 0
    jge loc_00408e3a
    mov eax, 0xbd
    call sub_00412135
    dec eax
    mov dword ptr [d_00464930], eax
loc_00408e3a:
    jmp loc_00408ffd
ptr_00408e3f:
    cmp dword ptr [d_00464940], 0
    jne loc_00408e54
    mov dword ptr [ebp - 0xa8], 1
    jmp loc_00408e5e
loc_00408e54:
    mov dword ptr [ebp - 0xa8], 0
loc_00408e5e:
    mov eax, dword ptr [ebp - 0xa8]
    mov dword ptr [d_00464940], eax
    jmp loc_00408ffd
ptr_00408e6e:
    cmp dword ptr [d_0046497c], 0
    jne loc_00408e83
    mov dword ptr [ebp - 0xac], 1
    jmp loc_00408e8d
loc_00408e83:
    mov dword ptr [ebp - 0xac], 0
loc_00408e8d:
    mov eax, dword ptr [ebp - 0xac]
    mov dword ptr [d_0046497c], eax
    cmp dword ptr [d_00464964], 0
    je loc_00408eab
    mov dword ptr [d_0046497c], 0
loc_00408eab:
    jmp loc_00408ffd
ptr_00408eb0:
    cmp dword ptr [d_004648bc], 0
    jne loc_00408ec5
    mov dword ptr [ebp - 0xb0], 1
    jmp loc_00408ecf
loc_00408ec5:
    mov dword ptr [ebp - 0xb0], 0
loc_00408ecf:
    mov eax, dword ptr [ebp - 0xb0]
    mov dword ptr [d_004648bc], eax
    mov dword ptr [d_0046492c], 0xffffffff
    jmp loc_00408ffd
ptr_00408ee9:
    dec dword ptr [d_00464974]
    cmp dword ptr [d_00464974], 0
    jge loc_00408f08
    mov eax, 0x1c
    call sub_00412135
    dec eax
    mov dword ptr [d_00464974], eax
loc_00408f08:
    jmp loc_00408ffd
ptr_00408f0d:
    call sub_00407582
    jmp loc_00408ffd
ptr_00408f17:
    mov eax, 0xffffffff
    call sub_004076fe
    jmp loc_00408ffd
ptr_00408f26:
    cmp dword ptr [d_00464968], 0
    jne loc_00408f3b
    mov dword ptr [ebp - 0xb4], 1
    jmp loc_00408f45
loc_00408f3b:
    mov dword ptr [ebp - 0xb4], 0
loc_00408f45:
    mov eax, dword ptr [ebp - 0xb4]
    mov dword ptr [d_00464968], eax
    jmp loc_00408ffd
ptr_00408f55:
    cmp dword ptr [d_00464990], 0
    jne loc_00408f6a
    mov dword ptr [ebp - 0xb8], 1
    jmp loc_00408f74
loc_00408f6a:
    mov dword ptr [ebp - 0xb8], 0
loc_00408f74:
    mov eax, dword ptr [ebp - 0xb8]
    mov dword ptr [d_00464990], eax
    # jmp 0x408ffd
    .byte 0xe9
    .long loc_00408ffd - . - 4
ptr_00408f84:
    cmp dword ptr [d_00464928], 0
    jne loc_00408f99
    mov dword ptr [ebp - 0xbc], 1
    jmp loc_00408fa3
loc_00408f99:
    mov dword ptr [ebp - 0xbc], 0
loc_00408fa3:
    mov eax, dword ptr [ebp - 0xbc]
    mov dword ptr [d_00464928], eax
    jmp loc_00408ffd
ptr_00408fb0:
    cmp dword ptr [d_004648c0], 0
    jne loc_00408fc5
    mov dword ptr [ebp - 0xc0], 1
    jmp loc_00408fcf
loc_00408fc5:
    mov dword ptr [ebp - 0xc0], 0
loc_00408fcf:
    mov eax, dword ptr [ebp - 0xc0]
    mov dword ptr [d_004648c0], eax
    jmp loc_00408ffd
ptr_00408fdc:
    call sub_0040798b
    jmp loc_00408ffd
ptr_00408fe3:
    call sub_00407b9d
    jmp loc_00408ffd
ptr_00408fea:
    call sub_00407f4f
    jmp loc_00408ffd
ptr_00408ff1:
    call sub_00407fee
    jmp loc_00408ffd
ptr_00408ff8:
    call sub_00407542
loc_00408ffd:
    jmp loc_0040900d
loc_00408fff:
    mov dword ptr [ebp - 8], 1
    jmp loc_0040900d
loc_00409008:
    call sub_0041431c
loc_0040900d:
    cmp dword ptr [ebp - 8], 0
    je loc_00408113
    mov eax, dword ptr [d_00464948]
    call sub_00410494
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040902a:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov dword ptr [ebp - 4], ebx
    cmp dword ptr [ebp - 0xc], 0
    jl loc_00409050
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00409052
loc_00409050:
    jmp loc_00409058
loc_00409052:
    cmp dword ptr [ebp - 8], 0
    jge loc_0040905a
loc_00409058:
    jmp loc_00409065
loc_0040905a:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00409067
loc_00409065:
    jmp loc_0040907c
loc_00409067:
    imul eax, dword ptr [ebp - 0xc], 0x50
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    add edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx + d_0045e0e4], eax
loc_0040907c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00409083:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    cmp dword ptr [ebp - 0xc], 0
    jl loc_004090a7
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004090a9
loc_004090a7:
    jmp loc_004090af
loc_004090a9:
    cmp dword ptr [ebp - 8], 0
    jge loc_004090b1
loc_004090af:
    jmp loc_004090bc
loc_004090b1:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004090be
loc_004090bc:
    jmp loc_004090d5
loc_004090be:
    imul edx, dword ptr [ebp - 0xc], 0x50
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    add eax, edx
    mov eax, dword ptr [eax + d_0045e0e4]
    mov dword ptr [ebp - 4], eax
    jmp loc_004090dc
loc_004090d5:
    mov dword ptr [ebp - 4], 1
loc_004090dc:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004090e7:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov eax, dword ptr [d_00464994]
    cmp eax, dword ptr [d_0045ed74]
    je loc_00409197
    mov eax, dword ptr [d_00464994]
    mov dword ptr [d_0045ed74], eax
    mov dword ptr [ebp - 8], 0
loc_00409117:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_0040912f
    # jmp 0x409197
    .byte 0xe9
    .long loc_00409197 - . - 4
loc_00409127:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00409117
loc_0040912f:
    mov dword ptr [ebp - 0xc], 0
loc_00409136:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jl loc_0040914b
    jmp loc_00409195
loc_00409143:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_00409136
loc_0040914b:
    mov dword ptr [ebp - 4], 0
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425fb9
    test eax, eax
    je loc_00409168
    mov dword ptr [ebp - 4], 1
loc_00409168:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00422e48
    test eax, eax
    je loc_0040917e
    mov dword ptr [ebp - 4], 1
loc_0040917e:
    imul eax, dword ptr [ebp - 0xc], 0x50
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    add edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx + d_0045e724], eax
    jmp loc_00409143
loc_00409195:
    jmp loc_00409127
loc_00409197:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004091a0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov ebx, 0x640
    mov edx, offset d_0045e724
    mov eax, offset d_0045e0e4
    call sub_00451dc4
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004091c9:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_0045ed68]
    mov dword ptr [ebp - 8], eax
loc_004091e6:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_004091fd
    jmp loc_0040921e
loc_004091ee:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x18
    jmp loc_004091e6
loc_004091fd:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    jne loc_0040921c
    mov ebx, 0x18
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_00451940
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00409225
loc_0040921c:
    jmp loc_004091ee
loc_0040921e:
    mov dword ptr [ebp - 4], 0
loc_00409225:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00409231:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov ebx, 0x2e
    mov edx, offset d_00458b34
    mov eax, dword ptr [d_0045ed68]
    call sub_0041863d
    mov dword ptr [d_0045ed68], 0
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00409264:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov ecx, 0x33
    mov ebx, offset d_00458b34
    mov edx, 0x64
    mov eax, 0x18
    call sub_00418511
    mov dword ptr [d_0045ed68], eax
    mov eax, offset ptr_00409231
    call sub_00410ebf
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004092a1:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x40
    .byte 0x81,0xec,0x40,0x00,0x00,0x00
    mov dword ptr [ebp - 0x40], eax
    mov dword ptr [ebp - 0x3c], edx
    mov dword ptr [ebp - 0x38], ebx
    mov dword ptr [ebp - 0x34], ecx
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    add edx, edx
    dec edx
    mov dword ptr [ebp - 4], edx
    call sub_004091a0
    mov dword ptr [ebp - 0x14], 0
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 0x18], 0
    mov eax, dword ptr [ebp - 0x40]
    cmp eax, dword ptr [ebp - 0x38]
    jne loc_004092fb
    mov eax, dword ptr [ebp - 0x3c]
    cmp eax, dword ptr [ebp - 0x34]
    je loc_004092fd
loc_004092fb:
    jmp loc_00409302
loc_004092fd:
    jmp loc_004096d9
loc_00409302:
    mov dword ptr [ebp - 0x30], 0
    mov eax, dword ptr [d_0045ed68]
    mov dword ptr [ebp - 0x2c], eax
loc_00409311:
    cmp dword ptr [ebp - 0x30], 0x64
    jl loc_00409328
    jmp loc_00409342
loc_00409319:
    mov eax, dword ptr [ebp - 0x30]
    inc dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x2c]
    add dword ptr [ebp - 0x2c], 0x18
    jmp loc_00409311
loc_00409328:
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax], 0
    mov ebx, 0x18
    xor edx, edx
    mov eax, dword ptr [ebp - 0x2c]
    call sub_00451940
    jmp loc_00409319
loc_00409342:
    mov dword ptr [ebp - 0x30], 0
loc_00409349:
    cmp dword ptr [ebp - 0x30], 4
    jl loc_0040935c
    jmp loc_004093f0
loc_00409354:
    mov eax, dword ptr [ebp - 0x30]
    inc dword ptr [ebp - 0x30]
    jmp loc_00409349
loc_0040935c:
    mov edx, dword ptr [ebp - 0x30]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x40]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x24], eax
    mov edx, dword ptr [ebp - 0x30]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x3c]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x20], eax
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    call sub_00409083
    test eax, eax
    jne loc_004093eb
    call sub_004091c9
    mov dword ptr [ebp - 0x2c], eax
    cmp dword ptr [ebp - 0x2c], 0
    je loc_004093d7
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0x30]
    inc eax
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx + 0xc], eax
    mov eax, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx + 0x10], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x14], 1
    jmp loc_004093eb
loc_004093d7:
    mov eax, offset d_00458b3d
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_004093eb:
    jmp loc_00409354
loc_004093f0:
    mov dword ptr [ebp - 0x1c], 0
    mov dword ptr [ebp - 0x30], 0
    mov eax, dword ptr [d_0045ed68]
    mov dword ptr [ebp - 0x2c], eax
loc_00409406:
    cmp dword ptr [ebp - 0x30], 0x64
    jl loc_00409420
    jmp loc_004096a5
loc_00409411:
    mov eax, dword ptr [ebp - 0x30]
    inc dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x2c]
    add dword ptr [ebp - 0x2c], 0x18
    jmp loc_00409406
loc_00409420:
    mov eax, dword ptr [ebp - 0x2c]
    cmp dword ptr [eax], 0
    je loc_004096a0
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [ebp - 0x2c]
    cmp dword ptr [eax + 0x14], 2
    jne loc_0040944a
    mov eax, dword ptr [ebp - 0x2c]
    dec dword ptr [eax + 0x14]
    jmp loc_00409411
loc_0040944a:
    mov eax, dword ptr [ebp - 0x2c]
    cmp dword ptr [eax + 0x14], 0
    jne loc_0040946f
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 4]
    call sub_00409083
    test eax, eax
    je loc_0040946f
    mov dword ptr [ebp - 0xc], 1
loc_0040946f:
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x14], 0
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 4]
    call sub_00409083
    test eax, eax
    jne loc_004094b4
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 4]
    cmp eax, dword ptr [ebp - 0x38]
    jne loc_004094a4
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 8]
    cmp eax, dword ptr [ebp - 0x34]
    je loc_004094a6
loc_004094a4:
    jmp loc_004094b4
loc_004094a6:
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x14], eax
    jmp loc_004096d9
loc_004094b4:
    cmp dword ptr [ebp - 0xc], 0
    jne loc_004094d4
    mov eax, dword ptr [ebp - 0x2c]
    mov ebx, dword ptr [eax + 0xc]
    add ebx, 0xa
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 4]
    call sub_0040902a
loc_004094d4:
    mov dword ptr [ebp - 8], 0xffffffff
loc_004094db:
    cmp dword ptr [ebp - 8], 1
    jle loc_004094ec
    jmp loc_0040960e
loc_004094e6:
    add dword ptr [ebp - 8], 2
    jmp loc_004094db
loc_004094ec:
    mov edx, dword ptr [ebp - 8]
    imul edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x2c]
    add edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 4]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x24], eax
    mov edx, dword ptr [ebp - 8]
    imul edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x2c]
    add edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 8]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x20], eax
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    call sub_00409083
    test eax, eax
    jne loc_0040955f
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [ebp - 0x38]
    jne loc_0040954f
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [ebp - 0x34]
    je loc_00409551
loc_0040954f:
    jmp loc_0040955f
loc_00409551:
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x14], eax
    jmp loc_004096d9
loc_0040955f:
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    call sub_00409083
    test eax, eax
    jne loc_00409609
    call sub_004091c9
    mov dword ptr [ebp - 0x28], eax
    cmp dword ptr [ebp - 0x28], 0
    je loc_004095f5
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x28]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x28]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [eax + 0xc], edx
    mov edx, dword ptr [ebp - 8]
    imul edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x2c]
    add edx, dword ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 0x28]
    and edx, 3
    mov dword ptr [eax + 0x10], edx
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [eax + 0x14], 1
    mov eax, dword ptr [ebp - 0x28]
    cmp eax, dword ptr [ebp - 0x2c]
    jbe loc_004095df
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [eax + 0x14], 2
loc_004095df:
    mov eax, dword ptr [ebp - 0x28]
    mov ebx, dword ptr [eax + 0xc]
    add ebx, 0xa
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    call sub_0040902a
    jmp loc_00409609
loc_004095f5:
    mov eax, offset d_00458b59
    call sub_0041284a
    mov eax, 0xa
    call sub_004128c9
loc_00409609:
    jmp loc_004094e6
loc_0040960e:
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 4]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 8]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x20], eax
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    call sub_00409083
    test eax, eax
    jne loc_00409670
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [ebp - 0x38]
    jne loc_00409663
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [ebp - 0x34]
    je loc_00409665
loc_00409663:
    jmp loc_00409670
loc_00409665:
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x14], eax
    jmp loc_004096d9
loc_00409670:
    cmp dword ptr [ebp - 0xc], 0
    jne loc_00409685
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    call sub_00409083
    test eax, eax
    je loc_0040968e
loc_00409685:
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax], 0
loc_0040968e:
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx + 8], eax
loc_004096a0:
    jmp loc_00409411
loc_004096a5:
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 0x18]
    jle loc_004096b3
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x18], eax
loc_004096b3:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp + 0x10]
    jle loc_004096cf
    mov dword ptr [ebp - 0x1c], 0
    mov dword ptr [ebp - 0x14], 0
loc_004096cf:
    cmp dword ptr [ebp - 0x1c], 0
    jne loc_004093f0
loc_004096d9:
    cmp dword ptr [ebp + 0x18], 0
    je loc_004096e7
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp + 0x18]
    mov dword ptr [edx], eax
loc_004096e7:
    cmp dword ptr [ebp + 0x14], 0
    je loc_004096f5
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp + 0x14]
    mov dword ptr [edx], eax
loc_004096f5:
    cmp dword ptr [ebp + 0x1c], 0
    je loc_00409703
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp + 0x1c]
    mov dword ptr [edx], eax
loc_00409703:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0x10
sub_0040970b:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x54
    .byte 0x81,0xec,0x54,0x00,0x00,0x00
    mov dword ptr [ebp - 0x54], eax
    mov dword ptr [ebp - 0x50], edx
    mov dword ptr [ebp - 0x4c], ebx
    mov dword ptr [ebp - 0x48], ecx
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    add edx, edx
    dec edx
    mov dword ptr [ebp - 0xc], edx
    call sub_004091a0
    mov dword ptr [ebp - 0x44], 0
    mov eax, dword ptr [d_0045ed68]
    mov dword ptr [ebp - 0x40], eax
loc_0040974f:
    cmp dword ptr [ebp - 0x44], 0x64
    jl loc_00409766
    jmp loc_00409780
loc_00409757:
    mov eax, dword ptr [ebp - 0x44]
    inc dword ptr [ebp - 0x44]
    mov eax, dword ptr [ebp - 0x40]
    add dword ptr [ebp - 0x40], 0x18
    jmp loc_0040974f
loc_00409766:
    mov eax, dword ptr [ebp - 0x40]
    mov dword ptr [eax], 0
    mov ebx, 0x18
    xor edx, edx
    mov eax, dword ptr [ebp - 0x40]
    call sub_00451940
    jmp loc_00409757
loc_00409780:
    mov dword ptr [ebp - 0x44], 0
loc_00409787:
    cmp dword ptr [ebp - 0x44], 4
    jl loc_0040979a
    jmp loc_00409835
loc_00409792:
    mov eax, dword ptr [ebp - 0x44]
    inc dword ptr [ebp - 0x44]
    jmp loc_00409787
loc_0040979a:
    mov edx, dword ptr [ebp - 0x44]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x54]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x38], eax
    mov edx, dword ptr [ebp - 0x44]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x50]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x34], eax
    mov edx, dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x38]
    call sub_00409083
    test eax, eax
    jne loc_00409830
    call sub_004091c9
    mov dword ptr [ebp - 0x40], eax
    cmp dword ptr [ebp - 0x40], 0
    je loc_0040981c
    mov eax, dword ptr [ebp - 0x44]
    inc eax
    mov dword ptr [ebp - 0x28], eax
    mov eax, dword ptr [ebp - 0x40]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 0x40]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x34]
    mov edx, dword ptr [ebp - 0x40]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0x44]
    inc eax
    mov edx, dword ptr [ebp - 0x40]
    mov dword ptr [edx + 0xc], eax
    mov eax, dword ptr [ebp - 0x44]
    mov edx, dword ptr [ebp - 0x40]
    mov dword ptr [edx + 0x10], eax
    mov eax, dword ptr [ebp - 0x40]
    mov dword ptr [eax + 0x14], 1
    jmp loc_00409830
loc_0040981c:
    mov eax, offset d_00458b3d
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_00409830:
    jmp loc_00409792
loc_00409835:
    mov dword ptr [ebp - 0x28], 0
    mov dword ptr [ebp - 0x2c], 0
    mov dword ptr [ebp - 0x24], 0
    mov eax, dword ptr [ebp - 0x54]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x50]
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 0x18], 0x2710
    mov dword ptr [ebp - 0x14], 0
loc_00409864:
    mov dword ptr [ebp - 0x30], 0
    mov dword ptr [ebp - 0x44], 0
    mov eax, dword ptr [d_0045ed68]
    mov dword ptr [ebp - 0x40], eax
loc_0040987a:
    cmp dword ptr [ebp - 0x44], 0x64
    jl loc_00409894
    jmp loc_00409b91
loc_00409885:
    mov eax, dword ptr [ebp - 0x44]
    inc dword ptr [ebp - 0x44]
    mov eax, dword ptr [ebp - 0x40]
    add dword ptr [ebp - 0x40], 0x18
    jmp loc_0040987a
loc_00409894:
    mov eax, dword ptr [ebp - 0x40]
    cmp dword ptr [eax], 0
    je loc_00409b8c
    mov eax, dword ptr [ebp - 0x30]
    inc dword ptr [ebp - 0x30]
    mov dword ptr [ebp - 0x20], 0
    mov eax, dword ptr [ebp - 0x40]
    cmp dword ptr [eax + 0x14], 2
    jne loc_004098be
    mov eax, dword ptr [ebp - 0x40]
    dec dword ptr [eax + 0x14]
    jmp loc_00409885
loc_004098be:
    mov eax, dword ptr [ebp - 0x40]
    cmp dword ptr [eax + 0x14], 0
    jne loc_004098e3
    mov eax, dword ptr [ebp - 0x40]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 4]
    call sub_00409083
    test eax, eax
    je loc_004098e3
    mov dword ptr [ebp - 0x20], 1
loc_004098e3:
    mov eax, dword ptr [ebp - 0x40]
    mov dword ptr [eax + 0x14], 0
    mov eax, dword ptr [ebp - 0x40]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 4]
    call sub_00409083
    test eax, eax
    jne loc_00409953
    mov eax, dword ptr [ebp - 0x40]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 4]
    call sub_00424d37
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 0x18]
    jge loc_00409953
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x1c], 0
    jne loc_00409953
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x28], eax
    jmp loc_00409bd1
loc_00409953:
    cmp dword ptr [ebp - 0x20], 0
    jne loc_00409973
    mov eax, dword ptr [ebp - 0x40]
    mov ebx, dword ptr [eax + 0xc]
    add ebx, 0xa
    mov eax, dword ptr [ebp - 0x40]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 4]
    call sub_0040902a
loc_00409973:
    mov dword ptr [ebp - 0x10], 0xffffffff
loc_0040997a:
    cmp dword ptr [ebp - 0x10], 1
    jle loc_0040998b
    jmp loc_00409ad2
loc_00409985:
    add dword ptr [ebp - 0x10], 2
    jmp loc_0040997a
loc_0040998b:
    mov edx, dword ptr [ebp - 0x10]
    imul edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x40]
    add edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 4]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x38], eax
    mov edx, dword ptr [ebp - 0x10]
    imul edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x40]
    add edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 8]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x34], eax
    mov edx, dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x38]
    call sub_00409083
    test eax, eax
    jne loc_00409a23
    mov edx, dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x38]
    call sub_00424d37
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 0x18]
    jge loc_00409a23
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x34]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x1c], 0
    jne loc_00409a23
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x28], eax
    jmp loc_00409bd1
loc_00409a23:
    mov edx, dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x38]
    call sub_00409083
    test eax, eax
    jne loc_00409acd
    call sub_004091c9
    mov dword ptr [ebp - 0x3c], eax
    cmp dword ptr [ebp - 0x3c], 0
    je loc_00409ab9
    mov eax, dword ptr [ebp - 0x30]
    inc dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 0x3c]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x34]
    mov edx, dword ptr [ebp - 0x3c]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0x40]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [eax + 0xc], edx
    mov edx, dword ptr [ebp - 0x10]
    imul edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x40]
    add edx, dword ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 0x3c]
    and edx, 3
    mov dword ptr [eax + 0x10], edx
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [eax + 0x14], 1
    mov eax, dword ptr [ebp - 0x3c]
    cmp eax, dword ptr [ebp - 0x40]
    jbe loc_00409aa3
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [eax + 0x14], 2
loc_00409aa3:
    mov eax, dword ptr [ebp - 0x3c]
    mov ebx, dword ptr [eax + 0xc]
    add ebx, 0xa
    mov edx, dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x38]
    call sub_0040902a
    jmp loc_00409acd
loc_00409ab9:
    mov eax, offset d_00458b59
    call sub_0041284a
    mov eax, 0xa
    call sub_004128c9
loc_00409acd:
    jmp loc_00409985
loc_00409ad2:
    mov eax, dword ptr [ebp - 0x40]
    mov edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 4]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp - 0x40]
    mov edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 8]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x34], eax
    mov edx, dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x38]
    call sub_00409083
    test eax, eax
    jne loc_00409b5c
    mov edx, dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x38]
    call sub_00424d37
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 0x18]
    jge loc_00409b5c
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x34]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x1c], 0
    jne loc_00409b5c
    mov eax, dword ptr [ebp - 0x40]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x28], eax
    # jmp 0x409bd1
    .byte 0xe9
    .long loc_00409bd1 - . - 4
loc_00409b5c:
    cmp dword ptr [ebp - 0x20], 0
    jne loc_00409b71
    mov edx, dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x38]
    call sub_00409083
    test eax, eax
    je loc_00409b7a
loc_00409b71:
    mov eax, dword ptr [ebp - 0x40]
    mov dword ptr [eax], 0
loc_00409b7a:
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 0x40]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x34]
    mov edx, dword ptr [ebp - 0x40]
    mov dword ptr [edx + 8], eax
loc_00409b8c:
    jmp loc_00409885
loc_00409b91:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp - 0x2c]
    jle loc_00409b9f
    mov eax, dword ptr [ebp - 0x30]
    mov dword ptr [ebp - 0x2c], eax
loc_00409b9f:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [ebp - 0x4c]
    jle loc_00409bbb
    mov dword ptr [ebp - 0x30], 0
    mov dword ptr [ebp - 0x28], 0
loc_00409bbb:
    cmp dword ptr [ebp - 0x30], 0
    jne loc_00409864
    cmp dword ptr [ebp - 0x14], 0
    je loc_00409bd1
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 0x28], eax
loc_00409bd1:
    cmp dword ptr [ebp + 0x18], 0
    je loc_00409bdf
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp + 0x18]
    mov dword ptr [edx], eax
loc_00409bdf:
    cmp dword ptr [ebp + 0x1c], 0
    je loc_00409bed
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp + 0x1c]
    mov dword ptr [edx], eax
loc_00409bed:
    cmp dword ptr [ebp + 0x10], 0
    je loc_00409bfb
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp + 0x10]
    mov dword ptr [edx], eax
loc_00409bfb:
    cmp dword ptr [ebp - 0x48], 0
    je loc_00409c09
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [ebp - 0x48]
    mov dword ptr [edx], eax
loc_00409c09:
    cmp dword ptr [ebp + 0x14], 0
    je loc_00409c17
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [ebp + 0x14]
    mov dword ptr [edx], eax
loc_00409c17:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0x10
sub_00409c1f:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x50
    .byte 0x81,0xec,0x50,0x00,0x00,0x00
    mov dword ptr [ebp - 0x50], eax
    mov dword ptr [ebp - 0x4c], edx
    mov dword ptr [ebp - 0x48], ebx
    mov dword ptr [ebp - 0x44], ecx
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    add edx, edx
    dec edx
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 4], 0
    call sub_004091a0
    mov dword ptr [ebp - 0x40], 0
    mov eax, dword ptr [d_0045ed68]
    mov dword ptr [ebp - 0x3c], eax
loc_00409c6a:
    cmp dword ptr [ebp - 0x40], 0x64
    jl loc_00409c81
    jmp loc_00409c9b
loc_00409c72:
    mov eax, dword ptr [ebp - 0x40]
    inc dword ptr [ebp - 0x40]
    mov eax, dword ptr [ebp - 0x3c]
    add dword ptr [ebp - 0x3c], 0x18
    jmp loc_00409c6a
loc_00409c81:
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [eax], 0
    mov ebx, 0x18
    xor edx, edx
    mov eax, dword ptr [ebp - 0x3c]
    call sub_00451940
    jmp loc_00409c72
loc_00409c9b:
    mov dword ptr [ebp - 0x40], 0
loc_00409ca2:
    cmp dword ptr [ebp - 0x40], 4
    jl loc_00409cb5
    jmp loc_00409d50
loc_00409cad:
    mov eax, dword ptr [ebp - 0x40]
    inc dword ptr [ebp - 0x40]
    jmp loc_00409ca2
loc_00409cb5:
    mov edx, dword ptr [ebp - 0x40]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x50]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x34], eax
    mov edx, dword ptr [ebp - 0x40]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x4c]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x30], eax
    mov edx, dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x34]
    call sub_00409083
    test eax, eax
    jne loc_00409d4b
    call sub_004091c9
    mov dword ptr [ebp - 0x3c], eax
    cmp dword ptr [ebp - 0x3c], 0
    je loc_00409d37
    mov eax, dword ptr [ebp - 0x40]
    inc eax
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0x34]
    mov edx, dword ptr [ebp - 0x3c]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x3c]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0x40]
    inc eax
    mov edx, dword ptr [ebp - 0x3c]
    mov dword ptr [edx + 0xc], eax
    mov eax, dword ptr [ebp - 0x40]
    mov edx, dword ptr [ebp - 0x3c]
    mov dword ptr [edx + 0x10], eax
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [eax + 0x14], 1
    jmp loc_00409d4b
loc_00409d37:
    mov eax, offset d_00458b3d
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_00409d4b:
    jmp loc_00409cad
loc_00409d50:
    mov dword ptr [ebp - 0x24], 0
    mov dword ptr [ebp - 0x28], 0
    mov dword ptr [ebp - 0x20], 0
    mov eax, dword ptr [ebp - 0x50]
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x4c]
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 0x18], 0
loc_00409d78:
    mov dword ptr [ebp - 0x2c], 0
    mov dword ptr [ebp - 0x40], 0
    mov eax, dword ptr [d_0045ed68]
    mov dword ptr [ebp - 0x3c], eax
loc_00409d8e:
    cmp dword ptr [ebp - 0x40], 0x64
    jl loc_00409da8
    jmp loc_0040a042
loc_00409d99:
    mov eax, dword ptr [ebp - 0x40]
    inc dword ptr [ebp - 0x40]
    mov eax, dword ptr [ebp - 0x3c]
    add dword ptr [ebp - 0x3c], 0x18
    jmp loc_00409d8e
loc_00409da8:
    mov eax, dword ptr [ebp - 0x3c]
    cmp dword ptr [eax], 0
    je loc_0040a03d
    mov eax, dword ptr [ebp - 0x2c]
    inc dword ptr [ebp - 0x2c]
    mov dword ptr [ebp - 0x1c], 0
    mov eax, dword ptr [ebp - 0x3c]
    cmp dword ptr [eax + 0x14], 2
    jne loc_00409dd2
    mov eax, dword ptr [ebp - 0x3c]
    dec dword ptr [eax + 0x14]
    jmp loc_00409d99
loc_00409dd2:
    mov eax, dword ptr [ebp - 0x3c]
    cmp dword ptr [eax + 0x14], 0
    jne loc_00409df7
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    call sub_00409083
    test eax, eax
    je loc_00409df7
    mov dword ptr [ebp - 0x1c], 1
loc_00409df7:
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [eax + 0x14], 0
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    call sub_00409083
    test eax, eax
    jne loc_00409e3e
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    call sub_0042542d
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00409e3e
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x24], eax
    jmp loc_0040a082
loc_00409e3e:
    cmp dword ptr [ebp - 0x1c], 0
    jne loc_00409e5e
    mov eax, dword ptr [ebp - 0x3c]
    mov ebx, dword ptr [eax + 0xc]
    add ebx, 0xa
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    call sub_0040902a
loc_00409e5e:
    mov dword ptr [ebp - 0x14], 0xffffffff
loc_00409e65:
    cmp dword ptr [ebp - 0x14], 1
    jle loc_00409e76
    jmp loc_00409fa0
loc_00409e70:
    add dword ptr [ebp - 0x14], 2
    jmp loc_00409e65
loc_00409e76:
    mov edx, dword ptr [ebp - 0x14]
    imul edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x3c]
    add edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x34], eax
    mov edx, dword ptr [ebp - 0x14]
    imul edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x3c]
    add edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 8]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x30], eax
    mov edx, dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x34]
    call sub_00409083
    test eax, eax
    jne loc_00409ef1
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    call sub_0042542d
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00409ef1
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x24], eax
    jmp loc_0040a082
loc_00409ef1:
    mov edx, dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x34]
    call sub_00409083
    test eax, eax
    jne loc_00409f9b
    call sub_004091c9
    mov dword ptr [ebp - 0x38], eax
    cmp dword ptr [ebp - 0x38], 0
    je loc_00409f87
    mov eax, dword ptr [ebp - 0x2c]
    inc dword ptr [ebp - 0x2c]
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0x34]
    mov edx, dword ptr [ebp - 0x38]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x38]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [eax + 0xc], edx
    mov edx, dword ptr [ebp - 0x14]
    imul edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x3c]
    add edx, dword ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 0x38]
    and edx, 3
    mov dword ptr [eax + 0x10], edx
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [eax + 0x14], 1
    mov eax, dword ptr [ebp - 0x38]
    cmp eax, dword ptr [ebp - 0x3c]
    jbe loc_00409f71
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [eax + 0x14], 2
loc_00409f71:
    mov eax, dword ptr [ebp - 0x38]
    mov ebx, dword ptr [eax + 0xc]
    add ebx, 0xa
    mov edx, dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x34]
    call sub_0040902a
    jmp loc_00409f9b
loc_00409f87:
    mov eax, offset d_00458b59
    call sub_0041284a
    mov eax, 0xa
    call sub_004128c9
loc_00409f9b:
    jmp loc_00409e70
loc_00409fa0:
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x34], eax
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 0x10]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 8]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x30], eax
    mov edx, dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x34]
    call sub_00409083
    test eax, eax
    jne loc_0040a00d
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    call sub_0042542d
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_0040a00d
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x24], eax
    # jmp 0x40a082
    .byte 0xe9
    .long loc_0040a082 - . - 4
loc_0040a00d:
    cmp dword ptr [ebp - 0x1c], 0
    jne loc_0040a022
    mov edx, dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x34]
    call sub_00409083
    test eax, eax
    je loc_0040a02b
loc_0040a022:
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [eax], 0
loc_0040a02b:
    mov eax, dword ptr [ebp - 0x34]
    mov edx, dword ptr [ebp - 0x3c]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x3c]
    mov dword ptr [edx + 8], eax
loc_0040a03d:
    jmp loc_00409d99
loc_0040a042:
    mov eax, dword ptr [ebp - 0x2c]
    cmp eax, dword ptr [ebp - 0x28]
    jle loc_0040a050
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [ebp - 0x28], eax
loc_0040a050:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [ebp - 0x48]
    jle loc_0040a06c
    mov dword ptr [ebp - 0x2c], 0
    mov dword ptr [ebp - 0x24], 0
loc_0040a06c:
    cmp dword ptr [ebp - 0x2c], 0
    jne loc_00409d78
    cmp dword ptr [ebp - 0x18], 0
    je loc_0040a082
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x24], eax
loc_0040a082:
    cmp dword ptr [ebp + 0x10], 0
    je loc_0040a090
    mov eax, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp + 0x10]
    mov dword ptr [edx], eax
loc_0040a090:
    cmp dword ptr [ebp - 0x44], 0
    je loc_0040a09e
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x44]
    mov dword ptr [edx], eax
loc_0040a09e:
    cmp dword ptr [ebp + 0x14], 0
    je loc_0040a0ac
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [ebp + 0x14]
    mov dword ptr [edx], eax
loc_0040a0ac:
    cmp dword ptr [ebp + 0x18], 0
    je loc_0040a0ba
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp + 0x18]
    mov dword ptr [edx], eax
loc_0040a0ba:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0xc
ptr_0040a0c2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_0045ed6c], 0
    je loc_0040a0f7
    mov ebx, 0xa6
    mov edx, offset d_00458b71
    mov eax, dword ptr [d_0045ed6c]
    call sub_0041863d
    mov dword ptr [d_0045ed6c], 0
loc_0040a0f7:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040a0fe:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov ecx, 0xaf
    mov ebx, offset d_00458b71
    mov edx, 0xa
    mov eax, 0x44
    call sub_00418511
    mov dword ptr [d_0045ed6c], eax
    call sub_00409264
    mov eax, offset ptr_0040a0c2
    call sub_00410ebf
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040a140:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov ebx, 0x2a8
    xor edx, edx
    mov eax, dword ptr [d_0045ed6c]
    call sub_00451940
    mov dword ptr [ebp - 4], 0
loc_0040a166:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040a176
    jmp loc_0040a1bd
loc_0040a16e:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040a166
loc_0040a176:
    mov eax, 0x384
    call sub_00412135
    cmp eax, 1
    jle loc_0040a194
    mov eax, 0x384
    call sub_00412135
    mov dword ptr [ebp - 8], eax
    jmp loc_0040a19b
loc_0040a194:
    mov dword ptr [ebp - 8], 1
loc_0040a19b:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 8]
    mov eax, edx
    imul ebx, dword ptr [ebp - 4], 0x44
    mov edx, dword ptr [d_0045ed6c]
    add edx, ebx
    mov word ptr [edx], ax
    jmp loc_0040a16e
loc_0040a1bd:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040a1c6:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x148
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov ebx, 0xca
    mov ecx, offset d_00458b71
    call sub_0045190a
    mov edx, eax
    mov esi, 0x3e8
    mov eax, edx
    sar edx, 0x1f
    idiv esi
    lea eax, [edx + 0x64]
    mov edx, ecx
    call sub_004184d0
    mov dword ptr [ebp - 0x14], eax
    mov ebx, 0xca
    mov edx, offset d_00458b71
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041863d
    call sub_004090e7
    cmp dword ptr [ebp - 0x10], 0
    jl loc_0040a226
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_0040a22b
loc_0040a226:
    jmp loc_0040a4ef
loc_0040a22b:
    imul eax, dword ptr [ebp - 0x10], 0x44
    mov edx, dword ptr [d_0045ed6c]
    add edx, eax
    mov dword ptr [d_0045ed70], edx
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 0x30], ax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 0x32], ax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00426599
    mov edx, eax
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x28], dx
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004265eb
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 0x2a], ax
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 0x2c]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    cwde
    shl eax, 2
    mov edx, dword ptr [d_0045ed70]
    mov bx, word ptr [edx + 0x28]
    imul bx, word ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 0x2c]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    cwde
    shl eax, 2
    mov edx, dword ptr [d_0045ed70]
    mov dx, word ptr [edx + 0x2a]
    imul dx, word ptr [eax + d_0045bedc]
    mov eax, edx
    add ebx, eax
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x2c], bx
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 0x2c]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    cwde
    shl eax, 2
    mov edx, dword ptr [d_0045ed70]
    mov bx, word ptr [edx + 0x2a]
    imul bx, word ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 0x2c]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    movsx edx, ax
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov ax, word ptr [eax + 0x28]
    imul ax, word ptr [edx + d_0045bedc]
    sub ebx, eax
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x2e], bx
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x1c], 0
    jl loc_0040a345
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x20], 0
    jge loc_0040a347
loc_0040a345:
    jmp loc_0040a353
loc_0040a347:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x30], 0
    jge loc_0040a355
loc_0040a353:
    jmp loc_0040a361
loc_0040a355:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x32], 0
    jge loc_0040a395
loc_0040a361:
    mov eax, dword ptr [ebp - 0xc]
    push dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0xc]
    push dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, offset d_00458b76
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0x14
    lea eax, [ebp - 0x78]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0040a395:
    mov eax, dword ptr [d_0045ed70]
    mov ax, word ptr [eax]
    mov dword ptr [ebp - 0x7c], eax
    cmp word ptr [ebp - 0x7c], 0
    jne loc_0040a3b0
    mov dword ptr [ebp - 8], offset d_0045ba78
    jmp loc_0040a3e3
loc_0040a3b0:
    mov eax, dword ptr [d_0045ed70]
    movsx eax, word ptr [eax]
    push eax
    mov eax, offset d_00458b96
    push eax
    lea eax, [ebp - 0xe0]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0xe0]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0040a3e3:
    mov dword ptr [ebp - 4], 0
loc_0040a3ea:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    add eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_0040a40a
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    add edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call dword ptr [edx]
    test eax, eax
    jne loc_0040a41b
loc_0040a40a:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    shl eax, 2
    add eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    jne loc_0040a3ea
loc_0040a41b:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 0x30], ax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 0x32], ax
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x1c], 0
    jl loc_0040a457
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x20], 0
    jge loc_0040a459
loc_0040a457:
    jmp loc_0040a465
loc_0040a459:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x30], 0
    jge loc_0040a467
loc_0040a465:
    jmp loc_0040a473
loc_0040a467:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x32], 0
    jge loc_0040a4ad
loc_0040a473:
    mov eax, dword ptr [ebp - 0xc]
    push dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0xc]
    push dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, offset d_00458bb6
    push eax
    lea eax, [ebp - 0x144]
    push eax
    call sub_004518d0
    add esp, 0x14
    lea eax, [ebp - 0x144]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0040a4ad:
    mov ebx, 0x108
    mov ecx, offset d_00458b71
    call sub_0045190a
    mov edx, eax
    mov esi, 0x3e8
    mov eax, edx
    sar edx, 0x1f
    idiv esi
    lea eax, [edx + 0x64]
    mov edx, ecx
    call sub_004184d0
    mov dword ptr [ebp - 0x148], eax
    mov ebx, 0x108
    mov edx, offset d_00458b71
    mov eax, dword ptr [ebp - 0x148]
    call sub_0041863d
loc_0040a4ef:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0040a4f7:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    lea eax, [ebp - 4]
    call sub_00451e3e
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_0045ed78]
    jb loc_0040a539
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0045ed78], eax
    call sub_0045190a
    mov edx, eax
    mov ebx, 4
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [d_0045ed64], edx
loc_0040a539:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00422e48
    test eax, eax
    je loc_0040a56d
    mov dword ptr [ebp - 4], 0
    jmp loc_0040a592
loc_0040a56d:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425fb9
    test eax, eax
    jne loc_0040a585
    mov dword ptr [ebp - 0x10], 1
    jmp loc_0040a58c
loc_0040a585:
    mov dword ptr [ebp - 0x10], 0
loc_0040a58c:
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 4], eax
loc_0040a592:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0040a59d:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00422e48
    test eax, eax
    je loc_0040a5c8
    mov dword ptr [ebp - 4], 0
    jmp loc_0040a61d
loc_0040a5c8:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425fb9
    test eax, eax
    je loc_0040a5e0
    mov dword ptr [ebp - 4], 0
    jmp loc_0040a61d
loc_0040a5e0:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0042708d
    test eax, eax
    je loc_0040a5f8
    mov dword ptr [ebp - 4], 0
    jmp loc_0040a61d
loc_0040a5f8:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00424d37
    test eax, eax
    jne loc_0040a610
    mov dword ptr [ebp - 0x10], 1
    jmp loc_0040a617
loc_0040a610:
    mov dword ptr [ebp - 0x10], 0
loc_0040a617:
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 4], eax
loc_0040a61d:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x34], 0
    jne loc_0040a702
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040a702
    call sub_0045190a
    mov edx, eax
    mov ebx, 4
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x14], edx
    mov edx, dword ptr [ebp - 0x14]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov eax, dword ptr [ebp - 0x14]
    and eax, 3
    shl eax, 2
    mov edx, dword ptr [d_0045ed70]
    mov edx, dword ptr [edx + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [eax + d_0045bedc]
    add eax, edx
    mov dword ptr [ebp - 0xc], eax
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0040a59d
    test eax, eax
    je loc_0040a702
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [edx + 0x3c], ax
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [edx + 0x3e], ax
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0x14]
    mov word ptr [edx + 0x3a], ax
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 0x34], 1
loc_0040a702:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x34], 1
    jne loc_0040a75c
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [edx + 0x30]
    cmp dx, word ptr [eax + 0x3c]
    jne loc_0040a738
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [edx + 0x32]
    cmp dx, word ptr [eax + 0x3e]
    je loc_0040a751
loc_0040a738:
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [eax + 0x3a]
    mov eax, dword ptr [ebp - 0x18]
    mov word ptr [eax + 0x2e], dx
    mov dword ptr [ebp - 8], 1
    jmp loc_0040a75c
loc_0040a751:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 0
loc_0040a75c:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040a76e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x2e], 0
    jl loc_0040a793
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x2e], 3
    jle loc_0040a798
loc_0040a793:
    # jmp 0x40a816
    .byte 0xe9
    .long loc_0040a816 - . - 4
loc_0040a798:
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 0x2e]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    movsx edx, ax
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 0x2e]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    movsx edx, ax
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x30]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_0042708d
    test eax, eax
    je loc_0040a816
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 0
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x3a], 0xffff
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x2e], 0xffff
loc_0040a816:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040a81f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    call sub_0045190a
    mov edx, eax
    mov ebx, 0x19
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040a8e6
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov eax, edx
    add eax, eax
    mov edx, dword ptr [d_0045ed70]
    mov edx, dword ptr [edx + 0x3e]
    sar edx, 0x10
    add eax, edx
    dec eax
    and eax, 3
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [d_0045ed70]
    mov ax, word ptr [eax + 0x40]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    cwde
    shl eax, 2
    mov edx, dword ptr [d_0045ed70]
    mov edx, dword ptr [edx + 0x2e]
    sar edx, 0x10
    mov eax, dword ptr [eax + d_0045becc]
    add eax, edx
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [d_0045ed70]
    mov ax, word ptr [eax + 0x40]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    movsx edx, ax
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x30]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040a59d
    test eax, eax
    je loc_0040a8e6
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0x14]
    mov word ptr [edx + 0x40], ax
loc_0040a8e6:
    mov eax, dword ptr [d_0045ed70]
    mov ax, word ptr [eax + 0x40]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    movsx edx, ax
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0xc], edx
    mov eax, dword ptr [d_0045ed70]
    mov ax, word ptr [eax + 0x40]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    movsx edx, ax
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x30]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040a59d
    test eax, eax
    je loc_0040a962
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [eax + 0x40]
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 0x2e], dx
    mov dword ptr [ebp - 4], 1
    jmp loc_0040a988
loc_0040a962:
    call sub_0045190a
    mov edx, eax
    mov ebx, 4
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov eax, edx
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 0x40], ax
    mov dword ptr [ebp - 4], 0
loc_0040a988:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x20
    .byte 0x81,0xec,0x20,0x00,0x00,0x00
    mov dword ptr [ebp - 0x20], eax
    mov dword ptr [ebp - 0x14], 0
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x34], 0
    jne loc_0040a9fa
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040a9fa
    call sub_0045190a
    mov edx, eax
    mov ebx, 4
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov ebx, edx
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 0x3a], bx
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 0x34], 2
loc_0040a9fa:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x34], 2
    jne loc_0040abdb
    mov dword ptr [ebp - 0x14], 1
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00426599
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x20]
    call sub_004265eb
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x38]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [ebp - 0x10]
    imul edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x38]
    sar eax, 0x10
    shl eax, 2
    mov ebx, dword ptr [ebp - 0xc]
    imul ebx, dword ptr [eax + d_0045bedc]
    mov eax, ebx
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 8]
    call sub_00451e6d
    cmp eax, 8
    jge loc_0040aabb
    call sub_0045190a
    mov edx, eax
    mov ebx, 6
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040aabb
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov eax, edx
    add eax, eax
    mov edx, dword ptr [d_0045ed70]
    mov edx, dword ptr [edx + 0x38]
    sar edx, 0x10
    add eax, edx
    dec eax
    and eax, 3
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 0x3a], ax
loc_0040aabb:
    mov eax, dword ptr [d_0045ed70]
    mov ax, word ptr [eax + 0x3a]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    movsx edx, ax
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x1c], edx
    mov eax, dword ptr [d_0045ed70]
    mov ax, word ptr [eax + 0x3a]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    movsx edx, ax
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x30]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0x18], edx
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0040a59d
    test eax, eax
    je loc_0040ab55
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [eax + 0x3a]
    mov eax, dword ptr [ebp - 0x20]
    mov word ptr [eax + 0x2e], dx
    mov eax, dword ptr [ebp - 0x20]
    call sub_0040a76e
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    jne loc_0040ab50
    mov dword ptr [ebp - 4], 0
    jmp loc_0040abe1
loc_0040ab50:
    jmp loc_0040abdb
loc_0040ab55:
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    add edx, edx
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x38]
    sar eax, 0x10
    add eax, edx
    dec eax
    and eax, 3
    mov edx, dword ptr [ebp - 0x20]
    mov word ptr [edx + 0x2e], ax
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0x20]
    mov ax, word ptr [eax + 0x2e]
    mov word ptr [edx + 0x3a], ax
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040abbc
    mov dword ptr [ebp - 0x14], 0
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 0
loc_0040abbc:
    mov eax, dword ptr [ebp - 0x20]
    call sub_0040a76e
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    jne loc_0040abdb
    mov dword ptr [ebp - 4], 0
    jmp loc_0040abe1
loc_0040abdb:
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 4], eax
loc_0040abe1:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040abed:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x20
    .byte 0x81,0xec,0x20,0x00,0x00,0x00
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x1c]
    xor edx, edx
    mov dl, byte ptr [eax + 0x56]
    mov eax, dword ptr [ebp - 0x1c]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    call sub_004245da
    cmp eax, edx
    jl loc_0040ac24
    mov dword ptr [ebp - 4], 0
    jmp loc_0040ad81
loc_0040ac24:
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x2e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x1c]
    mov eax, dword ptr [eax + 0x14]
    call sub_0042665c
    sub edx, eax
    mov eax, edx
    call sub_00451e6d
    mov edx, eax
    mov eax, dword ptr [d_0045ed70]
    mov ebx, dword ptr [eax + 0x30]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 0x1c]
    mov eax, dword ptr [eax + 0x18]
    call sub_004266a3
    sub ebx, eax
    mov eax, ebx
    call sub_00451e6d
    add edx, eax
    mov dword ptr [ebp - 8], edx
    cmp dword ptr [ebp - 8], 3
    jl loc_0040ad7a
    mov dword ptr [ebp - 0xc], 0
loc_0040ac7a:
    cmp dword ptr [ebp - 0xc], 5
    jl loc_0040ac8d
    jmp loc_0040ad7a
loc_0040ac85:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040ac7a
loc_0040ac8d:
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045bab0]
    add edx, eax
    mov dword ptr [ebp - 0x18], edx
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x30]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045ba9c]
    add edx, eax
    mov dword ptr [ebp - 0x14], edx
    mov eax, dword ptr [ebp - 0x1c]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0x20], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [eax], 0
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_00421cb5
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x1c]
    mov dword ptr [edx], eax
    cmp dword ptr [ebp - 0x10], 0
    # je 0x40ad75
    .byte 0x0f,0x84
    .long loc_0040ad75 - . - 4
    cmp dword ptr [d_00464964], 0
    je loc_0040ad16
    mov eax, dword ptr [ebp - 0x1c]
    mov dl, byte ptr [eax + 0x54]
    mov eax, dword ptr [ebp - 0x10]
    cmp dl, byte ptr [eax + 0x54]
    jne loc_0040ad16
    mov dword ptr [ebp - 4], 0
    jmp loc_0040ad81
loc_0040ad16:
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    call sub_00423188
    test eax, eax
    je loc_0040ad6c
    call sub_0045190a
    mov edx, eax
    mov ebx, 5
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040ad63
    mov eax, dword ptr [ebp - 0x1c]
    mov byte ptr [eax + 0x36], 0
    mov eax, dword ptr [ebp - 0x1c]
    mov byte ptr [eax + 0x38], 1
    mov dword ptr [ebp - 4], 1
    jmp loc_0040ad81
loc_0040ad63:
    mov dword ptr [ebp - 4], 0
    jmp loc_0040ad81
loc_0040ad6c:
    mov dword ptr [ebp - 4], 0
    jmp loc_0040ad81
loc_0040ad75:
    jmp loc_0040ac85
loc_0040ad7a:
    mov dword ptr [ebp - 4], 0
loc_0040ad81:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040ad8d:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x18]
    xor edx, edx
    mov dl, byte ptr [eax + 0x56]
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    call sub_004245da
    cmp eax, edx
    jl loc_0040addb
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x34], 9
    jne loc_0040adcf
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 0
loc_0040adcf:
    mov dword ptr [ebp - 4], 0
    jmp loc_0040af14
loc_0040addb:
    mov eax, dword ptr [ebp - 0x18]
    cmp byte ptr [eax + 0x86], 0
    je loc_0040adf3
    mov dword ptr [ebp - 4], 0
    jmp loc_0040af14
loc_0040adf3:
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 0xc], 0
loc_0040ae01:
    cmp dword ptr [ebp - 0xc], 4
    jl loc_0040ae11
    jmp loc_0040ae61
loc_0040ae09:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040ae01
loc_0040ae11:
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x14], edx
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x30]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00425fb9
    cmp eax, 2
    jne loc_0040ae5f
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
loc_0040ae5f:
    jmp loc_0040ae09
loc_0040ae61:
    cmp dword ptr [ebp - 8], 0
    je loc_0040aef6
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    call sub_00423188
    test eax, eax
    je loc_0040aeed
    mov eax, 0x393
    call sub_00412135
    cmp eax, 1
    jle loc_0040aea8
    mov eax, 0x393
    call sub_00412135
    mov dword ptr [ebp - 0x1c], eax
    jmp loc_0040aeaf
loc_0040aea8:
    mov dword ptr [ebp - 0x1c], 1
loc_0040aeaf:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x1c]
    test edx, edx
    jne loc_0040aee4
    mov eax, dword ptr [ebp - 0x18]
    mov byte ptr [eax + 0x36], 0
    mov eax, dword ptr [ebp - 0x18]
    mov byte ptr [eax + 0x38], 1
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 9
    mov dword ptr [ebp - 4], 1
    jmp loc_0040af14
loc_0040aee4:
    mov dword ptr [ebp - 4], 0
    jmp loc_0040af14
loc_0040aeed:
    mov dword ptr [ebp - 4], 0
    jmp loc_0040af14
loc_0040aef6:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x34], 9
    jne loc_0040af0d
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 0
loc_0040af0d:
    mov dword ptr [ebp - 4], 0
loc_0040af14:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040af20:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x30
    .byte 0x81,0xec,0x30,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x20], edx
    call sub_0040a4f7
    mov dword ptr [ebp - 0x14], 0
loc_0040af3f:
    cmp dword ptr [ebp - 0x14], 4
    jl loc_0040af4f
    jmp loc_0040af5f
loc_0040af47:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_0040af3f
loc_0040af4f:
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov dword ptr [eax + ebp - 0x30], 0
    jmp loc_0040af47
loc_0040af5f:
    mov dword ptr [ebp - 0xc], 1
loc_0040af66:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_0040af79
    jmp loc_0040b034
loc_0040af71:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040af66
loc_0040af79:
    mov dword ptr [ebp - 0x14], 0
loc_0040af80:
    cmp dword ptr [ebp - 0x14], 4
    jl loc_0040af93
    jmp loc_0040b02f
loc_0040af8b:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_0040af80
loc_0040af93:
    mov eax, dword ptr [ebp - 0x14]
    add eax, dword ptr [d_0045ed64]
    and eax, 3
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    cmp dword ptr [eax + ebp - 0x30], 0
    # jne 0x40b02a
    .byte 0x0f,0x85
    .long loc_0040b02a - . - 4
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045becc]
    imul eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x18]
    add edx, eax
    mov dword ptr [ebp - 0x1c], edx
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045bedc]
    imul eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x20]
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00425fb9
    test eax, eax
    jne loc_0040b001
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0042542d
    test eax, eax
    je loc_0040b003
loc_0040b001:
    jmp loc_0040b01c
loc_0040b003:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00422e48
    test eax, eax
    je loc_0040b01a
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 4], eax
    jmp loc_0040b03b
loc_0040b01a:
    jmp loc_0040b02a
loc_0040b01c:
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov dword ptr [eax + ebp - 0x30], 1
loc_0040b02a:
    jmp loc_0040af8b
loc_0040b02f:
    jmp loc_0040af71
loc_0040b034:
    mov dword ptr [ebp - 4], 0xffffffff
loc_0040b03b:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0040b046:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x58
    .byte 0x81,0xec,0x58,0x00,0x00,0x00
    mov dword ptr [ebp - 0x28], eax
    mov dword ptr [ebp - 0x24], edx
    call sub_0040a4f7
    mov dword ptr [ebp - 0x20], 0
loc_0040b065:
    cmp dword ptr [ebp - 0x20], 4
    jl loc_0040b075
    jmp loc_0040b093
loc_0040b06d:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_0040b065
loc_0040b075:
    mov eax, dword ptr [ebp - 0x20]
    shl eax, 2
    mov dword ptr [eax + ebp - 0x50], 0
    mov eax, dword ptr [ebp - 0x20]
    shl eax, 2
    mov dword ptr [eax + ebp - 0x40], 0
    jmp loc_0040b06d
loc_0040b093:
    mov dword ptr [ebp - 0x10], 1
loc_0040b09a:
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_0040b0ad
    jmp loc_0040b1af
loc_0040b0a5:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_0040b09a
loc_0040b0ad:
    mov dword ptr [ebp - 0x20], 0
loc_0040b0b4:
    cmp dword ptr [ebp - 0x20], 4
    jl loc_0040b0c7
    jmp loc_0040b1aa
loc_0040b0bf:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_0040b0b4
loc_0040b0c7:
    mov eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [d_0045ed64]
    and eax, 3
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x1c]
    shl eax, 2
    cmp dword ptr [eax + ebp - 0x40], 0
    jne loc_0040b1a5
    mov eax, dword ptr [ebp - 0x1c]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045becc]
    imul eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x28]
    add edx, eax
    mov dword ptr [ebp - 0x30], edx
    mov eax, dword ptr [ebp - 0x1c]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045bedc]
    imul eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x24]
    add edx, eax
    mov dword ptr [ebp - 0x2c], edx
    mov edx, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [ebp - 0x30]
    call sub_00425fb9
    test eax, eax
    # jne 0x40b197
    .byte 0x0f,0x85
    .long loc_0040b197 - . - 4
    mov eax, dword ptr [ebp - 0x1c]
    shl eax, 2
    inc dword ptr [eax + ebp - 0x50]
    mov dword ptr [ebp - 0x18], 0xffffffff
loc_0040b13b:
    cmp dword ptr [ebp - 0x18], 1
    jle loc_0040b149
    jmp loc_0040b195
loc_0040b143:
    add dword ptr [ebp - 0x18], 2
    jmp loc_0040b13b
loc_0040b149:
    mov eax, dword ptr [ebp - 0x1c]
    add eax, dword ptr [ebp - 0x18]
    and eax, 3
    mov dword ptr [ebp - 0x14], eax
    mov edx, dword ptr [ebp - 0x14]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x30]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0xc], eax
    mov edx, dword ptr [ebp - 0x14]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x2c]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 8], eax
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425fb9
    test eax, eax
    jne loc_0040b193
    mov eax, dword ptr [ebp - 0x1c]
    shl eax, 2
    add dword ptr [eax + ebp - 0x50], 2
loc_0040b193:
    jmp loc_0040b143
loc_0040b195:
    jmp loc_0040b1a5
loc_0040b197:
    mov eax, dword ptr [ebp - 0x1c]
    shl eax, 2
    mov dword ptr [eax + ebp - 0x40], 1
loc_0040b1a5:
    jmp loc_0040b0bf
loc_0040b1aa:
    jmp loc_0040b0a5
loc_0040b1af:
    mov dword ptr [ebp - 0x54], 0
    mov eax, dword ptr [ebp - 0x54]
    shl eax, 2
    mov eax, dword ptr [eax + ebp - 0x50]
    mov dword ptr [ebp - 0x58], eax
    mov dword ptr [ebp - 0x20], 0
loc_0040b1ca:
    cmp dword ptr [ebp - 0x20], 4
    jl loc_0040b1da
    jmp loc_0040b1fe
loc_0040b1d2:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_0040b1ca
loc_0040b1da:
    mov eax, dword ptr [ebp - 0x20]
    shl eax, 2
    mov eax, dword ptr [eax + ebp - 0x50]
    cmp eax, dword ptr [ebp - 0x58]
    jle loc_0040b1fc
    mov eax, dword ptr [ebp - 0x20]
    shl eax, 2
    mov eax, dword ptr [eax + ebp - 0x50]
    mov dword ptr [ebp - 0x58], eax
    mov eax, dword ptr [ebp - 0x20]
    mov dword ptr [ebp - 0x54], eax
loc_0040b1fc:
    jmp loc_0040b1d2
loc_0040b1fe:
    mov eax, dword ptr [ebp - 0x54]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
ptr_0040b20f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x88
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    call sub_00424d37
    test eax, eax
    je loc_0040b4bc
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 2], 0
    je loc_0040b285
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 8], 0
    jne loc_0040b285
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 4]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    call sub_00424d37
    test eax, eax
    je loc_0040b285
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 2], 0
loc_0040b285:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 2], 0
    je loc_0040b379
    push 0
    lea eax, [ebp - 0x1c]
    push eax
    lea eax, [ebp - 0x20]
    push eax
    push 0x14
    mov ecx, dword ptr [d_0045ed70]
    mov ecx, dword ptr [ecx + 4]
    sar ecx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    call sub_004092a1
    cmp dword ptr [ebp - 0x20], 0
    je loc_0040b362
    mov eax, dword ptr [ebp - 0x20]
    dec eax
    mov edx, dword ptr [ebp - 0x24]
    mov word ptr [edx + 0x2e], ax
    mov eax, dword ptr [ebp - 0x24]
    cmp word ptr [eax + 0x2e], 0
    jl loc_0040b2fc
    mov eax, dword ptr [ebp - 0x24]
    cmp word ptr [eax + 0x2e], 3
    jle loc_0040b334
loc_0040b2fc:
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, offset d_00458bd6
    push eax
    lea eax, [ebp - 0x88]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x88]
    call sub_0041284a
    mov eax, offset d_00458be5
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0040b334:
    mov eax, dword ptr [ebp - 0x24]
    call sub_0040a76e
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    jne loc_0040b356
    mov dword ptr [ebp - 4], 0
    jmp loc_0040b588
loc_0040b356:
    mov dword ptr [ebp - 4], 1
    jmp loc_0040b588
loc_0040b362:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 2], 0
    mov dword ptr [ebp - 4], 0
    jmp loc_0040b588
loc_0040b379:
    lea eax, [ebp - 8]
    push eax
    lea eax, [ebp - 0xc]
    push eax
    push 0
    lea eax, [ebp - 0x1c]
    push eax
    lea ecx, [ebp - 0x20]
    mov ebx, 0x14
    mov edx, dword ptr [d_0045ed70]
    mov edx, dword ptr [edx + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    call sub_0040970b
    cmp dword ptr [ebp - 0x20], 0
    je loc_0040b4b7
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 2], 1
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    call sub_00424d37
    mov ebx, eax
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00424d37
    cmp ebx, eax
    jg loc_0040b427
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [edx + 0x30]
    mov word ptr [eax + 4], dx
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [d_0045ed70]
    mov ax, word ptr [eax + 0x32]
    mov word ptr [edx + 6], ax
    mov eax, dword ptr [ebp - 0x24]
    mov word ptr [eax + 0x2e], 0xffff
    mov dword ptr [ebp - 4], 1
    jmp loc_0040b588
loc_0040b427:
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [edx + 4], ax
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 8]
    mov word ptr [edx + 6], ax
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00424d37
    mov edx, dword ptr [d_0045ed70]
    mov word ptr [edx + 8], ax
    mov eax, dword ptr [ebp - 0x20]
    dec eax
    mov edx, dword ptr [ebp - 0x24]
    mov word ptr [edx + 0x2e], ax
    mov eax, dword ptr [ebp - 0x24]
    cmp word ptr [eax + 0x2e], 0
    jl loc_0040b475
    mov eax, dword ptr [ebp - 0x24]
    cmp word ptr [eax + 0x2e], 3
    jle loc_0040b489
loc_0040b475:
    mov eax, offset d_00458c00
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0040b489:
    mov eax, dword ptr [ebp - 0x24]
    call sub_0040a76e
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    jne loc_0040b4ab
    mov dword ptr [ebp - 4], 0
    jmp loc_0040b588
loc_0040b4ab:
    mov dword ptr [ebp - 4], 1
    jmp loc_0040b588
loc_0040b4b7:
    jmp loc_0040b576
loc_0040b4bc:
    mov eax, dword ptr [ebp - 0x24]
    cmp byte ptr [eax + 0x5f], 0
    je loc_0040b4ce
    mov eax, dword ptr [ebp - 0x24]
    cmp byte ptr [eax + 0x5b], 0
    je loc_0040b4d0
loc_0040b4ce:
    jmp loc_0040b4ee
loc_0040b4d0:
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040b4ee
    mov eax, dword ptr [ebp - 0x24]
    mov byte ptr [eax + 0x39], 1
loc_0040b4ee:
    mov dword ptr [ebp - 0x18], 0
loc_0040b4f5:
    cmp dword ptr [ebp - 0x18], 4
    jl loc_0040b505
    jmp loc_0040b562
loc_0040b4fd:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    jmp loc_0040b4f5
loc_0040b505:
    mov edx, dword ptr [ebp - 0x18]
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x14], edx
    mov edx, dword ptr [ebp - 0x18]
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x30]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0040a59d
    test eax, eax
    je loc_0040b560
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 2], 0
    mov dword ptr [ebp - 4], 0
    jmp loc_0040b588
loc_0040b560:
    jmp loc_0040b4fd
loc_0040b562:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 2], 0
    mov dword ptr [ebp - 4], 1
    jmp loc_0040b588
loc_0040b576:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 2], 0
    mov dword ptr [ebp - 4], 0
loc_0040b588:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00422e48
    test eax, eax
    je loc_0040b64c
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x34], 0xa
    je loc_0040b60e
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 0xa
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_0040b046
    mov dword ptr [ebp - 0xc], eax
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [edx + 0x3a], ax
loc_0040b60e:
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [eax + 0x3a]
    mov eax, dword ptr [ebp - 0x18]
    mov word ptr [eax + 0x2e], dx
    mov eax, dword ptr [ebp - 0x18]
    call sub_0040a76e
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    jne loc_0040b640
    mov dword ptr [ebp - 4], 0
    jmp loc_0040b8b6
loc_0040b640:
    mov dword ptr [ebp - 4], 1
    jmp loc_0040b8b6
loc_0040b64c:
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_0040af20
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    jl loc_0040b84f
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x34], 0xb
    je loc_0040b69f
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 0xb
    mov edx, dword ptr [ebp - 0xc]
    add edx, 2
    and edx, 3
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x3a], dx
loc_0040b69f:
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [eax + 0x3a]
    mov eax, dword ptr [ebp - 0x18]
    mov word ptr [eax + 0x2e], dx
    mov eax, dword ptr [ebp - 0x18]
    mov ax, word ptr [eax + 0x2e]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    movsx edx, ax
    shl edx, 2
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x14], edx
    mov eax, dword ptr [ebp - 0x18]
    mov ax, word ptr [eax + 0x2e]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    movsx edx, ax
    shl edx, 2
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 8], 0xffffffff
loc_0040b706:
    cmp dword ptr [ebp - 8], 1
    jle loc_0040b717
    jmp loc_0040b7e4
loc_0040b711:
    add dword ptr [ebp - 8], 2
    jmp loc_0040b706
loc_0040b717:
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    add eax, dword ptr [ebp - 8]
    and eax, 3
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x14], edx
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    add eax, dword ptr [ebp - 8]
    and eax, 3
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0040a59d
    test eax, eax
    je loc_0040b7d4
    mov eax, dword ptr [d_0045ed70]
    mov ax, word ptr [eax + 0x3a]
    add eax, dword ptr [ebp - 8]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    mov edx, eax
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x3a], dx
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [eax + 0x3a]
    mov eax, dword ptr [ebp - 0x18]
    mov word ptr [eax + 0x2e], dx
    mov eax, dword ptr [ebp - 0x18]
    call sub_0040a76e
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    jne loc_0040b7c8
    mov dword ptr [ebp - 4], 0
    jmp loc_0040b8b6
loc_0040b7c8:
    mov dword ptr [ebp - 4], 1
    jmp loc_0040b8b6
loc_0040b7d4:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 0
    jmp loc_0040b711
loc_0040b7e4:
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0040a59d
    test eax, eax
    je loc_0040b821
    mov eax, dword ptr [ebp - 0x18]
    call sub_0040a76e
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    jne loc_0040b815
    mov dword ptr [ebp - 4], 0
    jmp loc_0040b8b6
loc_0040b815:
    mov dword ptr [ebp - 4], 1
    jmp loc_0040b8b6
loc_0040b821:
    mov eax, dword ptr [ebp - 0x18]
    call sub_0040a76e
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    jne loc_0040b843
    mov dword ptr [ebp - 4], 0
    # jmp 0x40b8b6
    .byte 0xe9
    .long loc_0040b8b6 - . - 4
loc_0040b843:
    mov dword ptr [ebp - 4], 1
    # jmp 0x40b8b6
    .byte 0xe9
    .long loc_0040b8b6 - . - 4
loc_0040b84f:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x34], 0xa
    jne loc_0040b866
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 0
loc_0040b866:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x34], 0xb
    jne loc_0040b87d
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x34], 0
loc_0040b87d:
    mov eax, dword ptr [ebp - 0x18]
    cmp byte ptr [eax + 0x5f], 0
    je loc_0040b88f
    mov eax, dword ptr [ebp - 0x18]
    cmp byte ptr [eax + 0x5b], 0
    je loc_0040b891
loc_0040b88f:
    jmp loc_0040b8af
loc_0040b891:
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040b8af
    mov eax, dword ptr [ebp - 0x18]
    mov byte ptr [eax + 0x39], 1
loc_0040b8af:
    mov dword ptr [ebp - 4], 0
loc_0040b8b6:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040b8c2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x24
    .byte 0x81,0xec,0x24,0x00,0x00,0x00
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0xa], 0
    jne loc_0040b92a
    call sub_0045190a
    mov edx, eax
    mov ebx, 0x32
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040b92a
    mov eax, dword ptr [ebp - 0x24]
    call sub_00422718
    mov dword ptr [ebp - 0x20], eax
    cmp dword ptr [ebp - 0x20], 0
    je loc_0040b92a
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0xa], 1
    mov eax, dword ptr [d_0045ed70]
    mov dword ptr [eax + 0xc], 0
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0x20]
    mov dword ptr [edx + 0x10], eax
loc_0040b92a:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0xa], 0
    je loc_0040bae2
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [d_00464958]
    add dword ptr [eax + 0xc], edx
    mov eax, dword ptr [d_0045ed70]
    imul edx, dword ptr [d_0046494c], 0xa
    cmp edx, dword ptr [eax + 0xc]
    ja loc_0040b987
    call sub_0045190a
    mov edx, eax
    mov ebx, 0x32
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040b987
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0xa], 0
    mov dword ptr [ebp - 4], 0
    jmp loc_0040bae9
loc_0040b987:
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x10]
    mov dword ptr [ebp - 0x20], eax
    cmp dword ptr [ebp - 0x20], 0
    je loc_0040bad7
    mov eax, dword ptr [ebp - 0x20]
    cmp dword ptr [eax + 8], 0
    jne loc_0040b9ad
    mov eax, dword ptr [ebp - 0x20]
    cmp dword ptr [eax], 1
    je loc_0040b9b2
loc_0040b9ad:
    jmp loc_0040baca
loc_0040b9b2:
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov dword ptr [ebp - 0x18], eax
    push 0
    lea eax, [ebp - 0x10]
    push eax
    lea eax, [ebp - 0x14]
    push eax
    push 0x14
    mov ecx, dword ptr [ebp - 0x18]
    mov ebx, dword ptr [ebp - 0x1c]
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    call sub_004092a1
    cmp dword ptr [ebp - 0x10], 0
    jne loc_0040ba23
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    je loc_0040ba23
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0xa], 0
loc_0040ba23:
    cmp dword ptr [ebp - 0x14], 0
    je loc_0040babd
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0x14]
    dec eax
    mov dword ptr [edx + 0x14], eax
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x14]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0xc], edx
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x14]
    and eax, 3
    shl eax, 2
    mov edx, dword ptr [d_0045ed70]
    mov edx, dword ptr [edx + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [eax + d_0045bedc]
    add eax, edx
    mov dword ptr [ebp - 8], eax
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040a59d
    test eax, eax
    je loc_0040baab
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [eax + 0x14]
    mov eax, dword ptr [ebp - 0x24]
    mov word ptr [eax + 0x2e], dx
    mov dword ptr [ebp - 4], 1
    jmp loc_0040bae9
loc_0040baab:
    mov eax, dword ptr [ebp - 0x24]
    mov word ptr [eax + 0x2e], 0xffff
    mov dword ptr [ebp - 4], 1
    jmp loc_0040bae9
loc_0040babd:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0xa], 0
    jmp loc_0040bad5
loc_0040baca:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0xa], 0
loc_0040bad5:
    jmp loc_0040bae2
loc_0040bad7:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0xa], 0
loc_0040bae2:
    mov dword ptr [ebp - 4], 0
loc_0040bae9:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040baf5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x24
    .byte 0x81,0xec,0x24,0x00,0x00,0x00
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x18], 0
    jne loc_0040bb9a
    call sub_0045190a
    mov edx, eax
    mov ebx, 0x32
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0040bb9a
    lea eax, [ebp - 0x20]
    push eax
    push 0
    lea eax, [ebp - 0x10]
    push eax
    lea ecx, [ebp - 0x14]
    mov eax, 0x398
    call sub_00412135
    mov ebx, eax
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    call sub_00409c1f
    cmp dword ptr [ebp - 0x20], 0
    je loc_0040bb9a
    mov eax, 0x398
    call sub_00412135
    inc eax
    cmp eax, dword ptr [ebp - 0x10]
    jl loc_0040bb9a
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x18], 1
    mov eax, dword ptr [d_0045ed70]
    mov dword ptr [eax + 0xc], 0
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0x20]
    mov dword ptr [edx + 0x20], eax
loc_0040bb9a:
    mov eax, dword ptr [d_0045ed70]
    cmp word ptr [eax + 0x18], 0
    je loc_0040bd31
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [d_00464958]
    add dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [d_0045ed70]
    imul edx, dword ptr [d_0046494c], 0xa
    cmp edx, dword ptr [eax + 0x1c]
    ja loc_0040bbe0
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x18], 0
    mov dword ptr [ebp - 4], 0
    jmp loc_0040bd38
loc_0040bbe0:
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x20]
    mov dword ptr [ebp - 0x20], eax
    cmp dword ptr [ebp - 0x20], 0
    je loc_0040bd26
    mov eax, dword ptr [ebp - 0x20]
    cmp dword ptr [eax], 2
    jne loc_0040bd19
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x20]
    mov dword ptr [ebp - 0x18], eax
    push 0
    lea eax, [ebp - 0x10]
    push eax
    lea eax, [ebp - 0x14]
    push eax
    mov eax, 0x398
    call sub_00412135
    inc eax
    push eax
    mov ecx, dword ptr [ebp - 0x18]
    mov ebx, dword ptr [ebp - 0x1c]
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    call sub_004092a1
    cmp dword ptr [ebp - 0x10], 0
    jne loc_0040bc72
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    je loc_0040bc72
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x18], 0
loc_0040bc72:
    cmp dword ptr [ebp - 0x14], 0
    je loc_0040bd0c
    mov edx, dword ptr [d_0045ed70]
    mov eax, dword ptr [ebp - 0x14]
    dec eax
    mov dword ptr [edx + 0x24], eax
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x24]
    and edx, 3
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0xc], edx
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x24]
    and eax, 3
    shl eax, 2
    mov edx, dword ptr [d_0045ed70]
    mov edx, dword ptr [edx + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [eax + d_0045bedc]
    add eax, edx
    mov dword ptr [ebp - 8], eax
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040a59d
    test eax, eax
    je loc_0040bcfa
    mov eax, dword ptr [d_0045ed70]
    mov dx, word ptr [eax + 0x24]
    mov eax, dword ptr [ebp - 0x24]
    mov word ptr [eax + 0x2e], dx
    mov dword ptr [ebp - 4], 1
    jmp loc_0040bd38
loc_0040bcfa:
    mov eax, dword ptr [ebp - 0x24]
    mov word ptr [eax + 0x2e], 0xffff
    mov dword ptr [ebp - 4], 1
    jmp loc_0040bd38
loc_0040bd0c:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x18], 0
    jmp loc_0040bd24
loc_0040bd19:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x18], 0
loc_0040bd24:
    jmp loc_0040bd31
loc_0040bd26:
    mov eax, dword ptr [d_0045ed70]
    mov word ptr [eax + 0x18], 0
loc_0040bd31:
    mov dword ptr [ebp - 4], 0
loc_0040bd38:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040bd44:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x5c], 0
    jne loc_0040bd6a
    mov dword ptr [ebp - 4], 0
    jmp loc_0040bdf6
loc_0040bd6a:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x94], 0
    je loc_0040bd8d
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x38], 0
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x36], 0
    mov dword ptr [ebp - 4], 1
    jmp loc_0040bdf6
loc_0040bd8d:
    mov eax, dword ptr [d_0045ed70]
    mov edx, dword ptr [eax + 0x30]
    sar edx, 0x10
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    call sub_00422e48
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_0040bdef
    mov eax, dword ptr [ebp - 8]
    mov dx, word ptr [eax + 0x3e]
    mov eax, dword ptr [ebp - 0xc]
    cmp dx, word ptr [eax + 0x3e]
    jne loc_0040bdef
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    je loc_0040bdef
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x38], 1
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x36], 0
    mov dword ptr [ebp - 4], 1
    jmp loc_0040bdf6
loc_0040bdef:
    mov dword ptr [ebp - 4], 0
loc_0040bdf6:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040be02:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x18]
    cmp byte ptr [eax + 0x5b], 0
    jne loc_0040be28
    mov dword ptr [ebp - 4], 0
    jmp loc_0040bedb
loc_0040be28:
    call sub_0045190a
    mov edx, eax
    mov ebx, 4
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    je loc_0040be4b
    mov dword ptr [ebp - 4], 0
    jmp loc_0040bedb
loc_0040be4b:
    mov dword ptr [ebp - 8], 0
loc_0040be52:
    cmp dword ptr [ebp - 8], 4
    jl loc_0040be65
    # jmp 0x40bed4
    .byte 0xe9
    .long loc_0040bed4 - . - 4
loc_0040be5d:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040be52
loc_0040be65:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x2e]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_0045ed70]
    mov eax, dword ptr [eax + 0x30]
    sar eax, 0x10
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0xc], edx
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00422e48
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_0040bed2
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x18]
    mov word ptr [edx + 0x2e], ax
    mov eax, dword ptr [ebp - 0x18]
    mov byte ptr [eax + 0x39], 1
    mov eax, dword ptr [ebp - 0x18]
    mov byte ptr [eax + 0x37], 0
    mov dword ptr [ebp - 4], 1
    jmp loc_0040bedb
loc_0040bed2:
    jmp loc_0040be5d
loc_0040bed4:
    mov dword ptr [ebp - 4], 0
loc_0040bedb:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040bee7:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    lea eax, [ebp - 4]
    call sub_00451e3e
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00460050]
    je loc_0040c02c
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460050], eax
    mov dword ptr [ebp - 8], 0
loc_0040bf1b:
    cmp dword ptr [ebp - 8], 0xc7
    jl loc_0040bf2e
    jmp loc_0040bf90
loc_0040bf26:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040bf1b
loc_0040bf2e:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [eax + d_0045fbb0]
    mov dword ptr [edx + d_0045fbac], eax
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [eax + d_0045f890]
    mov dword ptr [edx + d_0045f88c], eax
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [eax + d_0045f570]
    mov dword ptr [edx + d_0045f56c], eax
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [eax + d_0045f250]
    mov dword ptr [edx + d_0045f24c], eax
    jmp loc_0040bf26
loc_0040bf90:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00460034]
    mov dword ptr [eax + d_0045fbac], edx
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_0046003c]
    mov dword ptr [eax + d_0045f88c], edx
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00460048]
    mov dword ptr [eax + d_0045f56c], edx
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_0046004c]
    mov dword ptr [eax + d_0045f24c], edx
    mov eax, dword ptr [d_00460034]
    add dword ptr [d_004642c8], eax
    mov eax, dword ptr [d_0046003c]
    add dword ptr [d_004642cc], eax
    mov eax, dword ptr [d_00460048]
    add dword ptr [d_004642d0], eax
    mov eax, dword ptr [d_0046004c]
    add dword ptr [d_004642d4], eax
    mov dword ptr [d_00460034], 0
    mov dword ptr [d_0046003c], 0
    mov dword ptr [d_00460048], 0
    mov dword ptr [d_0046004c], 0
loc_0040c02c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c035:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460058], eax
    cmp dword ptr [ebp - 4], 2
    jne loc_0040c061
    mov eax, dword ptr [d_0046013c]
    sar eax, 0x10
    mov dword ptr [d_004600d4], eax
loc_0040c061:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c06a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_00460058]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c08c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov edx, offset d_00458c29
    mov eax, dword ptr [d_0045bac8]
    call sub_004514fc
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_0040c0ec
    mov ebx, dword ptr [ebp - 8]
    mov edx, 0x28
    mov eax, offset d_00460140
    call sub_004515ff
    mov edx, 0xa
    mov eax, offset d_00460140
    call sub_0045167a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_0040c0e2
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
loc_0040c0e2:
    mov eax, dword ptr [ebp - 8]
    call sub_0045172e
    jmp loc_0040c137
loc_0040c0ec:
    mov eax, 0x2f
    call sub_00412135
    cmp eax, 1
    jle loc_0040c10a
    mov eax, 0x2f
    call sub_00412135
    mov dword ptr [ebp - 0xc], eax
    jmp loc_0040c111
loc_0040c10a:
    mov dword ptr [ebp - 0xc], 1
loc_0040c111:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0xc]
    lea eax, [edx + 0x1f4]
    call sub_004124a4
    mov edx, eax
    mov eax, offset d_00460140
    call sub_0045189e
loc_0040c137:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c140:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov edx, offset d_00458c2c
    mov eax, dword ptr [d_0045bac8]
    call sub_004514fc
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_0040c17b
    mov edx, dword ptr [ebp - 4]
    mov eax, offset d_00460140
    call sub_00451e74
    mov eax, dword ptr [ebp - 4]
    call sub_0045172e
loc_0040c17b:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c184:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    inc word ptr [d_0046013a]
    cmp word ptr [d_0046013a], 0x7d0
    jle loc_0040c1ad
    mov word ptr [d_0046013a], 1
loc_0040c1ad:
    mov eax, dword ptr [d_00460138]
    sar eax, 0x10
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c1c4:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [d_00460014]
    mov dword ptr [ebp - 0xc], eax
loc_0040c1e1:
    cmp dword ptr [ebp - 8], 0x1f4
    jl loc_0040c1fb
    jmp loc_0040c21c
loc_0040c1ec:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x28
    jmp loc_0040c1e1
loc_0040c1fb:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax], 0
    jne loc_0040c21a
    mov ebx, 0x28
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00451940
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
    jmp loc_0040c223
loc_0040c21a:
    jmp loc_0040c1ec
loc_0040c21c:
    mov dword ptr [ebp - 4], 0
loc_0040c223:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c22f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 0
    je loc_0040c265
    mov ebx, 0x10e
    mov edx, offset d_00458c2f
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    call sub_0041863d
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
loc_0040c265:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c26e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov word ptr [d_0046013a], 1
    mov dword ptr [ebp - 0xc], 0
loc_0040c28c:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_0040c29c
    jmp loc_0040c2ea
loc_0040c294:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040c28c
loc_0040c29c:
    mov dword ptr [ebp - 8], 0
loc_0040c2a3:
    cmp dword ptr [ebp - 8], 0x1f4
    jl loc_0040c2b6
    jmp loc_0040c2d3
loc_0040c2ae:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040c2a3
loc_0040c2b6:
    imul edx, dword ptr [ebp - 0xc], 0x3ec
    mov eax, dword ptr [d_00460024]
    add eax, edx
    mov edx, dword ptr [ebp - 8]
    add edx, edx
    add eax, edx
    mov word ptr [eax + 4], 0
    jmp loc_0040c2ae
loc_0040c2d3:
    imul eax, dword ptr [ebp - 0xc], 0x3ec
    mov edx, dword ptr [d_00460024]
    add eax, edx
    mov dword ptr [eax], 0
    jmp loc_0040c294
loc_0040c2ea:
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_00460014]
    mov dword ptr [ebp - 4], eax
loc_0040c2f9:
    cmp dword ptr [ebp - 0xc], 0x1f4
    jl loc_0040c313
    jmp loc_0040c31d
loc_0040c304:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x28
    jmp loc_0040c2f9
loc_0040c313:
    mov eax, dword ptr [ebp - 4]
    call sub_0040c22f
    jmp loc_0040c304
loc_0040c31d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c326:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_00460014]
    mov dword ptr [ebp - 8], eax
loc_0040c346:
    cmp dword ptr [ebp - 0xc], 0x1f4
    jl loc_0040c360
    jmp loc_0040c386
loc_0040c351:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x28
    jmp loc_0040c346
loc_0040c360:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_0040c384
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 8]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_0040c384
    mov eax, dword ptr [ebp - 8]
    call sub_0040c22f
loc_0040c384:
    jmp loc_0040c351
loc_0040c386:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c38f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 4], 0xffffffff
    mov dword ptr [ebp - 0xc], 0
loc_0040c3ae:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_0040c3be
    jmp loc_0040c3db
loc_0040c3b6:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040c3ae
loc_0040c3be:
    mov eax, dword ptr [ebp - 0xc]
    add eax, eax
    mov eax, dword ptr [eax + bm_net_part - 2]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_0040c3d9
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
    jmp loc_0040c3db
loc_0040c3d9:
    jmp loc_0040c3b6
loc_0040c3db:
    cmp dword ptr [ebp - 4], 0
    jl loc_0040c47c
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, offset d_00458c36
    push eax
    call sub_0042c0c8
    add esp, 0xc
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_00460014]
    mov dword ptr [ebp - 8], eax
loc_0040c40a:
    cmp dword ptr [ebp - 0xc], 0x1f4
    jl loc_0040c424
    jmp loc_0040c465
loc_0040c415:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x28
    jmp loc_0040c40a
loc_0040c424:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_0040c463
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    cmp byte ptr [eax + 0x1c], 0
    jne loc_0040c463
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x1c], 1
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [eax + 0x10]
    mov eax, dword ptr [d_0046013a]
    sar eax, 0x10
    lea edx, [eax - 1]
    mov eax, dword ptr [ebp - 8]
    cmp edx, dword ptr [eax + 0x10]
    jg loc_0040c463
    mov eax, dword ptr [ebp - 8]
    call sub_0040c22f
loc_0040c463:
    jmp loc_0040c415
loc_0040c465:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov word ptr [eax + bm_net_part], 0
    dec word ptr [d_0046013c]
    jmp loc_0040c48e
loc_0040c47c:
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, offset d_00458c5a
    push eax
    call sub_0042c0c8
    add esp, 8
loc_0040c48e:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c497:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    cmp eax, dword ptr [d_004600d4]
    jne loc_0040c4c2
    mov dword ptr [ebp - 0xc], 1
    jmp loc_0040c4c9
loc_0040c4c2:
    mov dword ptr [ebp - 0xc], 0
loc_0040c4c9:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040c4db:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    call sub_0040ec4c
    cmp dword ptr [d_00460014], 0
    je loc_0040c548
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [d_00460014]
    mov dword ptr [ebp - 4], eax
loc_0040c506:
    cmp dword ptr [ebp - 8], 0x1f4
    jl loc_0040c520
    jmp loc_0040c52a
loc_0040c511:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x28
    jmp loc_0040c506
loc_0040c520:
    mov eax, dword ptr [ebp - 4]
    call sub_0040c22f
    jmp loc_0040c511
loc_0040c52a:
    mov ebx, 0x17f
    mov edx, offset d_00458c2f
    mov eax, dword ptr [d_00460014]
    call sub_0041863d
    mov dword ptr [d_00460014], 0
loc_0040c548:
    cmp dword ptr [d_00460024], 0
    je loc_0040c56f
    mov ebx, 0x183
    mov edx, offset d_00458c2f
    mov eax, dword ptr [d_00460024]
    call sub_0041863d
    mov dword ptr [d_00460024], 0
loc_0040c56f:
    call sub_0040c140
    mov dword ptr [ebp - 0xc], 0
loc_0040c57b:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_0040c58b
    jmp loc_0040c5b8
loc_0040c583:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040c57b
loc_0040c58b:
    mov ebx, 0x18b
    mov edx, offset d_00458c2f
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045ff04]
    call sub_0041863d
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov dword ptr [eax + d_0045ff04], 0
    jmp loc_0040c583
loc_0040c5b8:
    mov dword ptr [ebp - 0x10], 0
loc_0040c5bf:
    cmp dword ptr [ebp - 0x10], 9
    jl loc_0040c5cf
    jmp loc_0040c5fc
loc_0040c5c7:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_0040c5bf
loc_0040c5cf:
    mov ebx, 0x192
    mov edx, offset d_00458c2f
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov eax, dword ptr [eax + bm_net_names]
    call sub_0041863d
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov dword ptr [eax + bm_net_names], 0
    jmp loc_0040c5c7
loc_0040c5fc:
    mov edx, offset d_00458c7d
    mov eax, offset d_00458c80
    call sub_004514fc
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_0040c66f
    mov dword ptr [ebp - 0x18], 0
    cmp dword ptr [d_00460018], 0
    je loc_0040c635
    fild dword ptr [d_0046001c]
    fild dword ptr [d_00460018]
    fdivp st(1)
    fstp dword ptr [ebp - 0x18]
loc_0040c635:
    push dword ptr [d_0046002c]
    fld dword ptr [ebp - 0x18]
    sub esp, 8
    fstp qword ptr [esp]
    push dword ptr [d_00460030]
    mov eax, 0x3e8
    call sub_004124a4
    push eax
    mov eax, offset d_00458c8c
    push eax
    mov eax, dword ptr [ebp - 0x14]
    push eax
    call sub_00451b3e
    add esp, 0x1c
    mov eax, dword ptr [ebp - 0x14]
    call sub_0045172e
loc_0040c66f:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c678:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    call sub_00413d01
    test eax, eax
    je loc_0040c743
    mov edx, offset d_00458c7d
    mov eax, offset d_00458caf
    call sub_004514fc
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_0040c743
    call sub_004218e7
    push eax
    mov eax, offset d_00458cbc
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0xc
    mov dword ptr [ebp - 8], 0
loc_0040c6ce:
    cmp dword ptr [ebp - 8], 0xc8
    jl loc_0040c6e1
    jmp loc_0040c729
loc_0040c6d9:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040c6ce
loc_0040c6e1:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    push dword ptr [eax + d_0045f24c]
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    push dword ptr [eax + d_0045f56c]
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    push dword ptr [eax + d_0045f88c]
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    push dword ptr [eax + d_0045fbac]
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_00458cdf
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 0x1c
    jmp loc_0040c6d9
loc_0040c729:
    mov eax, offset d_00458d19
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_00451b3e
    add esp, 8
    mov eax, dword ptr [ebp - 4]
    call sub_0045172e
loc_0040c743:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c74c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
loc_0040c75a:
    call sub_0045190a
    mov word ptr [d_0046013e], ax
    cmp word ptr [d_0046013e], 0
    je loc_0040c75a
    mov ecx, 0x1cb
    mov ebx, offset d_00458c2f
    mov edx, 0x1f4
    mov eax, 0x28
    call sub_00418511
    mov dword ptr [d_00460014], eax
    mov ecx, 0x1cc
    mov ebx, offset d_00458c2f
    mov edx, 0xa
    mov eax, 0x3ec
    call sub_00418511
    mov dword ptr [d_00460024], eax
    call sub_0040c08c
    mov dword ptr [ebp - 4], 0
loc_0040c7b7:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040c7c7
    jmp loc_0040c7eb
loc_0040c7bf:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040c7b7
loc_0040c7c7:
    mov ebx, 0x1d4
    mov edx, offset d_00458c2f
    mov eax, 0x29
    call sub_004184d0
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_0045ff04], edx
    jmp loc_0040c7bf
loc_0040c7eb:
    mov dword ptr [ebp - 8], 0
loc_0040c7f2:
    cmp dword ptr [ebp - 8], 9
    jl loc_0040c802
    jmp loc_0040c826
loc_0040c7fa:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040c7f2
loc_0040c802:
    mov ebx, 0x1db
    mov edx, offset d_00458c2f
    mov eax, 0x29
    call sub_004184d0
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov dword ptr [eax + bm_net_names], edx
    jmp loc_0040c7fa
loc_0040c826:
    mov eax, offset ptr_0040c4db
    call sub_00410ebf
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040c839:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xfc
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], 0
    mov dword ptr [d_004600d4], 0
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c035
    call sub_0040c26e
    call sub_0040cc87
    lea edx, [ebp - 0x70]
    mov eax, offset d_00458d1b
    call sub_0041739c
    lea eax, [ebp - 0x70]
    call sub_004516c1
    test eax, eax
    jne loc_0040c8ce
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x154
    call sub_004124a4
    mov edx, eax
    mov eax, 0x60
    call sub_004124a4
    call sub_00414340
    xor eax, eax
    call sub_0040c035
    mov dword ptr [d_004600d0], 0
    mov dword ptr [ebp - 4], 1
    jmp loc_0040cbad
loc_0040c8ce:
    mov dword ptr [d_004600d0], 1
    cmp dword ptr [d_00464828], 0
    je loc_0040c8ed
    mov eax, dword ptr [d_00464828]
    mov dword ptr [d_0046012c], eax
    jmp loc_0040c95a
loc_0040c8ed:
    mov dword ptr [ebp - 0x74], 0
loc_0040c8f4:
    cmp dword ptr [ebp - 0x74], 5
    jl loc_0040c904
    jmp loc_0040c920
loc_0040c8fc:
    mov eax, dword ptr [ebp - 0x74]
    inc dword ptr [ebp - 0x74]
    jmp loc_0040c8f4
loc_0040c904:
    mov eax, dword ptr [ebp - 0x74]
    add eax, 0x276
    call sub_004124a4
    mov edx, dword ptr [ebp - 0x74]
    shl edx, 2
    mov dword ptr [edx + ebp - 0x88], eax
    jmp loc_0040c8fc
loc_0040c920:
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x96
    push 0x96
    xor ecx, ecx
    mov eax, 0x456
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x88]
    mov eax, 0x26c
    call sub_004124a4
    call sub_0041485a
    mov dword ptr [d_0046012c], eax
loc_0040c95a:
    cmp dword ptr [d_0046012c], 1
    jl loc_0040c96c
    cmp dword ptr [d_0046012c], 3
    jle loc_0040c989
loc_0040c96c:
    mov dword ptr [d_004600d0], 0
    xor eax, eax
    call sub_0040c035
    mov dword ptr [ebp - 4], 1
    jmp loc_0040cbad
loc_0040c989:
    cmp dword ptr [d_004600d0], 0
    je loc_0040cb27
    mov dword ptr [ebp - 8], 1
    mov edx, offset d_004600f0
    mov eax, dword ptr [d_0046012c]
    call sub_0043b81d
    call dword ptr [d_004600f4]
    cmp dword ptr [d_0046012c], 2
    je loc_0040c9c8
    cmp dword ptr [d_0046012c], 3
    jne loc_0040caa9
loc_0040c9c8:
    cmp dword ptr [d_0046012c], 2
    jne loc_0040ca8b
    mov eax, dword ptr [d_00464970]
    mov dword ptr [d_00460114], eax
    mov eax, dword ptr [d_0046482c]
    mov dword ptr [d_00460120], eax
    mov eax, dword ptr [d_004648b8]
    mov dword ptr [d_0046011c], eax
    cmp dword ptr [d_00460058], 2
    jne loc_0040ca16
    mov eax, offset d_00458d24
    push eax
    call sub_0042c0c8
    add esp, 4
    mov dword ptr [d_00460124], 0
    jmp loc_0040ca89
loc_0040ca16:
    mov edx, offset d_00464830
    lea eax, [ebp - 0xec]
    call sub_0045189e
    push 0xb4
    mov ecx, 0x19
    mov eax, 0x288
    call sub_004124a4
    mov ebx, eax
    mov edx, 0x1e
    lea eax, [ebp - 0xec]
    call sub_0042e938
    mov dword ptr [ebp - 0xf0], eax
    cmp dword ptr [ebp - 0xf0], -1
    je loc_0040ca6b
    lea edx, [ebp - 0xec]
    mov eax, offset d_00464830
    call sub_0045189e
loc_0040ca6b:
    mov eax, offset d_00464830
    push eax
    mov eax, offset d_00458d40
    push eax
    call sub_0042c0c8
    add esp, 8
    mov dword ptr [d_00460124], offset d_00464830
loc_0040ca89:
    jmp loc_0040caa9
loc_0040ca8b:
    mov eax, dword ptr [d_00464970]
    mov dword ptr [d_00460114], eax
    mov eax, dword ptr [d_0046482c]
    mov dword ptr [d_00460120], eax
    mov eax, dword ptr [d_004648b8]
    mov dword ptr [d_0046011c], eax
loc_0040caa9:
    call dword ptr [d_004600fc]
    mov eax, 0x39
    call sub_004124a4
    call sub_00412e0c
    xor eax, eax
    call sub_00412e33
    mov dword ptr [ebp - 0xf4], 0
loc_0040cacf:
    call dword ptr [d_00460110]
    test eax, eax
    jne loc_0040cb0a
    call sub_004102b7
    mov dword ptr [ebp - 0xf8], eax
    cmp dword ptr [ebp - 0xf8], 0x1b
    jne loc_0040cb01
    mov dword ptr [d_004600d0], 0
    mov dword ptr [ebp - 0xf4], 1
loc_0040cb01:
    cmp dword ptr [ebp - 0xf4], 0
    je loc_0040cacf
loc_0040cb0a:
    mov eax, 0x64
    call sub_00412e33
    cmp dword ptr [d_0046012c], 1
    jne loc_0040cb27
    mov eax, offset d_0046005c
    call sub_0043bdde
loc_0040cb27:
    cmp dword ptr [d_004600d0], 0
    je loc_0040cb37
    call sub_0040e474
    jmp loc_0040cb85
loc_0040cb37:
    cmp dword ptr [ebp - 8], 0
    je loc_0040cb53
    call dword ptr [d_00460100]
    call dword ptr [d_004600f8]
    mov eax, offset d_004600f0
    call sub_0043b86d
loc_0040cb53:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x123
    call sub_004124a4
    mov edx, eax
    mov eax, 0x60
    call sub_004124a4
    call sub_00414340
    xor eax, eax
    call sub_0040c035
loc_0040cb85:
    cmp dword ptr [d_004600d0], 0
    jne loc_0040cb9a
    mov dword ptr [ebp - 0xfc], 1
    jmp loc_0040cba4
loc_0040cb9a:
    mov dword ptr [ebp - 0xfc], 0
loc_0040cba4:
    mov eax, dword ptr [ebp - 0xfc]
    mov dword ptr [ebp - 4], eax
loc_0040cbad:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040cbb9:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], 0
loc_0040cbce:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040cbde
    jmp loc_0040cbef
loc_0040cbd6:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040cbce
loc_0040cbde:
    call bm_pump
    mov eax, 0x64
    call sub_00413cb0
    jmp loc_0040cbd6
loc_0040cbef:
    call dword ptr [d_00460100]
    call dword ptr [d_004600f8]
    mov eax, offset d_004600f0
    call sub_0043b86d
    mov dword ptr [d_004600d0], 0
    call sub_0040c26e
    call sub_0040cc87
    xor eax, eax
    call sub_0040c035
    mov dword ptr [d_004600d4], 0
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040cc33:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_0046495c], 0
    mov dword ptr [d_00464950], 0
    mov dword ptr [d_00460054], 0
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], offset d_0046005c
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040cc87:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov ebx, 0x258
    xor edx, edx
    mov eax, offset d_0045eff4
    call sub_00451940
    mov dword ptr [d_0046000c], 0
    mov dword ptr [d_00460010], 0
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ccc1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_00460010], 0
    je loc_0040cd13
    call sub_0040bee7
    mov eax, dword ptr [d_00460010]
    add eax, 0xa
    add dword ptr [d_0046003c], eax
    inc dword ptr [d_0046004c]
    mov eax, dword ptr [d_00460010]
    add eax, 0xa
    mov dword ptr [ebp - 4], eax
    xor ecx, ecx
    lea ebx, [ebp - 4]
    mov edx, offset d_0045eff4
    xor eax, eax
    call dword ptr [d_00460104]
    call sub_0040cc87
loc_0040cd13:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040cd1c:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x1c], eax
    mov dword ptr [ebp - 0x18], edx
    mov dword ptr [ebp - 0x14], ebx
    mov dword ptr [ebp - 0xc], offset d_0045eff4
    mov eax, dword ptr [d_00460010]
    add eax, dword ptr [ebp - 0x14]
    cmp eax, 0x200
    jl loc_0040cd4c
    call sub_0040ccc1
loc_0040cd4c:
    mov edx, dword ptr [ebp - 0xc]
    add edx, 0xa
    mov eax, dword ptr [d_00460010]
    add eax, edx
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x14]
    # add eax, 6
    .byte 0x05,0x06,0x00,0x00,0x00
    mov edx, dword ptr [ebp - 8]
    mov word ptr [edx], ax
    mov eax, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 8]
    mov word ptr [edx + 2], ax
    cmp dword ptr [ebp - 0x14], 0
    je loc_0040cd80
    cmp dword ptr [ebp - 0x18], 0
    jne loc_0040cd82
loc_0040cd80:
    jmp loc_0040cd93
loc_0040cd82:
    mov ebx, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 8]
    add eax, 6
    call sub_00451dc4
loc_0040cd93:
    inc dword ptr [d_0046000c]
    mov eax, dword ptr [ebp - 0x14]
    add eax, 6
    add dword ptr [d_00460010], eax
    mov dx, word ptr [d_0045bac4]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax], dx
    mov ax, word ptr [d_00460010]
    # add eax, 0xa
    .byte 0x05,0x0a,0x00,0x00,0x00
    mov edx, dword ptr [ebp - 0xc]
    mov word ptr [edx + 2], ax
    mov dx, word ptr [d_0046000c]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 4], dx
    mov dx, word ptr [d_0046013e]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 6], dx
    cmp dword ptr [d_00460058], 1
    jne loc_0040cdf7
    mov dx, word ptr [d_004600d4]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 8], dx
loc_0040cdf7:
    cmp dword ptr [d_00460058], 2
    jne loc_0040ce0e
    mov dx, word ptr [d_0046013e]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 8], dx
loc_0040ce0e:
    mov eax, dword ptr [ebp - 8]
    movsx eax, word ptr [eax]
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0040ce27:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 8], ebx
    cmp dword ptr [d_00460058], 0
    je loc_0040cf8c
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0040cd1c
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [d_00460028], 0
    je loc_0040ce7a
    cmp dword ptr [d_00460020], 0
    je loc_0040ce7a
    mov dx, word ptr [d_00460020]
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 4], dx
loc_0040ce7a:
    cmp dword ptr [d_00460028], 0
    jne loc_0040cf8c
    cmp dword ptr [ebp - 0x10], 0x20
    jl loc_0040cf8c
    cmp word ptr [d_0046013c], 1
    jle loc_0040cf8c
    inc dword ptr [d_0046495c]
    call sub_0040c184
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 4], dx
    call sub_0040c1c4
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_0040cf83
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    add eax, 6
    mov dword ptr [ebp - 0x18], eax
    mov ebx, 0x2fc
    mov edx, offset d_00458c2f
    mov eax, dword ptr [ebp - 0x18]
    call sub_004184d0
    mov edx, eax
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [eax], edx
    mov eax, dword ptr [ebp - 0x14]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0x1c], eax
    mov ebx, 0xc
    xor edx, edx
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00451940
    mov eax, dword ptr [ebp - 4]
    mov dx, word ptr [eax + 2]
    mov eax, dword ptr [ebp - 0x1c]
    mov word ptr [eax + 0xa], dx
    mov eax, dword ptr [ebp - 4]
    mov dx, word ptr [eax + 4]
    mov eax, dword ptr [ebp - 0x1c]
    mov word ptr [eax + 8], dx
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax]
    sub eax, 6
    mov edx, dword ptr [ebp - 0x1c]
    mov word ptr [edx + 6], ax
    mov eax, dword ptr [ebp - 0x1c]
    mov ebx, dword ptr [eax + 4]
    sar ebx, 0x10
    mov edx, dword ptr [ebp - 4]
    add edx, 6
    mov eax, dword ptr [ebp - 0x1c]
    add eax, 0xc
    call sub_00451dc4
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 4], eax
    mov ebx, 0xa
    xor edx, edx
    mov eax, dword ptr [ebp - 0x14]
    add eax, 0x1c
    call sub_00451940
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [eax + 0x10], 0
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [eax + 0x14], 0
    call sub_0043acf8
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 0x18], eax
    jmp loc_0040cf8c
loc_0040cf83:
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 4], 0
loc_0040cf8c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
ptr_0040cf93:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [d_00460058], 1
    jne loc_0040d06a
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 8], 0
loc_0040cfc1:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_0040cfd1
    jmp loc_0040cfff
loc_0040cfc9:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040cfc1
loc_0040cfd1:
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    mov dx, word ptr [eax + d_004600d8]
    mov eax, dword ptr [ebp - 0xc]
    cmp dx, word ptr [eax + 2]
    jne loc_0040cffd
    mov eax, dword ptr [ebp - 4]
    movsx edx, word ptr [eax]
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov dword ptr [eax + d_0045ff54], edx
    # jmp 0x40d06a
    .byte 0xe9
    .long loc_0040d06a - . - 4
loc_0040cffd:
    jmp loc_0040cfc9
loc_0040cfff:
    mov dword ptr [ebp - 8], 0
loc_0040d006:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_0040d016
    jmp loc_0040d06a
loc_0040d00e:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040d006
loc_0040d016:
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    cmp word ptr [eax + d_004600d8], 0
    jne loc_0040d068
    mov edx, dword ptr [ebp - 8]
    add edx, edx
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 2]
    mov word ptr [edx + d_004600d8], ax
    mov eax, dword ptr [ebp - 4]
    movsx edx, word ptr [eax]
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov dword ptr [eax + d_0045ff54], edx
    mov ebx, 0x29
    mov edx, dword ptr [ebp - 4]
    add edx, 2
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045ff04]
    call sub_0045169c
    jmp loc_0040d06a
loc_0040d068:
    jmp loc_0040d00e
loc_0040d06a:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040d073:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    # je 0x40d102
    .byte 0x0f,0x84
    .long loc_0040d102 - . - 4
    cmp dword ptr [d_00460058], 1
    jne loc_0040d102
    mov dword ptr [ebp - 4], 0
loc_0040d0a4:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040d0b4
    jmp loc_0040d0e8
loc_0040d0ac:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040d0a4
loc_0040d0b4:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov dx, word ptr [eax + d_004600d8]
    mov eax, dword ptr [ebp - 8]
    cmp dx, word ptr [eax + 2]
    jne loc_0040d0e6
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov word ptr [eax + d_004600d8], 0
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045ff04]
    mov byte ptr [eax], 0
loc_0040d0e6:
    jmp loc_0040d0ac
loc_0040d0e8:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    cmp eax, dword ptr [d_004600d4]
    jne loc_0040d102
    mov dword ptr [d_004600d4], 0
loc_0040d102:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d10b:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    call sub_0040d073
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d12d:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [d_00460058], 1
    jne loc_0040d16c
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax]
    cmp ax, word ptr [d_0046013e]
    jne loc_0040d16c
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    mov dword ptr [d_004600d4], eax
loc_0040d16c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d175:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [d_00460058], 2
    jne loc_0040d248
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax]
    cmp ax, word ptr [d_0046013e]
    jne loc_0040d248
    mov dword ptr [ebp - 8], 0
loc_0040d1b6:
    cmp dword ptr [ebp - 8], 9
    jl loc_0040d1c6
    jmp loc_0040d1e7
loc_0040d1be:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040d1b6
loc_0040d1c6:
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    mov dx, word ptr [eax + bm_net_ids]
    mov eax, dword ptr [ebp - 0xc]
    cmp dx, word ptr [eax + 2]
    jne loc_0040d1e5
    mov eax, dword ptr [ebp - 8]
    call sub_0040ecc3
    jmp loc_0040d248
loc_0040d1e5:
    jmp loc_0040d1be
loc_0040d1e7:
    mov dword ptr [ebp - 8], 0
loc_0040d1ee:
    cmp dword ptr [ebp - 8], 9
    jl loc_0040d1fe
    jmp loc_0040d248
loc_0040d1f6:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040d1ee
loc_0040d1fe:
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    cmp word ptr [eax + bm_net_ids], 0
    jne loc_0040d246
    mov ebx, dword ptr [ebp - 8]
    add ebx, ebx
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 2]
    mov word ptr [ebx + bm_net_ids], ax
    mov ebx, 0x29
    mov edx, dword ptr [ebp - 4]
    add edx, 2
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov eax, dword ptr [eax + bm_net_names]
    call sub_0045169c
    mov eax, dword ptr [ebp - 8]
    call sub_0040ecc3
    jmp loc_0040d248
loc_0040d246:
    jmp loc_0040d1f6
loc_0040d248:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d251:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c497
    test eax, eax
    jne loc_0040d2bb
    mov dword ptr [ebp - 4], 0
loc_0040d275:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040d285
    jmp loc_0040d2b9
loc_0040d27d:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040d275
loc_0040d285:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov dx, word ptr [eax + d_004600d8]
    mov eax, dword ptr [ebp - 0xc]
    cmp dx, word ptr [eax + 2]
    jne loc_0040d2b7
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov word ptr [eax + d_004600d8], 0
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045ff04]
    mov byte ptr [eax], 0
loc_0040d2b7:
    jmp loc_0040d27d
loc_0040d2b9:
    jmp loc_0040d2ef
loc_0040d2bb:
    mov dword ptr [d_00460068], 1
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0xc
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov ax, word ptr [eax]
    mov word ptr [d_0046013c], ax
    mov ebx, 0x14
    mov edx, dword ptr [ebp - 8]
    add edx, 2
    mov eax, offset bm_net_part
    call sub_00451dc4
loc_0040d2ef:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d2f8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d369
    cmp dword ptr [d_00460058], 2
    jne loc_0040d369
    mov dword ptr [ebp - 4], 0
loc_0040d325:
    cmp dword ptr [ebp - 4], 9
    jl loc_0040d335
    jmp loc_0040d369
loc_0040d32d:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040d325
loc_0040d335:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov dx, word ptr [eax + bm_net_ids]
    mov eax, dword ptr [ebp - 8]
    cmp dx, word ptr [eax + 2]
    jne loc_0040d367
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov word ptr [eax + bm_net_ids], 0
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + bm_net_names]
    mov byte ptr [eax], 0
loc_0040d367:
    jmp loc_0040d32d
loc_0040d369:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d372:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x14]
    call sub_0040c497
    test eax, eax
    je loc_0040d429
    mov eax, offset d_00458d5f
    push eax
    call sub_0042c0c8
    add esp, 4
    mov eax, dword ptr [ebp - 0x14]
    add eax, 0xc
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    movsx eax, word ptr [eax]
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 0xc], 0
    jl loc_0040d3d6
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_0040d3d8
loc_0040d3d6:
    jmp loc_0040d429
loc_0040d3d8:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, offset d_00458d76
    push eax
    call sub_0042c0c8
    add esp, 8
    cmp dword ptr [ebp - 8], 0
    jne loc_0040d40c
    mov eax, offset d_00458d83
    push eax
    call sub_0042c0c8
    add esp, 4
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00421e33
    jmp loc_0040d429
loc_0040d40c:
    mov eax, offset d_00458d88
    push eax
    call sub_0042c0c8
    add esp, 4
    xor ebx, ebx
    mov edx, 4
    mov eax, dword ptr [ebp - 0xc]
    call sub_00421e33
loc_0040d429:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d432:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    call sub_0040c497
    test eax, eax
    je loc_0040d485
    mov eax, dword ptr [ebp - 0x10]
    add eax, 0xc
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    movsx eax, word ptr [eax]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 8], 0
    jl loc_0040d478
    cmp dword ptr [ebp - 8], 0xa
    jl loc_0040d47a
loc_0040d478:
    jmp loc_0040d485
loc_0040d47a:
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00422437
loc_0040d485:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d48e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d4bf
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xa]
    sar eax, 0x10
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    call sub_00410401
loc_0040d4bf:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d4c8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d510
    cmp dword ptr [d_00460058], 1
    jne loc_0040d510
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax]
    cmp ax, word ptr [d_0046013e]
    jne loc_0040d510
    mov dword ptr [d_004600ec], 1
loc_0040d510:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d519:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c497
    test eax, eax
    je loc_0040d5e5
    cmp dword ptr [d_00460058], 1
    jne loc_0040d55d
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    cmp eax, dword ptr [d_004600d4]
    jne loc_0040d55d
    mov dword ptr [d_00460040], 1
loc_0040d55d:
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0xc
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    movsx eax, word ptr [eax]
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jl loc_0040d57b
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040d57d
loc_0040d57b:
    jmp loc_0040d5e5
loc_0040d57d:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_0045fedc], edx
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 2]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_0045ffac], edx
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 4]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_0045ffd4], edx
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 6]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_0045ff7c], edx
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 8]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_0045ff2c], edx
loc_0040d5e5:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d5ee:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d639
    cmp dword ptr [d_00460058], 1
    jne loc_0040d639
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00425e36
loc_0040d639:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d642:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d67e
    cmp dword ptr [d_00460058], 2
    jne loc_0040d67e
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    call sub_0040f504
loc_0040d67e:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d687:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d71b
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    push 1
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xe]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xc]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xa]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 8]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 6]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 4]
    sar ecx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00422ede
    xor ebx, ebx
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00425f79
loc_0040d71b:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d724:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d76f
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 4]
    sar ecx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_0042325d
loc_0040d76f:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d778:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [d_00460058], 2
    jne loc_0040d7de
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d7de
    mov dword ptr [ebp - 4], 0
loc_0040d7a5:
    cmp dword ptr [ebp - 4], 9
    jl loc_0040d7b5
    jmp loc_0040d7de
loc_0040d7ad:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040d7a5
loc_0040d7b5:
    mov edx, dword ptr [ebp - 4]
    add edx, edx
    mov eax, dword ptr [ebp - 8]
    mov ax, word ptr [eax + 2]
    cmp ax, word ptr [edx + bm_net_ids]
    jne loc_0040d7dc
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + bm_net_flags], 1
    jmp loc_0040d7de
loc_0040d7dc:
    jmp loc_0040d7ad
loc_0040d7de:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d7e7:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d849
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00421cb5
    test eax, eax
    jne loc_0040d849
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 4]
    sar ecx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_0042568a
loc_0040d849:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d852:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d88e
    cmp dword ptr [d_00460058], 2
    jne loc_0040d88e
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    call sub_0040f623
loc_0040d88e:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d897:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d90a
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xc]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xa]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 8]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 6]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 4]
    sar ecx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00405b3a
loc_0040d90a:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d913:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c497
    test eax, eax
    # je 0x40d9a7
    .byte 0x0f,0x84
    .long loc_0040d9a7 - . - 4
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0xc
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], 0
loc_0040d944:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040d954
    jmp loc_0040d9a7
loc_0040d94c:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040d944
loc_0040d954:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xc]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xa]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 8]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 6]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 8]
    mov ecx, dword ptr [eax + 4]
    sar ecx, 0x10
    mov eax, dword ptr [ebp - 8]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 8]
    movsx eax, word ptr [eax]
    call sub_00405b3a
    add dword ptr [ebp - 8], 0x10
    jmp loc_0040d94c
loc_0040d9a7:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d9b0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040d9ea
    cmp dword ptr [d_00460058], 2
    jne loc_0040d9ea
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00405bba
loc_0040d9ea:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040d9f3:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040da2d
    cmp dword ptr [d_00460058], 1
    jne loc_0040da2d
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00405d7e
loc_0040da2d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040da36:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040da81
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 4]
    sar ecx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00424cbe
loc_0040da81:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040da8a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040dacc
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_0041de04
loc_0040dacc:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040dad5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [d_00460058], 1
    jne loc_0040db09
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    cmp eax, dword ptr [d_004600d4]
    jne loc_0040db09
    mov dword ptr [d_00460040], 1
loc_0040db09:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040db12:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    call sub_0040c497
    test eax, eax
    je loc_0040db46
    cmp dword ptr [d_00460058], 1
    jne loc_0040db46
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xa]
    sar eax, 0x10
    mov dword ptr [d_00460038], eax
loc_0040db46:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040db4f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    call sub_0040c497
    test eax, eax
    je loc_0040db83
    cmp dword ptr [d_00460058], 1
    jne loc_0040db83
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xa]
    sar eax, 0x10
    mov dword ptr [d_00460044], eax
loc_0040db83:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040db8c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    call sub_0040c497
    test eax, eax
    je loc_0040dbc0
    cmp dword ptr [d_00460058], 1
    jne loc_0040dbc0
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xa]
    sar eax, 0x10
    mov dword ptr [d_00464a68], eax
loc_0040dbc0:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040dbc9:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    call sub_0040c497
    test eax, eax
    je loc_0040dbfd
    cmp dword ptr [d_00460058], 1
    jne loc_0040dbfd
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xa]
    sar eax, 0x10
    mov dword ptr [d_00464aec], eax
loc_0040dbfd:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040dc06:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c497
    test eax, eax
    je loc_0040dc6e
    cmp dword ptr [d_00460058], 1
    jne loc_0040dc6e
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 8], 0
loc_0040dc3c:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_0040dc51
    jmp loc_0040dc6e
loc_0040dc49:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040dc3c
loc_0040dc51:
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    add eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx edx, word ptr [eax]
    mov eax, dword ptr [ebp - 8]
    call sub_00425e36
    jmp loc_0040dc49
loc_0040dc6e:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040dc77:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c497
    test eax, eax
    je loc_0040dcf3
    cmp dword ptr [d_00460058], 1
    jne loc_0040dcf3
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 8], 0
loc_0040dcad:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_0040dcc2
    jmp loc_0040dcf3
loc_0040dcba:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040dcad
loc_0040dcc2:
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    add eax, eax
    mov ecx, dword ptr [ebp - 4]
    add ecx, eax
    mov ecx, dword ptr [ecx + 2]
    sar ecx, 0x10
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    add eax, eax
    add eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx edx, word ptr [eax]
    mov eax, dword ptr [ebp - 8]
    call sub_0042568a
    jmp loc_0040dcba
loc_0040dcf3:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040dcfc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x14]
    call sub_0040c497
    test eax, eax
    je loc_0040ddf9
    mov eax, dword ptr [ebp - 0x14]
    add eax, 0xc
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    mov ax, word ptr [eax]
    cmp ax, word ptr [d_0046013e]
    jne loc_0040ddf9
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [d_00460014]
    mov dword ptr [ebp - 0xc], eax
loc_0040dd48:
    cmp dword ptr [ebp - 4], 0x1f4
    jl loc_0040dd65
    jmp loc_0040ddf9
loc_0040dd56:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x28
    jmp loc_0040dd48
loc_0040dd65:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    # je 0x40ddf4
    .byte 0x0f,0x84
    .long loc_0040ddf4 - . - 4
    mov eax, dword ptr [ebp - 8]
    mov dx, word ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x10]
    cmp dx, word ptr [eax + 2]
    # jne 0x40ddf4
    .byte 0x0f,0x85
    .long loc_0040ddf4 - . - 4
    mov dword ptr [ebp - 4], 0
loc_0040dd92:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040dda2
    jmp loc_0040ddf2
loc_0040dd9a:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040dd92
loc_0040dda2:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov dx, word ptr [eax + bm_net_part]
    mov eax, dword ptr [ebp - 0x14]
    cmp dx, word ptr [eax + 2]
    jne loc_0040ddf0
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 4]
    cmp byte ptr [eax + 0x1c], 0
    jne loc_0040ddee
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x1c], 1
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [eax + 0x10]
    mov eax, dword ptr [d_0046013a]
    sar eax, 0x10
    lea edx, [eax - 1]
    mov eax, dword ptr [ebp - 0xc]
    cmp edx, dword ptr [eax + 0x10]
    jg loc_0040ddee
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c22f
loc_0040ddee:
    jmp loc_0040ddf2
loc_0040ddf0:
    jmp loc_0040dd9a
loc_0040ddf2:
    jmp loc_0040ddf9
loc_0040ddf4:
    jmp loc_0040dd56
loc_0040ddf9:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040de02:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040de3c
    cmp dword ptr [d_00460058], 1
    jne loc_0040de3c
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_0041054a
loc_0040de3c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040de45:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c497
    test eax, eax
    je loc_0040def6
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0xc
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], 0
loc_0040de76:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040de86
    jmp loc_0040de9e
loc_0040de7e:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040de76
loc_0040de86:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    add eax, dword ptr [ebp - 8]
    cmp word ptr [eax], 0
    je loc_0040de9c
    mov eax, dword ptr [ebp - 4]
    call sub_004222e8
loc_0040de9c:
    jmp loc_0040de7e
loc_0040de9e:
    mov dword ptr [ebp - 4], 0
loc_0040dea5:
    cmp dword ptr [ebp - 4], 9
    jl loc_0040deb5
    jmp loc_0040dee9
loc_0040dead:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040dea5
loc_0040deb5:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov dx, word ptr [eax + bm_net_ids]
    mov eax, dword ptr [ebp - 0xc]
    cmp dx, word ptr [eax + 2]
    jne loc_0040dee7
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov word ptr [eax + bm_net_ids], 0
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + bm_net_names]
    mov byte ptr [eax], 0
loc_0040dee7:
    jmp loc_0040dead
loc_0040dee9:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    call sub_0040c38f
loc_0040def6:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040deff:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040df38
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00425530
loc_0040df38:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040df41:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040df8c
    cmp dword ptr [d_00460058], 1
    jne loc_0040df8c
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00425f79
loc_0040df8c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040df95:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    # je 0x40e034
    .byte 0x0f,0x84
    .long loc_0040e034 - . - 4
    cmp dword ptr [d_00460058], 1
    jne loc_0040e034
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    mov dword ptr [d_0046497c], eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    mov dword ptr [d_00464940], eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    mov dword ptr [d_00464930], eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    sar eax, 0x10
    mov dword ptr [d_00464964], eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 6]
    sar eax, 0x10
    mov dword ptr [d_00464974], eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 8]
    sar eax, 0x10
    mov dword ptr [d_00464948], eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xa]
    sar eax, 0x10
    mov dword ptr [d_00464990], eax
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0xc]
    sar eax, 0x10
    mov dword ptr [d_00464928], eax
loc_0040e034:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e03d:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    call sub_0040c497
    test eax, eax
    je loc_0040e0a9
    mov eax, dword ptr [ebp - 0x10]
    add eax, 0xc
    mov dword ptr [ebp - 0xc], eax
    lea ebx, [ebp - 4]
    lea edx, [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    movsx eax, word ptr [eax]
    call sub_00421dd2
    cmp dword ptr [ebp - 8], 0
    je loc_0040e080
    cmp dword ptr [ebp - 8], 4
    jne loc_0040e082
loc_0040e080:
    jmp loc_0040e0a9
loc_0040e082:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0xc]
    movsx eax, word ptr [eax]
    call sub_004225be
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 2]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0xc]
    movsx eax, word ptr [eax]
    call sub_00422602
loc_0040e0a9:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e0b2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040e0e9
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov edx, dword ptr [ebp - 4]
    add edx, 2
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00422646
loc_0040e0e9:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e0f2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040e13a
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov ecx, dword ptr [ebp - 4]
    add ecx, 6
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 2]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00422693
loc_0040e13a:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e143:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c497
    test eax, eax
    je loc_0040e211
    cmp dword ptr [d_00460058], 1
    jne loc_0040e211
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0xc
    mov dword ptr [ebp - 8], eax
    mov eax, offset d_00458d8d
    push eax
    call sub_0042c0c8
    add esp, 4
    mov dword ptr [ebp - 4], 0
loc_0040e18f:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040e19f
    jmp loc_0040e203
loc_0040e197:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040e18f
loc_0040e19f:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    add eax, eax
    add eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    add eax, dword ptr [ebp - 8]
    movsx eax, word ptr [eax]
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, offset d_00458da0
    push eax
    call sub_0042c0c8
    add esp, 0x10
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    add eax, dword ptr [ebp - 8]
    movsx edx, word ptr [eax]
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_0046460c], edx
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    add eax, eax
    add eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_0046465c], edx
    jmp loc_0040e197
loc_0040e203:
    mov eax, offset d_00458d19
    push eax
    call sub_0042c0c8
    add esp, 4
loc_0040e211:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e21a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040e253
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_004249ea
loc_0040e253:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e25c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040e295
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_0042475f
loc_0040e295:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e29e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040e2cf
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    mov dword ptr [d_0046499c], eax
loc_0040e2cf:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e2d8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040e309
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_004226f6
loc_0040e309:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e312:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c497
    test eax, eax
    je loc_0040e384
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0xc
    mov dword ptr [ebp - 8], eax
    mov dword ptr [d_00464954], 1
    mov dword ptr [ebp - 4], 0
loc_0040e349:
    mov eax, dword ptr [ebp - 8]
    movsx eax, word ptr [eax]
    cmp eax, dword ptr [ebp - 4]
    jg loc_0040e35e
    jmp loc_0040e384
loc_0040e356:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040e349
loc_0040e35e:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    add eax, eax
    add eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 2]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    add eax, eax
    add eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    call sub_004121bf
    jmp loc_0040e356
loc_0040e384:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e38d:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0040c497
    test eax, eax
    je loc_0040e3be
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    movsx eax, word ptr [eax]
    call sub_00424864
loc_0040e3be:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e3c7:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    add eax, 0xc
    mov dword ptr [ebp - 4], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0040e3ea:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, offset d_00458db1
    push eax
    call sub_0042c0c8
    add esp, 4
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040e412:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x6c
    .byte 0x81,0xec,0x6c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [ebp - 8], 0
    jl loc_0040e431
    cmp dword ptr [ebp - 8], 0x64
    jl loc_0040e433
loc_0040e431:
    jmp loc_0040e444
loc_0040e433:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx + d_0045bacc], eax
    jmp loc_0040e46c
loc_0040e444:
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_00458dc2
    push eax
    lea eax, [ebp - 0x6c]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x6c]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0040e46c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0040e474:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov edx, offset ptr_0040cf93
    xor eax, eax
    call sub_0040e412
    mov edx, offset sub_0040d073
    mov eax, 1
    call sub_0040e412
    mov edx, offset ptr_0040d10b
    mov eax, 2
    call sub_0040e412
    mov edx, offset ptr_0040d12d
    mov eax, 0x12
    call sub_0040e412
    mov edx, offset ptr_0040d175
    mov eax, 3
    call sub_0040e412
    mov edx, offset ptr_0040d251
    mov eax, 0xe
    call sub_0040e412
    mov edx, offset ptr_0040d2f8
    mov eax, 0x27
    call sub_0040e412
    mov edx, offset ptr_0040d372
    mov eax, 0x28
    call sub_0040e412
    mov edx, offset ptr_0040d48e
    mov eax, 0x20
    call sub_0040e412
    mov edx, offset ptr_0040d4c8
    mov eax, 0x29
    call sub_0040e412
    mov edx, offset ptr_0040d519
    mov eax, 4
    call sub_0040e412
    mov edx, offset ptr_0040d5ee
    mov eax, 5
    call sub_0040e412
    mov edx, offset ptr_0040d642
    mov eax, 6
    call sub_0040e412
    mov edx, offset ptr_0040d687
    mov eax, 0x21
    call sub_0040e412
    mov edx, offset ptr_0040d724
    mov eax, 0x22
    call sub_0040e412
    mov edx, offset ptr_0040d778
    mov eax, 0x2a
    call sub_0040e412
    mov edx, offset ptr_0040d7e7
    mov eax, 0x23
    call sub_0040e412
    mov edx, offset ptr_0040d852
    mov eax, 7
    call sub_0040e412
    mov edx, offset ptr_0040da36
    mov eax, 8
    call sub_0040e412
    mov edx, offset ptr_0040da8a
    mov eax, 0x24
    call sub_0040e412
    mov edx, offset ptr_0040dad5
    mov eax, 9
    call sub_0040e412
    mov edx, offset ptr_0040db12
    mov eax, 0x2b
    call sub_0040e412
    mov edx, offset ptr_0040db4f
    mov eax, 0x2c
    call sub_0040e412
    mov edx, offset ptr_0040db8c
    mov eax, 0x25
    call sub_0040e412
    mov edx, offset ptr_0040dbc9
    mov eax, 0x26
    call sub_0040e412
    mov edx, offset ptr_0040dc06
    mov eax, 0xa
    call sub_0040e412
    mov edx, offset ptr_0040dc77
    mov eax, 0xb
    call sub_0040e412
    mov edx, offset ptr_0040dcfc
    mov eax, 0xc
    call sub_0040e412
    mov edx, offset ptr_0040de02
    mov eax, 0x2d
    call sub_0040e412
    mov edx, offset ptr_0040de45
    mov eax, 0x2e
    call sub_0040e412
    mov edx, offset ptr_0040deff
    mov eax, 0x2f
    call sub_0040e412
    mov edx, offset ptr_0040df41
    mov eax, 0x30
    call sub_0040e412
    mov edx, offset ptr_0040df95
    mov eax, 0x31
    call sub_0040e412
    mov edx, offset ptr_0040e03d
    mov eax, 0x32
    call sub_0040e412
    mov edx, offset ptr_0040e0b2
    mov eax, 0x33
    call sub_0040e412
    mov edx, offset ptr_0040e0f2
    mov eax, 0x34
    call sub_0040e412
    mov edx, offset ptr_0040e143
    mov eax, 0x35
    call sub_0040e412
    mov edx, offset ptr_0040e21a
    mov eax, 0x36
    call sub_0040e412
    mov edx, offset ptr_0040e25c
    mov eax, 0x37
    call sub_0040e412
    mov edx, offset ptr_0040e29e
    mov eax, 0x38
    call sub_0040e412
    mov edx, offset ptr_0040d9b0
    mov eax, 0xd
    call sub_0040e412
    mov edx, offset ptr_0040d897
    mov eax, 0xf
    call sub_0040e412
    mov edx, offset ptr_0040d913
    mov eax, 0x10
    call sub_0040e412
    mov edx, offset ptr_0040d9f3
    mov eax, 0x11
    call sub_0040e412
    mov edx, offset ptr_0040e2d8
    mov eax, 0x39
    call sub_0040e412
    mov edx, offset ptr_0040d432
    mov eax, 0x3a
    call sub_0040e412
    mov edx, offset ptr_0040e312
    mov eax, 0x3b
    call sub_0040e412
    mov edx, offset ptr_0040e38d
    mov eax, 0x3c
    call sub_0040e412
    mov edx, offset ptr_0040e3c7
    mov eax, 0x3d
    call sub_0040e412
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040e765:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x280
    mov dword ptr [ebp - 0x14], offset d_0045ed9c
    cmp dword ptr [d_00460058], 0
    je loc_0040ea15
    mov dword ptr [ebp - 4], 0
    cmp dword ptr [d_00460169], 0
    jne loc_0040ea15
    inc dword ptr [d_00460169]
loc_0040e7a1:
    xor ebx, ebx
    lea edx, [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_00460108]
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x14]
    movsx eax, word ptr [eax]
    cmp eax, dword ptr [d_0045bac4]
    jne loc_0040e9f2
    mov eax, dword ptr [ebp - 0x14]
    mov ax, word ptr [eax + 6]
    cmp ax, word ptr [d_0046013e]
    je loc_0040e9f2
    call sub_0040bee7
    inc dword ptr [d_00460048]
    mov eax, dword ptr [ebp - 0x14]
    mov eax, dword ptr [eax]
    sar eax, 0x10
    add dword ptr [d_00460034], eax
    mov eax, dword ptr [ebp - 0x14]
    add eax, 0xa
    mov dword ptr [ebp - 8], eax
loc_0040e7fd:
    mov eax, dword ptr [ebp - 0x14]
    cmp word ptr [eax + 4], 0
    je loc_0040e9f2
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x10], 1
    mov eax, dword ptr [ebp - 0x18]
    cmp word ptr [eax + 2], 0
    jl loc_0040e82c
    mov eax, dword ptr [ebp - 0x18]
    cmp word ptr [eax + 2], 0x64
    jl loc_0040e831
loc_0040e82c:
    jmp loc_0040e9dd
loc_0040e831:
    mov eax, dword ptr [ebp - 0x18]
    cmp word ptr [eax + 2], 0x20
    jl loc_0040e845
    mov eax, dword ptr [ebp - 0x18]
    cmp word ptr [eax + 4], 0
    jne loc_0040e84a
loc_0040e845:
    jmp loc_0040e920
loc_0040e84a:
    mov dword ptr [ebp - 0x1c], 0
loc_0040e851:
    cmp dword ptr [ebp - 0x1c], 0xa
    jl loc_0040e861
    jmp loc_0040e876
loc_0040e859:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_0040e851
loc_0040e861:
    mov eax, dword ptr [ebp - 0x1c]
    add eax, eax
    mov dx, word ptr [eax + bm_net_part]
    mov eax, dword ptr [ebp - 0x14]
    cmp dx, word ptr [eax + 6]
    jne loc_0040e859
loc_0040e876:
    cmp dword ptr [ebp - 0x1c], 0xa
    jge loc_0040e919
    imul eax, dword ptr [ebp - 0x1c], 0x3ec
    mov edx, dword ptr [d_00460024]
    add edx, eax
    mov dword ptr [ebp - 0x24], edx
    mov dword ptr [ebp - 0x20], 0
loc_0040e899:
    cmp dword ptr [ebp - 0x20], 0x1f4
    jl loc_0040e8ac
    jmp loc_0040e8cc
loc_0040e8a4:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_0040e899
loc_0040e8ac:
    mov eax, dword ptr [ebp - 0x20]
    add eax, eax
    add eax, dword ptr [ebp - 0x24]
    mov dx, word ptr [eax + 4]
    mov eax, dword ptr [ebp - 0x18]
    cmp dx, word ptr [eax + 4]
    jne loc_0040e8ca
    mov dword ptr [ebp - 0x10], 0
    jmp loc_0040e8cc
loc_0040e8ca:
    jmp loc_0040e8a4
loc_0040e8cc:
    cmp dword ptr [ebp - 0x10], 0
    je loc_0040e900
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [eax]
    add edx, edx
    add edx, dword ptr [ebp - 0x24]
    mov eax, dword ptr [ebp - 0x18]
    mov ax, word ptr [eax + 4]
    mov word ptr [edx + 4], ax
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [eax]
    mov eax, dword ptr [ebp - 0x24]
    cmp dword ptr [eax], 0x1f4
    jl loc_0040e900
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [eax], 0
loc_0040e900:
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 2]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    mov eax, dword ptr [eax + 4]
    sar eax, 0x10
    call sub_0040fbc2
    jmp loc_0040e920
loc_0040e919:
    mov dword ptr [ebp - 0x10], 0
loc_0040e920:
    cmp dword ptr [ebp - 0x10], 0
    je loc_0040e9dd
    lea eax, [ebp - 0x27c]
    mov dword ptr [ebp - 0x280], eax
    mov eax, dword ptr [ebp - 0x14]
    mov dx, word ptr [eax]
    mov eax, dword ptr [ebp - 0x280]
    mov word ptr [eax], dx
    mov eax, dword ptr [ebp - 0x14]
    mov dx, word ptr [eax + 6]
    mov eax, dword ptr [ebp - 0x280]
    mov word ptr [eax + 2], dx
    mov eax, dword ptr [ebp - 0x14]
    mov dx, word ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x280]
    mov word ptr [eax + 4], dx
    mov eax, dword ptr [ebp - 0x18]
    mov ax, word ptr [eax]
    # add eax, 6
    .byte 0x05,0x06,0x00,0x00,0x00
    mov edx, dword ptr [ebp - 0x280]
    mov word ptr [edx + 6], ax
    mov eax, dword ptr [ebp - 0x18]
    mov dx, word ptr [eax + 2]
    mov eax, dword ptr [ebp - 0x280]
    mov word ptr [eax + 0xa], dx
    mov eax, dword ptr [ebp - 0x18]
    movsx eax, word ptr [eax]
    lea ebx, [eax - 6]
    mov edx, dword ptr [ebp - 0x18]
    add edx, 6
    mov eax, dword ptr [ebp - 0x280]
    add eax, 0xc
    call sub_00451dc4
    mov eax, dword ptr [ebp - 0x280]
    mov eax, dword ptr [eax + 8]
    sar eax, 0x10
    shl eax, 2
    cmp dword ptr [eax + d_0045bacc], 0
    je loc_0040e9dd
    mov eax, dword ptr [ebp - 0x280]
    mov edx, dword ptr [eax + 8]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x280]
    call dword ptr [edx + d_0045bacc]
loc_0040e9dd:
    mov eax, dword ptr [ebp - 0x18]
    movsx eax, word ptr [eax]
    add dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x14]
    dec word ptr [eax + 4]
    jmp loc_0040e7fd
loc_0040e9f2:
    cmp dword ptr [ebp - 0xc], 0
    jne loc_0040e7a1
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_0046002c]
    jle loc_0040ea0f
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0046002c], eax
loc_0040ea0f:
    dec dword ptr [d_00460169]
loc_0040ea15:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ea1e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    cmp dword ptr [d_00460058], 0
    je loc_0040ebb8
    cmp dword ptr [d_0046016d], 0
    jne loc_0040ebb8
    inc dword ptr [d_0046016d]
    inc dword ptr [d_00460018]
    call sub_0040e765
    mov dword ptr [ebp - 4], 0
    call sub_0043acf8
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [d_00460014]
    mov dword ptr [ebp - 0xc], eax
loc_0040ea75:
    cmp dword ptr [ebp - 8], 0x1f4
    jl loc_0040ea92
    jmp loc_0040eb91
loc_0040ea83:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x28
    jmp loc_0040ea75
loc_0040ea92:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax], 0
    je loc_0040eb8c
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [d_0046012c]
    add eax, 0x44c
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    add edx, dword ptr [eax + 0x18]
    cmp edx, dword ptr [ebp - 0x10]
    jae loc_0040eb8c
    inc dword ptr [d_00464950]
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [eax + 0x14]
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [edx + 0x18], eax
    call sub_0040bee7
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 4]
    add dword ptr [d_0046003c], eax
    inc dword ptr [d_0046004c]
    mov dword ptr [d_00460028], 1
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    mov eax, dword ptr [eax + 6]
    sar eax, 0x10
    mov dword ptr [d_00460020], eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    mov ebx, dword ptr [eax + 4]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax]
    add edx, 0xc
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    mov eax, dword ptr [eax + 8]
    sar eax, 0x10
    call sub_0040ce27
    mov dword ptr [d_00460020], 0
    mov dword ptr [d_00460028], 0
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    mov eax, dword ptr [eax + 6]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    mov eax, dword ptr [eax + 8]
    sar eax, 0x10
    push eax
    mov eax, offset d_00458de0
    push eax
    call sub_0042c0c8
    add esp, 0xc
    inc dword ptr [d_004642dc]
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x14], 0x19
    jl loc_0040eb8c
    mov eax, offset d_00458e08
    push eax
    call sub_0042c0c8
    add esp, 4
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040c22f
loc_0040eb8c:
    jmp loc_0040ea83
loc_0040eb91:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00460030]
    jle loc_0040eba4
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460030], eax
loc_0040eba4:
    mov eax, dword ptr [ebp - 4]
    add dword ptr [d_0046001c], eax
    call sub_0040ccc1
    dec dword ptr [d_0046016d]
loc_0040ebb8:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ebc1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x58
    .byte 0x81,0xec,0x58,0x00,0x00,0x00
    mov word ptr [ebp - 0x58], 0
    mov dword ptr [ebp - 4], 0
loc_0040ebdc:
    cmp dword ptr [ebp - 4], 9
    jl loc_0040ebec
    jmp loc_0040ec04
loc_0040ebe4:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040ebdc
loc_0040ebec:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    cmp word ptr [eax + bm_net_ids], 0
    jle loc_0040ec02
    mov eax, dword ptr [ebp - 0x58]
    inc word ptr [ebp - 0x58]
loc_0040ec02:
    jmp loc_0040ebe4
loc_0040ec04:
    mov edx, offset d_00460140
    lea eax, [ebp - 0x56]
    call sub_0045189e
    mov ebx, 0x52
    lea edx, [ebp - 0x58]
    xor eax, eax
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ec29:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    xor ebx, ebx
    xor edx, edx
    mov eax, 1
    call sub_0040ce27
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ec4c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    xor ebx, ebx
    xor edx, edx
    mov eax, 2
    call sub_0040ce27
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ec6f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x6c
    .byte 0x81,0xec,0x6c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    lea eax, [ebp - 0x6c]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    mov dx, word ptr [eax + d_004600d8]
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax], dx
    mov edx, offset d_00460140
    mov eax, dword ptr [ebp - 4]
    add eax, 2
    call sub_0045189e
    mov ebx, 0x2b
    lea edx, [ebp - 0x6c]
    mov eax, 3
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ecc3:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    mov ax, word ptr [eax + bm_net_ids]
    mov dword ptr [ebp - 4], eax
    mov eax, 0x12
    call sub_0040c326
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x12
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ed08:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x20
    .byte 0x81,0xec,0x20,0x00,0x00,0x00
    cmp dword ptr [d_00460058], 2
    jne loc_0040edc0
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    add eax, eax
    mov dx, word ptr [d_0046013e]
    mov word ptr [eax + bm_net_part], dx
    mov dword ptr [ebp - 8], 0
loc_0040ed47:
    cmp dword ptr [ebp - 8], 9
    jl loc_0040ed57
    jmp loc_0040ed83
loc_0040ed4f:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040ed47
loc_0040ed57:
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    cmp word ptr [eax + bm_net_ids], 0
    je loc_0040ed81
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    mov edx, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    add edx, edx
    mov ax, word ptr [eax + bm_net_ids]
    mov word ptr [edx + bm_net_part], ax
loc_0040ed81:
    jmp loc_0040ed4f
loc_0040ed83:
    mov eax, dword ptr [ebp - 4]
    mov word ptr [d_0046013c], ax
    mov ax, word ptr [d_0046013c]
    mov word ptr [ebp - 0x20], ax
    mov ebx, dword ptr [d_0046013a]
    sar ebx, 0x10
    add ebx, ebx
    mov edx, offset bm_net_part
    lea eax, [ebp - 0x1e]
    call sub_00451dc4
    mov ebx, 0x16
    lea edx, [ebp - 0x20]
    mov eax, 0xe
    call sub_0040ce27
loc_0040edc0:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040edc9:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    xor ebx, ebx
    xor edx, edx
    mov eax, 0x27
    call sub_0040ce27
    mov dword ptr [ebp - 4], 0
loc_0040edec:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040edfc
    jmp loc_0040ee0d
loc_0040edf4:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040edec
loc_0040edfc:
    call bm_pump
    mov eax, 0x64
    call sub_00413cb0
    jmp loc_0040edf4
loc_0040ee0d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ee16:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 4], edx
    mov dword ptr [ebp - 8], ebx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x14], ax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x12], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x10], ax
    mov ebx, 6
    lea edx, [ebp - 0x14]
    mov eax, 0x28
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0040ee59:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 4], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 2], ax
    mov ebx, 4
    lea edx, [ebp - 4]
    mov eax, 0x3a
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0040ee94:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    cmp dword ptr [d_00460058], 2
    jne loc_0040ef45
    mov eax, 0x55
    call sub_004124a4
    call sub_00412e0c
    mov dword ptr [ebp - 0xc], 0
loc_0040eec5:
    cmp dword ptr [ebp - 0xc], 9
    jl loc_0040eed8
    # jmp 0x40ef3b
    .byte 0xe9
    .long loc_0040ef3b - . - 4
loc_0040eed0:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0040eec5
loc_0040eed8:
    imul eax, dword ptr [ebp - 0xc], 0xa
    call sub_00412e33
    mov eax, dword ptr [ebp - 0xc]
    add eax, eax
    cmp word ptr [eax + bm_net_ids], 0
    je loc_0040ef39
    mov eax, dword ptr [ebp - 0xc]
    add eax, eax
    mov ax, word ptr [eax + bm_net_ids]
    mov dword ptr [ebp - 4], eax
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x29
    call sub_0040ce27
    mov dword ptr [ebp - 8], 0
loc_0040ef18:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_0040ef28
    jmp loc_0040ef39
loc_0040ef20:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040ef18
loc_0040ef28:
    call bm_pump
    mov eax, 0x64
    call sub_00413cb0
    jmp loc_0040ef20
loc_0040ef39:
    jmp loc_0040eed0
loc_0040ef3b:
    mov eax, 0x64
    call sub_00412e33
loc_0040ef45:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ef4e:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 0xc], ebx
    mov dword ptr [ebp - 8], ecx
    cmp dword ptr [ebp - 4], 0
    jl loc_0040ef71
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040ef76
loc_0040ef71:
    jmp loc_0040f05c
loc_0040ef76:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045fedc]
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_0040ef98
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045ffac]
    cmp eax, dword ptr [ebp - 0xc]
    je loc_0040ef9a
loc_0040ef98:
    jmp loc_0040efab
loc_0040ef9a:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045ffd4]
    cmp eax, dword ptr [ebp - 8]
    je loc_0040efad
loc_0040efab:
    jmp loc_0040efbe
loc_0040efad:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045ff7c]
    cmp eax, dword ptr [ebp + 0x10]
    je loc_0040efc0
loc_0040efbe:
    jmp loc_0040efd5
loc_0040efc0:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045ff2c]
    cmp eax, dword ptr [ebp + 0x14]
    je loc_0040f05c
loc_0040efd5:
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [edx + d_0045fedc], eax
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [edx + d_0045ffac], eax
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [edx + d_0045ffd4], eax
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [edx + d_0045ff7c], eax
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [ebp + 0x14]
    mov dword ptr [edx + d_0045ff2c], eax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x1c], ax
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [ebp - 0x1a], ax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x18], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x16], ax
    mov eax, dword ptr [ebp + 0x10]
    mov word ptr [ebp - 0x14], ax
    mov eax, dword ptr [ebp + 0x14]
    mov word ptr [ebp - 0x12], ax
    mov ebx, 0xc
    lea edx, [ebp - 0x1c]
    mov eax, 4
    call sub_0040ce27
loc_0040f05c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 8
sub_0040f064:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x20
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f096:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x24
    .byte 0x81,0xec,0x24,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 0xc], ebx
    mov dword ptr [ebp - 8], ecx
    cmp dword ptr [d_00460058], 0
    je loc_0040f107
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x24], ax
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [ebp - 0x22], ax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x20], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x1e], ax
    mov eax, dword ptr [ebp + 0x10]
    mov word ptr [ebp - 0x1c], ax
    mov eax, dword ptr [ebp + 0x14]
    mov word ptr [ebp - 0x1a], ax
    mov eax, dword ptr [ebp + 0x18]
    mov word ptr [ebp - 0x18], ax
    mov eax, dword ptr [ebp + 0x1c]
    mov word ptr [ebp - 0x16], ax
    mov eax, dword ptr [ebp + 0x20]
    mov word ptr [ebp - 0x14], ax
    mov ebx, 0x12
    lea edx, [ebp - 0x24]
    mov eax, 0x21
    call sub_0040ce27
loc_0040f107:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0x14
sub_0040f10f:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 4], ebx
    mov dword ptr [ebp - 8], ecx
    cmp dword ptr [d_00460058], 0
    je loc_0040f15d
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x18], ax
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [ebp - 0x16], ax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x14], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x12], ax
    mov ebx, 8
    lea edx, [ebp - 0x18]
    mov eax, 0x22
    call sub_0040ce27
loc_0040f15d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0040f163:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    mov eax, dword ptr [eax + d_004600d6]
    sar eax, 0x10
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f191:
    # --- patched: original code of 0x0040f191..0x0040f1bd replaced (see hooks.s)
    .fill 44, 1, 0x90
sub_0040f1bd:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045ff54]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f1e9:
    # --- patched: original code of 0x0040f1e9..0x0040f243 replaced (see hooks.s)
    .fill 90, 1, 0x90
sub_0040f243:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], 0
loc_0040f258:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0040f268
    jmp loc_0040f287
loc_0040f260:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040f258
loc_0040f268:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov word ptr [eax + d_004600d8], 0
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045ff04]
    mov byte ptr [eax], 0
    jmp loc_0040f260
loc_0040f287:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f290:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], 0
loc_0040f2a5:
    cmp dword ptr [ebp - 4], 9
    jl loc_0040f2b5
    jmp loc_0040f2d4
loc_0040f2ad:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040f2a5
loc_0040f2b5:
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    mov word ptr [eax + bm_net_ids], 0
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + bm_net_names]
    mov byte ptr [eax], 0
    jmp loc_0040f2ad
loc_0040f2d4:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_004600d0]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], offset d_0046006c
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f320:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460068], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f342:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_00460068]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f364:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_004600d4], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f386:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_004600d4]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f3a8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_004600ec], 0
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f3c7:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_004600ec]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f3e9:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 8], ebx
    mov dword ptr [ebp - 4], ecx
    cmp dword ptr [ebp - 0x10], 0
    jl loc_0040f40c
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_0040f411
loc_0040f40c:
    # jmp 0x40f484
    .byte 0xe9
    .long loc_0040f484 - . - 4
loc_0040f411:
    cmp dword ptr [ebp - 0xc], 0
    je loc_0040f428
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045fedc]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], edx
loc_0040f428:
    cmp dword ptr [ebp - 8], 0
    je loc_0040f43f
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045ffac]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], edx
loc_0040f43f:
    cmp dword ptr [ebp - 4], 0
    je loc_0040f456
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045ffd4]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], edx
loc_0040f456:
    cmp dword ptr [ebp + 0x10], 0
    je loc_0040f46d
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045ff7c]
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [eax], edx
loc_0040f46d:
    cmp dword ptr [ebp + 0x14], 0
    je loc_0040f484
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045ff2c]
    mov eax, dword ptr [ebp + 0x14]
    mov dword ptr [eax], edx
loc_0040f484:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 8
sub_0040f48c:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 8], ebx
    mov dword ptr [ebp - 4], ecx
    cmp dword ptr [ebp - 0x10], 0
    jl loc_0040f4af
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_0040f4b1
loc_0040f4af:
    jmp loc_0040f4fc
loc_0040f4b1:
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [edx + d_0045fedc], eax
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [edx + d_0045ffac], eax
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx + d_0045ffd4], eax
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [edx + d_0045ff7c], eax
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    mov eax, dword ptr [ebp + 0x14]
    mov dword ptr [edx + d_0045ff2c], eax
loc_0040f4fc:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 8
sub_0040f504:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [d_004648ac]
    inc eax
    add eax, eax
    mov dword ptr [ebp - 8], eax
    mov ebx, 0x8e0
    mov edx, offset d_00458c2f
    mov eax, dword ptr [ebp - 8]
    call sub_004184d0
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0xc]
    mov word ptr [edx], ax
    mov dword ptr [ebp - 4], 0
loc_0040f545:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_004648ac]
    jl loc_0040f55a
    jmp loc_0040f575
loc_0040f552:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040f545
loc_0040f55a:
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 4]
    call sub_00425fb9
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    add eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 2], dx
    jmp loc_0040f552
loc_0040f575:
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, 0xa
    call sub_0040ce27
    mov ebx, 0x8e6
    mov edx, offset d_00458c2f
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041863d
    call sub_0040ccc1
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 4], edx
    mov dword ptr [ebp - 8], ebx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x14], ax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x12], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x10], ax
    mov ebx, 6
    lea edx, [ebp - 0x14]
    mov eax, 5
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0040f5e8:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 4], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 2], ax
    mov ebx, 4
    lea edx, [ebp - 4]
    mov eax, 6
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0040f623:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [d_004648ac]
    add eax, eax
    add eax, eax
    add eax, 2
    mov dword ptr [ebp - 0xc], eax
    mov ebx, 0x90c
    mov edx, offset d_00458c2f
    mov eax, dword ptr [ebp - 0xc]
    call sub_004184d0
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x10]
    mov word ptr [edx], ax
    mov dword ptr [ebp - 8], 0
loc_0040f668:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_0040f67d
    jmp loc_0040f6e0
loc_0040f675:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040f668
loc_0040f67d:
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 8]
    call sub_0042542d
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_0040f6be
    mov edx, dword ptr [ebp - 8]
    add edx, edx
    add edx, edx
    add edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax]
    mov word ptr [edx + 2], ax
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    add eax, eax
    mov edx, dword ptr [ebp - 0x10]
    add edx, eax
    mov eax, dword ptr [ebp - 4]
    mov ax, word ptr [eax + 4]
    mov word ptr [edx + 4], ax
    jmp loc_0040f6de
loc_0040f6be:
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    add eax, eax
    add eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 2], 0
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    add eax, eax
    add eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 4], 0
loc_0040f6de:
    jmp loc_0040f675
loc_0040f6e0:
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, 0xb
    call sub_0040ce27
    mov ebx, 0x919
    mov edx, offset d_00458c2f
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041863d
    call sub_0040ccc1
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f710:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 4], ebx
    mov dword ptr [ebp - 8], ecx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x18], ax
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [ebp - 0x16], ax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x14], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x12], ax
    mov ebx, 8
    lea edx, [ebp - 0x18]
    mov eax, 0x23
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0040f75b:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 4], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 2], ax
    mov ebx, 4
    lea edx, [ebp - 4]
    mov eax, 7
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x20
    .byte 0x81,0xec,0x20,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 0xc], ebx
    mov dword ptr [ebp - 8], ecx
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x20], ax
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [ebp - 0x1e], ax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x1c], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x1a], ax
    mov eax, dword ptr [ebp + 0x10]
    mov word ptr [ebp - 0x18], ax
    mov eax, dword ptr [ebp + 0x14]
    mov word ptr [ebp - 0x16], ax
    mov eax, dword ptr [ebp + 0x18]
    mov word ptr [ebp - 0x14], ax
    mov eax, dword ptr [ebp + 0x1c]
    mov word ptr [ebp - 0x12], ax
    mov ebx, 0x10
    lea edx, [ebp - 0x20]
    mov eax, 0xf
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0x10
sub_0040f7ff:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov ebx, 0xa0
    mov edx, dword ptr [ebp - 4]
    mov eax, 0x10
    call sub_0040ce27
    call sub_0040ccc1
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f830:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0xd
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f862:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x11
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f894:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], 0
loc_0040f8a9:
    cmp dword ptr [ebp - 4], 9
    jl loc_0040f8b9
    jmp loc_0040f8cb
loc_0040f8b1:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0040f8a9
loc_0040f8b9:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + bm_net_flags], 0
    jmp loc_0040f8b1
loc_0040f8cb:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f8d4:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    cmp dword ptr [d_00460058], 2
    je loc_0040f8f4
    mov dword ptr [ebp - 4], 1
    jmp loc_0040f93b
loc_0040f8f4:
    mov dword ptr [ebp - 8], 0
loc_0040f8fb:
    cmp dword ptr [ebp - 8], 9
    jl loc_0040f90b
    jmp loc_0040f934
loc_0040f903:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040f8fb
loc_0040f90b:
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    cmp word ptr [eax + bm_net_ids], 0
    je loc_0040f932
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    cmp dword ptr [eax + bm_net_flags], 0
    jne loc_0040f932
    mov dword ptr [ebp - 4], 0
    jmp loc_0040f93b
loc_0040f932:
    jmp loc_0040f903
loc_0040f934:
    mov dword ptr [ebp - 4], 1
loc_0040f93b:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f947:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, 0x2a
    call sub_0040c326
    xor ebx, ebx
    xor edx, edx
    mov eax, 0x2a
    call sub_0040ce27
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040f974:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 4], ebx
    mov dword ptr [ebp - 8], ecx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x18], ax
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [ebp - 0x16], ax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x14], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x12], ax
    mov ebx, 8
    lea edx, [ebp - 0x18]
    mov eax, 8
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0040f9bf:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 4], edx
    mov dword ptr [ebp - 8], ebx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x14], ax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x12], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x10], ax
    mov ebx, 6
    lea edx, [ebp - 0x14]
    mov eax, 0x24
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0040fa02:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_00460040], 0
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fa21:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_00460040]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fa43:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    xor ebx, ebx
    xor edx, edx
    mov eax, 9
    call sub_0040ce27
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fa66:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, 0x2b
    call sub_0040c326
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_00460038], eax
    cmp dword ptr [d_00460058], 2
    jne loc_0040faaa
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x2b
    call sub_0040ce27
loc_0040faaa:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fab3:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_00460038]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fad5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, 0x2c
    call sub_0040c326
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_00460044], eax
    cmp dword ptr [d_00460058], 2
    jne loc_0040fb19
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x2c
    call sub_0040ce27
loc_0040fb19:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fb22:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_00460044]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fb44:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [d_00460058], 2
    jne loc_0040fb82
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, 0x25
    call sub_0040c326
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x25
    call sub_0040ce27
    jmp loc_0040fb87
loc_0040fb82:
    call sub_0040fce6
loc_0040fb87:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fb90:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x26
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fbc2:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0xc], ax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0xa], ax
    mov ebx, 4
    lea edx, [ebp - 0xc]
    mov eax, 0xc
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0040fbfd:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_0046013c]
    sar eax, 0x10
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fc22:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_0045bac4]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fc44:
    # --- patched: original code of 0x0040fc44..0x0040fca1 replaced (see hooks.s)
    .fill 93, 1, 0x90
sub_0040fca1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [d_00460058], 2
    jne loc_0040fcdd
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, 0x2d
    call sub_0040c326
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x2d
    call sub_0040ce27
loc_0040fcdd:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fce6:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    cmp dword ptr [d_00460054], 0
    # jne 0x40fd72
    .byte 0x0f,0x85
    .long loc_0040fd72 - . - 4
    mov dword ptr [d_00460054], 1
    mov dword ptr [ebp - 8], 0
loc_0040fd12:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_0040fd22
    jmp loc_0040fd51
loc_0040fd1a:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0040fd12
loc_0040fd22:
    xor ebx, ebx
    lea edx, [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00421dd2
    cmp dword ptr [ebp - 4], 4
    jne loc_0040fd43
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    mov word ptr [eax + ebp - 0x1c], 0
    jmp loc_0040fd4f
loc_0040fd43:
    mov eax, dword ptr [ebp - 8]
    add eax, eax
    mov word ptr [eax + ebp - 0x1c], 1
loc_0040fd4f:
    jmp loc_0040fd1a
loc_0040fd51:
    mov eax, 0x2e
    call sub_0040c326
    mov ebx, 0x14
    lea edx, [ebp - 0x1c]
    mov eax, 0x2e
    call sub_0040ce27
    call bm_pump
loc_0040fd72:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fd7b:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 4], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 2], ax
    mov ebx, 4
    lea edx, [ebp - 4]
    mov eax, 0x2f
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0040fdb6:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x3c
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fde8:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 4], edx
    mov dword ptr [ebp - 8], ebx
    cmp dword ptr [d_00460058], 2
    jne loc_0040fe2d
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x14], ax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x12], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x10], ax
    mov ebx, 6
    lea edx, [ebp - 0x14]
    mov eax, 0x30
    call sub_0040ce27
loc_0040fe2d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0040fe34:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], offset d_00460140
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fe55:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov ebx, 0x29
    mov edx, dword ptr [ebp - 4]
    mov eax, offset d_00460140
    call sub_0045169c
    mov byte ptr [d_00460168], 0
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040fe88:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    cmp dword ptr [d_00460058], 2
    jne loc_0040ff0b
    mov ax, word ptr [d_0046497c]
    mov word ptr [ebp - 0x10], ax
    mov ax, word ptr [d_00464940]
    mov word ptr [ebp - 0xe], ax
    mov ax, word ptr [d_00464930]
    mov word ptr [ebp - 0xc], ax
    mov ax, word ptr [d_00464964]
    mov word ptr [ebp - 0xa], ax
    mov ax, word ptr [d_00464974]
    mov word ptr [ebp - 8], ax
    mov ax, word ptr [d_00464948]
    mov word ptr [ebp - 6], ax
    mov ax, word ptr [d_00464990]
    mov word ptr [ebp - 4], ax
    mov ax, word ptr [d_00464928]
    mov word ptr [ebp - 2], ax
    mov eax, 0x31
    call sub_0040c326
    mov ebx, 0x10
    lea edx, [ebp - 0x10]
    mov eax, 0x31
    call sub_0040ce27
loc_0040ff0b:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ff14:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 4], edx
    mov dword ptr [ebp - 8], ebx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x14], ax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x12], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x10], ax
    mov ebx, 6
    lea edx, [ebp - 0x14]
    mov eax, 0x32
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0040ff57:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_0046497c]
    mov dword ptr [d_0045ed7c], eax
    mov eax, dword ptr [d_00464940]
    mov dword ptr [d_0045ed80], eax
    mov eax, dword ptr [d_00464930]
    mov dword ptr [d_0045ed84], eax
    mov eax, dword ptr [d_00464964]
    mov dword ptr [d_0045ed88], eax
    mov eax, dword ptr [d_00464974]
    mov dword ptr [d_0045ed8c], eax
    mov eax, dword ptr [d_00464948]
    mov dword ptr [d_0045ed90], eax
    mov eax, dword ptr [d_00464990]
    mov dword ptr [d_0045ed94], eax
    mov eax, dword ptr [d_00464928]
    mov dword ptr [d_0045ed98], eax
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0040ffbc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_0045ed7c]
    mov dword ptr [d_0046497c], eax
    mov eax, dword ptr [d_0045ed80]
    mov dword ptr [d_00464940], eax
    mov eax, dword ptr [d_0045ed84]
    mov dword ptr [d_00464930], eax
    mov eax, dword ptr [d_0045ed88]
    mov dword ptr [d_00464964], eax
    mov eax, dword ptr [d_0045ed8c]
    mov dword ptr [d_00464974], eax
    mov eax, dword ptr [d_0045ed90]
    mov dword ptr [d_00464948], eax
    mov eax, dword ptr [d_0045ed94]
    mov dword ptr [d_00464990], eax
    mov eax, dword ptr [d_0045ed98]
    mov dword ptr [d_00464928], eax
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00410021:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 0x1c], ax
    mov ebx, 0xf
    mov edx, dword ptr [ebp - 4]
    lea eax, [ebp - 0x1a]
    call sub_00451dc4
    mov ebx, 0x12
    lea edx, [ebp - 0x1c]
    mov eax, 0x33
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00410065:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x28
    .byte 0x81,0xec,0x28,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 4], ebx
    mov dword ptr [ebp - 8], ecx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 0x28], ax
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [ebp - 0x26], ax
    mov eax, dword ptr [ebp - 4]
    mov word ptr [ebp - 0x24], ax
    mov ebx, 0xe
    mov edx, dword ptr [ebp - 8]
    lea eax, [ebp - 0x22]
    call sub_00451dc4
    mov ebx, 0x16
    lea edx, [ebp - 0x28]
    mov eax, 0x34
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_004100b9:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x2c
    .byte 0x81,0xec,0x2c,0x00,0x00,0x00
    cmp dword ptr [d_00460058], 2
    jne loc_00410136
    mov dword ptr [ebp - 4], 0
loc_004100d7:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_004100e7
    jmp loc_0041011a
loc_004100df:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_004100d7
loc_004100e7:
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dx, word ptr [edx + d_0046460c]
    mov word ptr [eax + ebp - 0x2c], dx
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [ebp - 4]
    add eax, eax
    add eax, eax
    mov dx, word ptr [edx + d_0046465c]
    mov word ptr [eax + ebp - 0x2a], dx
    jmp loc_004100df
loc_0041011a:
    mov eax, 0x35
    call sub_0040c326
    mov ebx, 0x28
    lea edx, [ebp - 0x2c]
    mov eax, 0x35
    call sub_0040ce27
loc_00410136:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041013f:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 4], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 2], ax
    mov ebx, 4
    lea edx, [ebp - 4]
    mov eax, 0x36
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041017a:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [ebp - 4], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [ebp - 2], ax
    mov ebx, 4
    lea edx, [ebp - 4]
    mov eax, 0x37
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004101b5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov ax, word ptr [d_0046499c]
    mov dword ptr [ebp - 4], eax
    mov eax, 0x38
    call sub_0040c326
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x38
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004101f1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, 0x39
    call sub_0040c326
    mov ebx, 2
    lea edx, [ebp - 4]
    mov eax, 0x39
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041022d:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], edx
    mov eax, 0x3b
    call sub_0040c326
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, 0x3b
    call sub_0040ce27
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00410262:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 0xc], 0
loc_0041027e:
    cmp dword ptr [ebp - 0xc], 9
    jl loc_0041028e
    jmp loc_004102a5
loc_00410286:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0041027e
loc_0041028e:
    mov eax, dword ptr [ebp - 0xc]
    add eax, eax
    cmp word ptr [eax + bm_net_ids], 0
    je loc_004102a3
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
loc_004102a3:
    jmp loc_00410286
loc_004102a5:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004102b7:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x24
    .byte 0x81,0xec,0x24,0x00,0x00,0x00
    cmp dword ptr [d_0046019c], 0
    jle loc_00410318
    mov eax, dword ptr [d_00460174]
    mov dword ptr [ebp - 0x24], eax
    mov dword ptr [ebp - 0x20], 0
loc_004102dd:
    cmp dword ptr [ebp - 0x20], 9
    jl loc_004102ed
    jmp loc_00410307
loc_004102e5:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_004102dd
loc_004102ed:
    mov eax, dword ptr [ebp - 0x20]
    shl eax, 2
    mov edx, dword ptr [ebp - 0x20]
    shl edx, 2
    mov eax, dword ptr [eax + d_00460178]
    mov dword ptr [edx + d_00460174], eax
    jmp loc_004102e5
loc_00410307:
    dec dword ptr [d_0046019c]
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 4], eax
    jmp loc_004103f5
loc_00410318:
    call sub_00429790
    mov dword ptr [ebp - 0x20], 0
loc_00410324:
    cmp dword ptr [ebp - 0x20], 0xa
    jl loc_00410337
    jmp loc_004103ed
loc_0041032f:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_00410324
loc_00410337:
    mov eax, dword ptr [ebp - 0x20]
    call sub_00429628
    test eax, eax
    je loc_004103e8
    lea ecx, [ebp - 0x14]
    lea ebx, [ebp - 0x18]
    lea edx, [ebp - 0x1c]
    mov eax, dword ptr [ebp - 0x20]
    call sub_00429520
    lea ecx, [ebp - 8]
    lea ebx, [ebp - 0xc]
    lea edx, [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x20]
    call sub_0042957e
    cmp dword ptr [ebp - 0x1c], 0x1e
    jg loc_00410375
    cmp dword ptr [ebp - 0x10], 0x1e
    jg loc_00410377
loc_00410375:
    jmp loc_00410383
loc_00410377:
    mov dword ptr [ebp - 4], 0x14b
    # jmp 0x4103f5
    .byte 0xe9
    .long loc_004103f5 - . - 4
loc_00410383:
    cmp dword ptr [ebp - 0x1c], 0x46
    jl loc_0041038f
    cmp dword ptr [ebp - 0x10], 0x46
    jl loc_00410391
loc_0041038f:
    jmp loc_0041039d
loc_00410391:
    mov dword ptr [ebp - 4], 0x14d
    # jmp 0x4103f5
    .byte 0xe9
    .long loc_004103f5 - . - 4
loc_0041039d:
    cmp dword ptr [ebp - 0x18], 0x1e
    jg loc_004103a9
    cmp dword ptr [ebp - 0xc], 0x1e
    jg loc_004103ab
loc_004103a9:
    jmp loc_004103b4
loc_004103ab:
    mov dword ptr [ebp - 4], 0x148
    jmp loc_004103f5
loc_004103b4:
    cmp dword ptr [ebp - 0x18], 0x46
    jl loc_004103c0
    cmp dword ptr [ebp - 0xc], 0x46
    jl loc_004103c2
loc_004103c0:
    jmp loc_004103cb
loc_004103c2:
    mov dword ptr [ebp - 4], 0x150
    jmp loc_004103f5
loc_004103cb:
    test dword ptr [ebp - 0x14], 1
    je loc_004103dd
    test dword ptr [ebp - 8], 1
    je loc_004103df
loc_004103dd:
    jmp loc_004103e8
loc_004103df:
    mov dword ptr [ebp - 4], 0xd
    jmp loc_004103f5
loc_004103e8:
    jmp loc_0041032f
loc_004103ed:
    call sub_0043a508
    mov dword ptr [ebp - 4], eax
loc_004103f5:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00410401:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [d_0046019c], 0xa
    jge loc_00410433
    mov edx, dword ptr [d_0046019c]
    inc dword ptr [d_0046019c]
    shl edx, 2
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx + d_00460174], eax
loc_00410433:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041043c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    call sub_0043a68c
    call sub_00433c6c
    mov dword ptr [d_0046019c], 0
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00410465:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_004601b4], 0
    mov eax, 0x64
    call sub_00412135
    inc eax
    call sub_00410494
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00410494:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_004601a8], eax
    imul eax, dword ptr [ebp - 4], 0x3e8
    mov dword ptr [d_004601ac], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004104c2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    call sub_00410522
    mov dword ptr [d_004601b8], 0
    mov eax, dword ptr [d_004601a8]
    mov dword ptr [d_004601b0], eax
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004104f0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_004601b4], 0
    jne loc_0041051b
    mov dword ptr [d_004601b4], 1
    call sub_0043acf8
    mov dword ptr [d_004601a0], eax
loc_0041051b:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00410522:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_004601b4], 0
    je loc_00410543
    mov dword ptr [d_004601b4], 0
loc_00410543:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041054a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [d_004601a8], 0x3e9
    je loc_0041056f
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_004601b0], eax
loc_0041056f:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00410578:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_004601a8], 0x3e9
    jne loc_0041059c
    mov eax, dword ptr [d_004601a8]
    mov dword ptr [ebp - 4], eax
    jmp loc_004105a4
loc_0041059c:
    mov eax, dword ptr [d_004601a4]
    mov dword ptr [ebp - 4], eax
loc_004105a4:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004105b0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_004601bc]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004105d2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xa4
    call sub_0040c06a
    cmp eax, 1
    jne loc_00410638
    mov eax, dword ptr [d_004601b0]
    mov dword ptr [d_004601a4], eax
    mov eax, dword ptr [d_004601a4]
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [d_004601a8]
    sub eax, dword ptr [d_004601b0]
    test eax, eax
    jge loc_00410617
    mov dword ptr [ebp - 0x88], 0
    jmp loc_00410628
loc_00410617:
    mov eax, dword ptr [d_004601a8]
    sub eax, dword ptr [d_004601b0]
    mov dword ptr [ebp - 0x88], eax
loc_00410628:
    mov eax, dword ptr [ebp - 0x88]
    mov dword ptr [d_004601bc], eax
    jmp loc_004106f2
loc_00410638:
    cmp dword ptr [d_004601b4], 0
    je loc_00410666
    call sub_0043acf8
    mov dword ptr [ebp - 0x20], eax
    mov eax, dword ptr [ebp - 0x20]
    sub eax, dword ptr [d_004601a0]
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x20]
    mov dword ptr [d_004601a0], eax
    mov eax, dword ptr [ebp - 0x10]
    add dword ptr [d_004601b8], eax
loc_00410666:
    mov edx, dword ptr [d_004601ac]
    sub edx, dword ptr [d_004601b8]
    mov ebx, 0x3e8
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    jge loc_0041068e
    mov dword ptr [ebp - 0x18], 0
loc_0041068e:
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [d_004601a4], eax
    mov eax, dword ptr [d_004601a8]
    sub eax, dword ptr [ebp - 0x18]
    test eax, eax
    jge loc_004106ae
    mov dword ptr [ebp - 0x8c], 0
    jmp loc_004106bc
loc_004106ae:
    mov eax, dword ptr [d_004601a8]
    sub eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x8c], eax
loc_004106bc:
    mov eax, dword ptr [ebp - 0x8c]
    mov dword ptr [d_004601bc], eax
    call sub_0040c06a
    cmp eax, 2
    jne loc_004106f2
    mov eax, dword ptr [d_004601a4]
    cmp eax, dword ptr [d_004601b0]
    je loc_004106f2
    mov eax, dword ptr [d_004601a4]
    mov dword ptr [d_004601b0], eax
    mov eax, dword ptr [d_004601b0]
    call sub_0040fca1
loc_004106f2:
    cmp dword ptr [d_004601a8], 0x3e9
    jne loc_0041075b
    mov eax, 0x6e
    call sub_00412135
    mov dword ptr [ebp - 8], eax
    mov eax, 0x6f
    call sub_00412135
    mov dword ptr [ebp - 4], eax
    mov eax, offset d_00458e1c
    call sub_0041d957
    mov dword ptr [ebp - 0x94], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0x94]
    call sub_0041daa7
    mov dword ptr [ebp - 0x90], eax
    mov ebx, dword ptr [ebp - 0x90]
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00415920
    mov eax, dword ptr [d_004601a8]
    mov dword ptr [d_004601a4], eax
    jmp loc_00410874
loc_0041075b:
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0x18], 0x1e
    jg loc_00410775
    xor eax, eax
    mov al, byte ptr [d_0049a390]
    mov dword ptr [ebp - 0xc], eax
loc_00410775:
    mov ebx, 0x3c
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x18]
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x1c], eax
    imul eax, dword ptr [ebp - 0x1c], 0x3c
    sub dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x18]
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, 0x119
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x84]
    push eax
    call sub_004518d0
    add esp, 0x10
    lea eax, [ebp - 0x84]
    mov dword ptr [ebp - 0x14], eax
    mov eax, 0x6e
    call sub_00412135
    mov dword ptr [ebp - 8], eax
    mov eax, 0x6f
    call sub_00412135
    mov dword ptr [ebp - 4], eax
    mov eax, offset d_00458e25
    call sub_0041d957
    mov dword ptr [ebp - 0xa4], eax
loc_004107e4:
    mov eax, dword ptr [ebp - 0x14]
    cmp byte ptr [eax], 0
    je loc_00410874
    mov eax, dword ptr [ebp - 0x14]
    mov al, byte ptr [eax]
    and eax, 0xff
    sub eax, 0x30
    mov dword ptr [ebp - 0x98], eax
    cmp dword ptr [ebp - 0x98], 0
    jl loc_00410815
    cmp dword ptr [ebp - 0x98], 0xa
    jle loc_00410817
loc_00410815:
    jmp loc_00410869
loc_00410817:
    mov edx, dword ptr [ebp - 0x98]
    mov eax, dword ptr [ebp - 0xa4]
    call sub_0041daa7
    mov dword ptr [ebp - 0xa0], eax
    mov ebx, dword ptr [ebp - 0xa0]
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00415920
    push 0
    xor ecx, ecx
    xor ebx, ebx
    lea edx, [ebp - 0x9c]
    mov eax, dword ptr [ebp - 0xa0]
    call sub_0041c5e0
    mov eax, 0x70
    call sub_00412135
    add eax, dword ptr [ebp - 0x9c]
    add dword ptr [ebp - 8], eax
loc_00410869:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_004107e4
loc_00410874:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041087d:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_004601a8], 0x3e9
    jne loc_004108a0
    mov dword ptr [ebp - 4], 0
    jmp loc_004108d5
loc_004108a0:
    call sub_0040c06a
    cmp eax, 1
    jne loc_004108bc
    cmp dword ptr [d_004601b0], 0
    jg loc_004108bc
    mov dword ptr [ebp - 4], 1
    jmp loc_004108d5
loc_004108bc:
    cmp dword ptr [d_004601a4], 0
    jg loc_004108ce
    mov dword ptr [ebp - 4], 1
    jmp loc_004108d5
loc_004108ce:
    mov dword ptr [ebp - 4], 0
loc_004108d5:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_004108e1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jne loc_00410951
    call sub_0040c06a
    test eax, eax
    je loc_00410951
    mov dword ptr [d_00464a68], 2
    call sub_0040c06a
    cmp eax, 2
    jne loc_0041091f
    mov eax, 0x1b
    call sub_0040f064
loc_0041091f:
    mov eax, dword ptr [d_00464a68]
    call sub_0040fb44
    mov dword ptr [ebp - 8], 0
loc_00410930:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00410940
    jmp loc_00410951
loc_00410938:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00410930
loc_00410940:
    call bm_pump
    mov eax, 0x64
    call sub_00413cb0
    jmp loc_00410938
loc_00410951:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041095a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    lea eax, [ebp - 0xc]
    call sub_00451e3e
    mov eax, dword ptr [ebp - 0xc]
    call sub_0045192e
    mov eax, offset d_00458e34
    call sub_0043e5cc
    mov eax, offset ptr_004108e1
    call sub_0043adc0
    xor ecx, ecx
    mov ebx, offset d_00458e45
    xor edx, edx
    xor eax, eax
    call sub_0043e750
    mov edx, offset d_004649a0
    mov eax, offset d_00458e46
    call sub_0041739c
    mov edx, offset d_00464a80
    mov eax, offset d_00458e4d
    call sub_0041739c
    mov edx, offset d_00464a04
    mov eax, offset d_00458e54
    call sub_0041739c
    call sub_00413b1c
    call sub_004127ff
    call sub_00414df4
    call sub_00406086
    call sub_0042971f
    call sub_0041d695
    call sub_0042896e
    call sub_004213e0
    call sub_0040a0fe
    call sub_0042647a
    call sub_00422c7a
    call sub_00424f0b
    call sub_00404d16
    call sub_00426c88
    call sub_00403b73
    call sub_00403363
    call sub_00410465
    call sub_0040c74c
    call sub_004021bd
    call sub_00401886
    call sub_00401066
    lea eax, [ebp - 8]
    call sub_00451e3e
    mov eax, dword ptr [ebp - 8]
    call sub_0045192e
    mov eax, 0x78
    call sub_00412135
    mov dword ptr [d_00464990], eax
    mov eax, 0x79
    call sub_00412135
    mov dword ptr [d_00464988], eax
    mov eax, 0x7a
    call sub_00412135
    mov dword ptr [d_00464a74], eax
    mov eax, 0x7b
    call sub_00412135
    mov dword ptr [d_00464a78], eax
    mov eax, 0x7c
    call sub_00412135
    mov dword ptr [d_00464980], eax
    mov eax, 0x7d
    call sub_00412135
    cmp eax, 1
    jle loc_00410aab
    mov eax, 0x7d
    call sub_00412135
    mov dword ptr [ebp - 4], eax
    jmp loc_00410ab2
loc_00410aab:
    mov dword ptr [ebp - 4], 1
loc_00410ab2:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0046498c], eax
    mov eax, 0x1b
    call sub_00412135
    mov dword ptr [d_00464974], eax
    mov dword ptr [d_00464930], 1
    mov eax, 0x2e
    call sub_00412135
    mov dword ptr [d_00464940], eax
    mov eax, 0x28
    call sub_00412135
    mov dword ptr [d_00464ae8], eax
    mov eax, 0x136
    call sub_00412135
    mov dword ptr [d_00464a7c], eax
    mov eax, 0xe
    call sub_00412135
    mov dword ptr [d_00464968], eax
    mov eax, 0x64
    call sub_00412135
    mov dword ptr [d_00464948], eax
    call sub_00406a2a
    push 0x98
    mov eax, offset d_00458e5a
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, 0x1e
    call sub_00412135
    mov ebx, eax
    mov eax, 0x3e8
    mov edx, 0x3e8
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [d_0046494c], eax
    mov dword ptr [d_0046492c], 0xffffffff
    call sub_00402150
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00410b6e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x88
    mov eax, 1
    call sub_0042a16f
    call sub_0040133f
    cmp dword ptr [d_00464a68], 0xa
    je loc_00410eb6
    call sub_0040c06a
    cmp eax, 1
    jne loc_00410bed
    mov dword ptr [d_0046499c], 0xffffffff
    call sub_0041043c
loc_00410bb1:
    cmp dword ptr [d_0046499c], -1
    jne loc_00410be8
    call bm_pump
    call sub_004102b7
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0x1b
    jne loc_00410be6
    mov dword ptr [d_0046492c], 0xffffffff
    mov dword ptr [d_00464a68], 2
    jmp loc_00410eb6
loc_00410be6:
    jmp loc_00410bb1
loc_00410be8:
    jmp loc_00410ca0
loc_00410bed:
    cmp dword ptr [d_00464998], 0
    jl loc_00410c02
    mov eax, dword ptr [d_00464998]
    mov dword ptr [d_0046499c], eax
    jmp loc_00410c69
loc_00410c02:
    mov dword ptr [ebp - 8], 0
loc_00410c09:
    cmp dword ptr [ebp - 8], 0xc8
    jl loc_00410c1c
    jmp loc_00410c69
loc_00410c14:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00410c09
loc_00410c1c:
    mov eax, 0x23
    call sub_00412135
    cmp eax, 1
    jle loc_00410c3a
    mov eax, 0x23
    call sub_00412135
    mov dword ptr [ebp - 0xc], eax
    jmp loc_00410c41
loc_00410c3a:
    mov dword ptr [ebp - 0xc], 1
loc_00410c41:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0xc]
    mov dword ptr [d_0046499c], edx
    mov eax, dword ptr [d_0046499c]
    add eax, 0x47e
    call sub_00412135
    test eax, eax
    je loc_00410c14
loc_00410c69:
    call sub_0040c06a
    cmp eax, 2
    jne loc_00410ca0
    mov dword ptr [ebp - 0x10], 0
loc_00410c7a:
    # --- patched: original code of 0x00410c7a..0x00410c7e replaced (see hooks.s)
    cmp dword ptr [ebp - 0x10], 1
    jl loc_00410c8a
    jmp loc_00410c9b
loc_00410c82:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00410c7a
loc_00410c8a:
    mov eax, 0x64
    call sub_00413cb0
    call bm_pump
    jmp loc_00410c82
loc_00410c9b:
    call sub_004101b5
loc_00410ca0:
    call sub_0040c06a
    test eax, eax
    jne loc_00410cae
    call sub_00428bb1
loc_00410cae:
    inc dword ptr [d_004642a0]
    call sub_0040f894
    call sub_004151ad
    call sub_004260f5
    push dword ptr [d_0046499c]
    mov eax, offset d_00458e6c
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x74]
    call sub_00411d17
    call sub_004165fc
    call sub_0042633c
    call sub_00415189
    call sub_00415ca4
    call sub_00415c1f
    call sub_00422d3b
    call sub_00426cdb
    call sub_00424f5e
    call sub_004214bc
    call sub_004258e5
    call sub_0040551f
    call sub_0040151b
    mov dword ptr [d_00464984], 0
    cmp dword ptr [d_00464a68], 0
    jne loc_00410eb1
    call sub_0040c06a
    cmp eax, 2
    jne loc_00410e01
    mov eax, 0x136
    call sub_004124a4
    call sub_00412e0c
    lea eax, [ebp - 0x80]
    call sub_00451e3e
loc_00410d5b:
    lea eax, [ebp - 0x7c]
    call sub_00451e3e
    mov eax, dword ptr [ebp - 0x7c]
    sub eax, dword ptr [ebp - 0x80]
    shl eax, 3
    mov dword ptr [ebp - 0x78], eax
    cmp dword ptr [ebp - 0x78], 0x63
    jle loc_00410d7c
    mov dword ptr [ebp - 0x78], 0x63
loc_00410d7c:
    mov eax, dword ptr [ebp - 0x78]
    call sub_00412e33
    call bm_pump
    mov eax, 0x64
    call bm_nap
    call sub_0043a508
    mov dword ptr [ebp - 0x84], eax
    cmp dword ptr [ebp - 0x84], -1
    je loc_00410db0
    cmp dword ptr [ebp - 0x84], -2
    jne loc_00410db2
loc_00410db0:
    jmp loc_00410dbc
loc_00410db2:
    mov eax, 0x14
    call sub_00427961
loc_00410dbc:
    cmp dword ptr [ebp - 0x84], 0x1b
    jne loc_00410ddb
    mov dword ptr [d_0046492c], 0xffffffff
    mov dword ptr [d_00464a68], 2
    jmp loc_00410de8
loc_00410ddb:
    call sub_0040f8d4
    test eax, eax
    je loc_00410d5b
loc_00410de8:
    mov eax, 0x64
    call sub_00412e33
    call sub_0040fa43
    call bm_pump
    call sub_00405ced
loc_00410e01:
    call sub_0040c06a
    cmp eax, 1
    # jne 0x410e88
    .byte 0x0f,0x85
    .long loc_00410e88 - . - 4
    call sub_0040fa02
    # --- patched: original code of 0x00410e14..0x00410e19 replaced (see hooks.s)
    mov eax, 0x64
    call sub_00413cb0
loc_00410e1e:
    call bm_pump
    call sub_0040f947
    call bm_pump
    mov eax, 0x64
    call sub_00413cb0
    call sub_0043a508
    mov dword ptr [ebp - 0x88], eax
    cmp dword ptr [ebp - 0x88], -1
    je loc_00410e54
    cmp dword ptr [ebp - 0x88], -2
    jne loc_00410e56
loc_00410e54:
    jmp loc_00410e60
loc_00410e56:
    mov eax, 0x14
    call sub_00427961
loc_00410e60:
    cmp dword ptr [ebp - 0x88], 0x1b
    jne loc_00410e7f
    mov dword ptr [d_0046492c], 0xffffffff
    mov dword ptr [d_00464a68], 2
    jmp loc_00410e88
loc_00410e7f:
    call sub_0040fa21
    test eax, eax
    je loc_00410e1e
loc_00410e88:
    cmp dword ptr [d_004648c0], 0
    je loc_00410e98
    call sub_00427342
    jmp loc_00410e9d
loc_00410e98:
    call sub_004293e5
loc_00410e9d:
    mov eax, dword ptr [d_00464948]
    call sub_00410494
    call sub_004104c2
    call sub_004104f0
loc_00410eb1:
    call sub_00431360
loc_00410eb6:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00410ebf:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    call sub_00413b1c
    cmp dword ptr [d_00460240], 0x20
    jge loc_00410ef6
    mov edx, dword ptr [d_00460240]
    inc dword ptr [d_00460240]
    shl edx, 2
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx + d_004601c0], eax
loc_00410ef6:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00410eff:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    push dword ptr [d_00460240]
    mov eax, offset d_00458e78
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, dword ptr [d_00460240]
    dec eax
    mov dword ptr [ebp - 4], eax
loc_00410f2a:
    cmp dword ptr [ebp - 4], 0
    jge loc_00410f3a
    jmp loc_00410f65
loc_00410f32:
    mov eax, dword ptr [ebp - 4]
    dec dword ptr [ebp - 4]
    jmp loc_00410f2a
loc_00410f3a:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    cmp dword ptr [eax + d_004601c0], 0
    je loc_00410f55
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    call dword ptr [eax + d_004601c0]
loc_00410f55:
    mov eax, offset d_00458ea4
    push eax
    call sub_0042c0c8
    add esp, 4
    jmp loc_00410f32
loc_00410f65:
    mov eax, offset d_00458ea6
    push eax
    call sub_0042c0c8
    add esp, 4
    call sub_004184bb
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00410f81:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x144
    mov dword ptr [ebp - 4], 0
    mov dword ptr [d_00464a68], 0
    call sub_00428b97
    call sub_004046cc
    call sub_0040cc33
    cmp dword ptr [d_00464938], 0
    jne loc_00410fde
    cmp dword ptr [d_004648bc], 0
    je loc_00410fca
    call sub_0040c06a
    test eax, eax
    je loc_00410fcc
loc_00410fca:
    jmp loc_00410fde
loc_00410fcc:
    call sub_004034bc
    cmp dword ptr [d_00464a68], 0
    # jne 0x411cef
    .byte 0x0f,0x85
    .long loc_00411cef - . - 4
loc_00410fde:
    inc dword ptr [d_0046429c]
    call sub_004296e2
    call sub_0040c06a
    test eax, eax
    jne loc_00410ff7
    call sub_004211e7
loc_00410ff7:
    cmp dword ptr [d_00460244], 0
    # je 0x411178
    .byte 0x0f,0x84
    .long loc_00411178 - . - 4
