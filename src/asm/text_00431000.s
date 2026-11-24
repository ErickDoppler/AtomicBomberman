# code 0x00431000 - 0x00441000
    .intel_syntax noprefix
    .text
    add esi, eax
    mov edi, dword ptr [esp + 0x14]
    mov dword ptr [d_0049d7c8], esi
    call sub_0043185c
    test edi, edi
    jne loc_0043101b
    call sub_00431178
loc_0043101b:
    mov eax, dword ptr [d_0049d7cc]
    mov dword ptr [d_0049d7b8], eax
    mov eax, dword ptr [d_0049d7c8]
    mov dword ptr [d_0049d7c0], eax
    xor eax, eax
loc_00431031:
    add esp, 0x18
    pop ebp
    pop edi
    pop esi
    ret 0xc
    .byte 0x8b,0xc0
    push esi
    mov esi, dword ptr [d_0045c35c]
    test esi, esi
    jne loc_00431050
    mov eax, 0xffffffff
    pop esi
    ret 0x10
loc_00431050:
    mov dword ptr [eax], esi
    mov eax, dword ptr [d_0049d7e8]
    mov dword ptr [edx], eax
    mov eax, dword ptr [d_0049d7e4]
    mov dword ptr [ebx], eax
    mov eax, dword ptr [d_0049d7bc]
    mov edx, dword ptr [esp + 8]
    mov dword ptr [ecx], eax
    mov eax, dword ptr [d_0049d7f0]
    mov dword ptr [edx], eax
    mov edx, dword ptr [esp + 0xc]
    mov eax, dword ptr [d_0049d7ec]
    mov dword ptr [edx], eax
    mov edx, dword ptr [esp + 0x10]
    mov al, byte ptr [d_0049d800]
    mov byte ptr [edx], al
    mov edx, dword ptr [esp + 0x14]
    mov eax, dword ptr [d_0049d7b0]
    mov dword ptr [edx], eax
    xor eax, eax
    pop esi
    ret 0x10
    .byte 0x8d,0x40,0x00
    push esi
    push edi
    push ebp
    mov esi, eax
    mov ebp, edx
    mov edi, ebx
    mov ebx, dword ptr [esp + 0x10]
    mov edx, ecx
    xor eax, eax
    mov al, byte ptr [esp + 0x1c]
    push eax
    mov ecx, dword ptr [esp + 0x1c]
    push ecx
    mov eax, dword ptr [esp + 0x1c]
    push eax
    mov eax, edi
    imul eax, edx
    imul eax, ebx
    mov ecx, edx
    add eax, esi
    call sub_00430edc
    cmp eax, -1
    je loc_004310f9
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [d_0045c35c], esi
    mov dword ptr [d_0049d7e8], ebp
    mov dword ptr [d_0049d7b0], eax
    mov eax, offset ptr_00431100
    mov dword ptr [d_0049d7d8], edi
    call sub_0043a6fc
    xor eax, eax
loc_004310f9:
    pop ebp
    pop edi
    pop esi
    ret 0x14
    .byte 0x90
ptr_00431100:
    push ebx
    push ecx
    push edx
    push esi
    push ebp
    mov eax, dword ptr [d_0045c368]
    call sub_0043ad68
    cmp eax, dword ptr [d_0049d7b0]
    jb loc_00431170
    call sub_0043acf8
    mov ebx, dword ptr [d_0049d7d8]
    mov ecx, dword ptr [d_0049d7e8]
    inc ebx
    mov dword ptr [d_0045c368], eax
    mov dword ptr [d_0049d7d8], ebx
    cmp ebx, ecx
    jne loc_00431140
    xor esi, esi
    mov dword ptr [d_0049d7d8], esi
loc_00431140:
    mov eax, dword ptr [d_0049d7d8]
    imul eax, dword ptr [d_0049d7e4]
    mov edx, dword ptr [d_0049d7bc]
    imul edx, eax
    mov eax, dword ptr [d_0045c35c]
    add eax, edx
    mov ebp, dword ptr [d_0049d7b4]
    mov dword ptr [d_0045c358], eax
    test ebp, ebp
    jne loc_00431170
    call sub_00431178
loc_00431170:
    pop ebp
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00431178:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov ebp, dword ptr [d_0045c354]
    cmp dword ptr [d_0049d7dc], 0
    je loc_0043134f
    cmp dword ptr [d_0049d7f8], 0
    je loc_004311aa
    cmp dword ptr [d_0049d7b4], 0
    # jne 0x431224
    .byte 0x0f,0x85
    .long loc_00431224 - . - 4
loc_004311aa:
    mov eax, ebp
    mov dword ptr [d_0045c354], ebp
    call sub_0043dcec
    xor esi, esi
    xor ebx, ebx
    mov ebp, dword ptr [d_0045c354]
    mov eax, dword ptr [d_0049d7bc]
    mov dword ptr [esp + 4], esi
    mov dword ptr [esp], esi
    test eax, eax
    jle loc_00431224
loc_004311d1:
    mov edi, dword ptr [d_0049d7e4]
    xor eax, eax
    test edi, edi
    jle loc_00431204
    mov edx, dword ptr [esp]
    mov edi, ebp
loc_004311e2:
    mov esi, dword ptr [d_0045c358]
    add esi, edx
    mov cl, byte ptr [esi]
    cmp cl, byte ptr [d_0049d800]
    je loc_004311f7
    mov byte ptr [edi + ebx], cl
loc_004311f7:
    mov ecx, dword ptr [d_0049d7e4]
    inc edx
    inc eax
    inc ebx
    cmp eax, ecx
    jl loc_004311e2
loc_00431204:
    mov edx, dword ptr [esp + 4]
    mov ecx, dword ptr [esp]
    mov eax, dword ptr [d_0049d7e0]
    mov esi, dword ptr [d_0049d7bc]
    inc edx
    add ecx, eax
    mov dword ptr [esp + 4], edx
    mov dword ptr [esp], ecx
    cmp edx, esi
    jl loc_004311d1
loc_00431224:
    mov eax, dword ptr [d_0049d7cc]
    mov esi, dword ptr [d_004a3be0]
    cmp eax, esi
    jge loc_00431241
    mov edx, esi
    mov esi, dword ptr [d_0049d7e4]
    sub edx, eax
    sub esi, edx
    jmp loc_0043126a
loc_00431241:
    mov edi, dword ptr [d_0049d7e4]
    add eax, edi
    mov edx, dword ptr [d_004a3be8]
    dec eax
    cmp eax, edx
    jle loc_00431266
    mov eax, dword ptr [d_004a3be8]
    sub eax, dword ptr [d_0049d7cc]
    xor edx, edx
    lea esi, [eax + 1]
    jmp loc_0043126a
loc_00431266:
    mov esi, edi
    xor edx, edx
loc_0043126a:
    mov eax, dword ptr [d_0049d7c8]
    mov edi, dword ptr [d_004a3be4]
    cmp eax, edi
    jge loc_0043128d
    mov ebx, dword ptr [d_0049d7c8]
    mov eax, edi
    sub eax, ebx
    mov ebx, dword ptr [d_0049d7bc]
    sub ebx, eax
    jmp loc_004312b1
loc_0043128d:
    mov ebx, dword ptr [d_0049d7bc]
    add eax, ebx
    mov ecx, dword ptr [d_004a3bec]
    dec eax
    cmp eax, ecx
    jle loc_004312af
    mov edi, dword ptr [d_0049d7c8]
    mov ebx, ecx
    sub ebx, edi
    xor eax, eax
    inc ebx
    jmp loc_004312b1
loc_004312af:
    xor eax, eax
loc_004312b1:
    mov ecx, dword ptr [d_0049d7f8]
    mov dword ptr [d_0045c354], ebp
    test ecx, ecx
    je loc_00431308
    cmp dword ptr [d_0049d7b4], 0
    je loc_00431308
    movzx edi, byte ptr [d_0049d800]
    push edi
    mov edi, dword ptr [d_0049d7c8]
    add edi, eax
    push edi
    mov edi, dword ptr [d_0049d7cc]
    add edi, edx
    push edi
    push ebx
    push esi
    push eax
    push edx
    mov edx, dword ptr [d_0049d7bc]
    push edx
    mov ebx, dword ptr [d_0049d7e0]
    push ebx
    mov ecx, dword ptr [d_0045c358]
    push ecx
    call dword ptr [d_0049d7f8]
    add esp, 0x28
    jmp loc_00431341
loc_00431308:
    mov edi, dword ptr [d_0049d7c8]
    add edi, eax
    push edi
    mov edi, dword ptr [d_0049d7cc]
    add edi, edx
    push edi
    push ebx
    push esi
    push eax
    push edx
    mov ebp, dword ptr [d_0049d7bc]
    push ebp
    mov eax, dword ptr [d_0049d7e4]
    push eax
    mov ebp, dword ptr [d_0045c354]
    push ebp
    call dword ptr [d_0049d7fc]
    mov ebp, dword ptr [d_0045c354]
    add esp, 0x24
loc_00431341:
    xor esi, esi
    mov ebp, dword ptr [d_0045c354]
    mov dword ptr [d_0049d7b4], esi
loc_0043134f:
    mov dword ptr [d_0045c354], ebp
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00431360:
    push ecx
    push esi
    push edi
    sub esp, 0x10
    cmp dword ptr [d_0049d7dc], 0
    je loc_004313be
    cmp dword ptr [d_0049d7b4], 0
    jne loc_004313be
    mov eax, dword ptr [d_0049d7cc]
    mov dword ptr [esp], eax
    mov eax, dword ptr [d_0049d7c8]
    mov esi, dword ptr [d_0049d7e4]
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esp]
    mov ecx, 1
    add eax, esi
    sub eax, ecx
    mov edi, dword ptr [d_0049d7bc]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 4]
    add eax, edi
    sub eax, ecx
    mov dword ptr [esp + 0xc], eax
    mov eax, esp
    mov dword ptr [d_0049d7b4], ecx
    call sub_0043da90
loc_004313be:
    add esp, 0x10
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
sub_004313c8:
    push ebx
    push edx
    push ebp
    sub esp, 0x14
    cmp dword ptr [d_0049d7dc], 0
    je loc_004314b6
    mov ebx, dword ptr [d_0049d7b4]
    test ebx, ebx
    jne loc_004314b6
    cmp dword ptr [d_0049d7d0], 0
    jne loc_004314b6
    mov eax, esp
    call sub_0044489c
    cmp eax, 1
    jne loc_00431429
    mov eax, dword ptr [esp]
    mov dword ptr [esp + 0xc], eax
    mov eax, dword ptr [esp + 4]
    mov dword ptr [esp + 0x10], eax
    cmp byte ptr [esp + 8], 1
    jne loc_0043141d
    mov ebx, 1
loc_0043141d:
    cmp byte ptr [esp + 9], 1
    jne loc_00431431
    or bl, 2
    jmp loc_00431431
loc_00431429:
    mov dword ptr [esp + 0x10], ebx
    mov dword ptr [esp + 0xc], ebx
loc_00431431:
    fld qword ptr [d_0045c360]
    fild dword ptr [esp + 0xc]
    fmul st(1)
    call sub_00433b38
    fistp dword ptr [esp + 0xc]
    fild dword ptr [esp + 0x10]
    fmulp st(1)
    mov ebp, dword ptr [d_0045c530]
    call sub_00433b38
    fistp dword ptr [esp + 0x10]
    cmp ebp, 1
    sete al
    and eax, 0xff
    je loc_004314a9
    test byte ptr [d_0045c53c], 4
    je loc_00431475
    test ebx, ebx
    jne loc_0043148c
loc_00431475:
    test byte ptr [d_0045c53c], 2
    je loc_0043149d
    cmp dword ptr [esp + 0xc], 0
    jne loc_0043148c
    cmp dword ptr [esp + 0x10], 0
    je loc_0043149d
loc_0043148c:
    mov dword ptr [d_0045c540], 2
    call sub_00444e74
    jmp loc_004314b6
loc_0043149d:
    mov ebx, dword ptr [d_0045c36c]
    xor edx, edx
    xor eax, eax
    jmp loc_004314b1
loc_004314a9:
    mov edx, dword ptr [esp + 0x10]
    mov eax, dword ptr [esp + 0xc]
loc_004314b1:
    call sub_004314c0
loc_004314b6:
    add esp, 0x14
    pop ebp
    pop edx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_004314c0:
    push ecx
    push esi
    push ebp
    sub esp, 0x10
    mov ecx, eax
    cmp dword ptr [d_0049d7dc], 0
    je loc_004316e7
    cmp dword ptr [d_0049d7b4], 0
    jne loc_004316e7
    test eax, eax
    jne loc_00431530
    test edx, edx
    jne loc_00431530
    mov ebp, dword ptr [d_0045c36c]
    cmp ebx, ebp
    jne loc_00431530
    test ebp, ebp
    jne loc_004315a2
    cmp dword ptr [d_0045c350], 0
    jne loc_0043151a
    call sub_0043acf8
    mov ebp, 1
    mov dword ptr [d_0049d7f4], eax
    mov dword ptr [d_0045c350], ebp
loc_0043151a:
    xor eax, eax
    mov dword ptr [d_0049d7d4], eax
    mov dword ptr [d_0045c36c], eax
    mov dword ptr [d_0049d7c4], eax
    jmp loc_004316e7
loc_00431530:
    cmp dword ptr [d_0045c530], 0
    sete al
    and eax, 0xff
    je loc_004315a2
    cmp dword ptr [d_0045c52c], 0xfff
    sete al
    and eax, 0xff
    je loc_0043155a
    call sub_00445248
loc_0043155a:
    mov esi, dword ptr [d_0045c52c]
    lea eax, [esi*4]
    sub eax, esi
    mov esi, dword ptr [d_0045c528]
    shl eax, 3
    add eax, esi
    mov dword ptr [eax], 3
    mov dword ptr [eax + 0xc], ecx
    mov ebp, dword ptr [d_0045c52c]
    mov dword ptr [eax + 0x10], edx
    mov esi, dword ptr [d_0045c534]
    mov dword ptr [eax + 0x14], ebx
    inc ebp
    mov dword ptr [eax + 4], esi
    mov esi, dword ptr [d_0045c538]
    mov dword ptr [d_0045c52c], ebp
    mov dword ptr [eax + 8], esi
loc_004315a2:
    xor eax, eax
    mov dword ptr [d_0045c350], eax
    mov eax, dword ptr [d_0049d7d4]
    mov dword ptr [d_0045c36c], ebx
    mov dword ptr [d_0049d80c], eax
    xor esi, esi
    mov ah, byte ptr [d_0049d80c]
    mov dword ptr [d_0049d7d4], esi
    test ah, 5
    je loc_00431601
    test bl, 1
    je loc_004315f5
    mov dword ptr [d_0049d7d4], 4
    mov eax, dword ptr [d_0049d808]
    call sub_0043ad68
    cmp eax, 0xfa
    jbe loc_0043161a
    or byte ptr [d_0049d7d4], 1
    jmp loc_00431610
loc_004315f5:
    mov dword ptr [d_0049d7d4], 0x10
    jmp loc_0043161a
loc_00431601:
    test bl, 1
    je loc_0043161a
    mov dword ptr [d_0049d7d4], 1
loc_00431610:
    call sub_0043acf8
    mov dword ptr [d_0049d808], eax
loc_0043161a:
    test byte ptr [d_0049d80c], 0xa
    je loc_0043164b
    test bl, 2
    je loc_00431642
    or byte ptr [d_0049d7d4], 8
    mov eax, dword ptr [d_0049d804]
    call sub_0043ad68
    cmp eax, 0xfa
    jbe loc_00431661
    jmp loc_00431650
loc_00431642:
    or byte ptr [d_0049d7d4], 0x20
    jmp loc_00431661
loc_0043164b:
    test bl, 2
    je loc_00431661
loc_00431650:
    or byte ptr [d_0049d7d4], 2
    call sub_0043acf8
    mov dword ptr [d_0049d804], eax
loc_00431661:
    mov eax, dword ptr [d_0049d7d4]
    mov dword ptr [d_0049d7c4], eax
    test ecx, ecx
    jne loc_00431673
    test edx, edx
    je loc_004316e7
loc_00431673:
    mov eax, dword ptr [d_0049d7cc]
    mov dword ptr [esp], eax
    mov eax, dword ptr [d_0049d7c8]
    mov ebx, dword ptr [d_0049d7e4]
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esp]
    add eax, ebx
    dec eax
    mov esi, dword ptr [d_0049d7bc]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 4]
    add eax, esi
    dec eax
    mov ebx, dword ptr [esp]
    mov dword ptr [esp + 0xc], eax
    movsx eax, cx
    add ebx, eax
    movsx eax, dx
    mov edx, dword ptr [esp + 4]
    add edx, eax
    mov dword ptr [d_0049d7cc], ebx
    mov dword ptr [d_0049d7c8], edx
    call sub_0043185c
    mov eax, esp
    call sub_0043da90
    call sub_00431178
    mov eax, dword ptr [d_0049d7cc]
    mov dword ptr [d_0049d7b8], eax
    mov eax, dword ptr [d_0049d7c8]
    mov dword ptr [d_0049d7c0], eax
loc_004316e7:
    add esp, 0x10
    pop ebp
    pop esi
    pop ecx
    ret
    .byte 0x8b,0xc0
sub_004316f0:
    push esi
    push edi
    push ebp
    mov esi, eax
    cmp dword ptr [d_0049d7dc], 0
    je loc_00431754
    mov eax, dword ptr [d_0049d7cc]
    add eax, dword ptr [d_0049d7e4]
    cmp eax, esi
    setg al
    mov edi, dword ptr [d_0049d7cc]
    movzx esi, al
    cmp ebx, edi
    setge al
    and eax, 0xff
    mov ebx, esi
    mov ebp, dword ptr [d_0049d7bc]
    and ebx, eax
    mov eax, dword ptr [d_0049d7c8]
    add eax, ebp
    cmp eax, edx
    setg al
    and eax, 0xff
    mov edx, dword ptr [d_0049d7c8]
    and ebx, eax
    cmp ecx, edx
    setge al
    and eax, 0xff
    and eax, ebx
    pop ebp
    pop edi
    pop esi
    ret
loc_00431754:
    xor eax, eax
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x8b,0xc0
sub_0043175c:
    push esi
    push ebp
    mov esi, eax
    cmp dword ptr [d_0049d7dc], 0
    je loc_004317c2
    mov eax, dword ptr [d_0049d7cc]
    mov ebp, dword ptr [d_0049d7f0]
    add eax, ebp
    cmp eax, esi
    setge al
    movzx esi, al
    mov eax, dword ptr [d_0049d7cc]
    add eax, ebp
    cmp eax, ebx
    setle al
    and eax, 0xff
    mov ebp, dword ptr [d_0049d7ec]
    and esi, eax
    mov eax, dword ptr [d_0049d7c8]
    add eax, ebp
    cmp eax, edx
    setge al
    and eax, 0xff
    mov edx, esi
    and edx, eax
    mov eax, dword ptr [d_0049d7c8]
    add eax, ebp
    cmp eax, ecx
    setle al
    and eax, 0xff
    and eax, edx
    pop ebp
    pop esi
    ret
loc_004317c2:
    xor eax, eax
    pop ebp
    pop esi
    ret
    .byte 0x90
sub_004317c8:
    push ebx
    push ecx
    push edx
    mov edx, dword ptr [d_0049d7cc]
    mov dword ptr [eax], edx
    mov edx, dword ptr [d_0049d7c8]
    mov ebx, dword ptr [d_0049d7e4]
    mov dword ptr [eax + 4], edx
    mov edx, dword ptr [d_0049d7cc]
    add edx, ebx
    dec edx
    mov ecx, dword ptr [d_0049d7bc]
    mov dword ptr [eax + 8], edx
    mov edx, dword ptr [d_0049d7c8]
    add edx, ecx
    dec edx
    mov dword ptr [eax + 0xc], edx
    pop edx
    pop ecx
    pop ebx
    ret
sub_00431804:
    push ebx
    push esi
    mov ebx, eax
    mov eax, dword ptr [d_0049d7cc]
    add eax, dword ptr [d_0049d7f0]
    mov esi, dword ptr [d_0049d7ec]
    mov dword ptr [ebx], eax
    mov eax, dword ptr [d_0049d7c8]
    add eax, esi
    mov dword ptr [edx], eax
    pop esi
    pop ebx
    ret
    .byte 0x90
sub_00431828:
    push ebx
    mov ebx, dword ptr [d_0049d7f0]
    sub eax, ebx
    mov dword ptr [d_0049d7cc], eax
    mov eax, dword ptr [d_0049d7ec]
    sub edx, eax
    mov eax, dword ptr [d_0049d7cc]
    mov dword ptr [d_0049d7c8], edx
    mov dword ptr [d_0049d7c0], edx
    mov dword ptr [d_0049d7b8], eax
    call sub_0043185c
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0043185c:
    push ebx
    push ecx
    push edx
    push ebp
    mov eax, dword ptr [d_0049d7cc]
    mov edx, dword ptr [d_0049d7f0]
    mov ebx, dword ptr [d_004a3be0]
    add eax, edx
    cmp eax, ebx
    jge loc_0043187b
    mov eax, ebx
    jmp loc_00431887
loc_0043187b:
    mov ecx, dword ptr [d_004a3be8]
    cmp eax, ecx
    jle loc_0043188e
    mov eax, ecx
loc_00431887:
    sub eax, edx
    mov dword ptr [d_0049d7cc], eax
loc_0043188e:
    mov eax, dword ptr [d_0049d7c8]
    mov ebp, dword ptr [d_0049d7ec]
    mov edx, dword ptr [d_004a3be4]
    add eax, ebp
    cmp eax, edx
    jge loc_004318a9
    mov eax, edx
    jmp loc_004318b5
loc_004318a9:
    mov ebx, dword ptr [d_004a3bec]
    cmp eax, ebx
    jle loc_004318bc
    mov eax, ebx
loc_004318b5:
    sub eax, ebp
    mov dword ptr [d_0049d7c8], eax
loc_004318bc:
    pop ebp
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_004318c4:
    mov eax, dword ptr [d_0049d7d4]
    ret
    .byte 0x8b,0xc0
sub_004318cc:
    mov eax, dword ptr [d_0049d7b4]
    ret
    .byte 0x8b,0xc0
    push ebx
    mov ebx, dword ptr [d_0049d7f0]
    mov dword ptr [eax], ebx
    mov eax, dword ptr [d_0049d7ec]
    mov dword ptr [edx], eax
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov ecx, eax
    mov ebx, edx
    mov edx, dword ptr [d_0049d7b4]
    test edx, edx
    jne loc_00431924
    cmp dword ptr [d_0049d7dc], 0
    je loc_00431924
    test edx, edx
    jne loc_00431924
    mov edi, 1
    mov eax, esp
    mov dword ptr [d_0049d7b4], edi
    call sub_004317c8
    mov eax, esp
    call sub_0043da90
loc_00431924:
    mov eax, dword ptr [d_0049d7f0]
    mov ebp, dword ptr [d_0049d7cc]
    mov esi, dword ptr [d_0049d7c8]
    sub eax, ecx
    mov dword ptr [d_0049d7f0], ecx
    add ebp, eax
    mov eax, dword ptr [d_0049d7ec]
    mov dword ptr [d_0049d7cc], ebp
    sub eax, ebx
    mov dword ptr [d_0049d7b8], ebp
    add esi, eax
    mov dword ptr [d_0049d7ec], ebx
    mov dword ptr [d_0049d7c8], esi
    mov dword ptr [d_0049d7c0], esi
    test edx, edx
    jne loc_0043196f
    call sub_00431178
loc_0043196f:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    mov eax, dword ptr [d_0049d7dc]
    ret
    .byte 0x8b,0xc0
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x14
    mov ecx, eax
    mov eax, esp
    call sub_0044489c
    cmp eax, 1
    je loc_004319d6
    xor esi, esi
    mov ah, byte ptr [d_0049d7d4]
    mov dword ptr [esp], esi
    mov dword ptr [esp + 4], esi
    test ah, 1
    setne al
    and eax, 0xff
    mov dword ptr [esp + 0xc], eax
    mov al, byte ptr [esp + 0xc]
    mov byte ptr [esp + 8], al
    test byte ptr [d_0049d7d4], 2
    setne al
    and eax, 0xff
    mov dword ptr [esp + 0x10], eax
    mov al, byte ptr [esp + 0x10]
    mov byte ptr [esp + 9], al
loc_004319d6:
    mov eax, dword ptr [esp]
    mov ebp, dword ptr [d_0049d7b8]
    xor edi, edi
    mov esi, dword ptr [d_0049d7c0]
    mov dword ptr [d_0049d7c4], edi
    add ebp, eax
    mov eax, dword ptr [esp + 4]
    mov dword ptr [d_0049d7b8], ebp
    add esi, eax
    mov al, byte ptr [esp + 8]
    mov dword ptr [d_0049d7c0], esi
    cmp al, 1
    jne loc_00431a13
    mov dword ptr [d_0049d7c4], 1
loc_00431a13:
    cmp byte ptr [esp + 9], 1
    jne loc_00431a21
    or byte ptr [d_0049d7c4], 2
loc_00431a21:
    mov eax, dword ptr [d_0049d7b8]
    mov dword ptr [ecx], eax
    mov eax, dword ptr [d_0049d7c0]
    mov dword ptr [edx], eax
    mov eax, dword ptr [d_0049d7c4]
    mov dword ptr [ebx], eax
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8b,0xc0
    mov dword ptr [d_0049d7d0], 1
    ret
    .byte 0x90
    push edx
    xor edx, edx
    mov dword ptr [d_0049d7d0], edx
    pop edx
    ret
    .byte 0x90
    mov eax, dword ptr [d_0049d7d0]
    ret
    .byte 0x8b,0xc0
    fldz
    fcomp qword ptr [esp + 4]
    fnstsw ax
    sahf
    jae loc_00431a8c
    fld qword ptr [esp + 4]
    fcomp qword ptr [d_0045ab0c]
    fnstsw ax
    sahf
    jae loc_00431a8c
    mov eax, dword ptr [esp + 4]
    mov dword ptr [d_0045c360], eax
    mov eax, dword ptr [esp + 8]
    mov dword ptr [d_0045c364], eax
loc_00431a8c:
    ret 8
    .byte 0x90
    fld qword ptr [d_0045c360]
    ret
    .byte 0x90
    push edi
    cmp dword ptr [d_0045c350], 0
    je loc_00431ad1
    cmp dword ptr [d_0049d7dc], 0
    je loc_00431ac9
    cmp dword ptr [d_0049d7b4], 0
    jne loc_00431ac9
    cmp dword ptr [d_0049d7d0], 0
    jne loc_00431ac9
    mov eax, dword ptr [d_0049d7f4]
    call sub_0043ad68
    pop edi
    ret
loc_00431ac9:
    xor edi, edi
    mov dword ptr [d_0045c350], edi
loc_00431ad1:
    xor eax, eax
    pop edi
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    cmp dword ptr [d_0045c350], 0
    je loc_00431aea
    xor ebx, ebx
    mov dword ptr [d_0045c350], ebx
loc_00431aea:
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00
ptr_00431af0:
    .byte 0x00,0x00,0x00,0x00,0x09,0x00,0x00,0x00
    .long ptr_00431e6c
    .long ptr_00431f70
    .long ptr_00432114
    .long ptr_00432120
    .long ptr_00432164
    .long ptr_00432178
    .long ptr_00432198
    .long ptr_004321a4
    .long ptr_004321b8
sub_00431b1c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x2c
    mov ebp, 0xffffffff
    mov ecx, 0xb
    mov edi, esp
    mov esi, offset ptr_00431af0
    xor edx, edx
    xor ebx, ebx
    rep movsd dword ptr es:[edi], dword ptr [esi]
loc_00431b3c:
    mov eax, edx
    call sub_00431bbc
    cmp eax, -1
    jne loc_00431b52
    xor ecx, ecx
    mov dword ptr [ebx + d_0049d810], ecx
    jmp loc_00431b59
loc_00431b52:
    cmp ebp, -1
    jne loc_00431b59
    mov ebp, edx
loc_00431b59:
    inc edx
    add ebx, 0x14
    cmp edx, 0xa
    jl loc_00431b3c
    cmp ebp, -1
    jne loc_00431b6b
    mov eax, ebp
    jmp loc_00431b80
loc_00431b6b:
    mov eax, esp
    call sub_00431d40
    cmp eax, -1
    je loc_00431b80
    mov eax, ebp
    call sub_00431e9c
    xor eax, eax
loc_00431b80:
    add esp, 0x2c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00431b8c:
    push edx
    xor edx, edx
loc_00431b8f:
    cmp dword ptr [edx + d_0049d810], 0
    je loc_00431bae
    mov eax, dword ptr [edx + d_0049d81c]
    call sub_00444630
    mov eax, dword ptr [edx + d_0049d820]
    call sub_00444630
loc_00431bae:
    add edx, 0x14
    cmp edx, 0xc8
    jne loc_00431b8f
    pop edx
    ret
    .byte 0x90
sub_00431bbc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov edi, eax
    push eax
    push offset d_0045ab14
    lea eax, [esp + 8]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov edx, offset d_0045ab20
    mov eax, esp
    call sub_0043f134
    mov esi, eax
    test eax, eax
    jne loc_00431bf6
    mov eax, 0xffffffff
    jmp loc_00431d34
loc_00431bf6:
    mov ebx, 1
    mov eax, edi
    shl edi, 2
    mov edx, 0x14
    add edi, eax
    mov eax, offset d_0049d810
    shl edi, 2
    mov ecx, esi
    add eax, edi
    call sub_0043f4c0
    cmp eax, 1
    je loc_00431c33
    mov eax, esi
    call sub_00441e50
    mov eax, 0xffffffff
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00431c33:
    mov eax, dword ptr [edi + d_0049d810]
    shl eax, 3
    call sub_004444b0
    mov dword ptr [edi + d_0049d81c], eax
    test eax, eax
    jne loc_00431c61
    mov eax, esi
    call sub_00441e50
    mov eax, 0xffffffff
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00431c61:
    mov edx, 8
    mov ecx, esi
    mov ebx, dword ptr [edi + d_0049d810]
    call sub_0043f4c0
    mov edx, dword ptr [edi + d_0049d810]
    cmp eax, edx
    je loc_00431c97
    mov eax, dword ptr [edi + d_0049d81c]
    call sub_00444630
    mov eax, 0xffffffff
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00431c97:
    lea eax, [edx - 1]
    mov ebx, dword ptr [edi + d_0049d81c]
    shl eax, 3
    add eax, ebx
    mov ebx, dword ptr [eax]
    add ebx, 7
    mov ecx, dword ptr [edi + d_0049d814]
    sar ebx, 3
    imul ebx, ecx
    mov ebp, dword ptr [eax + 4]
    add ebp, ebx
    mov eax, ebp
    call sub_004444b0
    mov dword ptr [edi + d_0049d820], eax
    test eax, eax
    jne loc_00431ced
    mov eax, esi
    call sub_00441e50
    mov eax, dword ptr [edi + d_0049d81c]
    call sub_00444630
    mov eax, 0xffffffff
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00431ced:
    mov edx, 1
    mov ecx, esi
    mov ebx, ebp
    call sub_0043f4c0
    cmp eax, ebp
    je loc_00431d2b
    mov eax, esi
    call sub_00441e50
    mov eax, dword ptr [edi + d_0049d81c]
    call sub_00444630
    mov eax, dword ptr [edi + d_0049d820]
    call sub_00444630
    mov eax, 0xffffffff
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00431d2b:
    mov eax, esi
    call sub_00441e50
    xor eax, eax
loc_00431d34:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00431d40:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    sub esp, 4
    mov esi, eax
    test eax, eax
    je loc_00431da6
    cmp dword ptr [d_0045c374], 0xa
    jge loc_00431da6
    mov eax, dword ptr [eax]
    mov ebx, dword ptr [esi + 4]
    cmp eax, ebx
    jge loc_00431da6
    mov ecx, dword ptr [esi]
    cmp ecx, ebx
    jg loc_00431d79
loc_00431d66:
    mov edx, esp
    mov eax, ecx
    call sub_00431f1c
    test eax, eax
    jne loc_00431da6
    inc ecx
    cmp ecx, dword ptr [esi + 4]
    jle loc_00431d66
loc_00431d79:
    mov edx, dword ptr [d_0045c374]
    lea eax, [edx*4]
    sub eax, edx
    shl eax, 2
    sub eax, edx
    mov ecx, 0xb
    inc edx
    lea edi, [eax*4 + d_0049d8d8]
    mov dword ptr [d_0045c374], edx
    xor eax, eax
    rep movsd dword ptr es:[edi], dword ptr [esi]
    jmp loc_00431dab
loc_00431da6:
    mov eax, 0xffffffff
loc_00431dab:
    add esp, 4
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
    push ebp
    sub esp, 4
    mov edx, esp
    call sub_00431f1c
    test eax, eax
    je loc_00431e5b
    mov edx, dword ptr [d_0045c374]
    xor eax, eax
    test edx, edx
    jle loc_00431e5b
    mov edx, offset d_0049d8d8
    mov ecx, dword ptr [esp]
loc_00431de3:
    cmp edx, ecx
    jne loc_00431e4d
    mov ebx, dword ptr [d_0045c370]
    cmp ebx, dword ptr [ecx]
    jl loc_00431df6
    cmp ebx, dword ptr [ecx + 4]
    jle loc_00431e4d
loc_00431df6:
    mov ecx, dword ptr [d_0045c374]
    sub ecx, eax
    lea ebx, [eax + 1]
    lea edx, [ebx*4]
    sub edx, ebx
    shl edx, 2
    sub edx, ebx
    mov esi, offset d_0049d8d8
    shl edx, 2
    add esi, edx
    mov edx, eax
    shl eax, 2
    sub eax, edx
    shl ecx, 2
    shl eax, 2
    sub ecx, 4
    sub eax, edx
    mov ebx, ecx
    shl eax, 2
    mov edx, esi
    add eax, offset d_0049d8d8
    call sub_0044550c
    mov ebp, dword ptr [d_0045c374]
    dec ebp
    xor eax, eax
    mov dword ptr [d_0045c374], ebp
    jmp loc_00431e60
loc_00431e4d:
    mov ebx, dword ptr [d_0045c374]
    inc eax
    add edx, 0x2c
    cmp eax, ebx
    jl loc_00431de3
loc_00431e5b:
    mov eax, 0xffffffff
loc_00431e60:
    add esp, 4
    pop ebp
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
ptr_00431e6c:
    push edx
    cmp eax, 0xa
    jge loc_00431e92
    mov edx, eax
    shl eax, 2
    add eax, edx
    shl eax, 2
    cmp dword ptr [eax + d_0049d810], 0
    je loc_00431e92
    mov edx, offset d_0049d810
    add edx, eax
    mov dword ptr [d_0049da90], edx
loc_00431e92:
    pop edx
    ret
    mov eax, dword ptr [d_0045c370]
    ret
    .byte 0x8b,0xc0
sub_00431e9c:
    push ebx
    push edx
    sub esp, 4
    mov ebx, eax
    mov edx, esp
    call sub_00431f1c
    test eax, eax
    je loc_00431f14
    mov eax, dword ptr [esp]
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [d_0045c378], eax
    mov eax, dword ptr [esp]
    mov eax, dword ptr [eax + 0x10]
    mov dword ptr [d_0045c37c], eax
    mov eax, dword ptr [esp]
    mov eax, dword ptr [eax + 0x14]
    mov dword ptr [d_0045c380], eax
    mov eax, dword ptr [esp]
    mov eax, dword ptr [eax + 0x18]
    mov dword ptr [d_0045c384], eax
    mov eax, dword ptr [esp]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [d_0045c388], eax
    mov eax, dword ptr [esp]
    mov eax, dword ptr [eax + 0x20]
    mov dword ptr [d_0045c38c], eax
    mov eax, dword ptr [esp]
    mov eax, dword ptr [eax + 0x24]
    mov dword ptr [d_0045c390], eax
    mov eax, dword ptr [esp]
    mov eax, dword ptr [eax + 0x28]
    mov edx, dword ptr [esp]
    mov dword ptr [d_0045c394], eax
    mov eax, ebx
    mov dword ptr [d_0045c370], ebx
    call dword ptr [edx + 8]
loc_00431f14:
    add esp, 4
    pop edx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00431f1c:
    push ebx
    push ecx
    push esi
    mov ebx, eax
    mov esi, edx
    mov edx, dword ptr [d_0045c374]
    test edx, edx
    jle loc_00431f65
    mov ecx, edx
    shl edx, 2
    sub edx, ecx
    shl edx, 2
    sub edx, ecx
    xor eax, eax
    shl edx, 2
loc_00431f3e:
    cmp ebx, dword ptr [eax + d_0049d8d8]
    jl loc_00431f5e
    cmp ebx, dword ptr [eax + d_0049d8dc]
    jg loc_00431f5e
    mov edx, offset d_0049d8d8
    add edx, eax
    mov dword ptr [esi], edx
    mov edx, 1
    jmp loc_00431f67
loc_00431f5e:
    add eax, 0x2c
    cmp eax, edx
    jl loc_00431f3e
loc_00431f65:
    xor edx, edx
loc_00431f67:
    mov eax, edx
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
ptr_00431f70:
    push esi
    push edi
    push ebp
    sub esp, 0x24
    mov esi, eax
    mov edi, edx
    mov dword ptr [esp + 0xc], ebx
    mov dword ptr [esp + 0x10], ecx
    mov dword ptr [esp], eax
    mov ah, byte ptr [esp + 0x36]
    test ah, 1
    je loc_00431fbb
    mov edx, dword ptr [esp + 0x34]
    mov bl, ah
    and edx, 0xfffeff00
    xor eax, eax
    and bl, 0xfe
    mov al, byte ptr [d_00495390]
    mov byte ptr [esp + 0x36], bl
    or eax, edx
    mov ebx, dword ptr [esp + 0xc]
    push eax
    lea eax, [ecx + esi]
    mov edx, edi
    inc eax
    call dword ptr [d_0045c378]
loc_00431fbb:
    mov al, byte ptr [esp + 0x34]
    mov bh, byte ptr [esp + 0x36]
    mov byte ptr [esp + 0x20], al
    test bh, 4
    je loc_00431fd6
    call dword ptr [d_0045c394]
    mov dword ptr [esp + 4], eax
loc_00431fd6:
    mov cl, byte ptr [edi]
    mov dword ptr [esp + 0x14], edi
    test cl, cl
    je loc_004320d6
loc_00431fe4:
    mov edx, dword ptr [esp + 0x14]
    xor eax, eax
    mov al, byte ptr [edx]
    mov edx, dword ptr [d_0049da90]
    cmp eax, dword ptr [edx]
    jge loc_004320c3
    mov ebp, dword ptr [edx + 0xc]
    mov ebp, dword ptr [ebp + eax*8]
    test byte ptr [esp + 0x36], 4
    je loc_0043202c
    mov eax, dword ptr [esp + 4]
    add eax, esi
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 4]
    mov ecx, dword ptr [edx + 8]
    mov edx, eax
    sub edx, ecx
    sub edx, ebp
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    add esi, eax
    jmp loc_00432038
loc_0043202c:
    mov edx, dword ptr [edx + 8]
    lea eax, [esi + ebp]
    add edx, eax
    mov dword ptr [esp + 8], edx
loc_00432038:
    mov eax, dword ptr [esp + 8]
    mov edi, dword ptr [esp]
    mov edx, dword ptr [esp + 0xc]
    sub eax, edi
    cmp eax, edx
    jg loc_004320d6
    mov eax, dword ptr [esp + 0x14]
    xor edx, edx
    mov dl, byte ptr [eax]
    mov eax, dword ptr [d_0049da90]
    mov ebx, dword ptr [eax + 0xc]
    mov eax, dword ptr [eax + 0x10]
    mov edx, dword ptr [ebx + edx*8 + 4]
    add edx, eax
    mov eax, dword ptr [esp + 0x10]
    xor ebx, ebx
    sub eax, ebp
    mov dword ptr [esp + 0x1c], ebx
    mov dword ptr [esp + 0x18], eax
    jmp loc_004320b0
loc_00432078:
    mov al, 0x80
    xor ebx, ebx
    test ebp, ebp
    jle loc_004320a0
    mov ah, byte ptr [esp + 0x20]
loc_00432084:
    test al, al
    jne loc_0043208b
    mov al, 0x80
    inc edx
loc_0043208b:
    xor ecx, ecx
    movzx edi, byte ptr [edx]
    mov cl, al
    test edi, ecx
    je loc_00432098
    mov byte ptr [esi], ah
loc_00432098:
    shr al, 1
    inc ebx
    inc esi
    cmp ebx, ebp
    jl loc_00432084
loc_004320a0:
    mov eax, dword ptr [esp + 0x18]
    mov ebx, dword ptr [esp + 0x1c]
    inc edx
    inc ebx
    add esi, eax
    mov dword ptr [esp + 0x1c], ebx
loc_004320b0:
    mov ebx, dword ptr [d_0049da90]
    mov eax, dword ptr [esp + 0x1c]
    cmp eax, dword ptr [ebx + 4]
    jl loc_00432078
    mov esi, dword ptr [esp + 8]
loc_004320c3:
    mov edx, dword ptr [esp + 0x14]
    inc edx
    mov ch, byte ptr [edx]
    mov dword ptr [esp + 0x14], edx
    test ch, ch
    jne loc_00431fe4
loc_004320d6:
    test byte ptr [esp + 0x36], 2
    je loc_0043210b
    mov edx, dword ptr [d_0049da90]
    mov eax, esi
    mov edx, dword ptr [edx + 4]
    mov esi, dword ptr [esp + 0x10]
    dec edx
    imul edx, esi
    mov ecx, dword ptr [esp]
    sub eax, ecx
    lea esi, [ecx + edx]
    xor edx, edx
    test eax, eax
    jle loc_0043210b
    mov bl, byte ptr [esp + 0x20]
loc_00432102:
    inc esi
    inc edx
    mov byte ptr [esi - 1], bl
    cmp edx, eax
    jl loc_00432102
loc_0043210b:
    add esp, 0x24
    pop ebp
    pop edi
    pop esi
    ret 4
ptr_00432114:
    mov eax, dword ptr [d_0049da90]
    mov eax, dword ptr [eax + 4]
    ret
    .byte 0x8d,0x40,0x00
ptr_00432120:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov edi, dword ptr [d_0049da90]
    mov edx, eax
    mov esi, dword ptr [edi + 0xc]
    mov bl, byte ptr [eax]
    xor ecx, ecx
    test bl, bl
    je loc_00432155
loc_00432139:
    xor edx, edx
    mov ebp, dword ptr [edi]
    mov dl, byte ptr [eax]
    mov ebx, edi
    cmp edx, ebp
    jge loc_0043214d
    mov edx, dword ptr [esi + edx*8]
    add edx, dword ptr [edi + 8]
    add ecx, edx
loc_0043214d:
    mov bh, byte ptr [eax + 1]
    inc eax
    test bh, bh
    jne loc_00432139
loc_00432155:
    mov eax, ecx
    mov dword ptr [d_0049da90], edi
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00432164:
    push edx
    mov edx, dword ptr [d_0049da90]
    and eax, 0xff
    mov edx, dword ptr [edx + 0xc]
    mov eax, dword ptr [edx + eax*8]
    pop edx
    ret
ptr_00432178:
    push ecx
    push edx
    push edi
    mov edi, eax
    call dword ptr [d_0045c394]
    mov edx, eax
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov eax, edx
    imul eax, ecx
    pop edi
    pop edx
    pop ecx
    ret
ptr_00432198:
    mov eax, dword ptr [d_0049da90]
    mov eax, dword ptr [eax + 8]
    ret
    .byte 0x8d,0x40,0x00
ptr_004321a4:
    push edx
    call dword ptr [d_0045c380]
    mov edx, eax
    call dword ptr [d_0045c37c]
    imul eax, edx
    pop edx
    ret
ptr_004321b8:
    push ebx
    push ecx
    push edx
    push esi
    push ebp
    mov esi, dword ptr [d_0049da90]
    mov ecx, esi
    mov eax, dword ptr [esi + 0xc]
    xor ebx, ebx
    xor edx, edx
    jmp loc_004321da
loc_004321ce:
    mov ebp, dword ptr [eax]
    cmp ebx, ebp
    jge loc_004321d6
    mov ebx, ebp
loc_004321d6:
    add eax, 8
    inc edx
loc_004321da:
    cmp edx, dword ptr [esi]
    jl loc_004321ce
    mov eax, dword ptr [esi + 8]
    add eax, ebx
    mov dword ptr [d_0049da90], esi
    pop ebp
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x00
sub_004321f0:
    push esi
    push edi
    push ebp
    mov ebp, dword ptr [esp + 0x30]
    mov esi, eax
    call sub_0043dd7c
    mov edi, eax
    or ebp, 0x10000
    cmp dword ptr [d_0045c468], 0
    je loc_00432213
    test eax, eax
    jne loc_0043221d
loc_00432213:
    mov eax, 0xffffffff
    # jmp 0x432290
    .byte 0xe9
    .long loc_00432290 - . - 4
loc_0043221d:
    cmp dword ptr [esp + 0x24], 0
    jne loc_0043223d
    cmp dword ptr [esp + 0x28], 0
    jne loc_00432232
    cmp dword ptr [esp + 0x2c], 0
    je loc_0043223d
loc_00432232:
    mov eax, 0xffffffff
    pop ebp
    pop edi
    pop esi
    ret 0x24
loc_0043223d:
    mov eax, dword ptr [esp + 0x2c]
    push eax
    mov eax, dword ptr [esp + 0x2c]
    push eax
    mov eax, dword ptr [esp + 0x2c]
    push eax
    push ebp
    mov ebp, dword ptr [esp + 0x30]
    push ebp
    mov eax, dword ptr [esp + 0x30]
    push eax
    mov ebp, dword ptr [esp + 0x30]
    push ebp
    mov eax, dword ptr [esp + 0x30]
    push eax
    mov ebp, dword ptr [esp + 0x30]
    push ebp
    mov eax, esi
    call sub_004327dc
    mov esi, eax
    test eax, eax
    jne loc_0043227e
    mov eax, 0xffffffff
    pop ebp
    pop edi
    pop esi
    ret 0x24
loc_0043227e:
    push 0
    mov edx, edi
    push 0
    mov ebx, dword ptr [eax + 0x30]
    xor ecx, ecx
    call sub_00433764
    mov eax, dword ptr [esi]
loc_00432290:
    pop ebp
    pop edi
    pop esi
    ret 0x24
    .byte 0x8b,0xc0
sub_00432298:
    push esi
    push edi
    push ebp
    sub esp, 0x38
    mov dword ptr [esp + 0x10], eax
    mov dword ptr [esp + 0x28], edx
    mov dword ptr [esp + 0x2c], ebx
    mov dword ptr [esp], ecx
    call sub_0043dd7c
    mov edx, dword ptr [d_0045c468]
    mov dword ptr [esp + 0x30], eax
    mov dword ptr [esp + 0x24], eax
    test edx, edx
    je loc_004322c8
    test eax, eax
    jne loc_004322d2
loc_004322c8:
    mov eax, 0xffffffff
    jmp loc_004325f9
loc_004322d2:
    mov eax, dword ptr [esp + 0x54]
    call dword ptr [d_0045c380]
    lea esi, [eax + 0x10]
    call dword ptr [d_0045c37c]
    lea edi, [eax + 6]
    mov edx, esi
    imul edx, edi
    mov eax, edx
    call sub_004444b0
    mov ebp, eax
    test eax, eax
    jne loc_00432308
    mov eax, 0xffffffff
    add esp, 0x38
    pop ebp
    pop edi
    pop esi
    ret 0x14
loc_00432308:
    mov eax, edx
    call sub_004444b0
    mov dword ptr [esp + 0x20], eax
    mov dword ptr [esp + 0x34], eax
    test eax, eax
    jne loc_00432330
    mov eax, ebp
    call sub_00444630
    mov eax, 0xffffffff
    add esp, 0x38
    pop ebp
    pop edi
    pop esi
    ret 0x14
loc_00432330:
    mov eax, dword ptr [esp + 0x30]
    cmp dword ptr [eax + 0x20], 0x100
    jne loc_004323a7
    cmp dword ptr [d_004a39ac], 0
    je loc_004323a7
    mov ebx, dword ptr [esp + 0x2c]
    mov eax, dword ptr [eax + 0x28]
    add eax, ebx
    inc eax
    push eax
    mov eax, dword ptr [esp + 0x34]
    mov ecx, dword ptr [esp + 0x2c]
    mov eax, dword ptr [eax + 0x24]
    add eax, ecx
    inc eax
    mov edx, esi
    push eax
    mov eax, dword ptr [d_004a39ac]
    mov ebx, edi
    push eax
    mov ecx, esi
    mov eax, ebp
    call sub_00442ac0
    mov eax, dword ptr [esp + 0x30]
    mov edx, dword ptr [esp + 0x2c]
    mov eax, dword ptr [eax + 0x28]
    add eax, edx
    push eax
    mov eax, dword ptr [esp + 0x34]
    mov ebx, dword ptr [esp + 0x2c]
    mov eax, dword ptr [eax + 0x24]
    add eax, ebx
    mov ecx, dword ptr [d_004a39ac]
    push eax
    mov edx, esi
    mov ebx, edi
    push ecx
    mov eax, dword ptr [esp + 0x2c]
    mov ecx, esi
    call sub_00442ac0
    jmp loc_004323d3
loc_004323a7:
    mov eax, dword ptr [esp + 0x24]
    mov ebx, edi
    mov ecx, dword ptr [eax + 0x20]
    mov edx, esi
    push ecx
    mov eax, ebp
    mov ecx, esi
    call sub_00442a5c
    mov eax, dword ptr [esp + 0x24]
    mov ecx, esi
    mov edx, dword ptr [eax + 0x20]
    mov ebx, edi
    push edx
    mov eax, dword ptr [esp + 0x38]
    mov edx, esi
    call sub_00442a5c
loc_004323d3:
    mov ecx, esi
    mov ebx, edi
    mov edx, esi
    mov eax, ebp
    call sub_00442c28
    mov eax, dword ptr [d_0045c478]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    or eax, 0x10000
    push eax
    lea eax, [esi*4]
    lea edx, [ebp + 8]
    mov ecx, esi
    sub eax, esi
    mov ebx, esi
    add eax, edx
    mov edx, dword ptr [esp + 0x58]
    call dword ptr [d_0045c378]
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    lea eax, [edi - 3]
    mov ecx, 2
    mov dword ptr [esp + 0x1c], eax
    push eax
    lea eax, [esi - 3]
    mov ebx, ecx
    mov dword ptr [esp + 0x10], eax
    push eax
    mov edx, esi
    mov eax, ebp
    call sub_0044240c
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    lea eax, [edi - 2]
    mov ecx, 1
    mov dword ptr [esp + 0x24], eax
    push eax
    lea eax, [esi - 2]
    mov ebx, ecx
    mov dword ptr [esp + 0x24], eax
    push eax
    mov edx, esi
    mov eax, ebp
    call sub_0044240c
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    lea eax, [edi - 1]
    xor ecx, ecx
    mov dword ptr [esp + 0xc], eax
    push eax
    lea eax, [esi - 1]
    xor ebx, ebx
    mov dword ptr [esp + 0x14], eax
    push eax
    mov edx, esi
    mov eax, ebp
    call sub_00442384
    mov eax, dword ptr [d_0045c478]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    or eax, 0x10000
    mov edx, dword ptr [esp + 0x34]
    push eax
    lea eax, [esi*4]
    add edx, 9
    mov ecx, esi
    mov ebx, esi
    add eax, edx
    mov edx, dword ptr [esp + 0x58]
    call dword ptr [d_0045c378]
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov ebx, dword ptr [esp + 0x1c]
    push ebx
    mov ecx, dword ptr [esp + 0x10]
    mov edx, esi
    push ecx
    mov ecx, 2
    mov eax, dword ptr [esp + 0x44]
    mov ebx, ecx
    call sub_0044240c
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [esp + 0x24]
    mov ecx, 1
    push eax
    mov edx, dword ptr [esp + 0x24]
    mov ebx, ecx
    push edx
    mov eax, dword ptr [esp + 0x44]
    mov edx, esi
    call sub_0044240c
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    mov ebx, dword ptr [esp + 0xc]
    mov ecx, dword ptr [esp + 0x10]
    push ebx
    mov edx, esi
    mov eax, dword ptr [esp + 0x3c]
    push ecx
    xor ebx, ebx
    xor ecx, ecx
    call sub_00442384
    push 0
    mov eax, dword ptr [esp + 0x38]
    push eax
    push ebp
    mov edx, dword ptr [esp + 0x64]
    push edx
    mov ebx, dword ptr [esp + 0x60]
    push ebx
    mov ecx, dword ptr [esp + 0x60]
    push ecx
    mov eax, dword ptr [esp + 0x60]
    push eax
    mov edx, dword ptr [esp + 0x1c]
    push edx
    mov ebx, dword ptr [esp + 0x4c]
    mov ecx, esi
    push edi
    mov eax, dword ptr [esp + 0x34]
    mov edx, dword ptr [esp + 0x4c]
    call sub_004327dc
    mov esi, eax
    test eax, eax
    jne loc_004325e5
    mov eax, ebp
    call sub_00444630
    mov eax, dword ptr [esp + 0x34]
    call sub_00444630
    mov eax, 0xffffffff
    add esp, 0x38
    pop ebp
    pop edi
    pop esi
    ret 0x14
loc_004325e5:
    push 0
    mov edx, dword ptr [esp + 0x28]
    push 0
    mov ebx, dword ptr [eax + 0x30]
    xor ecx, ecx
    call sub_00433764
    mov eax, dword ptr [esi]
loc_004325f9:
    add esp, 0x38
    pop ebp
    pop edi
    pop esi
    ret 0x14
    .byte 0x8b,0xc0
    push esi
    mov esi, edx
    cmp dword ptr [d_0045c468], 0
    jne loc_00432617
    mov eax, 0xffffffff
    pop esi
    ret
loc_00432617:
    xor edx, edx
    call sub_0043ded0
    test eax, eax
    jne loc_00432629
    mov eax, 0xffffffff
    pop esi
    ret
loc_00432629:
    mov dword ptr [eax + 0x3c], esi
    mov dword ptr [eax + 0x40], ebx
    mov dword ptr [eax + 0x44], ecx
    xor eax, eax
    pop esi
    ret
    .byte 0x8b,0xc0
    push esi
    push edi
    sub esp, 4
    mov edi, edx
    cmp dword ptr [d_0045c468], 0
    jne loc_00432652
    mov eax, 0xffffffff
    jmp loc_004326d8
loc_00432652:
    test edi, edi
    jne loc_0043266b
    test ebx, ebx
    jne loc_0043265e
    test ecx, ecx
    je loc_0043266b
loc_0043265e:
    mov eax, 0xffffffff
    add esp, 4
    pop edi
    pop esi
    ret 4
loc_0043266b:
    mov edx, esp
    call sub_0043ded0
    mov esi, eax
    test eax, eax
    jne loc_00432685
    mov eax, 0xffffffff
    add esp, 4
    pop edi
    pop esi
    ret 4
loc_00432685:
    test byte ptr [eax + 6], 1
    jne loc_00432698
    mov eax, 0xffffffff
    add esp, 4
    pop edi
    pop esi
    ret 4
loc_00432698:
    mov edx, dword ptr [eax + 0x48]
    cmp edx, dword ptr [eax + 0x30]
    jne loc_004326a5
    mov dword ptr [eax + 0x48], edi
    jmp loc_004326b7
loc_004326a5:
    cmp edx, dword ptr [eax + 0x34]
    jne loc_004326af
    mov dword ptr [eax + 0x48], ebx
    jmp loc_004326b7
loc_004326af:
    cmp edx, dword ptr [eax + 0x38]
    jne loc_004326b7
    mov dword ptr [eax + 0x48], ecx
loc_004326b7:
    mov dword ptr [esi + 0x30], edi
    push 0
    mov dword ptr [esi + 0x34], ebx
    mov eax, esi
    mov dword ptr [esi + 0x38], ecx
    push 0
    mov ecx, dword ptr [esp + 0x18]
    mov edx, dword ptr [esp + 8]
    mov ebx, dword ptr [esi + 0x48]
    call sub_00433764
    xor eax, eax
loc_004326d8:
    add esp, 4
    pop edi
    pop esi
    ret 4
sub_004326e0:
    push esi
    mov esi, edx
    cmp dword ptr [d_0045c468], 0
    jne loc_004326f5
    mov eax, 0xffffffff
    pop esi
    ret 4
loc_004326f5:
    xor edx, edx
    call sub_0043ded0
    test eax, eax
    jne loc_00432709
    mov eax, 0xffffffff
    pop esi
    ret 4
loc_00432709:
    mov dword ptr [eax + 0x50], esi
    mov dword ptr [eax + 0x54], ebx
    mov dword ptr [eax + 0x58], ecx
    mov ebx, dword ptr [esp + 8]
    mov dword ptr [eax + 0x5c], ebx
    xor eax, eax
    pop esi
    ret 4
    .byte 0x90
    push esi
    push edi
    mov esi, edx
    cmp dword ptr [d_0045c468], 0
    jne loc_00432737
    mov eax, 0xffffffff
    pop edi
    pop esi
    ret 4
loc_00432737:
    xor edx, edx
    call sub_0043ded0
    mov edx, eax
    test eax, eax
    jne loc_0043274e
    mov eax, 0xffffffff
    pop edi
    pop esi
    ret 4
loc_0043274e:
    mov dword ptr [eax + 0x28], esi
    mov dword ptr [eax + 0x2c], ebx
    mov edi, dword ptr [esp + 0xc]
    mov dword ptr [eax + 0x60], ecx
    mov dword ptr [eax + 0x64], edi
    cmp esi, -1
    jne loc_0043276f
    cmp ebx, esi
    jne loc_0043276f
    test ecx, ecx
    jne loc_0043276f
    test edi, edi
    je loc_00432775
loc_0043276f:
    or byte ptr [edx + 6], 8
    jmp loc_00432779
loc_00432775:
    and byte ptr [eax + 6], 0xf7
loc_00432779:
    xor eax, eax
    pop edi
    pop esi
    ret 4
    push ecx
    mov ecx, edx
    cmp dword ptr [d_0045c468], 0
    jne loc_00432793
    mov eax, 0xffffffff
    pop ecx
    ret
loc_00432793:
    xor edx, edx
    call sub_0043ded0
    test eax, eax
    jne loc_004327a5
    mov eax, 0xffffffff
    pop ecx
    ret
loc_004327a5:
    mov dword ptr [eax + 0x68], ecx
    mov dword ptr [eax + 0x6c], ebx
    xor eax, eax
    pop ecx
    ret
    .byte 0x90
    push ebx
    mov ebx, edx
    cmp dword ptr [d_0045c468], 0
    jne loc_004327c3
    mov eax, 0xffffffff
    pop ebx
    ret
loc_004327c3:
    xor edx, edx
    call sub_0043ded0
    test eax, eax
    jne loc_004327d5
    mov eax, 0xffffffff
    pop ebx
    ret
loc_004327d5:
    mov dword ptr [eax + 0x4c], ebx
    xor eax, eax
    pop ebx
    ret
sub_004327dc:
    push esi
    push edi
    push ebp
    sub esp, 8
    mov esi, eax
    mov ebp, edx
    mov edi, ebx
    mov dword ptr [esp], ecx
    call sub_0043dd7c
    mov dword ptr [esp + 4], eax
    test eax, eax
    je loc_00432962
    test edx, edx
    jl loc_00432823
    test ebx, ebx
    jl loc_00432823
    mov eax, esi
    lea ebx, [ecx + edx]
    call sub_0043de0c
    cmp ebx, eax
    jg loc_00432823
    mov ebx, dword ptr [esp + 0x18]
    mov eax, esi
    add ebx, edi
    call sub_0043de28
    cmp ebx, eax
    jle loc_0043282a
loc_00432823:
    xor eax, eax
    jmp loc_00432962
loc_0043282a:
    mov eax, 0x7c
    call sub_004444b0
    mov ecx, eax
    test eax, eax
    je loc_00432962
    mov ah, byte ptr [esp + 0x2c]
    test ah, 1
    jne loc_00432867
    test ah, 2
    je loc_00432855
    mov dh, ah
    and dh, 0xfd
    mov byte ptr [esp + 0x2c], dh
loc_00432855:
    mov bl, byte ptr [esp + 0x2c]
    test bl, 4
    je loc_00432867
    mov bh, bl
    and bh, 0xfb
    mov byte ptr [esp + 0x2c], bh
loc_00432867:
    mov ebx, 1
    xor esi, esi
    jmp loc_00432871
loc_00432870:
    inc ebx
loc_00432871:
    mov edx, esi
    mov eax, ebx
    call sub_0043ded0
    test eax, eax
    jne loc_00432870
    mov dword ptr [ecx + 0x28], 0xffffffff
    mov dword ptr [ecx + 0x2c], 0xffffffff
    mov dword ptr [ecx + 0x3c], 0
    mov dword ptr [ecx + 0x40], 0
    mov dword ptr [ecx + 0x44], 0
    mov dword ptr [ecx + 0x48], 0
    mov dword ptr [ecx + 0x4c], 0
    mov dword ptr [ecx + 0x50], 0
    mov dword ptr [ecx + 0x54], 0
    mov dword ptr [ecx + 0x58], 0
    mov dword ptr [ecx + 0x5c], 0
    mov dword ptr [ecx + 0x60], 0
    mov dword ptr [ecx + 0x64], 0
    mov dword ptr [ecx + 0x68], 0
    mov dword ptr [ecx + 0x6c], 0
    mov dword ptr [ecx + 0x70], 0
    mov dword ptr [ecx + 0x74], 0
    mov dword ptr [ecx], ebx
    mov eax, dword ptr [esp + 0x2c]
    mov dword ptr [ecx + 8], ebp
    mov edx, dword ptr [esp]
    mov dword ptr [ecx + 0xc], edi
    add ebp, edx
    mov dword ptr [ecx + 4], eax
    dec ebp
    mov eax, dword ptr [esp + 0x1c]
    mov dword ptr [ecx + 0x10], ebp
    mov dword ptr [ecx + 0x18], eax
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [ecx + 0x1c], eax
    mov eax, dword ptr [esp + 0x24]
    mov dword ptr [ecx + 0x20], eax
    mov eax, dword ptr [esp + 0x28]
    mov dword ptr [ecx + 0x24], eax
    mov eax, dword ptr [esp + 0x30]
    mov ebx, dword ptr [esp + 0x18]
    mov dword ptr [ecx + 0x30], eax
    mov eax, dword ptr [esp + 0x34]
    add edi, ebx
    mov dword ptr [ecx + 0x34], eax
    mov eax, dword ptr [esp + 0x38]
    dec edi
    mov dword ptr [ecx + 0x38], eax
    mov eax, dword ptr [esp + 4]
    mov dword ptr [ecx + 0x14], edi
    mov eax, dword ptr [eax + 0x30]
    mov dword ptr [ecx + 0x78], eax
    test eax, eax
    je loc_00432959
    mov dword ptr [eax + 0x74], ecx
loc_00432959:
    mov eax, dword ptr [esp + 4]
    mov dword ptr [eax + 0x30], ecx
    mov eax, ecx
loc_00432962:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    ret 0x24
    .byte 0x90
    push edx
    cmp dword ptr [d_0045c468], 0
    je loc_00432994
    xor edx, edx
    call sub_0043ded0
    test eax, eax
    je loc_00432996
    test byte ptr [eax + 4], 1
    je loc_00432994
    test byte ptr [eax + 6], 2
    je loc_00432994
    mov eax, 1
    pop edx
    ret
loc_00432994:
    xor eax, eax
loc_00432996:
    pop edx
    ret
sub_00432998:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x24
    mov dword ptr [esp + 0x20], eax
    mov dword ptr [esp + 0x1c], edx
    mov ebp, dword ptr [eax + 0x34]
    mov eax, dword ptr [eax + 0x30]
    xor edx, edx
    mov dword ptr [esp + 0x10], eax
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [esp + 0x14], edx
    test byte ptr [eax + 4], 8
    je loc_004329cc
    mov eax, 0xffffffff
    jmp loc_00433178
loc_004329cc:
    test ebp, ebp
    je loc_00432a13
    mov edi, esp
    lea esi, [ebp + 8]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov ebx, dword ptr [esp]
    add ebx, dword ptr [eax + 8]
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [esp], ebx
    mov ecx, dword ptr [esp + 4]
    add ecx, dword ptr [eax + 0xc]
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [esp + 4], ecx
    mov esi, dword ptr [esp + 8]
    add esi, dword ptr [eax + 8]
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [esp + 8], esi
    mov edi, dword ptr [esp + 0xc]
    mov eax, dword ptr [eax + 0xc]
    add edi, eax
    mov dword ptr [esp + 0xc], edi
    jmp loc_00432a5b
loc_00432a13:
    mov ebx, dword ptr [eax + 0x38]
    test ebx, ebx
    je loc_00432a5b
    mov edi, esp
    lea esi, [ebx + 8]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov ecx, dword ptr [esp]
    add ecx, dword ptr [eax + 8]
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [esp], ecx
    mov esi, dword ptr [esp + 4]
    add esi, dword ptr [eax + 0xc]
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [esp + 4], esi
    mov edi, dword ptr [esp + 8]
    add edi, dword ptr [eax + 8]
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [esp + 8], edi
    mov edx, dword ptr [esp + 0xc]
    mov eax, dword ptr [eax + 0xc]
    add edx, eax
    mov dword ptr [esp + 0xc], edx
loc_00432a5b:
    mov eax, dword ptr [esp + 0x1c]
    mov ecx, dword ptr [esp + 0x20]
    mov ebx, dword ptr [esp + 0x20]
    mov edx, dword ptr [esp + 0x20]
    mov dword ptr [eax], 0xffffffff
    mov eax, dword ptr [esp + 0x20]
    mov ecx, dword ptr [ecx + 0x14]
    mov ebx, dword ptr [ebx + 0x10]
    mov edx, dword ptr [edx + 0xc]
    mov eax, dword ptr [eax + 8]
    call sub_0043175c
    test eax, eax
    jne loc_00432b3b
    test ebp, ebp
    je loc_00432add
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x1c]
    mov dword ptr [edx], eax
    test byte ptr [ebp + 4], 1
    je loc_00432abb
    test byte ptr [ebp + 6], 2
    je loc_00432abb
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push 0
    mov eax, ebp
    mov ebx, dword ptr [ebp + 0x34]
    jmp loc_00432acd
loc_00432abb:
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push 0
    mov eax, ebp
    mov ebx, dword ptr [ebp + 0x30]
loc_00432acd:
    call sub_00433764
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [eax + 0x34], 0
loc_00432add:
    mov eax, dword ptr [esp + 0x1c]
    mov ecx, dword ptr [eax]
    cmp ecx, -1
    jne loc_00432af3
    mov eax, ecx
    add esp, 0x24
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_00432af3:
    mov eax, dword ptr [esp + 0x20]
    mov eax, dword ptr [eax]
    mov cl, byte ptr [ebp + 4]
    mov dword ptr [d_0045c398], eax
    test cl, 8
    jne loc_00432b26
    cmp dword ptr [ebp + 0x54], 0
    je loc_00433176
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp]
    mov edx, dword ptr [edx]
    call dword ptr [ebp + 0x54]
    test byte ptr [ebp + 4], 0x40
    jne loc_00433176
loc_00432b26:
    mov eax, dword ptr [esp + 0x1c]
    mov dword ptr [eax], 0xffffffff
    xor eax, eax
    add esp, 0x24
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_00432b3b:
    mov edx, dword ptr [esp + 0x20]
    call sub_004318c4
    mov bl, byte ptr [edx + 4]
    mov dword ptr [esp + 0x18], eax
    test bl, 0x40
    jne loc_00432b5d
    test al, 1
    je loc_00432b5d
    mov eax, dword ptr [edx]
    call sub_0043d2a4
    jmp loc_00432b6f
loc_00432b5d:
    cmp dword ptr [esp + 0x18], 0
    jne loc_00432b6f
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [eax + 0x38], 0
loc_00432b6f:
    test ebp, ebp
    je loc_00432c9f
    mov edx, esp
    mov eax, ebp
    call sub_00433184
    test eax, eax
    jne loc_00432c21
    test byte ptr [ebp + 4], 8
    jne loc_00432b97
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x1c]
    mov dword ptr [edx], eax
loc_00432b97:
    test byte ptr [ebp + 4], 1
    je loc_00432bb7
    test byte ptr [ebp + 6], 2
    je loc_00432bb7
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push 0
    mov eax, ebp
    mov ebx, dword ptr [ebp + 0x34]
    jmp loc_00432bc9
loc_00432bb7:
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push 0
    mov eax, ebp
    mov ebx, dword ptr [ebp + 0x30]
loc_00432bc9:
    call sub_00433764
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [eax + 0x34], 0
    mov eax, dword ptr [eax]
    mov dl, byte ptr [ebp + 4]
    mov dword ptr [d_0045c398], eax
    test dl, 8
    jne loc_00433176
    cmp dword ptr [ebp + 0x54], 0
    je loc_00433176
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp]
    mov edx, dword ptr [edx]
    call dword ptr [ebp + 0x54]
    test byte ptr [ebp + 4], 0x40
    jne loc_00433176
    mov eax, dword ptr [esp + 0x1c]
    mov dword ptr [eax], 0xffffffff
    xor eax, eax
    add esp, 0x24
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_00432c21:
    mov dword ptr [esp + 0x10], ebp
loc_00432c25:
    mov ecx, dword ptr [d_0045c398]
    cmp ecx, -1
    je loc_00432dba
    mov edx, dword ptr [esp + 0x20]
    cmp ecx, dword ptr [edx]
    je loc_00432dba
    mov eax, ecx
    call sub_0043dd7c
    mov esi, eax
    test eax, eax
    je loc_00432dba
    mov edi, 0xffffffff
    mov ebp, dword ptr [eax + 0x34]
    mov dword ptr [d_0045c398], edi
    test ebp, ebp
    je loc_00432dba
    test byte ptr [ebp + 4], 8
    jne loc_00432c76
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x1c]
    mov dword ptr [edx], eax
loc_00432c76:
    test byte ptr [ebp + 4], 1
    je loc_00432d58
    test byte ptr [ebp + 6], 2
    je loc_00432d58
    push 1
    mov ecx, 1
    mov edx, esi
    push 0
    mov eax, ebp
    mov ebx, dword ptr [ebp + 0x34]
    jmp loc_00432d68
loc_00432c9f:
    mov eax, dword ptr [esp + 0x20]
    mov edx, dword ptr [eax + 0x38]
    test edx, edx
    je loc_00432c25
    mov eax, edx
    mov edx, esp
    call sub_00433184
    test eax, eax
    je loc_00432c25
    mov esi, dword ptr [esp + 0x20]
    mov esi, dword ptr [esi + 0x38]
    test byte ptr [esi + 4], 8
    jne loc_00432cd5
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [esi + 0x18]
    mov dword ptr [edx], eax
loc_00432cd5:
    test byte ptr [esi + 4], 1
    je loc_00432cf5
    test byte ptr [esi + 6], 2
    je loc_00432cf5
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push 0
    mov eax, esi
    mov ebx, dword ptr [esi + 0x34]
    jmp loc_00432d07
loc_00432cf5:
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push 0
    mov eax, esi
    mov ebx, dword ptr [esi + 0x30]
loc_00432d07:
    call sub_00433764
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [eax + 0x34], esi
    mov eax, dword ptr [eax]
    mov dword ptr [d_0045c398], eax
    test byte ptr [esi + 4], 8
    jne loc_00433176
    cmp dword ptr [esi + 0x50], 0
    je loc_00433176
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [esi]
    mov edx, dword ptr [edx]
    call dword ptr [esi + 0x50]
    test byte ptr [esi + 4], 0x40
    jne loc_00433176
    mov eax, dword ptr [esp + 0x1c]
    mov dword ptr [eax], 0xffffffff
    xor eax, eax
    add esp, 0x24
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_00432d58:
    push 1
    mov ecx, 1
    mov edx, esi
    push 0
    mov eax, ebp
    mov ebx, dword ptr [ebp + 0x30]
loc_00432d68:
    call sub_00433764
    mov dword ptr [esi + 0x34], 0
    mov dword ptr [esi + 0x38], 0
    test byte ptr [ebp + 4], 8
    jne loc_00433176
    cmp dword ptr [ebp + 0x54], 0
    je loc_00433176
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp]
    mov edx, dword ptr [edx]
    call dword ptr [ebp + 0x54]
    test byte ptr [ebp + 4], 0x40
    jne loc_00433176
    mov eax, dword ptr [esp + 0x1c]
    mov dword ptr [eax], 0xffffffff
    xor eax, eax
    add esp, 0x24
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_00432dba:
    mov ebp, dword ptr [esp + 0x10]
    test ebp, ebp
    je loc_004330e8
loc_00432dc6:
    test byte ptr [ebp + 4], 8
    jne loc_004330dd
    mov edi, esp
    lea esi, [ebp + 8]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov eax, dword ptr [esp + 0x20]
    mov edi, dword ptr [esp]
    add edi, dword ptr [eax + 8]
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [esp], edi
    mov edx, dword ptr [esp + 4]
    add edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [esp + 4], edx
    mov ebx, dword ptr [esp + 8]
    add ebx, dword ptr [eax + 8]
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [esp + 8], ebx
    mov ecx, dword ptr [esp + 0xc]
    mov eax, dword ptr [eax + 0xc]
    mov edx, esp
    add ecx, eax
    mov eax, ebp
    mov dword ptr [esp + 0xc], ecx
    call sub_00433184
    test eax, eax
    je loc_004330dd
    test byte ptr [ebp + 4], 8
    jne loc_00433096
    mov dl, byte ptr [esp + 0x18]
    test dl, 3
    je loc_00432f59
    test dl, 2
    je loc_00432e4f
    test byte ptr [ebp + 6], 8
    jne loc_00432e4f
    xor ebp, ebp
    jmp loc_004330e8
loc_00432e4f:
    mov eax, dword ptr [esp + 0x20]
    cmp ebp, dword ptr [eax + 0x34]
    je loc_00432e61
    cmp ebp, dword ptr [eax + 0x38]
    jne loc_004330e8
loc_00432e61:
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [eax + 0x34], ebp
    mov dword ptr [eax + 0x38], ebp
    mov ah, byte ptr [ebp + 4]
    test ah, 1
    je loc_00432f05
    test ah, 2
    je loc_00432f3d
    test byte ptr [ebp + 6], 2
    je loc_00432ec7
    test ah, 4
    jne loc_00432f3d
    mov ecx, dword ptr [ebp + 0x70]
    test ecx, ecx
    je loc_00432e99
    dec dword ptr [ecx + 4]
loc_00432e99:
    test byte ptr [esp + 0x18], 1
    je loc_00432eae
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x24]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x5c]
    jmp loc_00432eba
loc_00432eae:
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x2c]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x64]
loc_00432eba:
    mov dword ptr [esp + 0x14], eax
    and byte ptr [ebp + 6], 0xfd
    # jmp 0x432f3d
    .byte 0xe9
    .long loc_00432f3d - . - 4
loc_00432ec7:
    mov eax, ebp
    call sub_004336a0
    cmp eax, -1
    jne loc_00432eda
    xor ebp, ebp
    jmp loc_004330e8
loc_00432eda:
    test byte ptr [esp + 0x18], 1
    je loc_00432eef
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x20]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x58]
    jmp loc_00432efb
loc_00432eef:
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x28]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x60]
loc_00432efb:
    mov dword ptr [esp + 0x14], eax
    or byte ptr [ebp + 6], 2
    jmp loc_00432f3d
loc_00432f05:
    mov eax, ebp
    call sub_004336a0
    cmp eax, -1
    jne loc_00432f18
    xor ebp, ebp
    jmp loc_004330e8
loc_00432f18:
    test byte ptr [esp + 0x18], 1
    je loc_00432f2d
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x20]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x58]
    jmp loc_00432f39
loc_00432f2d:
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x28]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x60]
loc_00432f39:
    mov dword ptr [esp + 0x14], eax
loc_00432f3d:
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push 0
    mov eax, ebp
    mov ebx, dword ptr [ebp + 0x34]
    call sub_00433764
    jmp loc_004330e8
loc_00432f59:
    mov eax, dword ptr [esp + 0x20]
    mov esi, dword ptr [eax + 0x38]
    cmp ebp, esi
    jne loc_00433096
    test dl, 0x30
    je loc_00433096
    mov dword ptr [eax + 0x38], 0
    mov dword ptr [eax + 0x34], esi
    mov bh, byte ptr [esi + 4]
    test bh, 1
    je loc_0043302a
    test bh, 2
    jne loc_0043305f
    test byte ptr [esi + 6], 2
    je loc_00432fd7
    test bh, 4
    jne loc_0043305f
    mov ecx, dword ptr [esi + 0x70]
    test ecx, ecx
    je loc_00432fa9
    dec dword ptr [ecx + 4]
loc_00432fa9:
    test byte ptr [esp + 0x18], 0x10
    je loc_00432fbe
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x24]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x5c]
    jmp loc_00432fca
loc_00432fbe:
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x2c]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x64]
loc_00432fca:
    mov dword ptr [esp + 0x14], eax
    and byte ptr [ebp + 6], 0xfd
    jmp loc_0043305f
loc_00432fd7:
    mov eax, esi
    call sub_004336a0
    cmp eax, -1
    jne loc_00433001
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    mov eax, esi
    push 0
    mov ebx, dword ptr [esi + 0x30]
    xor ebp, esi
    call sub_00433764
    jmp loc_004330e8
loc_00433001:
    test dl, 0x10
    je loc_00433014
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [esi + 0x20]
    mov dword ptr [edx], eax
    mov eax, dword ptr [esi + 0x58]
    jmp loc_00433020
loc_00433014:
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [esi + 0x28]
    mov dword ptr [edx], eax
    mov eax, dword ptr [esi + 0x60]
loc_00433020:
    mov dword ptr [esp + 0x14], eax
    or byte ptr [ebp + 6], 2
    jmp loc_0043305f
loc_0043302a:
    test byte ptr [esi + 6], 2
    je loc_0043303a
    mov edx, dword ptr [esi + 0x70]
    test edx, edx
    je loc_0043303a
    dec dword ptr [edx + 4]
loc_0043303a:
    test byte ptr [esp + 0x18], 0x10
    je loc_0043304f
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x24]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x5c]
    jmp loc_0043305b
loc_0043304f:
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x2c]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x64]
loc_0043305b:
    mov dword ptr [esp + 0x14], eax
loc_0043305f:
    mov edi, dword ptr [ebp + 0x38]
    test edi, edi
    je loc_0043307e
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push 0
    mov ebx, edi
    mov eax, ebp
    call sub_00433764
    jmp loc_004330e8
loc_0043307e:
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push edi
    mov eax, ebp
    mov ebx, dword ptr [ebp + 0x30]
    call sub_00433764
    jmp loc_004330e8
loc_00433096:
    mov eax, dword ptr [esp + 0x20]
    cmp dword ptr [eax + 0x34], 0
    jne loc_004330e8
    cmp dword ptr [esp + 0x18], 0
    jne loc_004330e8
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [eax + 0x34], ebp
    test byte ptr [ebp + 4], 8
    jne loc_004330c4
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp + 0x18]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp + 0x50]
    mov dword ptr [esp + 0x14], eax
loc_004330c4:
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push 0
    mov eax, ebp
    mov ebx, dword ptr [ebp + 0x38]
    call sub_00433764
    jmp loc_004330e8
loc_004330dd:
    mov ebp, dword ptr [ebp + 0x78]
    test ebp, ebp
    jne loc_00432dc6
loc_004330e8:
    test ebp, ebp
    jne loc_0043310d
    mov eax, dword ptr [esp + 0x20]
    test byte ptr [eax + 4], 0x80
    je loc_00433143
    mov cl, byte ptr [esp + 0x18]
    test cl, 3
    je loc_00433143
    test cl, 0xc
    jne loc_00433143
    mov eax, dword ptr [eax]
    call sub_0043db50
    jmp loc_00433143
loc_0043310d:
    test byte ptr [ebp + 4], 0x10
    je loc_00433143
    mov dh, byte ptr [esp + 0x18]
    test dh, 3
    je loc_00433143
    test dh, 0xc
    jne loc_00433143
    mov eax, dword ptr [esp + 0x20]
    mov eax, dword ptr [eax]
    call sub_0043db50
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 0x24]
    push 0
    mov eax, ebp
    mov ebx, dword ptr [ebp + 0x30]
    call sub_00433764
loc_00433143:
    mov eax, dword ptr [esp + 0x20]
    mov eax, dword ptr [eax]
    mov dword ptr [d_0045c398], eax
    test ebp, ebp
    je loc_00433176
    cmp dword ptr [esp + 0x14], 0
    je loc_00433176
    mov edx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [ebp]
    mov edx, dword ptr [edx]
    call dword ptr [esp + 0x14]
    test byte ptr [ebp + 4], 0x40
    jne loc_00433176
    mov eax, dword ptr [esp + 0x1c]
    mov dword ptr [eax], 0xffffffff
loc_00433176:
    xor eax, eax
loc_00433178:
    add esp, 0x24
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_00433184:
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 8
    mov edi, eax
    mov esi, edx
    mov ecx, dword ptr [edx + 0xc]
    mov ebx, dword ptr [edx + 8]
    mov eax, dword ptr [esi]
    mov edx, dword ptr [edx + 4]
    call sub_0043175c
    test eax, eax
    je loc_004331e2
    cmp dword ptr [edi + 0x4c], 0
    je loc_004331e2
    mov edx, esp
    lea eax, [esp + 4]
    call sub_00431804
    mov ebx, dword ptr [esp + 4]
    mov eax, dword ptr [esi]
    sub ebx, eax
    mov dword ptr [esp + 4], ebx
    mov ecx, dword ptr [esp]
    mov eax, dword ptr [esi + 4]
    sub ecx, eax
    mov dword ptr [esp], ecx
    mov eax, dword ptr [edi + 0x10]
    sub eax, dword ptr [edi + 8]
    inc eax
    imul eax, ecx
    mov edx, dword ptr [edi + 0x4c]
    add eax, ebx
    mov al, byte ptr [edx + eax]
    and eax, 0xff
loc_004331e2:
    add esp, 8
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_004331ec:
    push edx
    sub esp, 4
    cmp dword ptr [d_0045c468], 0
    jne loc_00433203
    mov eax, 0xffffffff
    add esp, 4
    pop edx
    ret
loc_00433203:
    mov edx, esp
    call sub_0043ded0
    test eax, eax
    jne loc_00433218
    mov eax, 0xffffffff
    add esp, 4
    pop edx
    ret
loc_00433218:
    mov eax, dword ptr [esp]
    mov eax, dword ptr [eax]
    add esp, 4
    pop edx
    ret
    .byte 0x8b,0xc0
    mov eax, dword ptr [d_0045c398]
    ret
    .byte 0x8b,0xc0
sub_0043322c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 4
    cmp dword ptr [d_0045c468], 0
    jne loc_00433248
    mov eax, 0xffffffff
    jmp loc_004332d9
loc_00433248:
    mov edx, esp
    call sub_0043ded0
    mov esi, eax
    test eax, eax
    jne loc_00433264
    mov eax, 0xffffffff
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00433264:
    mov ebx, dword ptr [eax + 0x74]
    test ebx, ebx
    jne loc_00433276
    mov edx, dword ptr [eax + 0x78]
    mov eax, dword ptr [esp]
    mov dword ptr [eax + 0x30], edx
    jmp loc_0043327c
loc_00433276:
    mov eax, dword ptr [eax + 0x78]
    mov dword ptr [ebx + 0x78], eax
loc_0043327c:
    mov ecx, dword ptr [esi + 0x78]
    test ecx, ecx
    je loc_00433289
    mov eax, dword ptr [esi + 0x74]
    mov dword ptr [ecx + 0x74], eax
loc_00433289:
    mov eax, dword ptr [esp]
    mov ebp, dword ptr [esi + 0xc]
    mov edi, dword ptr [eax + 0x20]
    mov eax, dword ptr [esi + 0x14]
    sub eax, ebp
    push edi
    inc eax
    mov edx, dword ptr [esi + 8]
    push eax
    mov eax, dword ptr [esi + 0x10]
    sub eax, edx
    lea ecx, [eax + 1]
    mov eax, dword ptr [esp + 8]
    mov ebx, ebp
    mov eax, dword ptr [eax]
    call sub_0043d1c0
    mov eax, dword ptr [esp]
    cmp esi, dword ptr [eax + 0x34]
    jne loc_004332c1
    mov dword ptr [eax + 0x34], 0
loc_004332c1:
    mov eax, dword ptr [esp]
    cmp esi, dword ptr [eax + 0x38]
    jne loc_004332d0
    mov dword ptr [eax + 0x38], 0
loc_004332d0:
    mov eax, esi
    call sub_004332e4
    xor eax, eax
loc_004332d9:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_004332e4:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov edx, eax
    test byte ptr [eax + 6], 1
    jne loc_00433344
    mov ebx, dword ptr [edx + 0x30]
    test ebx, ebx
    je loc_00433300
    mov eax, ebx
    call sub_00444630
loc_00433300:
    mov ecx, dword ptr [edx + 0x34]
    test ecx, ecx
    je loc_0043330e
    mov eax, ecx
    call sub_00444630
loc_0043330e:
    mov esi, dword ptr [edx + 0x38]
    test esi, esi
    je loc_0043331c
    mov eax, esi
    call sub_00444630
loc_0043331c:
    mov edi, dword ptr [edx + 0x3c]
    test edi, edi
    je loc_0043332a
    mov eax, edi
    call sub_00444630
loc_0043332a:
    mov ebp, dword ptr [edx + 0x40]
    test ebp, ebp
    je loc_00433338
    mov eax, ebp
    call sub_00444630
loc_00433338:
    mov eax, dword ptr [edx + 0x44]
    test eax, eax
    je loc_00433344
    call sub_00444630
loc_00433344:
    cmp dword ptr [edx + 0x70], 0
    je loc_0043338f
    xor eax, eax
    xor ebx, ebx
    jmp loc_00433385
loc_00433350:
    mov edi, dword ptr [ecx + ebx + 0x10]
    inc eax
    cmp edx, edi
    jne loc_00433382
    mov ebx, eax
    lea ecx, [eax*4]
    jmp loc_00433370
loc_00433364:
    add ecx, 4
    mov esi, dword ptr [ecx + eax + 0xc]
    inc ebx
    mov dword ptr [ecx + eax + 8], esi
loc_00433370:
    mov eax, dword ptr [edx + 0x70]
    mov ebp, dword ptr [eax + 0xc]
    cmp ebx, ebp
    jl loc_00433364
    lea ebx, [ebp - 1]
    mov dword ptr [eax + 0xc], ebx
    jmp loc_0043338f
loc_00433382:
    add ebx, 4
loc_00433385:
    mov ecx, dword ptr [edx + 0x70]
    cmp eax, dword ptr [ecx + 0xc]
    jl loc_00433350
    jmp loc_00433396
loc_0043338f:
    mov eax, edx
    call sub_00444630
loc_00433396:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    sub esp, 4
    mov ebx, edx
    mov edx, esp
    call sub_0043ded0
    test eax, eax
    je loc_004333c2
    mov eax, dword ptr [esp]
    mov eax, dword ptr [eax]
    call sub_0043c960
    mov eax, ebx
    call sub_0043a594
loc_004333c2:
    add esp, 4
    pop ebx
    ret
    .byte 0x90
    push ebx
    push edx
    mov ebx, 1
    jmp loc_004333d2
loc_004333d1:
    inc ebx
loc_004333d2:
    mov eax, ebx
    xor edx, edx
    call sub_0043ded0
    test eax, eax
    jne loc_004333d1
    mov eax, ebx
    pop edx
    pop ebx
    ret
    push ebx
    push ecx
    push edx
    sub esp, 4
    cmp dword ptr [d_0045c468], 0
    jne loc_004333fa
    mov eax, 0xffffffff
    jmp loc_00433438
loc_004333fa:
    mov edx, esp
    call sub_0043ded0
    test eax, eax
    jne loc_00433411
    mov eax, 0xffffffff
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
loc_00433411:
    mov dl, byte ptr [eax + 4]
    test dl, 8
    je loc_00433436
    mov dh, dl
    push 0
    and dh, 0xf7
    mov ecx, 1
    mov byte ptr [eax + 4], dh
    push 0
    mov ebx, dword ptr [eax + 0x48]
    mov edx, dword ptr [esp + 8]
    call sub_00433764
loc_00433436:
    xor eax, eax
loc_00433438:
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 4
    cmp dword ptr [d_0045c468], 0
    jne loc_00433457
    mov eax, 0xffffffff
    jmp loc_004334bc
loc_00433457:
    mov edx, esp
    call sub_0043ded0
    mov esi, eax
    test eax, eax
    jne loc_00433471
    mov eax, 0xffffffff
    add esp, 4
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00433471:
    test byte ptr [eax + 4], 8
    jne loc_004334ba
    push 0
    mov dl, byte ptr [esi + 4]
    mov ecx, 1
    or dl, 8
    mov eax, esi
    mov byte ptr [esi + 4], dl
    push 0
    mov ebx, dword ptr [esi + 0x48]
    mov edx, dword ptr [esp + 8]
    call sub_00433764
    mov eax, dword ptr [esp]
    mov ebx, dword ptr [eax + 0x34]
    cmp esi, ebx
    jne loc_004334ba
    mov ecx, dword ptr [ebx + 0x1c]
    cmp ecx, -1
    je loc_004334b0
    mov eax, ecx
    call sub_0043a594
loc_004334b0:
    mov eax, dword ptr [esp]
    mov dword ptr [eax + 0x34], 0
loc_004334ba:
    xor eax, eax
loc_004334bc:
    add esp, 4
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ecx, edx
    mov edi, ebx
    mov edx, dword ptr [d_0045c468]
    mov ebx, 0xffffffff
    test edx, edx
    jne loc_004334e5
    mov eax, ebx
    jmp loc_00433580
loc_004334e5:
    mov edx, esp
    call sub_0043ded0
    mov esi, eax
    test eax, eax
    jne loc_004334fc
    mov eax, ebx
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_004334fc:
    test byte ptr [eax + 4], 1
    # je 0x43357e
    .byte 0x0f,0x84
    .long loc_0043357e - . - 4
    mov dl, byte ptr [esi + 6]
    test dl, 2
    je loc_0043353e
    test ecx, ecx
    jne loc_0043356e
    mov bl, dl
    push ecx
    mov eax, esi
    and bl, 0xfd
    push ecx
    mov byte ptr [esi + 6], bl
    mov ecx, 1
    mov edx, dword ptr [esp + 8]
    mov ebx, dword ptr [esi + 0x30]
    call sub_00433764
    mov ebp, dword ptr [esi + 0x70]
    mov ebx, dword ptr [esi + 0x24]
    test ebp, ebp
    je loc_0043356e
    dec dword ptr [ebp + 4]
    jmp loc_0043356e
loc_0043353e:
    test ecx, ecx
    je loc_0043356e
    push 0
    mov dh, dl
    mov ecx, 1
    or dh, 2
    mov eax, esi
    mov byte ptr [esi + 6], dh
    push 0
    mov ebx, dword ptr [esi + 0x34]
    mov edx, dword ptr [esp + 8]
    call sub_00433764
    mov ecx, dword ptr [esi + 0x70]
    mov ebx, dword ptr [esi + 0x20]
    test ecx, ecx
    je loc_0043356e
    inc dword ptr [ecx + 4]
loc_0043356e:
    cmp ebx, -1
    je loc_0043357e
    test edi, edi
    je loc_0043357e
    mov eax, ebx
    call sub_0043a594
loc_0043357e:
    xor eax, eax
loc_00433580:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00433588:
    push esi
    push edi
    push ebp
    sub esp, 8
    mov ebp, eax
    mov dword ptr [esp], ebx
    mov dword ptr [esp + 4], ecx
    mov eax, edx
    cmp dword ptr [d_0045c468], 0
    je loc_0043363c
    cmp ebp, 0x40
    jg loc_0043363c
    mov ecx, dword ptr [d_0049daa0]
    xor ebx, ebx
    test ecx, ecx
    jne loc_00433623
loc_004335bb:
    xor edi, edi
    mov esi, eax
    mov dword ptr [ebx + d_0049da98], edi
    test ebp, ebp
    jle loc_00433606
    lea edi, [ebp*4]
    xor ecx, ecx
loc_004335d2:
    mov eax, dword ptr [esi]
    xor edx, edx
    call sub_0043ded0
    test eax, eax
    je loc_0043363c
    mov edx, offset d_0049da94
    mov dword ptr [ecx + ebx + d_0049daa4], eax
    add edx, ebx
    mov dword ptr [eax + 0x70], edx
    test byte ptr [eax + 6], 2
    je loc_004335fc
    inc dword ptr [ebx + d_0049da98]
loc_004335fc:
    add ecx, 4
    add esi, 4
    cmp ecx, edi
    jl loc_004335d2
loc_00433606:
    mov eax, dword ptr [esp]
    mov dword ptr [ebx + d_0049daa0], ebp
    mov dword ptr [ebx + d_0049da94], eax
    mov eax, dword ptr [esp + 4]
    mov dword ptr [ebx + d_0049da9c], eax
    xor eax, eax
    jmp loc_00433641
loc_00433623:
    add ebx, 0x110
    cmp ebx, 0x4400
    jge loc_0043363c
    cmp dword ptr [ebx + d_0049daa0], 0
    je loc_004335bb
    jmp loc_00433623
loc_0043363c:
    mov eax, 0xffffffff
loc_00433641:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    ret
    push ebx
    push ecx
    push esi
    mov esi, edx
    cmp dword ptr [d_0045c468], 0
    jne loc_0043365f
    mov eax, 0xffffffff
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043365f:
    mov ebx, 1
    mov edx, esi
    xor ecx, ecx
    call sub_00433588
    cmp eax, -1
    je loc_00433699
    mov eax, dword ptr [esi]
    xor edx, edx
    call sub_0043ded0
    mov ecx, eax
    xor edx, edx
    xor eax, eax
    jmp loc_0043368f
loc_00433683:
    mov ebx, dword ptr [ebx + eax + 0x10]
    add eax, 4
    inc edx
    or byte ptr [ebx + 6], 4
loc_0043368f:
    mov ebx, dword ptr [ecx + 0x70]
    cmp edx, dword ptr [ebx + 0xc]
    jl loc_00433683
    xor eax, eax
loc_00433699:
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_004336a0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov dword ptr [esp + 4], eax
    cmp dword ptr [eax + 0x70], 0
    je loc_00433756
    test byte ptr [eax + 6], 4
    je loc_00433724
    mov eax, dword ptr [eax + 0x70]
    cmp dword ptr [eax + 4], 0
    # jle 0x433746
    .byte 0x0f,0x8e
    .long loc_00433746 - . - 4
    xor edi, edi
    xor ebp, ebp
    jmp loc_00433716
loc_004336d0:
    mov esi, dword ptr [eax + ebp + 0x10]
    mov dh, byte ptr [esi + 6]
    test dh, 2
    je loc_00433712
    mov bl, dh
    mov eax, dword ptr [esi]
    and bl, 0xfd
    mov edx, esp
    mov byte ptr [esi + 6], bl
    call sub_0043ded0
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 4]
    push 0
    mov eax, esi
    mov ebx, dword ptr [esi + 0x30]
    call sub_00433764
    cmp dword ptr [esi + 0x5c], 0
    je loc_00433712
    mov edx, dword ptr [esi + 0x24]
    mov eax, dword ptr [esi]
    call dword ptr [esi + 0x5c]
loc_00433712:
    add ebp, 4
    inc edi
loc_00433716:
    mov eax, dword ptr [esp + 4]
    mov eax, dword ptr [eax + 0x70]
    cmp edi, dword ptr [eax + 0xc]
    jge loc_00433746
    jmp loc_004336d0
loc_00433724:
    mov eax, dword ptr [eax + 0x70]
    mov edx, dword ptr [eax + 4]
    cmp edx, dword ptr [eax]
    jl loc_00433746
    cmp dword ptr [eax + 8], 0
    je loc_0043373f
    mov edx, eax
    mov eax, dword ptr [esp + 4]
    mov eax, dword ptr [eax]
    call dword ptr [edx + 8]
loc_0043373f:
    mov eax, 0xffffffff
    jmp loc_00433758
loc_00433746:
    mov eax, dword ptr [esp + 4]
    test byte ptr [eax + 6], 2
    jne loc_00433756
    mov eax, dword ptr [eax + 0x70]
    inc dword ptr [eax + 4]
loc_00433756:
    xor eax, eax
loc_00433758:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00433764:
    push esi
    push edi
    push ebp
    sub esp, 0x2c
    mov ebp, eax
    mov dword ptr [esp + 0x24], edx
    mov dword ptr [esp + 0x28], ebx
    mov dword ptr [esp + 0x20], ecx
    mov edx, dword ptr [esp + 0x3c]
    xor ecx, ecx
    test ebx, ebx
    je loc_0043396d
    lea edi, [esp + 0x10]
    lea esi, [ebp + 8]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov eax, dword ptr [esp + 0x24]
    mov esi, dword ptr [esp + 0x10]
    add esi, dword ptr [eax + 8]
    mov eax, dword ptr [esp + 0x24]
    mov dword ptr [esp + 0x10], esi
    mov edi, dword ptr [esp + 0x14]
    add edi, dword ptr [eax + 0xc]
    mov eax, dword ptr [esp + 0x24]
    mov dword ptr [esp + 0x14], edi
    mov ebx, dword ptr [esp + 0x18]
    add ebx, dword ptr [eax + 8]
    mov eax, dword ptr [esp + 0x24]
    mov dword ptr [esp + 0x18], ebx
    mov esi, dword ptr [esp + 0x1c]
    mov eax, dword ptr [eax + 0xc]
    add esi, eax
    mov dword ptr [esp + 0x1c], esi
    test edx, edx
    je loc_0043381c
    lea ebx, [esp + 0x10]
    lea eax, [esp + 0x10]
    call sub_004458c8
    cmp eax, -1
    je loc_004339aa
    mov edx, dword ptr [esp + 0x24]
    mov eax, dword ptr [esp + 0x10]
    mov edi, dword ptr [edx + 8]
    sub eax, edi
    mov ebx, dword ptr [edx + 0xc]
    mov dword ptr [esp], eax
    mov eax, dword ptr [esp + 0x14]
    sub eax, ebx
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esp + 0x18]
    sub eax, edi
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 0x1c]
    sub eax, ebx
    mov dword ptr [esp + 0xc], eax
    jmp loc_00433825
loc_0043381c:
    mov edi, esp
    lea esi, [ebp + 8]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
loc_00433825:
    mov eax, dword ptr [esp + 0x28]
    cmp eax, dword ptr [ebp + 0x30]
    jne loc_0043383b
    test byte ptr [ebp + 6], 2
    je loc_0043383b
    mov eax, dword ptr [ebp + 0x34]
    mov dword ptr [esp + 0x28], eax
loc_0043383b:
    test byte ptr [ebp + 4], 8
    je loc_00433863
    mov eax, dword ptr [esp + 0x28]
    cmp eax, dword ptr [ebp + 0x30]
    jne loc_0043384f
    mov eax, dword ptr [ebp + 0x3c]
    jmp loc_00433883
loc_0043384f:
    cmp eax, dword ptr [ebp + 0x34]
    jne loc_00433859
    mov eax, dword ptr [ebp + 0x40]
    jmp loc_00433883
loc_00433859:
    cmp eax, dword ptr [ebp + 0x38]
    jne loc_00433887
    mov eax, dword ptr [ebp + 0x44]
    jmp loc_00433883
loc_00433863:
    mov eax, dword ptr [esp + 0x28]
    cmp eax, dword ptr [ebp + 0x3c]
    jne loc_00433871
    mov eax, dword ptr [ebp + 0x30]
    jmp loc_00433883
loc_00433871:
    cmp eax, dword ptr [ebp + 0x40]
    jne loc_0043387b
    mov eax, dword ptr [ebp + 0x34]
    jmp loc_00433883
loc_0043387b:
    cmp eax, dword ptr [ebp + 0x44]
    jne loc_00433887
    mov eax, dword ptr [ebp + 0x38]
loc_00433883:
    mov dword ptr [esp + 0x28], eax
loc_00433887:
    cmp dword ptr [esp + 0x28], 0
    je loc_0043396d
    cmp dword ptr [esp + 0x20], 0
    jne loc_0043394c
    mov ebx, dword ptr [esp]
    mov eax, dword ptr [ebp + 0x10]
    mov edx, dword ptr [ebp + 8]
    mov ecx, dword ptr [esp + 4]
    sub eax, edx
    mov edx, dword ptr [esp + 8]
    inc eax
    sub edx, ebx
    mov ebx, dword ptr [esp + 0xc]
    inc edx
    sub ebx, ecx
    mov cl, byte ptr [ebp + 4]
    inc ebx
    test cl, 0x20
    je loc_00433907
    mov ecx, dword ptr [esp + 0x24]
    mov esi, dword ptr [ecx + 0x18]
    mov edi, dword ptr [ecx + 0x18]
    push esi
    mov esi, dword ptr [esp + 8]
    imul esi, edi
    mov ecx, dword ptr [ecx + 0x2c]
    mov edi, dword ptr [esp + 4]
    add ecx, edi
    add ecx, esi
    push ecx
    push eax
    push ebx
    push edx
    mov ebx, dword ptr [ebp + 0xc]
    mov edx, dword ptr [esp + 0x18]
    sub edx, ebx
    imul eax, edx
    mov edx, dword ptr [esp + 0x3c]
    mov ecx, dword ptr [ebp + 8]
    add edx, eax
    mov eax, edi
    sub eax, ecx
    add eax, edx
    push eax
    call sub_004428e4
    jmp loc_00433949
loc_00433907:
    mov ecx, dword ptr [esp + 0x24]
    mov esi, dword ptr [ecx + 0x18]
    mov edi, dword ptr [ecx + 0x18]
    push esi
    mov esi, dword ptr [esp + 8]
    imul esi, edi
    mov ecx, dword ptr [ecx + 0x2c]
    mov edi, dword ptr [esp + 4]
    add ecx, edi
    add ecx, esi
    push ecx
    push eax
    push ebx
    push edx
    mov ebx, dword ptr [ebp + 0xc]
    mov edx, dword ptr [esp + 0x18]
    sub edx, ebx
    imul eax, edx
    mov edx, dword ptr [esp + 0x3c]
    mov ecx, dword ptr [ebp + 8]
    add edx, eax
    mov eax, edi
    sub eax, ecx
    add eax, edx
    push eax
    call sub_004428b4
loc_00433949:
    add esp, 0x18
loc_0043394c:
    mov eax, dword ptr [esp + 0x28]
    mov esi, dword ptr [esp + 0x20]
    mov ecx, dword ptr [ebp + 0x48]
    mov dword ptr [ebp + 0x48], eax
    test esi, esi
    je loc_0043396d
    lea edx, [esp + 0x10]
    mov eax, dword ptr [esp + 0x24]
    xor ebx, ebx
    call sub_0043d4d0
loc_0043396d:
    cmp dword ptr [esp + 0x40], 0
    je loc_004339aa
    mov eax, dword ptr [esp + 0x28]
    cmp ecx, eax
    je loc_004339aa
    cmp eax, dword ptr [ebp + 0x34]
    jne loc_00433992
    cmp dword ptr [ebp + 0x68], 0
    je loc_00433992
    mov edx, dword ptr [ebp + 0x20]
    mov eax, dword ptr [ebp]
    call dword ptr [ebp + 0x68]
    jmp loc_004339aa
loc_00433992:
    mov eax, dword ptr [esp + 0x28]
    cmp eax, dword ptr [ebp + 0x30]
    jne loc_004339aa
    cmp dword ptr [ebp + 0x6c], 0
    je loc_004339aa
    mov edx, dword ptr [ebp + 0x24]
    mov eax, dword ptr [ebp]
    call dword ptr [ebp + 0x6c]
loc_004339aa:
    add esp, 0x2c
    pop ebp
    pop edi
    pop esi
    ret 8
    .byte 0x90
sub_004339b4:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov edi, eax
    mov ebp, edx
    mov esi, dword ptr [eax + 0x30]
    test esi, esi
    jne loc_004339cd
    jmp loc_004339f1
loc_004339c6:
    mov esi, dword ptr [esi + 0x78]
    test esi, esi
    je loc_004339f1
loc_004339cd:
    cmp dword ptr [esi + 0x78], 0
    jne loc_004339c6
    test esi, esi
    jne loc_004339dd
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_004339dd:
    push 0
    mov edx, edi
    mov eax, esi
    push ebp
    mov ebx, dword ptr [esi + 0x48]
    xor ecx, ecx
    call sub_00433764
    mov esi, dword ptr [esi + 0x74]
loc_004339f1:
    test esi, esi
    jne loc_004339dd
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ebp, eax
    cmp dword ptr [d_0045c468], 0
    jne loc_00433a1a
    mov eax, 0xffffffff
    jmp loc_00433ab6
loc_00433a1a:
    mov edx, esp
    call sub_0043ded0
    mov esi, eax
    mov edi, eax
    test eax, eax
    jne loc_00433a38
    mov eax, 0xffffffff
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00433a38:
    push 1
    mov ecx, 1
    push 0
    mov edx, dword ptr [esp + 8]
    mov ebx, dword ptr [eax + 0x34]
    call sub_00433764
    cmp dword ptr [esi + 0x58], 0
    je loc_00433a66
    mov eax, ebp
    mov edx, dword ptr [esi + 0x20]
    call dword ptr [edi + 0x58]
    test byte ptr [esi + 4], 0x40
    je loc_00433a75
    mov eax, dword ptr [esi + 0x20]
    jmp loc_00433a70
loc_00433a66:
    mov ecx, dword ptr [esi + 0x20]
    cmp ecx, -1
    je loc_00433a75
    mov eax, ecx
loc_00433a70:
    call sub_0043a594
loc_00433a75:
    push 1
    mov ecx, 1
    mov edx, dword ptr [esp + 4]
    push 0
    mov eax, edi
    mov ebx, dword ptr [edi + 0x30]
    call sub_00433764
    cmp dword ptr [edi + 0x5c], 0
    je loc_00433aa5
    mov eax, ebp
    mov edx, dword ptr [edi + 0x24]
    call dword ptr [edi + 0x5c]
    test byte ptr [edi + 4], 0x40
    je loc_00433ab4
    mov eax, dword ptr [edi + 0x24]
    jmp loc_00433aaf
loc_00433aa5:
    mov ebp, dword ptr [edi + 0x24]
    cmp ebp, -1
    je loc_00433ab4
    mov eax, ebp
loc_00433aaf:
    call sub_0043a594
loc_00433ab4:
    xor eax, eax
loc_00433ab6:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00433ac0:
    fcos
    call sub_00433ad4
    jae sub_00433ac0
    ret
sub_00433aca:
    fsin
    call sub_00433ad4
    jae sub_00433aca
    ret
sub_00433ad4:
    push ebp
    mov ebp, esp
    push eax
    wait
    fnstsw word ptr [ebp - 2]
    mov ah, byte ptr [ebp - 1]
    or ah, 1
    sahf
    jnp loc_00433afc
    fld tbyte ptr [d_0045c39c]
    fxch st(1)
loc_00433aed:
    fprem
    wait
    fnstsw word ptr [ebp - 2]
    mov ah, byte ptr [ebp - 1]
    sahf
    jp loc_00433aed
    fstp st(1)
    clc
loc_00433afc:
    pop eax
    pop ebp
    ret
sub_00433aff:
    fld qword ptr [esp + 4]
    call sub_00433ac0
    ret 8
sub_00433b0b:
    fld qword ptr [esp + 4]
    call sub_00433aca
    ret 8
sub_00433b17:
    test byte ptr [d_0045c564], 1
    jne loc_00433b24
    fptan
    jmp loc_00433b29
loc_00433b24:
    call sub_00445934
loc_00433b29:
    fstp st(0)
    ret
    fld qword ptr [esp + 4]
    call sub_00433b17
    ret 8
sub_00433b38:
    push eax
    wait
    fnstcw word ptr [esp]
    wait
    push dword ptr [esp]
    mov byte ptr [esp + 1], 0x1f
    fldcw word ptr [esp]
    frndint
    fldcw word ptr [esp + 4]
    wait
    lea esp, [esp + 8]
    ret
    .byte 0x00
ptr_00433b56:
    ret
ptr_00433b57:
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_00433b60:
    push ecx
    push edx
    mov ah, byte ptr [d_0045c3a8]
    test ah, ah
    jne loc_00433bbd
    mov byte ptr [d_0045c3a8], 1
    mov byte ptr [d_004a2ca8], ah
    mov ecx, 0x100
    mov eax, offset d_004a2ba0
    xor edx, edx
    call sub_004459f0
    xor edx, edx
    mov dword ptr [d_0045c3b4], edx
    mov dword ptr [d_0045c3b8], edx
    call sub_0044495c
    call sub_0043b6dc
    call sub_0043a288
    xor eax, eax
    call sub_00433d18
    call sub_0043acf8
    mov dword ptr [d_004a2ca0], eax
    xor eax, eax
    pop edx
    pop ecx
    ret
loc_00433bbd:
    mov eax, 0xffffffff
    pop edx
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
sub_00433bc8:
    push edx
    cmp byte ptr [d_0045c3a8], 0
    je loc_00433bda
    xor dl, dl
    mov byte ptr [d_0045c3a8], dl
loc_00433bda:
    pop edx
    ret
    push ecx
    push edx
    mov ah, byte ptr [d_0045c3a8]
    test ah, ah
    # je 0x433c67
    .byte 0x0f,0x84
    .long loc_00433c67 - . - 4
    je loc_00433c15
    xor dh, dh
    mov byte ptr [d_004a2ca8], dh
    mov ecx, 0x100
    mov eax, offset d_004a2ba0
    xor edx, edx
    call sub_004459f0
    xor edx, edx
    mov dword ptr [d_0045c3b4], edx
    mov dword ptr [d_0045c3b8], edx
loc_00433c15:
    call sub_0044495c
    call sub_0043b6dc
loc_00433c1f:
    call sub_0043b5ec
    cmp byte ptr [d_004a2ca8], 0
    je loc_00433c1f
    cmp byte ptr [d_0045c3a8], 0
    je loc_00433c5d
    xor cl, cl
    mov byte ptr [d_004a2ca8], cl
    mov ecx, 0x100
    mov eax, offset d_004a2ba0
    xor edx, edx
    call sub_004459f0
    xor ecx, ecx
    mov dword ptr [d_0045c3b4], ecx
    mov dword ptr [d_0045c3b8], ecx
loc_00433c5d:
    call sub_0044495c
    call sub_0043b6dc
loc_00433c67:
    pop edx
    pop ecx
    ret
    .byte 0x8b,0xc0
sub_00433c6c:
    push ecx
    push edx
    cmp byte ptr [d_0045c3a8], 0
    je loc_00433c9e
    xor dl, dl
    mov byte ptr [d_004a2ca8], dl
    mov ecx, 0x100
    mov eax, offset d_004a2ba0
    xor edx, edx
    call sub_004459f0
    xor edx, edx
    mov dword ptr [d_0045c3b4], edx
    mov dword ptr [d_0045c3b8], edx
loc_00433c9e:
    call sub_0044495c
    call sub_0043b6dc
    pop edx
    pop ecx
    ret
    .byte 0x90
sub_00433cac:
    push edx
    mov dl, byte ptr [d_0045c3a8]
    mov eax, 0xffffffff
    test dl, dl
    je loc_00433cc2
    call dword ptr [d_0045c3c0]
loc_00433cc2:
    pop edx
    ret
    mov dword ptr [d_0045c3ac], 1
    ret
    .byte 0x90
    push edx
    xor edx, edx
    mov dword ptr [d_0045c3ac], edx
    pop edx
    ret
    .byte 0x90
sub_00433cdc:
    mov eax, dword ptr [d_0045c3ac]
    ret
    .byte 0x8b,0xc0
    mov dword ptr [d_0045c3b0], 1
    ret
    .byte 0x90
    push edx
    xor edx, edx
    mov dword ptr [d_0045c3b0], edx
    pop edx
    ret
    .byte 0x90
    mov eax, dword ptr [d_0045c3b0]
    ret
    .byte 0x8b,0xc0
ptr_00433d04:
    .long ptr_00433d31
    .long ptr_00433d42
    .long ptr_00433d53
    .long ptr_00433d64
    .long ptr_00433d75
sub_00433d18:
    push edx
    mov edx, dword ptr [d_004a2ca4]
    mov dword ptr [d_004a2ca4], eax
    cmp eax, 4
    ja loc_00433d86
    jmp dword ptr cs:[eax*4 + ptr_00433d04]
ptr_00433d31:
    mov dword ptr [d_0045c3c0], offset ptr_00434104
    call sub_00435ec8
    pop edx
    ret
ptr_00433d42:
    mov dword ptr [d_0045c3c0], offset ptr_004343ac
    call sub_00438500
    pop edx
    ret
ptr_00433d53:
    mov dword ptr [d_0045c3c0], offset ptr_004348a4
    call sub_00438c6c
    pop edx
    ret
ptr_00433d64:
    mov dword ptr [d_0045c3c0], offset ptr_00434ea8
    call sub_004395f8
    pop edx
    ret
ptr_00433d75:
    mov dword ptr [d_0045c3c0], offset ptr_00435150
    call sub_00439c34
    pop edx
    ret
loc_00433d86:
    mov dword ptr [d_004a2ca4], edx
    pop edx
    ret
    .byte 0x8b,0xc0
sub_00433d90:
    mov eax, dword ptr [d_004a2ca4]
    ret
    .byte 0x8b,0xc0
    push ebx
    push ecx
    push edx
    mov edx, eax
    xor ebx, ebx
    xor eax, eax
loc_00433da1:
    mov ecx, dword ptr [eax + d_004a1fa0]
    sar ecx, 0x10
    cmp ecx, edx
    je loc_00433de2
    mov ecx, dword ptr [eax + d_004a1fa2]
    sar ecx, 0x10
    cmp ecx, edx
    je loc_00433de2
    mov ecx, dword ptr [eax + d_004a1fa4]
    sar ecx, 0x10
    cmp ecx, edx
    je loc_00433de2
    mov ecx, dword ptr [eax + d_004a1fa6]
    sar ecx, 0x10
    cmp ecx, edx
    je loc_00433de2
    mov ecx, dword ptr [eax + d_004a1fa8]
    sar ecx, 0x10
    cmp ecx, edx
    jne loc_00433de8
loc_00433de2:
    mov eax, ebx
    pop edx
    pop ecx
    pop ebx
    ret
loc_00433de8:
    add eax, 0xc
    inc ebx
    cmp eax, 0xc00
    jl loc_00433da1
    mov eax, 0xffffffff
    pop edx
    pop ecx
    pop ebx
    ret
    mov eax, dword ptr [d_004a2ca0]
    jmp sub_0043ad68
    .byte 0x8b,0xc0
    call sub_0043acf8
    mov dword ptr [d_004a2ca0], eax
    ret
    .byte 0x90
sub_00433e14:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    sub esp, 4
    mov bl, byte ptr [d_0045c3be]
    mov edx, eax
    cmp dword ptr [d_0045c530], 0
    sete al
    and eax, 0xff
    je loc_00433e87
    mov esi, dword ptr [d_0045c52c]
    cmp esi, 0xfff
    sete al
    and eax, 0xff
    jne loc_00433e87
    lea eax, [esi*4]
    sub eax, esi
    lea ecx, [eax*8]
    mov eax, dword ptr [d_0045c528]
    add eax, ecx
    mov dword ptr [eax], 2
    mov ecx, dword ptr [d_0045c534]
    mov word ptr [eax + 0xc], dx
    lea edi, [esi + 1]
    mov dword ptr [eax + 4], ecx
    mov ecx, dword ptr [d_0045c538]
    mov dword ptr [d_0045c52c], edi
    mov dword ptr [eax + 8], ecx
loc_00433e87:
    call sub_0043acf8
    mov dword ptr [d_004a2ca0], eax
    cmp dx, 0xe0
    jne loc_00433eae
    mov eax, 0x80
    mov bl, byte ptr [d_0045c3be]
    mov word ptr [d_0045c3bc], ax
    jmp loc_004340ac
loc_00433eae:
    mov bl, byte ptr [d_0045c3be]
    test dl, 0x80
    je loc_00433ec2
    xor dh, dh
    xor eax, eax
    and dl, 0x7f
    jmp loc_00433ec7
loc_00433ec2:
    mov eax, 1
loc_00433ec7:
    add dx, word ptr [d_0045c3bc]
    test ax, ax
    je loc_00433ee6
    xor ecx, ecx
    mov cx, dx
    cmp byte ptr [ecx + d_004a2ba0], 0
    je loc_00433ee6
    mov eax, 2
loc_00433ee6:
    xor ecx, ecx
    mov cx, dx
    movzx esi, byte ptr [ecx + d_004a2ba0]
    xor edi, edi
    mov di, ax
    cmp esi, edi
    je loc_00433f26
    mov byte ptr [ecx + d_004a2ba0], al
    # cmp ax, 1
    .byte 0x66,0x3d,0x01,0x00
    jne loc_00433f15
    mov cl, byte ptr [d_004a2ca8]
    inc byte ptr [d_004a2ca8]
    jmp loc_00433f26
loc_00433f15:
    test ax, ax
    jne loc_00433f26
    mov cl, byte ptr [d_004a2ca8]
    dec byte ptr [d_004a2ca8]
loc_00433f26:
    test ax, ax
    je loc_004340a3
    xor esi, esi
    mov byte ptr [esp], dl
    mov word ptr [esp + 2], si
    cmp dx, 0x3a
    jne loc_00433f90
    mov al, bl
    and al, 0xfd
    mov ah, bl
    or ah, 2
    test bl, 2
    jne loc_00433f5e
    test bl, 2
    je loc_00433f83
    mov bl, al
    mov byte ptr [d_0045c3be], al
    jmp loc_00433fff
loc_00433f5e:
    mov edx, dword ptr [d_004a2ca4]
    mov byte ptr [d_0045c3be], bl
    test edx, edx
    jne loc_00433fff
    test bl, 2
    je loc_00433f83
    mov bl, al
    mov byte ptr [d_0045c3be], al
    # jmp 0x433fff
    .byte 0xe9
    .long loc_00433fff - . - 4
loc_00433f83:
    mov bl, ah
    mov byte ptr [d_0045c3be], ah
    # jmp 0x433fff
    .byte 0xe9
    .long loc_00433fff - . - 4
loc_00433f90:
    cmp dx, 0x45
    jne loc_00433fab
    test bl, 1
    je loc_00433fa0
    and bl, 0xfe
    jmp loc_00433fa3
loc_00433fa0:
    or bl, 1
loc_00433fa3:
    mov byte ptr [d_0045c3be], bl
    jmp loc_00433fff
loc_00433fab:
    cmp dx, 0x46
    jne loc_00433fc6
    test bl, 4
    je loc_00433fbb
    and bl, 0xfb
    jmp loc_00433fbe
loc_00433fbb:
    or bl, 4
loc_00433fbe:
    mov byte ptr [d_0045c3be], bl
    jmp loc_00433fff
loc_00433fc6:
    mov byte ptr [d_0045c3be], bl
    cmp dx, 0x2a
    je loc_00433fd8
    cmp dx, 0x36
    jne loc_00433fff
loc_00433fd8:
    mov bl, byte ptr [d_0045c3be]
    test bl, 2
    je loc_00433fff
    cmp dword ptr [d_004a2ca4], 0
    je loc_00433fff
    test bl, 2
    je loc_00433ff6
    and bl, 0xfd
    jmp loc_00433ff9
loc_00433ff6:
    or bl, 2
loc_00433ff9:
    mov byte ptr [d_0045c3be], bl
loc_00433fff:
    mov bl, byte ptr [d_0045c3be]
    test bl, bl
    je loc_00434027
    test bl, 1
    je loc_00434013
    or byte ptr [esp + 2], 2
loc_00434013:
    test bl, 2
    je loc_0043401d
    or byte ptr [esp + 2], 1
loc_0043401d:
    test bl, 4
    je loc_00434027
    or byte ptr [esp + 2], 4
loc_00434027:
    cmp byte ptr [d_004a2bca], 0
    je loc_00434035
    or byte ptr [esp + 2], 8
loc_00434035:
    cmp byte ptr [d_004a2bd6], 0
    je loc_00434043
    or byte ptr [esp + 2], 0x10
loc_00434043:
    cmp byte ptr [d_004a2bd8], 0
    je loc_00434051
    or byte ptr [esp + 2], 0x20
loc_00434051:
    cmp byte ptr [d_004a2c58], 0
    je loc_0043405f
    or byte ptr [esp + 2], 0x40
loc_0043405f:
    cmp byte ptr [d_004a2bbd], 0
    je loc_0043406d
    or byte ptr [esp + 2], 0x80
loc_0043406d:
    cmp byte ptr [d_004a2c3d], 0
    je loc_0043407b
    or byte ptr [esp + 3], 1
loc_0043407b:
    mov eax, dword ptr [d_0045c3b4]
    inc eax
    mov ecx, dword ptr [d_0045c3b8]
    and eax, 0x3f
    cmp eax, ecx
    je loc_004340a3
    mov ecx, dword ptr [d_0045c3b4]
    mov esi, dword ptr [esp]
    mov dword ptr [d_0045c3b4], eax
    mov dword ptr [ecx*4 + d_004a1ea0], esi
loc_004340a3:
    xor edi, edi
    mov word ptr [d_0045c3bc], di
loc_004340ac:
    mov byte ptr [d_0045c3be], bl
    cmp byte ptr [d_004a2c66], 0
    je loc_004340f5
    cmp byte ptr [d_0045c3a8], 0
    je loc_004340eb
    xor dh, dh
    mov byte ptr [d_004a2ca8], dh
    mov ecx, 0x100
    mov eax, offset d_004a2ba0
    xor edx, edx
    xor esi, esi
    call sub_004459f0
    mov dword ptr [d_0045c3b4], esi
    mov dword ptr [d_0045c3b8], esi
loc_004340eb:
    call sub_0044495c
    call sub_0043b6dc
loc_004340f5:
    mov bl, byte ptr [d_0045c3be]
    add esp, 4
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00434104:
    push ebx
    push ecx
    push edx
    sub esp, 4
    mov ebx, dword ptr [d_004a2ca4]
    mov edx, esp
    xor eax, eax
    call sub_0043a398
    test eax, eax
    jne loc_00434399
    mov eax, dword ptr [esp]
    test byte ptr [eax + 2], 1
    je loc_00434387
    mov ebx, dword ptr [d_004a2ca4]
    test ebx, ebx
    je loc_0043414c
    cmp ebx, 1
    jne loc_00434144
    mov eax, 0x10
    jmp loc_00434151
loc_00434144:
    cmp ebx, 4
    je loc_0043414c
    cmp ebx, 3
loc_0043414c:
    mov eax, 0x1e
loc_00434151:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    je loc_00434364
    mov eax, dword ptr [esp]
    mov dh, byte ptr [eax]
    cmp dh, 0x30
    je loc_00434364
    cmp dh, 0x2e
    je loc_00434364
    cmp dh, 0x20
    je loc_00434364
    cmp dh, 0x12
    je loc_00434364
    cmp dh, 0x21
    je loc_00434364
    cmp dh, 0x22
    je loc_00434364
    cmp dh, 0x23
    je loc_00434364
    cmp dh, 0x17
    je loc_00434364
    cmp dh, 0x24
    je loc_00434364
    cmp dh, 0x25
    je loc_00434364
    cmp dh, 0x26
    je loc_00434364
    test ebx, ebx
    je loc_004341ea
    cmp ebx, 1
    jne loc_004341e2
    mov eax, 0x27
    jmp loc_004341ef
loc_004341e2:
    cmp ebx, 4
    je loc_004341ea
    cmp ebx, 3
loc_004341ea:
    mov eax, 0x32
loc_004341ef:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    je loc_00434364
    mov eax, dword ptr [esp]
    mov dl, byte ptr [eax]
    cmp dl, 0x31
    je loc_00434364
    cmp dl, 0x18
    je loc_00434364
    cmp dl, 0x19
    je loc_00434364
    test ebx, ebx
    je loc_00434240
    cmp ebx, 1
    jne loc_00434238
    mov eax, 0x1e
    jmp loc_00434245
loc_00434238:
    cmp ebx, 4
    je loc_00434240
    cmp ebx, 3
loc_00434240:
    mov eax, 0x10
loc_00434245:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    je loc_00434364
    mov eax, dword ptr [esp]
    mov ch, byte ptr [eax]
    cmp ch, 0x13
    je loc_00434364
    cmp ch, 0x1f
    je loc_00434364
    cmp ch, 0x14
    je loc_00434364
    cmp ch, 0x16
    je loc_00434364
    cmp ch, 0x2f
    je loc_00434364
    test ebx, ebx
    je loc_004342a8
    cmp ebx, 1
    jne loc_004342a0
    mov eax, 0x2c
    jmp loc_004342ad
loc_004342a0:
    cmp ebx, 4
    je loc_004342a8
    cmp ebx, 3
loc_004342a8:
    mov eax, 0x11
loc_004342ad:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    je loc_00434364
    mov eax, dword ptr [esp]
    cmp byte ptr [eax], 0x2d
    je loc_00434364
    test ebx, ebx
    jne loc_004342dd
    mov eax, 0x15
    jmp loc_00434306
loc_004342dd:
    cmp ebx, 1
    jne loc_004342e9
    mov eax, 0x15
    jmp loc_00434306
loc_004342e9:
    cmp ebx, 4
    jne loc_004342f5
    mov eax, 0x15
    jmp loc_00434306
loc_004342f5:
    cmp ebx, 3
    jne loc_00434301
    mov eax, 0x15
    jmp loc_00434306
loc_00434301:
    mov eax, 0x2c
loc_00434306:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    je loc_00434364
    test ebx, ebx
    jne loc_00434326
    mov eax, 0x2c
    jmp loc_0043434f
loc_00434326:
    cmp ebx, 1
    jne loc_00434332
    mov eax, 0x11
    jmp loc_0043434f
loc_00434332:
    cmp ebx, 4
    jne loc_0043433e
    mov eax, 0x2c
    jmp loc_0043434f
loc_0043433e:
    cmp ebx, 3
    jne loc_0043434a
    mov eax, 0x2c
    jmp loc_0043434f
loc_0043434a:
    mov eax, 0x15
loc_0043434f:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    jne loc_00434387
loc_00434364:
    mov eax, dword ptr [esp]
    mov dh, byte ptr [eax + 2]
    mov ebx, dword ptr [d_004a2ca4]
    test dh, 0x18
    jne loc_0043437f
    mov ch, dh
    or ch, 8
    mov byte ptr [eax + 2], ch
    jmp loc_00434387
loc_0043437f:
    mov cl, dh
    and cl, 0xe7
    mov byte ptr [eax + 2], cl
loc_00434387:
    call sub_00435d1c
    mov ebx, dword ptr [d_004a2ca4]
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434399:
    mov eax, 0xffffffff
    mov ebx, dword ptr [d_004a2ca4]
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
ptr_004343ac:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x20
    mov ebx, dword ptr [d_0045c3b8]
    mov esi, dword ptr [d_0045c3b4]
    mov edx, esp
    xor eax, eax
    call sub_0043a398
    test eax, eax
    jne loc_0043488d
    mov eax, dword ptr [esp]
    mov esi, dword ptr [d_0045c3b4]
    mov dl, byte ptr [eax + 2]
    mov ebx, dword ptr [d_0045c3b8]
    test dl, 1
    je loc_004343f1
    mov dh, dl
    or dh, 8
    mov byte ptr [eax + 2], dh
loc_004343f1:
    mov eax, dword ptr [esp]
    mov dword ptr [d_0045c3b8], ebx
    mov cl, byte ptr [eax]
    mov dword ptr [d_0045c3b4], esi
    cmp cl, 0x1a
    jne loc_0043488d
    mov ecx, 1
    lea edx, [esp + 4]
    mov eax, ecx
    call sub_0043a398
    test eax, eax
    jne loc_00434878
    mov esi, dword ptr [d_0045c3b4]
    mov ebx, dword ptr [d_0045c3b8]
loc_0043442f:
    mov eax, dword ptr [esp + 4]
    mov dword ptr [d_0045c3b8], ebx
    mov dl, byte ptr [eax]
    mov dword ptr [d_0045c3b4], esi
    cmp dl, 0x2a
    je loc_0043444b
    cmp dl, 0x36
    jne loc_0043446e
loc_0043444b:
    lea edx, [esp + 4]
    mov eax, ecx
    call sub_0043a398
    cmp eax, -1
    je loc_00434892
    mov esi, dword ptr [d_0045c3b4]
    mov ebx, dword ptr [d_0045c3b8]
    inc ecx
    jmp loc_0043442f
loc_0043446e:
    cmp ecx, 1
    jne loc_00434477
    and byte ptr [eax + 2], 0xe7
loc_00434477:
    mov eax, dword ptr [esp + 4]
    mov ax, word ptr [eax + 2]
    xor ah, ah
    xor edx, edx
    and al, 0x18
    mov dx, ax
    mov eax, dword ptr [esp]
    mov ax, word ptr [eax + 2]
    xor ah, ah
    xor edi, edi
    and al, 0x18
    mov ebp, dword ptr [d_004a2ca4]
    mov di, ax
    test ebp, ebp
    jne loc_004344ac
    mov dword ptr [esp + 0x1c], 0x1e
    jmp loc_004344c9
loc_004344ac:
    cmp ebp, 1
    jne loc_004344b8
    mov eax, 0x10
    jmp loc_004344c5
loc_004344b8:
    cmp ebp, 4
    je loc_004344c0
    cmp ebp, 3
loc_004344c0:
    mov eax, 0x1e
loc_004344c5:
    mov dword ptr [esp + 0x1c], eax
loc_004344c9:
    mov eax, dword ptr [esp + 4]
    mov al, byte ptr [eax]
    mov ebp, dword ptr [esp + 0x1c]
    and eax, 0xff
    cmp eax, ebp
    jne loc_0043457c
loc_004344e0:
    test ecx, ecx
    jl loc_00434502
    cmp ebx, esi
    je loc_004344ff
    lea eax, [esp + 8]
    test eax, eax
    je loc_004344fb
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 8], eax
loc_004344fb:
    inc ebx
    and ebx, 0x3f
loc_004344ff:
    dec ecx
    jmp loc_004344e0
loc_00434502:
    test edi, edi
    je loc_00434536
    test edx, edx
    je loc_00434520
    mov eax, 0xc4
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    jmp loc_00434892
loc_00434520:
    mov eax, 0xe4
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    jmp loc_00434892
loc_00434536:
    test edx, edx
    je loc_0043455b
    mov eax, 0xc2
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043455b:
    mov eax, 0xe2
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043457c:
    mov eax, dword ptr [esp + 4]
    cmp byte ptr [eax], 0x12
    jne loc_0043463b
loc_00434589:
    test ecx, ecx
    jl loc_004345ab
    cmp ebx, esi
    je loc_004345a8
    lea eax, [esp + 0xc]
    test eax, eax
    je loc_004345a4
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0xc], eax
loc_004345a4:
    inc ebx
    and ebx, 0x3f
loc_004345a8:
    dec ecx
    jmp loc_00434589
loc_004345ab:
    test edi, edi
    je loc_004345f5
    test edx, edx
    je loc_004345d4
    mov eax, 0xcb
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004345d4:
    mov eax, 0xeb
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004345f5:
    test edx, edx
    je loc_0043461a
    mov eax, 0xca
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043461a:
    mov eax, 0xea
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043463b:
    cmp byte ptr [eax], 0x17
    jne loc_004346f6
loc_00434644:
    test ecx, ecx
    jl loc_00434666
    cmp ebx, esi
    je loc_00434663
    lea eax, [esp + 0x10]
    test eax, eax
    je loc_0043465f
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x10], eax
loc_0043465f:
    inc ebx
    and ebx, 0x3f
loc_00434663:
    dec ecx
    jmp loc_00434644
loc_00434666:
    test edi, edi
    je loc_004346b0
    test edx, edx
    je loc_0043468f
    mov eax, 0xcf
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043468f:
    mov eax, 0xef
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004346b0:
    test edx, edx
    je loc_004346d5
    mov eax, 0xce
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004346d5:
    mov eax, 0xee
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004346f6:
    cmp byte ptr [eax], 0x18
    jne loc_004347b1
loc_004346ff:
    test ecx, ecx
    jl loc_00434721
    cmp ebx, esi
    je loc_0043471e
    lea eax, [esp + 0x14]
    test eax, eax
    je loc_0043471a
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x14], eax
loc_0043471a:
    inc ebx
    and ebx, 0x3f
loc_0043471e:
    dec ecx
    jmp loc_004346ff
loc_00434721:
    test edi, edi
    je loc_0043476b
    test edx, edx
    je loc_0043474a
    mov eax, 0xd6
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043474a:
    mov eax, 0xf6
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043476b:
    test edx, edx
    je loc_00434790
    mov eax, 0xd4
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434790:
    mov eax, 0xf4
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004347b1:
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    cmp byte ptr [eax], 0x16
    jne loc_0043488d
loc_004347c6:
    test ecx, ecx
    jl loc_004347e8
    cmp ebx, esi
    je loc_004347e5
    lea eax, [esp + 0x18]
    test eax, eax
    je loc_004347e1
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x18], eax
loc_004347e1:
    inc ebx
    and ebx, 0x3f
loc_004347e5:
    dec ecx
    jmp loc_004347c6
loc_004347e8:
    test edi, edi
    je loc_00434832
    test edx, edx
    je loc_00434811
    mov eax, 0xdc
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434811:
    mov eax, 0xfc
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434832:
    test edx, edx
    je loc_00434857
    mov eax, 0xdb
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434857:
    mov eax, 0xfb
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434878:
    mov eax, 0xffffffff
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043488d:
    call sub_00435d1c
loc_00434892:
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_004348a4:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x1c
    mov ebx, dword ptr [d_0045c3b8]
    mov edx, esp
    xor eax, eax
    call sub_0043a398
    test eax, eax
    jne loc_00434e93
    mov eax, dword ptr [esp]
    mov ebx, dword ptr [d_0045c3b8]
    mov dl, byte ptr [eax + 2]
    xor esi, esi
    test dl, 1
    je loc_004348df
    mov dh, dl
    or dh, 8
    mov byte ptr [eax + 2], dh
loc_004348df:
    mov eax, dword ptr [esp]
    mov cl, byte ptr [eax]
    cmp cl, 0xd
    jne loc_004348fd
    test byte ptr [eax + 2], 0x18
    je loc_004348f6
    mov esi, 1
    jmp loc_0043490d
loc_004348f6:
    mov esi, 2
    jmp loc_0043490d
loc_004348fd:
    cmp cl, 0x29
    jne loc_0043490d
    test byte ptr [eax + 2], 0x18
    jne loc_0043490d
    mov esi, 3
loc_0043490d:
    mov dword ptr [d_0045c3b8], ebx
    test esi, esi
    je loc_00434e93
    mov ecx, 1
    lea edx, [esp + 4]
    mov eax, ecx
    call sub_0043a398
    test eax, eax
    jne loc_00434e7e
    mov ebx, dword ptr [d_0045c3b8]
loc_00434939:
    mov eax, dword ptr [esp + 4]
    mov dl, byte ptr [eax]
    mov dword ptr [d_0045c3b8], ebx
    cmp dl, 0x2a
    je loc_0043494f
    cmp dl, 0x36
    jne loc_0043496c
loc_0043494f:
    lea edx, [esp + 4]
    mov eax, ecx
    call sub_0043a398
    cmp eax, -1
    je loc_00434e98
    mov ebx, dword ptr [d_0045c3b8]
    inc ecx
    jmp loc_00434939
loc_0043496c:
    cmp ecx, 1
    jne loc_00434975
    and byte ptr [eax + 2], 0xe7
loc_00434975:
    mov eax, dword ptr [esp + 4]
    mov ax, word ptr [eax + 2]
    xor ah, ah
    xor edx, edx
    and al, 0x18
    mov edi, dword ptr [d_004a2ca4]
    mov dx, ax
    test edi, edi
    je loc_004349a4
    cmp edi, 1
    jne loc_0043499c
    mov eax, 0x10
    jmp loc_004349a9
loc_0043499c:
    cmp edi, 4
    je loc_004349a4
    cmp edi, 3
loc_004349a4:
    mov eax, 0x1e
loc_004349a9:
    mov edi, dword ptr [esp + 4]
    movzx edi, byte ptr [edi]
    cmp eax, edi
    jne loc_00434a70
    mov ebp, dword ptr [d_0045c3b4]
loc_004349be:
    test ecx, ecx
    jl loc_004349e0
    cmp ebx, ebp
    je loc_004349dd
    lea eax, [esp + 8]
    test eax, eax
    je loc_004349d9
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 8], eax
loc_004349d9:
    inc ebx
    and ebx, 0x3f
loc_004349dd:
    dec ecx
    jmp loc_004349be
loc_004349e0:
    cmp esi, 2
    jb loc_004349f7
    jbe loc_00434a1e
    mov dword ptr [d_0045c3b8], ebx
    cmp esi, 3
    je loc_00434a42
    jmp loc_00434e7e
loc_004349f7:
    mov dword ptr [d_0045c3b8], ebx
    cmp esi, 1
    jne loc_00434e7e
    test edx, edx
    je loc_00434a14
    mov eax, 0xc0
    jmp loc_00434e98
loc_00434a14:
    mov eax, 0xe0
    jmp loc_00434e98
loc_00434a1e:
    test edx, edx
    je loc_00434a32
    mov eax, 0xc1
    mov dword ptr [d_0045c3b8], ebx
    jmp loc_00434e98
loc_00434a32:
    mov eax, 0xe1
    mov dword ptr [d_0045c3b8], ebx
    jmp loc_00434e98
loc_00434a42:
    test edx, edx
    je loc_00434a5b
    mov eax, 0xc2
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434a5b:
    mov eax, 0xe2
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434a70:
    mov eax, dword ptr [esp + 4]
    cmp byte ptr [eax], 0x12
    jne loc_00434b75
    mov ebp, dword ptr [d_0045c3b4]
loc_00434a83:
    test ecx, ecx
    jl loc_00434aa5
    cmp ebx, ebp
    je loc_00434aa2
    lea eax, [esp + 0xc]
    test eax, eax
    je loc_00434a9e
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0xc], eax
loc_00434a9e:
    inc ebx
    and ebx, 0x3f
loc_00434aa2:
    dec ecx
    jmp loc_00434a83
loc_00434aa5:
    cmp esi, 2
    jb loc_00434ad0
    jbe loc_00434b0d
    mov dword ptr [d_0045c3b8], ebx
    cmp esi, 3
    je loc_00434b47
    mov eax, 0xffffffff
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434ad0:
    mov dword ptr [d_0045c3b8], ebx
    cmp esi, 1
    jne loc_00434e7e
    test edx, edx
    je loc_00434af8
    mov eax, 0xc8
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434af8:
    mov eax, 0xe8
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434b0d:
    test edx, edx
    je loc_00434b2c
    mov eax, 0xc9
    mov dword ptr [d_0045c3b8], ebx
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434b2c:
    mov eax, 0xe9
    mov dword ptr [d_0045c3b8], ebx
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434b47:
    test edx, edx
    je loc_00434b60
    mov eax, 0xca
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434b60:
    mov eax, 0xea
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434b75:
    cmp byte ptr [eax], 0x17
    jne loc_00434c76
    mov ebp, dword ptr [d_0045c3b4]
loc_00434b84:
    test ecx, ecx
    jl loc_00434ba6
    cmp ebx, ebp
    je loc_00434ba3
    lea eax, [esp + 0x10]
    test eax, eax
    je loc_00434b9f
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x10], eax
loc_00434b9f:
    inc ebx
    and ebx, 0x3f
loc_00434ba3:
    dec ecx
    jmp loc_00434b84
loc_00434ba6:
    cmp esi, 2
    jb loc_00434bd1
    jbe loc_00434c0e
    mov dword ptr [d_0045c3b8], ebx
    cmp esi, 3
    je loc_00434c48
    mov eax, 0xffffffff
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434bd1:
    mov dword ptr [d_0045c3b8], ebx
    cmp esi, 1
    jne loc_00434e7e
    test edx, edx
    je loc_00434bf9
    mov eax, 0xcc
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434bf9:
    mov eax, 0xec
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434c0e:
    test edx, edx
    je loc_00434c2d
    mov eax, 0xcd
    mov dword ptr [d_0045c3b8], ebx
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434c2d:
    mov eax, 0xed
    mov dword ptr [d_0045c3b8], ebx
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434c48:
    test edx, edx
    je loc_00434c61
    mov eax, 0xce
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434c61:
    mov eax, 0xee
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434c76:
    cmp byte ptr [eax], 0x18
    jne loc_00434d77
    mov ebp, dword ptr [d_0045c3b4]
loc_00434c85:
    test ecx, ecx
    jl loc_00434ca7
    cmp ebx, ebp
    je loc_00434ca4
    lea eax, [esp + 0x14]
    test eax, eax
    je loc_00434ca0
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x14], eax
loc_00434ca0:
    inc ebx
    and ebx, 0x3f
loc_00434ca4:
    dec ecx
    jmp loc_00434c85
loc_00434ca7:
    cmp esi, 2
    jb loc_00434cd2
    jbe loc_00434d0f
    mov dword ptr [d_0045c3b8], ebx
    cmp esi, 3
    je loc_00434d49
    mov eax, 0xffffffff
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434cd2:
    mov dword ptr [d_0045c3b8], ebx
    cmp esi, 1
    jne loc_00434e7e
    test edx, edx
    je loc_00434cfa
    mov eax, 0xd2
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434cfa:
    mov eax, 0xf2
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434d0f:
    test edx, edx
    je loc_00434d2e
    mov eax, 0xd3
    mov dword ptr [d_0045c3b8], ebx
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434d2e:
    mov eax, 0xf3
    mov dword ptr [d_0045c3b8], ebx
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434d49:
    test edx, edx
    je loc_00434d62
    mov eax, 0xd4
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434d62:
    mov eax, 0xf4
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434d77:
    mov dword ptr [d_0045c3b8], ebx
    cmp byte ptr [eax], 0x16
    jne loc_00434e93
    mov ebp, dword ptr [d_0045c3b4]
loc_00434d8c:
    test ecx, ecx
    jl loc_00434dae
    cmp ebx, ebp
    je loc_00434dab
    lea eax, [esp + 0x18]
    test eax, eax
    je loc_00434da7
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x18], eax
loc_00434da7:
    inc ebx
    and ebx, 0x3f
loc_00434dab:
    dec ecx
    jmp loc_00434d8c
loc_00434dae:
    cmp esi, 2
    jb loc_00434dd9
    jbe loc_00434e16
    mov dword ptr [d_0045c3b8], ebx
    cmp esi, 3
    je loc_00434e50
    mov eax, 0xffffffff
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434dd9:
    mov dword ptr [d_0045c3b8], ebx
    cmp esi, 1
    jne loc_00434e7e
    test edx, edx
    je loc_00434e01
    mov eax, 0xd9
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434e01:
    mov eax, 0xf9
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434e16:
    test edx, edx
    je loc_00434e35
    mov eax, 0xda
    mov dword ptr [d_0045c3b8], ebx
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434e35:
    mov eax, 0xfa
    mov dword ptr [d_0045c3b8], ebx
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434e50:
    test edx, edx
    je loc_00434e69
    mov eax, 0xdb
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434e69:
    mov eax, 0xfb
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434e7e:
    mov eax, 0xffffffff
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00434e93:
    call sub_00435d1c
loc_00434e98:
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00434ea8:
    push ebx
    push ecx
    push edx
    sub esp, 4
    mov ebx, dword ptr [d_004a2ca4]
    mov edx, esp
    xor eax, eax
    call sub_0043a398
    test eax, eax
    jne loc_0043513d
    mov eax, dword ptr [esp]
    test byte ptr [eax + 2], 1
    je loc_0043512b
    mov ebx, dword ptr [d_004a2ca4]
    test ebx, ebx
    je loc_00434ef0
    cmp ebx, 1
    jne loc_00434ee8
    mov eax, 0x10
    jmp loc_00434ef5
loc_00434ee8:
    cmp ebx, 4
    je loc_00434ef0
    cmp ebx, 3
loc_00434ef0:
    mov eax, 0x1e
loc_00434ef5:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    je loc_00435108
    mov eax, dword ptr [esp]
    mov dh, byte ptr [eax]
    cmp dh, 0x30
    je loc_00435108
    cmp dh, 0x2e
    je loc_00435108
    cmp dh, 0x20
    je loc_00435108
    cmp dh, 0x12
    je loc_00435108
    cmp dh, 0x21
    je loc_00435108
    cmp dh, 0x22
    je loc_00435108
    cmp dh, 0x23
    je loc_00435108
    cmp dh, 0x17
    je loc_00435108
    cmp dh, 0x24
    je loc_00435108
    cmp dh, 0x25
    je loc_00435108
    cmp dh, 0x26
    je loc_00435108
    test ebx, ebx
    je loc_00434f8e
    cmp ebx, 1
    jne loc_00434f86
    mov eax, 0x27
    jmp loc_00434f93
loc_00434f86:
    cmp ebx, 4
    je loc_00434f8e
    cmp ebx, 3
loc_00434f8e:
    mov eax, 0x32
loc_00434f93:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    je loc_00435108
    mov eax, dword ptr [esp]
    mov dl, byte ptr [eax]
    cmp dl, 0x31
    je loc_00435108
    cmp dl, 0x18
    je loc_00435108
    cmp dl, 0x19
    je loc_00435108
    test ebx, ebx
    je loc_00434fe4
    cmp ebx, 1
    jne loc_00434fdc
    mov eax, 0x1e
    jmp loc_00434fe9
loc_00434fdc:
    cmp ebx, 4
    je loc_00434fe4
    cmp ebx, 3
loc_00434fe4:
    mov eax, 0x10
loc_00434fe9:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    je loc_00435108
    mov eax, dword ptr [esp]
    mov ch, byte ptr [eax]
    cmp ch, 0x13
    je loc_00435108
    cmp ch, 0x1f
    je loc_00435108
    cmp ch, 0x14
    je loc_00435108
    cmp ch, 0x16
    je loc_00435108
    cmp ch, 0x2f
    je loc_00435108
    test ebx, ebx
    je loc_0043504c
    cmp ebx, 1
    jne loc_00435044
    mov eax, 0x2c
    jmp loc_00435051
loc_00435044:
    cmp ebx, 4
    je loc_0043504c
    cmp ebx, 3
loc_0043504c:
    mov eax, 0x11
loc_00435051:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    je loc_00435108
    mov eax, dword ptr [esp]
    cmp byte ptr [eax], 0x2d
    je loc_00435108
    test ebx, ebx
    jne loc_00435081
    mov eax, 0x15
    jmp loc_004350aa
loc_00435081:
    cmp ebx, 1
    jne loc_0043508d
    mov eax, 0x15
    jmp loc_004350aa
loc_0043508d:
    cmp ebx, 4
    jne loc_00435099
    mov eax, 0x15
    jmp loc_004350aa
loc_00435099:
    cmp ebx, 3
    jne loc_004350a5
    mov eax, 0x15
    jmp loc_004350aa
loc_004350a5:
    mov eax, 0x2c
loc_004350aa:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    je loc_00435108
    test ebx, ebx
    jne loc_004350ca
    mov eax, 0x2c
    jmp loc_004350f3
loc_004350ca:
    cmp ebx, 1
    jne loc_004350d6
    mov eax, 0x11
    jmp loc_004350f3
loc_004350d6:
    cmp ebx, 4
    jne loc_004350e2
    mov eax, 0x2c
    jmp loc_004350f3
loc_004350e2:
    cmp ebx, 3
    jne loc_004350ee
    mov eax, 0x2c
    jmp loc_004350f3
loc_004350ee:
    mov eax, 0x15
loc_004350f3:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dword ptr [d_004a2ca4], ebx
    cmp edx, eax
    jne loc_0043512b
loc_00435108:
    mov eax, dword ptr [esp]
    mov dh, byte ptr [eax + 2]
    mov ebx, dword ptr [d_004a2ca4]
    test dh, 0x18
    jne loc_00435123
    mov ch, dh
    or ch, 8
    mov byte ptr [eax + 2], ch
    jmp loc_0043512b
loc_00435123:
    mov cl, dh
    and cl, 0xe7
    mov byte ptr [eax + 2], cl
loc_0043512b:
    call sub_00435d1c
    mov ebx, dword ptr [d_004a2ca4]
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043513d:
    mov eax, 0xffffffff
    mov ebx, dword ptr [d_004a2ca4]
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
ptr_00435150:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x3c
    mov ebx, dword ptr [d_0045c3b8]
    mov esi, dword ptr [d_0045c3b4]
    mov edx, esp
    xor eax, eax
    call sub_0043a398
    test eax, eax
    jne loc_00435d04
    mov eax, dword ptr [esp]
    mov esi, dword ptr [d_0045c3b4]
    mov dl, byte ptr [eax + 2]
    mov ebx, dword ptr [d_0045c3b8]
    test dl, 1
    je loc_004353e5
    mov dh, dl
    or dh, 8
    mov byte ptr [eax + 2], dh
    mov edx, dword ptr [d_004a2ca4]
    test edx, edx
    je loc_004351b7
    cmp edx, 1
    jne loc_004351af
    mov eax, 0x10
    jmp loc_004351bc
loc_004351af:
    cmp edx, 4
    je loc_004351b7
    cmp edx, 3
loc_004351b7:
    mov eax, 0x1e
loc_004351bc:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    cmp edx, eax
    je loc_004353c8
    mov eax, dword ptr [esp]
    mov cl, byte ptr [eax]
    cmp cl, 0x30
    je loc_004353c8
    cmp cl, 0x2e
    je loc_004353c8
    cmp cl, 0x20
    je loc_004353c8
    cmp cl, 0x12
    je loc_004353c8
    cmp cl, 0x21
    je loc_004353c8
    cmp cl, 0x22
    je loc_004353c8
    cmp cl, 0x23
    je loc_004353c8
    cmp cl, 0x17
    je loc_004353c8
    cmp cl, 0x24
    je loc_004353c8
    cmp cl, 0x25
    je loc_004353c8
    cmp cl, 0x26
    je loc_004353c8
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    je loc_00435254
    cmp eax, 1
    jne loc_0043524c
    mov eax, 0x27
    jmp loc_00435259
loc_0043524c:
    cmp eax, 4
    je loc_00435254
    cmp eax, 3
loc_00435254:
    mov eax, 0x32
loc_00435259:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    cmp edx, eax
    je loc_004353c8
    mov eax, dword ptr [esp]
    mov dh, byte ptr [eax]
    cmp dh, 0x31
    je loc_004353c8
    cmp dh, 0x18
    je loc_004353c8
    cmp dh, 0x19
    je loc_004353c8
    mov ebp, dword ptr [d_004a2ca4]
    test ebp, ebp
    je loc_004352aa
    cmp ebp, 1
    jne loc_004352a2
    mov eax, 0x1e
    jmp loc_004352af
loc_004352a2:
    cmp ebp, 4
    je loc_004352aa
    cmp ebp, 3
loc_004352aa:
    mov eax, 0x10
loc_004352af:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    cmp edx, eax
    je loc_004353c8
    mov eax, dword ptr [esp]
    mov dl, byte ptr [eax]
    cmp dl, 0x13
    je loc_004353c8
    cmp dl, 0x1f
    je loc_004353c8
    cmp dl, 0x14
    je loc_004353c8
    cmp dl, 0x16
    je loc_004353c8
    cmp dl, 0x2f
    je loc_004353c8
    mov edi, dword ptr [d_004a2ca4]
    test edi, edi
    je loc_00435312
    cmp edi, 1
    jne loc_0043530a
    mov eax, 0x2c
    jmp loc_00435317
loc_0043530a:
    cmp edi, 4
    je loc_00435312
    cmp edi, 3
loc_00435312:
    mov eax, 0x11
loc_00435317:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    cmp edx, eax
    je loc_004353c8
    mov eax, dword ptr [esp]
    cmp byte ptr [eax], 0x2d
    je loc_004353c8
    mov ecx, dword ptr [d_004a2ca4]
    test ecx, ecx
    jne loc_00435347
    mov eax, 0x15
    jmp loc_00435370
loc_00435347:
    cmp ecx, 1
    jne loc_00435353
    mov eax, 0x15
    jmp loc_00435370
loc_00435353:
    cmp ecx, 4
    jne loc_0043535f
    mov eax, 0x15
    jmp loc_00435370
loc_0043535f:
    cmp ecx, 3
    jne loc_0043536b
    mov eax, 0x15
    jmp loc_00435370
loc_0043536b:
    mov eax, 0x2c
loc_00435370:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    cmp edx, eax
    je loc_004353c8
    mov edx, dword ptr [d_004a2ca4]
    test edx, edx
    jne loc_00435390
    mov eax, 0x2c
    jmp loc_004353b9
loc_00435390:
    cmp edx, 1
    jne loc_0043539c
    mov eax, 0x11
    jmp loc_004353b9
loc_0043539c:
    cmp edx, 4
    jne loc_004353a8
    mov eax, 0x2c
    jmp loc_004353b9
loc_004353a8:
    cmp edx, 3
    jne loc_004353b4
    mov eax, 0x2c
    jmp loc_004353b9
loc_004353b4:
    mov eax, 0x15
loc_004353b9:
    mov edx, dword ptr [esp]
    mov dl, byte ptr [edx]
    and edx, 0xff
    cmp edx, eax
    jne loc_004353e5
loc_004353c8:
    mov eax, dword ptr [esp]
    mov cl, byte ptr [eax + 2]
    test cl, 0x18
    jne loc_004353dd
    mov dl, cl
    or dl, 8
    mov byte ptr [eax + 2], dl
    jmp loc_004353e5
loc_004353dd:
    mov ch, cl
    and ch, 0xe7
    mov byte ptr [eax + 2], ch
loc_004353e5:
    mov eax, dword ptr [esp]
    mov dword ptr [d_0045c3b8], ebx
    mov dh, byte ptr [eax]
    mov dword ptr [d_0045c3b4], esi
    cmp dh, 0x1a
    jne loc_0043587d
    mov ecx, 1
    lea edx, [esp + 4]
    mov eax, ecx
    call sub_0043a398
    test eax, eax
    jne loc_00435868
    mov esi, dword ptr [d_0045c3b4]
    mov ebx, dword ptr [d_0045c3b8]
loc_00435423:
    mov eax, dword ptr [esp + 4]
    mov dword ptr [d_0045c3b8], ebx
    mov dh, byte ptr [eax]
    mov dword ptr [d_0045c3b4], esi
    cmp dh, 0x2a
    je loc_0043543f
    cmp dh, 0x36
    jne loc_00435462
loc_0043543f:
    lea edx, [esp + 4]
    mov eax, ecx
    call sub_0043a398
    cmp eax, -1
    je loc_00435d09
    mov esi, dword ptr [d_0045c3b4]
    mov ebx, dword ptr [d_0045c3b8]
    inc ecx
    jmp loc_00435423
loc_00435462:
    cmp ecx, 1
    jne loc_0043546b
    and byte ptr [eax + 2], 0xe7
loc_0043546b:
    mov eax, dword ptr [esp + 4]
    mov ax, word ptr [eax + 2]
    xor ah, ah
    xor edx, edx
    and al, 0x18
    mov dx, ax
    mov eax, dword ptr [esp]
    test byte ptr [eax + 2], 0x18
    sete al
    movzx edi, al
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_0043549c
    mov dword ptr [esp + 0x38], 0x1e
    jmp loc_004354b9
loc_0043549c:
    cmp eax, 1
    jne loc_004354a8
    mov eax, 0x10
    jmp loc_004354b5
loc_004354a8:
    cmp eax, 4
    je loc_004354b0
    cmp eax, 3
loc_004354b0:
    mov eax, 0x1e
loc_004354b5:
    mov dword ptr [esp + 0x38], eax
loc_004354b9:
    mov eax, dword ptr [esp + 4]
    mov al, byte ptr [eax]
    mov ebp, dword ptr [esp + 0x38]
    and eax, 0xff
    cmp eax, ebp
    jne loc_0043556c
loc_004354d0:
    test ecx, ecx
    jl loc_004354f2
    cmp ebx, esi
    je loc_004354ef
    lea eax, [esp + 8]
    test eax, eax
    je loc_004354eb
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 8], eax
loc_004354eb:
    inc ebx
    and ebx, 0x3f
loc_004354ef:
    dec ecx
    jmp loc_004354d0
loc_004354f2:
    test edi, edi
    je loc_00435526
    test edx, edx
    je loc_00435510
    mov eax, 0xc0
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    jmp loc_00435d09
loc_00435510:
    mov eax, 0xe0
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    jmp loc_00435d09
loc_00435526:
    test edx, edx
    je loc_0043554b
    mov eax, 0xc2
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043554b:
    mov eax, 0xe2
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043556c:
    mov eax, dword ptr [esp + 4]
    cmp byte ptr [eax], 0x12
    jne loc_0043562b
loc_00435579:
    test ecx, ecx
    jl loc_0043559b
    cmp ebx, esi
    je loc_00435598
    lea eax, [esp + 0xc]
    test eax, eax
    je loc_00435594
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0xc], eax
loc_00435594:
    inc ebx
    and ebx, 0x3f
loc_00435598:
    dec ecx
    jmp loc_00435579
loc_0043559b:
    test edi, edi
    je loc_004355e5
    test edx, edx
    je loc_004355c4
    mov eax, 0xc8
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004355c4:
    mov eax, 0xe8
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004355e5:
    test edx, edx
    je loc_0043560a
    mov eax, 0xca
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043560a:
    mov eax, 0xea
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043562b:
    cmp byte ptr [eax], 0x17
    jne loc_004356e6
loc_00435634:
    test ecx, ecx
    jl loc_00435656
    cmp ebx, esi
    je loc_00435653
    lea eax, [esp + 0x10]
    test eax, eax
    je loc_0043564f
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x10], eax
loc_0043564f:
    inc ebx
    and ebx, 0x3f
loc_00435653:
    dec ecx
    jmp loc_00435634
loc_00435656:
    test edi, edi
    je loc_004356a0
    test edx, edx
    je loc_0043567f
    mov eax, 0xcc
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043567f:
    mov eax, 0xec
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004356a0:
    test edx, edx
    je loc_004356c5
    mov eax, 0xce
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004356c5:
    mov eax, 0xee
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004356e6:
    cmp byte ptr [eax], 0x18
    jne loc_004357a1
loc_004356ef:
    test ecx, ecx
    jl loc_00435711
    cmp ebx, esi
    je loc_0043570e
    lea eax, [esp + 0x14]
    test eax, eax
    je loc_0043570a
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x14], eax
loc_0043570a:
    inc ebx
    and ebx, 0x3f
loc_0043570e:
    dec ecx
    jmp loc_004356ef
loc_00435711:
    test edi, edi
    je loc_0043575b
    test edx, edx
    je loc_0043573a
    mov eax, 0xd2
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043573a:
    mov eax, 0xf2
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043575b:
    test edx, edx
    je loc_00435780
    mov eax, 0xd4
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435780:
    mov eax, 0xf4
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004357a1:
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    cmp byte ptr [eax], 0x16
    jne loc_00435d04
loc_004357b6:
    test ecx, ecx
    jl loc_004357d8
    cmp ebx, esi
    je loc_004357d5
    lea eax, [esp + 0x18]
    test eax, eax
    je loc_004357d1
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x18], eax
loc_004357d1:
    inc ebx
    and ebx, 0x3f
loc_004357d5:
    dec ecx
    jmp loc_004357b6
loc_004357d8:
    test edi, edi
    je loc_00435822
    test edx, edx
    je loc_00435801
    mov eax, 0xd9
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435801:
    mov eax, 0xf9
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435822:
    test edx, edx
    je loc_00435847
    mov eax, 0xdb
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435847:
    mov eax, 0xfb
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435868:
    mov eax, 0xffffffff
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043587d:
    cmp dh, 0x28
    jne loc_00435d04
    mov ecx, 1
    lea edx, [esp + 0x1c]
    mov eax, ecx
    call sub_0043a398
    test eax, eax
    jne loc_00435868
    mov esi, dword ptr [d_0045c3b4]
    mov ebx, dword ptr [d_0045c3b8]
loc_004358a6:
    mov eax, dword ptr [esp + 0x1c]
    mov dword ptr [d_0045c3b8], ebx
    mov dl, byte ptr [eax]
    mov dword ptr [d_0045c3b4], esi
    cmp dl, 0x2a
    je loc_004358c2
    cmp dl, 0x36
    jne loc_004358e5
loc_004358c2:
    lea edx, [esp + 0x1c]
    mov eax, ecx
    call sub_0043a398
    cmp eax, -1
    je loc_00435d09
    mov esi, dword ptr [d_0045c3b4]
    mov ebx, dword ptr [d_0045c3b8]
    inc ecx
    jmp loc_004358a6
loc_004358e5:
    cmp ecx, 1
    jne loc_004358ee
    and byte ptr [eax + 2], 0xe7
loc_004358ee:
    mov eax, dword ptr [esp + 0x1c]
    mov ax, word ptr [eax + 2]
    xor ah, ah
    xor edx, edx
    and al, 0x18
    mov dx, ax
    mov eax, dword ptr [esp]
    mov ax, word ptr [eax + 2]
    xor ah, ah
    xor edi, edi
    and al, 0x18
    mov di, ax
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_00435922
    mov dword ptr [esp + 0x34], 0x1e
    jmp loc_0043593f
loc_00435922:
    cmp eax, 1
    jne loc_0043592e
    mov eax, 0x10
    jmp loc_0043593b
loc_0043592e:
    cmp eax, 4
    je loc_00435936
    cmp eax, 3
loc_00435936:
    mov eax, 0x1e
loc_0043593b:
    mov dword ptr [esp + 0x34], eax
loc_0043593f:
    mov eax, dword ptr [esp + 0x1c]
    mov al, byte ptr [eax]
    and eax, 0xff
    mov ebp, dword ptr [esp + 0x34]
    cmp eax, ebp
    jne loc_00435a08
loc_00435956:
    test ecx, ecx
    jl loc_00435978
    cmp ebx, esi
    je loc_00435975
    lea eax, [esp + 0x20]
    test eax, eax
    je loc_00435971
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x20], eax
loc_00435971:
    inc ebx
    and ebx, 0x3f
loc_00435975:
    dec ecx
    jmp loc_00435956
loc_00435978:
    test edi, edi
    je loc_004359c2
    test edx, edx
    je loc_004359a1
    mov eax, 0xc4
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004359a1:
    mov eax, 0xe4
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004359c2:
    test edx, edx
    je loc_004359e7
    mov eax, 0xc1
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004359e7:
    mov eax, 0xe1
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435a08:
    mov eax, dword ptr [esp + 0x1c]
    cmp byte ptr [eax], 0x12
    jne loc_00435ac7
loc_00435a15:
    test ecx, ecx
    jl loc_00435a37
    cmp ebx, esi
    je loc_00435a34
    lea eax, [esp + 0x24]
    test eax, eax
    je loc_00435a30
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x24], eax
loc_00435a30:
    inc ebx
    and ebx, 0x3f
loc_00435a34:
    dec ecx
    jmp loc_00435a15
loc_00435a37:
    test edi, edi
    je loc_00435a81
    test edx, edx
    je loc_00435a60
    mov eax, 0xcb
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435a60:
    mov eax, 0xeb
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435a81:
    test edx, edx
    je loc_00435aa6
    mov eax, 0xc9
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435aa6:
    mov eax, 0xe9
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435ac7:
    cmp byte ptr [eax], 0x17
    jne loc_00435b82
loc_00435ad0:
    test ecx, ecx
    jl loc_00435af2
    cmp ebx, esi
    je loc_00435aef
    lea eax, [esp + 0x28]
    test eax, eax
    je loc_00435aeb
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x28], eax
loc_00435aeb:
    inc ebx
    and ebx, 0x3f
loc_00435aef:
    dec ecx
    jmp loc_00435ad0
loc_00435af2:
    test edi, edi
    je loc_00435b3c
    test edx, edx
    je loc_00435b1b
    mov eax, 0xcf
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435b1b:
    mov eax, 0xef
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435b3c:
    test edx, edx
    je loc_00435b61
    mov eax, 0xcd
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435b61:
    mov eax, 0xed
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435b82:
    cmp byte ptr [eax], 0x18
    jne loc_00435c3d
loc_00435b8b:
    test ecx, ecx
    jl loc_00435bad
    cmp ebx, esi
    je loc_00435baa
    lea eax, [esp + 0x2c]
    test eax, eax
    je loc_00435ba6
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x2c], eax
loc_00435ba6:
    inc ebx
    and ebx, 0x3f
loc_00435baa:
    dec ecx
    jmp loc_00435b8b
loc_00435bad:
    test edi, edi
    je loc_00435bf7
    test edx, edx
    je loc_00435bd6
    mov eax, 0xd6
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435bd6:
    mov eax, 0xf6
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435bf7:
    test edx, edx
    je loc_00435c1c
    mov eax, 0xd3
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435c1c:
    mov eax, 0xf3
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435c3d:
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    cmp byte ptr [eax], 0x16
    jne loc_00435d04
loc_00435c52:
    test ecx, ecx
    jl loc_00435c74
    cmp ebx, esi
    je loc_00435c71
    lea eax, [esp + 0x30]
    test eax, eax
    je loc_00435c6d
    mov eax, dword ptr [ebx*4 + d_004a1ea0]
    mov dword ptr [esp + 0x30], eax
loc_00435c6d:
    inc ebx
    and ebx, 0x3f
loc_00435c71:
    dec ecx
    jmp loc_00435c52
loc_00435c74:
    test edi, edi
    je loc_00435cbe
    test edx, edx
    je loc_00435c9d
    mov eax, 0xdc
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435c9d:
    mov eax, 0xfc
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435cbe:
    test edx, edx
    je loc_00435ce3
    mov eax, 0xda
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435ce3:
    mov eax, 0xfa
    mov dword ptr [d_0045c3b8], ebx
    mov dword ptr [d_0045c3b4], esi
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435d04:
    call sub_00435d1c
loc_00435d09:
    mov ebx, dword ptr [d_0045c3b8]
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_00435d1c:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 4
    mov ecx, dword ptr [d_0045c3b8]
    mov edx, esp
    xor eax, eax
    mov ebx, 0xffffffff
    call sub_0043a398
    test eax, eax
    jne loc_00435eb1
    mov eax, dword ptr [esp]
    mov dl, byte ptr [eax]
    mov ecx, dword ptr [d_0045c3b8]
    cmp dl, 0xb5
    je loc_00435d63
    cmp dl, 0x37
    je loc_00435d63
    cmp dl, 0x4a
    je loc_00435d63
    cmp dl, 0x4e
    je loc_00435d63
    cmp dl, 0x9c
    jne loc_00435d82
loc_00435d63:
    cmp dword ptr [d_0045c3b0], 0
    je loc_00435d82
    cmp ecx, dword ptr [d_0045c3b4]
    je loc_00435d78
    inc ecx
    and ecx, 0x3f
loc_00435d78:
    mov eax, 0xffffffff
    jmp loc_00435eb9
loc_00435d82:
    mov eax, dword ptr [esp]
    mov dh, byte ptr [eax]
    cmp dh, 0x52
    je loc_00435dbe
    cmp dh, 0x4f
    je loc_00435dbe
    cmp dh, 0x50
    je loc_00435dbe
    cmp dh, 0x51
    je loc_00435dbe
    cmp dh, 0x4b
    je loc_00435dbe
    cmp dh, 0x4c
    je loc_00435dbe
    cmp dh, 0x4d
    je loc_00435dbe
    cmp dh, 0x47
    je loc_00435dbe
    cmp dh, 0x48
    je loc_00435dbe
    cmp dh, 0x49
    je loc_00435dbe
    cmp dh, 0x53
    jne loc_00435e0b
loc_00435dbe:
    cmp dword ptr [d_0045c3b0], 0
    je loc_00435de6
    cmp ecx, dword ptr [d_0045c3b4]
    je loc_00435dd3
    inc ecx
    and ecx, 0x3f
loc_00435dd3:
    mov eax, 0xffffffff
    mov dword ptr [d_0045c3b8], ecx
    add esp, 4
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00435de6:
    mov eax, dword ptr [esp]
    mov dl, byte ptr [eax + 2]
    test dl, 0x60
    jne loc_00435e0b
    test dl, 2
    je loc_00435e0b
    test dl, 0x18
    jne loc_00435e03
    or dl, 8
    mov byte ptr [eax + 2], dl
    jmp loc_00435e0b
loc_00435e03:
    mov bh, dl
    and bh, 0xe7
    mov byte ptr [eax + 2], bh
loc_00435e0b:
    mov eax, dword ptr [esp]
    test word ptr [eax + 2], 0x180
    je loc_00435e2c
    xor edx, edx
    mov dl, byte ptr [eax]
    lea eax, [edx*4]
    sub eax, edx
    mov ebx, dword ptr [eax*4 + d_004a1fa8]
    jmp loc_00435e94
loc_00435e2c:
    mov dh, byte ptr [eax + 2]
    test dh, 0x20
    je loc_00435e4a
    xor edx, edx
    mov dl, byte ptr [eax]
    lea eax, [edx*4]
    sub eax, edx
    mov ebx, dword ptr [eax*4 + d_004a1fa4]
    jmp loc_00435e94
loc_00435e4a:
    test dh, 0x40
    je loc_00435e65
    xor edx, edx
    mov dl, byte ptr [eax]
    lea eax, [edx*4]
    sub eax, edx
    mov ebx, dword ptr [eax*4 + d_004a1fa6]
    jmp loc_00435e94
loc_00435e65:
    test dh, 0x18
    je loc_00435e80
    xor ebx, ebx
    mov bl, byte ptr [eax]
    lea eax, [ebx*4]
    sub eax, ebx
    mov ebx, dword ptr [eax*4 + d_004a1fa2]
    jmp loc_00435e94
loc_00435e80:
    xor edx, edx
    mov dl, byte ptr [eax]
    lea eax, [edx*4]
    sub eax, edx
    mov ebx, dword ptr [eax*4 + d_004a1fa0]
loc_00435e94:
    sar ebx, 0x10
    mov esi, dword ptr [d_0045c3b4]
    mov dword ptr [d_0045c3b8], ecx
    cmp ecx, esi
    je loc_00435eb1
    inc ecx
    and ecx, 0x3f
    mov dword ptr [d_0045c3b8], ecx
loc_00435eb1:
    mov ecx, dword ptr [d_0045c3b8]
    mov eax, ebx
loc_00435eb9:
    mov dword ptr [d_0045c3b8], ecx
    add esp, 4
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00435ec8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebx, 0xc00
    mov edx, 0xffffffff
    mov eax, offset d_004a1fa0
    mov esi, 0x15e
    mov edi, 0x13c
    mov ecx, 0x15f
    call sub_00451940
    mov edx, 0x1b
    mov eax, 0x13b
    mov ebx, 0x168
    mov word ptr [d_004a226e], si
    mov word ptr [d_004a2272], di
    mov word ptr [d_004a227a], cx
    mov esi, 0x13d
    mov edi, 0x156
    mov ecx, 0x13e
    mov word ptr [d_004a1fae], dx
    mov word ptr [d_004a1fb0], dx
    mov word ptr [d_004a1fb2], dx
    mov word ptr [d_004a1fb4], dx
    mov word ptr [d_004a1fb6], dx
    mov word ptr [d_004a2266], ax
    mov word ptr [d_004a226a], bx
    mov word ptr [d_004a226c], bx
    mov edx, 0x154
    mov eax, 0x155
    mov ebx, 0x160
    mov word ptr [d_004a227e], si
    mov word ptr [d_004a2280], di
    mov word ptr [d_004a228a], cx
    mov esi, 0x157
    mov edi, 0x16b
    mov ecx, 0x158
    mov word ptr [d_004a2268], dx
    mov word ptr [d_004a2274], ax
    mov word ptr [d_004a2286], bx
    mov edx, 0x169
    mov eax, 0x16a
    mov ebx, 0x13f
    mov word ptr [d_004a228c], si
    mov word ptr [d_004a228e], di
    mov word ptr [d_004a2290], di
    mov word ptr [d_004a2298], cx
    mov esi, 0x16c
    mov ecx, 0x16d
    mov edi, 0x163
    mov word ptr [d_004a2276], dx
    mov word ptr [d_004a2278], dx
    mov word ptr [d_004a2282], ax
    mov word ptr [d_004a2284], ax
    mov word ptr [d_004a2296], bx
    mov edx, 0x161
    mov eax, 0x162
    mov ebx, 0x159
    mov word ptr [d_004a229a], si
    mov word ptr [d_004a229c], si
    mov word ptr [d_004a22a6], cx
    mov word ptr [d_004a22a8], cx
    mov word ptr [d_004a22aa], di
    mov esi, 0x164
    mov edi, 0x142
    mov ecx, 0x165
    mov word ptr [d_004a2292], dx
    mov word ptr [d_004a229e], ax
    mov word ptr [d_004a22a4], bx
    mov edx, 0x140
    mov eax, 0x141
    mov ebx, 0x16e
    mov word ptr [d_004a22b6], si
    mov word ptr [d_004a22ba], di
    mov word ptr [d_004a22c2], cx
    mov esi, 0x143
    mov edi, 0x15c
    mov ecx, 0x144
    mov word ptr [d_004a22a2], dx
    mov word ptr [d_004a22ae], ax
    mov word ptr [d_004a22b2], bx
    mov word ptr [d_004a22b4], bx
    mov edx, 0x15a
    mov eax, 0x15b
    mov ebx, 0x166
    mov word ptr [d_004a22c6], si
    mov word ptr [d_004a22c8], di
    mov word ptr [d_004a22d2], cx
    mov esi, 0x15d
    mov edi, 0x171
    mov ecx, 0x187
    mov word ptr [d_004a22b0], dx
    mov word ptr [d_004a22bc], ax
    mov word ptr [d_004a22ce], bx
    mov edx, 0x16f
    mov eax, 0x170
    mov ebx, 0x185
    mov word ptr [d_004a22d4], si
    mov word ptr [d_004a22d6], di
    mov word ptr [d_004a22d8], di
    mov word ptr [d_004a23b8], cx
    mov esi, 0x18b
    mov ecx, 0x18c
    mov edi, 0x18a
    mov word ptr [d_004a22be], dx
    mov word ptr [d_004a22c0], dx
    mov word ptr [d_004a22ca], ax
    mov word ptr [d_004a22cc], ax
    mov word ptr [d_004a23b6], bx
    mov edx, 0x167
    mov eax, 0x189
    mov ebx, 0x188
    mov word ptr [d_004a23ba], si
    mov word ptr [d_004a23bc], si
    mov word ptr [d_004a23c6], cx
    mov word ptr [d_004a23c8], cx
    mov word ptr [d_004a23ca], di
    mov word ptr [d_004a22da], dx
    mov edx, 0x186
    mov word ptr [d_004a23be], ax
    mov word ptr [d_004a23c2], dx
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [d_004a23c4], bx
    test edx, edx
    jne loc_004361a5
    mov edx, 0x29
    jmp loc_004361ca
loc_004361a5:
    cmp edx, 1
    jne loc_004361b1
    mov edx, 3
    jmp loc_004361ca
loc_004361b1:
    cmp edx, 4
    jne loc_004361ba
    xor eax, eax
    jmp loc_004361c8
loc_004361ba:
    cmp edx, 3
    jne loc_004361c3
    xor eax, eax
    jmp loc_004361c8
loc_004361c3:
    mov eax, 0x1b
loc_004361c8:
    mov edx, eax
loc_004361ca:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0x60
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], dx
    test edi, edi
    jne loc_004361f1
    mov edx, 0x29
    jmp loc_00436216
loc_004361f1:
    cmp edi, 1
    jne loc_004361fd
    mov edx, 3
    jmp loc_00436216
loc_004361fd:
    cmp edi, 4
    jne loc_00436206
    xor eax, eax
    jmp loc_00436214
loc_00436206:
    cmp edi, 3
    jne loc_0043620f
    xor eax, eax
    jmp loc_00436214
loc_0043620f:
    mov eax, 0x1b
loc_00436214:
    mov edx, eax
loc_00436216:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa4], 0x7e
    mov ebx, dword ptr [d_004a2ca4]
    test ebx, ebx
    jne loc_0043623a
    mov edx, 0x29
    jmp loc_0043625f
loc_0043623a:
    cmp ebx, 1
    jne loc_00436246
    mov eax, 3
    jmp loc_0043625d
loc_00436246:
    cmp ebx, 4
    jne loc_0043624f
    xor eax, eax
    jmp loc_0043625d
loc_0043624f:
    cmp ebx, 3
    jne loc_00436258
    xor eax, eax
    jmp loc_0043625d
loc_00436258:
    mov eax, 0x1b
loc_0043625d:
    mov edx, eax
loc_0043625f:
    lea eax, [edx*4]
    sub eax, edx
    mov ecx, 0xffffffff
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], cx
    test ebp, ebp
    jne loc_00436286
    mov eax, 0x29
    jmp loc_004362a9
loc_00436286:
    cmp ebp, 1
    jne loc_00436292
    mov eax, 3
    jmp loc_004362a9
loc_00436292:
    cmp ebp, 4
    jne loc_0043629b
    xor eax, eax
    jmp loc_004362a9
loc_0043629b:
    cmp ebp, 3
    jne loc_004362a4
    xor eax, eax
    jmp loc_004362a9
loc_004362a4:
    mov eax, 0x1b
loc_004362a9:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov esi, 0xffffffff
    mov ecx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], si
    test ecx, ecx
    jne loc_004362ce
    mov eax, 0x29
    jmp loc_004362f1
loc_004362ce:
    cmp ecx, 1
    jne loc_004362da
    mov eax, 3
    jmp loc_004362f1
loc_004362da:
    cmp ecx, 4
    jne loc_004362e3
    xor eax, eax
    jmp loc_004362f1
loc_004362e3:
    cmp ecx, 3
    jne loc_004362ec
    xor eax, eax
    jmp loc_004362f1
loc_004362ec:
    mov eax, 0x1b
loc_004362f1:
    mov edi, 0xffffffff
    mov esi, 0x33
    mov edx, eax
    shl eax, 2
    mov ecx, 0x34
    sub eax, edx
    mov ebx, edi
    mov edx, 0x21
    mov word ptr [eax*4 + d_004a1faa], di
    mov eax, 0x31
    mov word ptr [d_004a1fbc], dx
    mov word ptr [d_004a1fbe], di
    mov word ptr [d_004a1fc0], di
    mov word ptr [d_004a1fc2], di
    mov word ptr [d_004a1fca], bx
    mov word ptr [d_004a1fcc], bx
    mov word ptr [d_004a1fce], bx
    mov word ptr [d_004a1fd2], si
    mov word ptr [d_004a1fd6], bx
    mov word ptr [d_004a1fd8], bx
    mov word ptr [d_004a1fda], bx
    mov word ptr [d_004a1fde], cx
    mov word ptr [d_004a1fe2], bx
    mov word ptr [d_004a1fe4], bx
    mov word ptr [d_004a1fe6], bx
    mov edi, 0x32
    mov esi, 0x24
    mov ecx, 0x25
    mov word ptr [d_004a1fba], ax
    mov edx, ebx
    mov eax, 0x40
    mov ebx, 0x35
    mov word ptr [d_004a1fc6], di
    mov word ptr [d_004a1fe0], si
    mov word ptr [d_004a1fec], cx
    mov word ptr [d_004a1fee], dx
    mov word ptr [d_004a1ff0], dx
    mov word ptr [d_004a1ff2], dx
    mov edi, 0x23
    mov word ptr [d_004a1fc8], ax
    mov word ptr [d_004a1fea], bx
    mov esi, edx
    mov ebx, 0x5e
    mov word ptr [d_004a1fd4], di
    mov eax, edx
    mov word ptr [d_004a200a], si
    mov edx, 0x36
    mov edi, 0x38
    mov esi, 0x39
    mov word ptr [d_004a1ff8], bx
    mov ecx, eax
    mov word ptr [d_004a1ffa], ax
    mov word ptr [d_004a1ffc], ax
    mov word ptr [d_004a1ffe], ax
    mov eax, 0x37
    mov word ptr [d_004a1ff6], dx
    mov ebx, ecx
    mov word ptr [d_004a2008], cx
    mov word ptr [d_004a200e], di
    mov word ptr [d_004a2016], cx
    mov word ptr [d_004a201a], si
    mov edx, 0x26
    mov edi, 0x28
    mov ecx, 0x30
    mov esi, 0x29
    mov word ptr [d_004a2002], ax
    mov word ptr [d_004a2006], bx
    mov word ptr [d_004a2012], bx
    mov word ptr [d_004a2014], bx
    mov word ptr [d_004a201e], bx
    mov word ptr [d_004a2020], bx
    mov word ptr [d_004a2022], bx
    mov word ptr [d_004a202a], bx
    mov word ptr [d_004a202c], bx
    mov word ptr [d_004a202e], bx
    mov eax, 0x2a
    mov word ptr [d_004a2004], dx
    mov word ptr [d_004a201c], di
    mov word ptr [d_004a2026], cx
    mov word ptr [d_004a2010], ax
    mov eax, dword ptr [d_004a2ca4]
    mov word ptr [d_004a2028], si
    test eax, eax
    jne loc_004364dc
    mov eax, 0xc
    jmp loc_004364f5
loc_004364dc:
    cmp eax, 1
    jne loc_004364e8
    mov eax, 7
    jmp loc_004364f5
loc_004364e8:
    cmp eax, 4
    je loc_004364f0
    cmp eax, 3
loc_004364f0:
    mov eax, 0x35
loc_004364f5:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov ebx, 0x2d
    mov esi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], bx
    test esi, esi
    jne loc_0043651a
    mov eax, 0xc
    jmp loc_00436533
loc_0043651a:
    cmp esi, 1
    jne loc_00436526
    mov eax, 7
    jmp loc_00436533
loc_00436526:
    cmp esi, 4
    je loc_0043652e
    cmp esi, 3
loc_0043652e:
    mov eax, 0x35
loc_00436533:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov ecx, 0x5f
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa4], cx
    test edx, edx
    jne loc_00436558
    mov edx, 0xc
    jmp loc_00436573
loc_00436558:
    cmp edx, 1
    jne loc_00436564
    mov edx, 7
    jmp loc_00436573
loc_00436564:
    cmp edx, 4
    je loc_0043656c
    cmp edx, 3
loc_0043656c:
    mov eax, 0x35
    mov edx, eax
loc_00436573:
    lea eax, [edx*4]
    sub eax, edx
    mov esi, 0xffffffff
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], si
    test edi, edi
    jne loc_0043659a
    mov eax, 0xc
    jmp loc_004365b3
loc_0043659a:
    cmp edi, 1
    jne loc_004365a6
    mov eax, 7
    jmp loc_004365b3
loc_004365a6:
    cmp edi, 4
    je loc_004365ae
    cmp edi, 3
loc_004365ae:
    mov eax, 0x35
loc_004365b3:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov edi, 0xffffffff
    mov ebx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], di
    test ebx, ebx
    jne loc_004365d8
    mov edx, 0xc
    jmp loc_004365f3
loc_004365d8:
    cmp ebx, 1
    jne loc_004365e4
    mov eax, 7
    jmp loc_004365f1
loc_004365e4:
    cmp ebx, 4
    je loc_004365ec
    cmp ebx, 3
loc_004365ec:
    mov eax, 0x35
loc_004365f1:
    mov edx, eax
loc_004365f3:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0xffffffff
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1faa], dx
    test ebp, ebp
    jne loc_0043661a
    mov edx, 0xd
    jmp loc_00436635
loc_0043661a:
    cmp ebp, 1
    jne loc_00436626
    mov eax, 0xd
    jmp loc_00436633
loc_00436626:
    cmp ebp, 4
    je loc_0043662e
    cmp ebp, 3
loc_0043662e:
    mov eax, 0xb
loc_00436633:
    mov edx, eax
loc_00436635:
    lea eax, [edx*4]
    sub eax, edx
    mov ebx, 0x3d
    mov ecx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], bx
    test ecx, ecx
    jne loc_0043665c
    mov edx, 0xd
    jmp loc_00436675
loc_0043665c:
    cmp ecx, 1
    jne loc_00436668
    mov edx, 0xd
    jmp loc_00436675
loc_00436668:
    cmp ecx, 4
    je loc_00436670
    cmp ecx, 3
loc_00436670:
    mov edx, 0xb
loc_00436675:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa4], 0x2b
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_00436698
    mov edx, 0xd
    jmp loc_004366b1
loc_00436698:
    cmp eax, 1
    jne loc_004366a4
    mov edx, 0xd
    jmp loc_004366b1
loc_004366a4:
    cmp eax, 4
    je loc_004366ac
    cmp eax, 3
loc_004366ac:
    mov edx, 0xb
loc_004366b1:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    mov esi, dword ptr [d_004a2ca4]
    test esi, esi
    jne loc_004366d5
    mov edx, 0xd
    jmp loc_004366ee
loc_004366d5:
    cmp esi, 1
    jne loc_004366e1
    mov edx, 0xd
    jmp loc_004366ee
loc_004366e1:
    cmp esi, 4
    je loc_004366e9
    cmp esi, 3
loc_004366e9:
    mov edx, 0xb
loc_004366ee:
    lea eax, [edx*4]
    sub eax, edx
    mov edi, 0xffffffff
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], di
    test edx, edx
    jne loc_00436715
    mov edx, 0xd
    jmp loc_0043672e
loc_00436715:
    cmp edx, 1
    jne loc_00436721
    mov edx, 0xd
    jmp loc_0043672e
loc_00436721:
    cmp edx, 4
    je loc_00436729
    cmp edx, 3
loc_00436729:
    mov edx, 0xb
loc_0043672e:
    lea eax, [edx*4]
    mov ebx, 8
    sub eax, edx
    mov edx, 0xffffffff
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1faa], dx
    mov eax, 0x7f
    mov edx, 9
    mov word ptr [d_004a204a], bx
    mov word ptr [d_004a204c], bx
    mov word ptr [d_004a204e], bx
    mov word ptr [d_004a2050], bx
    mov word ptr [d_004a2052], ax
    mov word ptr [d_004a2056], dx
    mov word ptr [d_004a2058], dx
    mov word ptr [d_004a205a], dx
    mov word ptr [d_004a205c], dx
    mov word ptr [d_004a205e], dx
    test edi, edi
    jne loc_004367a9
    mov edx, 0x10
    jmp loc_004367c4
loc_004367a9:
    cmp edi, 1
    jne loc_004367b5
    mov eax, 0x1e
    jmp loc_004367c2
loc_004367b5:
    cmp edi, 4
    je loc_004367bd
    cmp edi, 3
loc_004367bd:
    mov eax, 0x10
loc_004367c2:
    mov edx, eax
loc_004367c4:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0x71
    mov ebx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], dx
    test ebx, ebx
    jne loc_004367eb
    mov edx, 0x10
    jmp loc_00436806
loc_004367eb:
    cmp ebx, 1
    jne loc_004367f7
    mov eax, 0x1e
    jmp loc_00436804
loc_004367f7:
    cmp ebx, 4
    je loc_004367ff
    cmp ebx, 3
loc_004367ff:
    mov eax, 0x10
loc_00436804:
    mov edx, eax
loc_00436806:
    lea eax, [edx*4]
    sub eax, edx
    mov ebx, 0x51
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa4], bx
    test ebp, ebp
    je loc_0043683a
    cmp ebp, 1
    jne loc_00436832
    mov eax, 0x1e
    jmp loc_0043683f
loc_00436832:
    cmp ebp, 4
    je loc_0043683a
    cmp ebp, 3
loc_0043683a:
    mov eax, 0x10
loc_0043683f:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa6], 0x110
    mov ecx, dword ptr [d_004a2ca4]
    test ecx, ecx
    je loc_0043686e
    cmp ecx, 1
    jne loc_00436866
    mov eax, 0x1e
    jmp loc_00436873
loc_00436866:
    cmp ecx, 4
    je loc_0043686e
    cmp ecx, 3
loc_0043686e:
    mov eax, 0x10
loc_00436873:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa8], 0x110
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    je loc_004368a1
    cmp eax, 1
    jne loc_00436899
    mov eax, 0x1e
    jmp loc_004368a6
loc_00436899:
    cmp eax, 4
    je loc_004368a1
    cmp eax, 3
loc_004368a1:
    mov eax, 0x10
loc_004368a6:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov edi, 0x11
    mov esi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1faa], di
    test esi, esi
    je loc_004368d8
    cmp esi, 1
    jne loc_004368d0
    mov eax, 0x2c
    jmp loc_004368dd
loc_004368d0:
    cmp esi, 4
    je loc_004368d8
    cmp esi, 3
loc_004368d8:
    mov eax, 0x11
loc_004368dd:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa2], 0x77
    mov edx, dword ptr [d_004a2ca4]
    test edx, edx
    je loc_0043690c
    cmp edx, 1
    jne loc_00436904
    mov eax, 0x2c
    jmp loc_00436911
loc_00436904:
    cmp edx, 4
    je loc_0043690c
    cmp edx, 3
loc_0043690c:
    mov eax, 0x11
loc_00436911:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov ebx, 0x57
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa4], bx
    test edi, edi
    je loc_00436943
    cmp edi, 1
    jne loc_0043693b
    mov eax, 0x2c
    jmp loc_00436948
loc_0043693b:
    cmp edi, 4
    je loc_00436943
    cmp edi, 3
loc_00436943:
    mov eax, 0x11
loc_00436948:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov ecx, 0x111
    mov ebx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], cx
    test ebx, ebx
    je loc_0043697a
    cmp ebx, 1
    jne loc_00436972
    mov eax, 0x2c
    jmp loc_0043697f
loc_00436972:
    cmp ebx, 4
    je loc_0043697a
    cmp ebx, 3
loc_0043697a:
    mov eax, 0x11
loc_0043697f:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov esi, 0x111
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], si
    test ebp, ebp
    jne loc_004369a4
    mov edx, 0x11
    jmp loc_004369bf
loc_004369a4:
    cmp ebp, 1
    jne loc_004369b0
    mov eax, 0x2c
    jmp loc_004369bd
loc_004369b0:
    cmp ebp, 4
    je loc_004369b8
    cmp ebp, 3
loc_004369b8:
    mov eax, 0x11
loc_004369bd:
    mov edx, eax
loc_004369bf:
    mov edi, 0x17
    mov ebx, 0x112
    lea eax, [edx*4]
    mov esi, 5
    sub eax, edx
    mov ecx, 0x12
    mov edx, 0x45
    mov word ptr [eax*4 + d_004a1faa], di
    mov eax, 0x65
    mov edi, 0x72
    mov word ptr [d_004a207c], dx
    mov word ptr [d_004a207e], bx
    mov word ptr [d_004a2080], bx
    mov word ptr [d_004a2082], si
    mov word ptr [d_004a208e], cx
    mov edx, 0x113
    mov esi, 0x74
    mov ebx, 0x14
    mov ecx, dword ptr [d_004a2ca4]
    mov word ptr [d_004a207a], ax
    mov word ptr [d_004a2086], di
    mov eax, 0x52
    mov edi, 0x54
    mov word ptr [d_004a208a], dx
    mov word ptr [d_004a208c], dx
    mov word ptr [d_004a2092], si
    mov word ptr [d_004a209a], bx
    mov word ptr [d_004a2088], ax
    mov eax, 0x114
    mov word ptr [d_004a2094], di
    mov word ptr [d_004a2096], ax
    mov word ptr [d_004a2098], ax
    test ecx, ecx
    jne loc_00436a87
    mov edx, 0x15
    jmp loc_00436ab2
loc_00436a87:
    cmp ecx, 1
    jne loc_00436a93
    mov eax, 0x15
    jmp loc_00436ab0
loc_00436a93:
    cmp ecx, 4
    jne loc_00436a9f
    mov eax, 0x15
    jmp loc_00436ab0
loc_00436a9f:
    cmp ecx, 3
    jne loc_00436aab
    mov eax, 0x15
    jmp loc_00436ab0
loc_00436aab:
    mov eax, 0x2c
loc_00436ab0:
    mov edx, eax
loc_00436ab2:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa2], 0x79
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_00436ad5
    mov edx, 0x15
    jmp loc_00436afe
loc_00436ad5:
    cmp eax, 1
    jne loc_00436ae1
    mov edx, 0x15
    jmp loc_00436afe
loc_00436ae1:
    cmp eax, 4
    jne loc_00436aed
    mov edx, 0x15
    jmp loc_00436afe
loc_00436aed:
    cmp eax, 3
    jne loc_00436af9
    mov edx, 0x15
    jmp loc_00436afe
loc_00436af9:
    mov edx, 0x2c
loc_00436afe:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa4], 0x59
    mov esi, dword ptr [d_004a2ca4]
    test esi, esi
    jne loc_00436b22
    mov edx, 0x15
    jmp loc_00436b4b
loc_00436b22:
    cmp esi, 1
    jne loc_00436b2e
    mov edx, 0x15
    jmp loc_00436b4b
loc_00436b2e:
    cmp esi, 4
    jne loc_00436b3a
    mov edx, 0x15
    jmp loc_00436b4b
loc_00436b3a:
    cmp esi, 3
    jne loc_00436b46
    mov edx, 0x15
    jmp loc_00436b4b
loc_00436b46:
    mov edx, 0x2c
loc_00436b4b:
    lea eax, [edx*4]
    sub eax, edx
    mov edi, 0x115
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], di
    test edx, edx
    jne loc_00436b72
    mov edx, 0x15
    jmp loc_00436b9b
loc_00436b72:
    cmp edx, 1
    jne loc_00436b7e
    mov edx, 0x15
    jmp loc_00436b9b
loc_00436b7e:
    cmp edx, 4
    jne loc_00436b8a
    mov edx, 0x15
    jmp loc_00436b9b
loc_00436b8a:
    cmp edx, 3
    jne loc_00436b96
    mov edx, 0x15
    jmp loc_00436b9b
loc_00436b96:
    mov edx, 0x2c
loc_00436b9b:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0x115
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], dx
    test edi, edi
    jne loc_00436bc2
    mov edx, 0x15
    jmp loc_00436beb
loc_00436bc2:
    cmp edi, 1
    jne loc_00436bce
    mov edx, 0x15
    jmp loc_00436beb
loc_00436bce:
    cmp edi, 4
    jne loc_00436bda
    mov edx, 0x15
    jmp loc_00436beb
loc_00436bda:
    cmp edi, 3
    jne loc_00436be6
    mov edx, 0x15
    jmp loc_00436beb
loc_00436be6:
    mov edx, 0x2c
loc_00436beb:
    mov ebx, 0x19
    mov ecx, 0x75
    lea eax, [edx*4]
    mov esi, 0x55
    sub eax, edx
    mov edi, 0x116
    mov edx, 0x15
    mov word ptr [eax*4 + d_004a1faa], bx
    mov ebx, 0x69
    mov eax, 9
    mov word ptr [d_004a20aa], cx
    mov word ptr [d_004a20ac], si
    mov word ptr [d_004a20ae], di
    mov word ptr [d_004a20b0], di
    mov word ptr [d_004a20b2], dx
    mov ecx, 0x49
    mov esi, 0x117
    mov edx, 0x6f
    mov edi, 0xf
    mov word ptr [d_004a20b6], bx
    mov word ptr [d_004a20be], ax
    mov ebx, 0x4f
    mov eax, 0x70
    mov word ptr [d_004a20b8], cx
    mov word ptr [d_004a20ba], si
    mov word ptr [d_004a20bc], si
    mov word ptr [d_004a20c2], dx
    mov word ptr [d_004a20ca], di
    mov ecx, 0x118
    mov edx, 0x50
    mov esi, 0x10
    mov word ptr [d_004a20c4], bx
    mov word ptr [d_004a20ce], ax
    mov ebx, 0x119
    mov word ptr [d_004a20c6], cx
    mov word ptr [d_004a20c8], cx
    mov word ptr [d_004a20d0], dx
    mov word ptr [d_004a20d2], bx
    mov word ptr [d_004a20d4], bx
    mov ebx, dword ptr [d_004a2ca4]
    mov word ptr [d_004a20d6], si
    test ebx, ebx
    jne loc_00436cec
    mov edx, 0x1a
    jmp loc_00436d15
loc_00436cec:
    cmp ebx, 1
    jne loc_00436cf8
    mov edx, 6
    jmp loc_00436d15
loc_00436cf8:
    cmp ebx, 4
    jne loc_00436d04
    mov edx, 0x1a
    jmp loc_00436d15
loc_00436d04:
    cmp ebx, 3
    jne loc_00436d10
    mov edx, 0x1a
    jmp loc_00436d15
loc_00436d10:
    mov edx, 9
loc_00436d15:
    lea eax, [edx*4]
    sub eax, edx
    mov edi, 0x5b
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], di
    test ebp, ebp
    jne loc_00436d3c
    mov edx, 0x1a
    jmp loc_00436d65
loc_00436d3c:
    cmp ebp, 1
    jne loc_00436d48
    mov edx, 6
    jmp loc_00436d65
loc_00436d48:
    cmp ebp, 4
    jne loc_00436d54
    mov edx, 0x1a
    jmp loc_00436d65
loc_00436d54:
    cmp ebp, 3
    jne loc_00436d60
    mov edx, 0x1a
    jmp loc_00436d65
loc_00436d60:
    mov edx, 9
loc_00436d65:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0x7b
    mov ecx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa4], dx
    test ecx, ecx
    jne loc_00436d8c
    mov edx, 0x1a
    jmp loc_00436db5
loc_00436d8c:
    cmp ecx, 1
    jne loc_00436d98
    mov edx, 6
    jmp loc_00436db5
loc_00436d98:
    cmp ecx, 4
    jne loc_00436da4
    mov edx, 0x1a
    jmp loc_00436db5
loc_00436da4:
    cmp ecx, 3
    jne loc_00436db0
    mov edx, 0x1a
    jmp loc_00436db5
loc_00436db0:
    mov edx, 9
loc_00436db5:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_00436dd8
    mov edx, 0x1a
    jmp loc_00436e01
loc_00436dd8:
    cmp eax, 1
    jne loc_00436de4
    mov edx, 6
    jmp loc_00436e01
loc_00436de4:
    cmp eax, 4
    jne loc_00436df0
    mov edx, 0x1a
    jmp loc_00436e01
loc_00436df0:
    cmp eax, 3
    jne loc_00436dfc
    mov edx, 0x1a
    jmp loc_00436e01
loc_00436dfc:
    mov edx, 9
loc_00436e01:
    lea eax, [edx*4]
    sub eax, edx
    mov ecx, 0xffffffff
    mov esi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], cx
    test esi, esi
    jne loc_00436e28
    mov eax, 0x1a
    jmp loc_00436e51
loc_00436e28:
    cmp esi, 1
    jne loc_00436e34
    mov eax, 6
    jmp loc_00436e51
loc_00436e34:
    cmp esi, 4
    jne loc_00436e40
    mov eax, 0x1a
    jmp loc_00436e51
loc_00436e40:
    cmp esi, 3
    jne loc_00436e4c
    mov eax, 0x1a
    jmp loc_00436e51
loc_00436e4c:
    mov eax, 9
loc_00436e51:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov esi, 0xffffffff
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1faa], si
    test edx, edx
    jne loc_00436e76
    mov edx, 0x1b
    jmp loc_00436ea1
loc_00436e76:
    cmp edx, 1
    jne loc_00436e82
    mov eax, 0xc
    jmp loc_00436e9f
loc_00436e82:
    cmp edx, 4
    jne loc_00436e8e
    mov eax, 0x1b
    jmp loc_00436e9f
loc_00436e8e:
    cmp edx, 3
    jne loc_00436e9a
    mov eax, 0x1b
    jmp loc_00436e9f
loc_00436e9a:
    mov eax, 0xa
loc_00436e9f:
    mov edx, eax
loc_00436ea1:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa2], 0x5d
    mov edi, dword ptr [d_004a2ca4]
    test edi, edi
    jne loc_00436ec5
    mov eax, 0x1b
    jmp loc_00436eee
loc_00436ec5:
    cmp edi, 1
    jne loc_00436ed1
    mov eax, 0xc
    jmp loc_00436eee
loc_00436ed1:
    cmp edi, 4
    jne loc_00436edd
    mov eax, 0x1b
    jmp loc_00436eee
loc_00436edd:
    cmp edi, 3
    jne loc_00436ee9
    mov eax, 0x1b
    jmp loc_00436eee
loc_00436ee9:
    mov eax, 0xa
loc_00436eee:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov edx, 0x7d
    mov ebx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa4], dx
    test ebx, ebx
    jne loc_00436f13
    mov eax, 0x1b
    jmp loc_00436f3c
loc_00436f13:
    cmp ebx, 1
    jne loc_00436f1f
    mov eax, 0xc
    jmp loc_00436f3c
loc_00436f1f:
    cmp ebx, 4
    jne loc_00436f2b
    mov eax, 0x1b
    jmp loc_00436f3c
loc_00436f2b:
    cmp ebx, 3
    jne loc_00436f37
    mov eax, 0x1b
    jmp loc_00436f3c
loc_00436f37:
    mov eax, 0xa
loc_00436f3c:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov ebx, 0xffffffff
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], bx
    test ebp, ebp
    jne loc_00436f61
    mov edx, 0x1b
    jmp loc_00436f8c
loc_00436f61:
    cmp ebp, 1
    jne loc_00436f6d
    mov eax, 0xc
    jmp loc_00436f8a
loc_00436f6d:
    cmp ebp, 4
    jne loc_00436f79
    mov eax, 0x1b
    jmp loc_00436f8a
loc_00436f79:
    cmp ebp, 3
    jne loc_00436f85
    mov eax, 0x1b
    jmp loc_00436f8a
loc_00436f85:
    mov eax, 0xa
loc_00436f8a:
    mov edx, eax
loc_00436f8c:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    mov ecx, dword ptr [d_004a2ca4]
    test ecx, ecx
    jne loc_00436fb0
    mov eax, 0x1b
    jmp loc_00436fd9
loc_00436fb0:
    cmp ecx, 1
    jne loc_00436fbc
    mov eax, 0xc
    jmp loc_00436fd9
loc_00436fbc:
    cmp ecx, 4
    jne loc_00436fc8
    mov eax, 0x1b
    jmp loc_00436fd9
loc_00436fc8:
    cmp ecx, 3
    jne loc_00436fd4
    mov eax, 0x1b
    jmp loc_00436fd9
loc_00436fd4:
    mov eax, 0xa
loc_00436fd9:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_00436ffa
    mov eax, 0x2b
    jmp loc_00437023
loc_00436ffa:
    cmp eax, 1
    jne loc_00437006
    mov eax, 9
    jmp loc_00437023
loc_00437006:
    cmp eax, 4
    jne loc_00437012
    mov eax, 0x29
    jmp loc_00437023
loc_00437012:
    cmp eax, 3
    jne loc_0043701e
    mov eax, 0x29
    jmp loc_00437023
loc_0043701e:
    mov eax, 0xc
loc_00437023:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov edi, 0x5c
    mov esi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], di
    test esi, esi
    jne loc_00437048
    mov edx, 0x2b
    jmp loc_00437073
loc_00437048:
    cmp esi, 1
    jne loc_00437054
    mov eax, 9
    jmp loc_00437071
loc_00437054:
    cmp esi, 4
    jne loc_00437060
    mov eax, 0x29
    jmp loc_00437071
loc_00437060:
    cmp esi, 3
    jne loc_0043706c
    mov eax, 0x29
    jmp loc_00437071
loc_0043706c:
    mov eax, 0xc
loc_00437071:
    mov edx, eax
loc_00437073:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa4], 0x7c
    mov edx, dword ptr [d_004a2ca4]
    test edx, edx
    jne loc_00437097
    mov edx, 0x2b
    jmp loc_004370c2
loc_00437097:
    cmp edx, 1
    jne loc_004370a3
    mov edx, 9
    jmp loc_004370c2
loc_004370a3:
    cmp edx, 4
    jne loc_004370af
    mov eax, 0x29
    jmp loc_004370c0
loc_004370af:
    cmp edx, 3
    jne loc_004370bb
    mov eax, 0x29
    jmp loc_004370c0
loc_004370bb:
    mov eax, 0xc
loc_004370c0:
    mov edx, eax
loc_004370c2:
    lea eax, [edx*4]
    sub eax, edx
    mov ebx, 0xffffffff
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], bx
    test edi, edi
    jne loc_004370e9
    mov eax, 0x2b
    jmp loc_00437112
loc_004370e9:
    cmp edi, 1
    jne loc_004370f5
    mov eax, 9
    jmp loc_00437112
loc_004370f5:
    cmp edi, 4
    jne loc_00437101
    mov eax, 0x29
    jmp loc_00437112
loc_00437101:
    cmp edi, 3
    jne loc_0043710d
    mov eax, 0x29
    jmp loc_00437112
loc_0043710d:
    mov eax, 0xc
loc_00437112:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov ecx, 0xffffffff
    mov ebx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], cx
    test ebx, ebx
    jne loc_00437137
    mov edx, 0x2b
    jmp loc_00437162
loc_00437137:
    cmp ebx, 1
    jne loc_00437143
    mov eax, 9
    jmp loc_00437160
loc_00437143:
    cmp ebx, 4
    jne loc_0043714f
    mov eax, 0x29
    jmp loc_00437160
loc_0043714f:
    cmp ebx, 3
    jne loc_0043715b
    mov eax, 0x29
    jmp loc_00437160
loc_0043715b:
    mov eax, 0xc
loc_00437160:
    mov edx, eax
loc_00437162:
    lea eax, [edx*4]
    sub eax, edx
    mov esi, 0xc0
    mov edi, 0xffffffff
    mov word ptr [eax*4 + d_004a1faa], si
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [d_004a225a], di
    mov word ptr [d_004a225c], di
    mov word ptr [d_004a225e], di
    mov word ptr [d_004a2260], di
    mov word ptr [d_004a2262], di
    test ebp, ebp
    jne loc_004371b1
    mov edx, 0x1e
    jmp loc_004371cc
loc_004371b1:
    cmp ebp, 1
    jne loc_004371bd
    mov edx, 0x10
    jmp loc_004371cc
loc_004371bd:
    cmp ebp, 4
    je loc_004371c5
    cmp ebp, 3
loc_004371c5:
    mov eax, 0x1e
    mov edx, eax
loc_004371cc:
    lea eax, [edx*4]
    sub eax, edx
    mov esi, 0x61
    mov ecx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], si
    test ecx, ecx
    je loc_00437200
    cmp ecx, 1
    jne loc_004371f8
    mov eax, 0x10
    jmp loc_00437205
loc_004371f8:
    cmp ecx, 4
    je loc_00437200
    cmp ecx, 3
loc_00437200:
    mov eax, 0x1e
loc_00437205:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa4], 0x41
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_00437226
    mov edx, 0x1e
    jmp loc_00437241
loc_00437226:
    cmp eax, 1
    jne loc_00437232
    mov eax, 0x10
    jmp loc_0043723f
loc_00437232:
    cmp eax, 4
    je loc_0043723a
    cmp eax, 3
loc_0043723a:
    mov eax, 0x1e
loc_0043723f:
    mov edx, eax
loc_00437241:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0x11e
    mov esi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], dx
    test esi, esi
    jne loc_00437268
    mov edx, 0x1e
    jmp loc_00437283
loc_00437268:
    cmp esi, 1
    jne loc_00437274
    mov edx, 0x10
    jmp loc_00437283
loc_00437274:
    cmp esi, 4
    je loc_0043727c
    cmp esi, 3
loc_0043727c:
    mov eax, 0x1e
    mov edx, eax
loc_00437283:
    lea eax, [edx*4]
    sub eax, edx
    mov ebx, 0x11e
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], bx
    test edx, edx
    je loc_004372b7
    cmp edx, 1
    jne loc_004372af
    mov eax, 0x10
    jmp loc_004372bc
loc_004372af:
    cmp edx, 4
    je loc_004372b7
    cmp edx, 3
loc_004372b7:
    mov eax, 0x1e
loc_004372bc:
    mov ecx, 1
    mov esi, 0x73
    mov edx, eax
    shl eax, 2
    mov edi, 0x53
    sub eax, edx
    mov ebx, 0x13
    mov edx, 4
    mov word ptr [eax*4 + d_004a1faa], cx
    mov eax, 0x11f
    mov ecx, 0x64
    mov word ptr [d_004a2116], si
    mov word ptr [d_004a2118], di
    mov word ptr [d_004a211e], bx
    mov word ptr [d_004a212a], dx
    mov esi, 0x44
    mov edi, 0x120
    mov ebx, 0x66
    mov edx, 0x67
    mov word ptr [d_004a211a], ax
    mov word ptr [d_004a211c], ax
    mov word ptr [d_004a2122], cx
    mov ecx, 0x46
    mov eax, 6
    mov word ptr [d_004a2124], si
    mov word ptr [d_004a2126], di
    mov word ptr [d_004a2128], di
    mov word ptr [d_004a212e], bx
    mov word ptr [d_004a213a], dx
    mov esi, 0x121
    mov ebx, 0x47
    mov edi, 7
    mov edx, 0x48
    mov word ptr [d_004a2130], cx
    mov word ptr [d_004a2136], ax
    mov ecx, 0x122
    mov eax, 0x68
    mov word ptr [d_004a2132], si
    mov word ptr [d_004a2134], si
    mov word ptr [d_004a213c], bx
    mov word ptr [d_004a2142], di
    mov word ptr [d_004a2148], dx
    mov ebx, 0x123
    mov esi, 8
    mov edi, 0x6a
    mov edx, 0x124
    mov word ptr [d_004a213e], cx
    mov word ptr [d_004a2140], cx
    mov word ptr [d_004a2146], ax
    mov eax, 0x4a
    mov ecx, 0xa
    mov word ptr [d_004a214a], bx
    mov word ptr [d_004a214c], bx
    mov word ptr [d_004a214e], si
    mov word ptr [d_004a2152], di
    mov word ptr [d_004a2156], dx
    mov word ptr [d_004a2158], dx
    mov esi, 0x6b
    mov edi, 0x4b
    mov ebx, 0xb
    mov edx, 0xc
    mov word ptr [d_004a2154], ax
    mov word ptr [d_004a215a], cx
    mov eax, 0x125
    mov ecx, 0x6c
    mov word ptr [d_004a215e], si
    mov word ptr [d_004a2160], di
    mov word ptr [d_004a2166], bx
    mov word ptr [d_004a2172], dx
    mov esi, 0x4c
    mov edi, 0x126
    mov word ptr [d_004a2162], ax
    mov word ptr [d_004a2164], ax
    mov word ptr [d_004a216a], cx
    mov word ptr [d_004a216e], di
    mov word ptr [d_004a2170], di
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [d_004a216c], si
    test edi, edi
    jne loc_00437492
    mov edx, 0x27
    jmp loc_004374a6
loc_00437492:
    cmp edi, 1
    je loc_0043749f
    cmp edi, 4
    je loc_0043749f
    cmp edi, 3
loc_0043749f:
    mov eax, 0x33
    mov edx, eax
loc_004374a6:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa2], 0x3b
    mov ebx, dword ptr [d_004a2ca4]
    test ebx, ebx
    jne loc_004374ca
    mov edx, 0x27
    jmp loc_004374e5
loc_004374ca:
    cmp ebx, 1
    jne loc_004374d6
    mov edx, 0x33
    jmp loc_004374e5
loc_004374d6:
    cmp ebx, 4
    je loc_004374de
    cmp ebx, 3
loc_004374de:
    mov eax, 0x33
    mov edx, eax
loc_004374e5:
    lea eax, [edx*4]
    sub eax, edx
    mov ecx, 0x3a
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa4], cx
    test ebp, ebp
    jne loc_0043750c
    mov eax, 0x27
    jmp loc_0043751e
loc_0043750c:
    cmp ebp, 1
    je loc_00437519
    cmp ebp, 4
    je loc_00437519
    cmp ebp, 3
loc_00437519:
    mov eax, 0x33
loc_0043751e:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov esi, 0xffffffff
    mov ecx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], si
    test ecx, ecx
    jne loc_00437543
    mov edx, 0x27
    jmp loc_00437557
loc_00437543:
    cmp ecx, 1
    je loc_00437550
    cmp ecx, 4
    je loc_00437550
    cmp ecx, 3
loc_00437550:
    mov eax, 0x33
    mov edx, eax
loc_00437557:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_0043757a
    mov edx, 0x27
    jmp loc_00437595
loc_0043757a:
    cmp eax, 1
    jne loc_00437586
    mov edx, 0x33
    jmp loc_00437595
loc_00437586:
    cmp eax, 4
    je loc_0043758e
    cmp eax, 3
loc_0043758e:
    mov eax, 0x33
    mov edx, eax
loc_00437595:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0xffffffff
    mov esi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1faa], dx
    test esi, esi
    jne loc_004375bc
    mov eax, 0x28
    jmp loc_004375db
loc_004375bc:
    cmp esi, 1
    jne loc_004375c8
    mov eax, 4
    jmp loc_004375db
loc_004375c8:
    cmp esi, 4
    je loc_004375d6
    cmp esi, 3
    jne loc_004375d6
    mov eax, esi
    jmp loc_004375db
loc_004375d6:
    mov eax, 3
loc_004375db:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov ebx, 0x27
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], bx
    test edx, edx
    jne loc_00437600
    mov edx, 0x28
    jmp loc_00437621
loc_00437600:
    cmp edx, 1
    jne loc_0043760c
    mov eax, 4
    jmp loc_0043761f
loc_0043760c:
    cmp edx, 4
    je loc_0043761a
    cmp edx, 3
    jne loc_0043761a
    mov eax, edx
    jmp loc_0043761f
loc_0043761a:
    mov eax, 3
loc_0043761f:
    mov edx, eax
loc_00437621:
    lea eax, [edx*4]
    sub eax, edx
    mov ecx, 0x22
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa4], cx
    test edi, edi
    jne loc_00437648
    mov edx, 0x28
    jmp loc_00437669
loc_00437648:
    cmp edi, 1
    jne loc_00437654
    mov edx, 4
    jmp loc_00437669
loc_00437654:
    cmp edi, 4
    je loc_00437662
    cmp edi, 3
    jne loc_00437662
    mov eax, edi
    jmp loc_00437667
loc_00437662:
    mov eax, 3
loc_00437667:
    mov edx, eax
loc_00437669:
    lea eax, [edx*4]
    sub eax, edx
    mov esi, 0xffffffff
    mov ebx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], si
    test ebx, ebx
    jne loc_00437690
    mov eax, 0x28
    jmp loc_004376af
loc_00437690:
    cmp ebx, 1
    jne loc_0043769c
    mov eax, 4
    jmp loc_004376af
loc_0043769c:
    cmp ebx, 4
    je loc_004376aa
    cmp ebx, 3
    jne loc_004376aa
    mov eax, ebx
    jmp loc_004376af
loc_004376aa:
    mov eax, 3
loc_004376af:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov edi, 0xffffffff
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], di
    test ebp, ebp
    jne loc_004376d4
    mov edx, 0x28
    jmp loc_004376f5
loc_004376d4:
    cmp ebp, 1
    jne loc_004376e0
    mov eax, 4
    jmp loc_004376f3
loc_004376e0:
    cmp ebp, 4
    je loc_004376ee
    cmp ebp, 3
    jne loc_004376ee
    mov eax, ebp
    jmp loc_004376f3
loc_004376ee:
    mov eax, 3
loc_004376f3:
    mov edx, eax
loc_004376f5:
    lea eax, [edx*4]
    mov ebx, 0xd
    sub eax, edx
    mov edx, 0xffffffff
    mov ecx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1faa], dx
    mov eax, 0xa
    mov word ptr [d_004a20f2], bx
    mov word ptr [d_004a20f4], bx
    mov word ptr [d_004a20f6], bx
    mov word ptr [d_004a20f8], bx
    mov word ptr [d_004a219a], dx
    mov word ptr [d_004a219c], dx
    mov word ptr [d_004a219e], dx
    mov word ptr [d_004a21a0], dx
    mov word ptr [d_004a21a2], dx
    mov word ptr [d_004a20fa], ax
    test ecx, ecx
    jne loc_0043776b
    mov edx, 0x2c
    jmp loc_00437796
loc_0043776b:
    cmp ecx, 1
    jne loc_00437777
    mov eax, 0x11
    jmp loc_00437794
loc_00437777:
    cmp ecx, 4
    jne loc_00437783
    mov eax, 0x2c
    jmp loc_00437794
loc_00437783:
    cmp ecx, 3
    jne loc_0043778f
    mov eax, 0x2c
    jmp loc_00437794
loc_0043778f:
    mov eax, 0x15
loc_00437794:
    mov edx, eax
loc_00437796:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa2], 0x7a
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_004377b9
    mov edx, 0x2c
    jmp loc_004377e4
loc_004377b9:
    cmp eax, 1
    jne loc_004377c5
    mov eax, 0x11
    jmp loc_004377e2
loc_004377c5:
    cmp eax, 4
    jne loc_004377d1
    mov eax, 0x2c
    jmp loc_004377e2
loc_004377d1:
    cmp eax, 3
    jne loc_004377dd
    mov eax, 0x2c
    jmp loc_004377e2
loc_004377dd:
    mov eax, 0x15
loc_004377e2:
    mov edx, eax
loc_004377e4:
    lea eax, [edx*4]
    sub eax, edx
    mov ebx, 0x5a
    mov esi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa4], bx
    test esi, esi
    jne loc_0043780b
    mov eax, 0x2c
    jmp loc_00437834
loc_0043780b:
    cmp esi, 1
    jne loc_00437817
    mov eax, 0x11
    jmp loc_00437834
loc_00437817:
    cmp esi, 4
    jne loc_00437823
    mov eax, 0x2c
    jmp loc_00437834
loc_00437823:
    cmp esi, 3
    jne loc_0043782f
    mov eax, 0x2c
    jmp loc_00437834
loc_0043782f:
    mov eax, 0x15
loc_00437834:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov ecx, 0x12c
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], cx
    test edx, edx
    jne loc_00437859
    mov edx, 0x2c
    jmp loc_00437884
loc_00437859:
    cmp edx, 1
    jne loc_00437865
    mov eax, 0x11
    jmp loc_00437882
loc_00437865:
    cmp edx, 4
    jne loc_00437871
    mov eax, 0x2c
    jmp loc_00437882
loc_00437871:
    cmp edx, 3
    jne loc_0043787d
    mov eax, 0x2c
    jmp loc_00437882
loc_0043787d:
    mov eax, 0x15
loc_00437882:
    mov edx, eax
loc_00437884:
    lea eax, [edx*4]
    sub eax, edx
    mov esi, 0x12c
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], si
    test edi, edi
    jne loc_004378ab
    mov eax, 0x2c
    jmp loc_004378d4
loc_004378ab:
    cmp edi, 1
    jne loc_004378b7
    mov eax, 0x11
    jmp loc_004378d4
loc_004378b7:
    cmp edi, 4
    jne loc_004378c3
    mov eax, 0x2c
    jmp loc_004378d4
loc_004378c3:
    cmp edi, 3
    jne loc_004378cf
    mov eax, 0x2c
    jmp loc_004378d4
loc_004378cf:
    mov eax, 0x15
loc_004378d4:
    mov edi, 0x1a
    mov ebx, 0x12d
    mov edx, eax
    shl eax, 2
    mov esi, 0x18
    sub eax, edx
    mov ecx, 3
    mov edx, 0x58
    mov word ptr [eax*4 + d_004a1faa], di
    mov eax, 0x78
    mov edi, 0x63
    mov word ptr [d_004a21c0], dx
    mov word ptr [d_004a21c2], bx
    mov word ptr [d_004a21c4], bx
    mov word ptr [d_004a21c6], si
    mov word ptr [d_004a21d2], cx
    mov edx, 0x12e
    mov esi, 0x76
    mov ebx, 0x16
    mov ecx, 0x62
    mov word ptr [d_004a21be], ax
    mov word ptr [d_004a21ca], di
    mov eax, 0x43
    mov edi, 0x56
    mov word ptr [d_004a21ce], dx
    mov word ptr [d_004a21d0], dx
    mov word ptr [d_004a21d6], si
    mov word ptr [d_004a21de], bx
    mov word ptr [d_004a21e2], cx
    mov esi, 0x42
    mov edx, 2
    mov ebx, 0x6e
    mov ecx, 0x4e
    mov word ptr [d_004a21cc], ax
    mov word ptr [d_004a21d8], di
    mov eax, 0x12f
    mov edi, 0x130
    mov word ptr [d_004a21e4], si
    mov word ptr [d_004a21ea], dx
    mov word ptr [d_004a21ee], bx
    mov word ptr [d_004a21f0], cx
    mov esi, 0x131
    mov ebx, dword ptr [d_004a2ca4]
    mov word ptr [d_004a21da], ax
    mov word ptr [d_004a21dc], ax
    mov word ptr [d_004a21e6], di
    mov word ptr [d_004a21e8], di
    mov eax, 0xe
    mov word ptr [d_004a21f2], si
    mov word ptr [d_004a21f4], si
    mov word ptr [d_004a21f6], ax
    test ebx, ebx
    jne loc_00437a07
    mov edx, 0x32
    jmp loc_00437a22
loc_00437a07:
    cmp ebx, 1
    jne loc_00437a13
    mov eax, 0x27
    jmp loc_00437a20
loc_00437a13:
    cmp ebx, 4
    je loc_00437a1b
    cmp ebx, 3
loc_00437a1b:
    mov eax, 0x32
loc_00437a20:
    mov edx, eax
loc_00437a22:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0x6d
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], dx
    test ebp, ebp
    je loc_00437a56
    cmp ebp, 1
    jne loc_00437a4e
    mov eax, 0x27
    jmp loc_00437a5b
loc_00437a4e:
    cmp ebp, 4
    je loc_00437a56
    cmp ebp, 3
loc_00437a56:
    mov eax, 0x32
loc_00437a5b:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov ebx, 0x4d
    mov ecx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa4], bx
    test ecx, ecx
    je loc_00437a8d
    cmp ecx, 1
    jne loc_00437a85
    mov eax, 0x27
    jmp loc_00437a92
loc_00437a85:
    cmp ecx, 4
    je loc_00437a8d
    cmp ecx, 3
loc_00437a8d:
    mov eax, 0x32
loc_00437a92:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa6], 0x132
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_00437ab3
    mov edx, 0x32
    jmp loc_00437ace
loc_00437ab3:
    cmp eax, 1
    jne loc_00437abf
    mov eax, 0x27
    jmp loc_00437acc
loc_00437abf:
    cmp eax, 4
    je loc_00437ac7
    cmp eax, 3
loc_00437ac7:
    mov eax, 0x32
loc_00437acc:
    mov edx, eax
loc_00437ace:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa8], 0x132
    mov esi, dword ptr [d_004a2ca4]
    test esi, esi
    jne loc_00437af2
    mov edx, 0x32
    jmp loc_00437b0d
loc_00437af2:
    cmp esi, 1
    jne loc_00437afe
    mov eax, 0x27
    jmp loc_00437b0b
loc_00437afe:
    cmp esi, 4
    je loc_00437b06
    cmp esi, 3
loc_00437b06:
    mov eax, 0x32
loc_00437b0b:
    mov edx, eax
loc_00437b0d:
    lea eax, [edx*4]
    sub eax, edx
    mov edi, 0xd
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1faa], di
    test edx, edx
    jne loc_00437b34
    mov edx, 0x33
    jmp loc_00437b4f
loc_00437b34:
    cmp edx, 1
    jne loc_00437b40
    mov eax, 0x32
    jmp loc_00437b4d
loc_00437b40:
    cmp edx, 4
    je loc_00437b48
    cmp edx, 3
loc_00437b48:
    mov eax, 0x33
loc_00437b4d:
    mov edx, eax
loc_00437b4f:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0x2c
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], dx
    test edi, edi
    jne loc_00437b76
    mov edx, 0x33
    jmp loc_00437b91
loc_00437b76:
    cmp edi, 1
    jne loc_00437b82
    mov eax, 0x32
    jmp loc_00437b8f
loc_00437b82:
    cmp edi, 4
    je loc_00437b8a
    cmp edi, 3
loc_00437b8a:
    mov eax, 0x33
loc_00437b8f:
    mov edx, eax
loc_00437b91:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa4], 0x3c
    mov ebx, dword ptr [d_004a2ca4]
    test ebx, ebx
    jne loc_00437bb5
    mov edx, 0x33
    jmp loc_00437bd0
loc_00437bb5:
    cmp ebx, 1
    jne loc_00437bc1
    mov eax, 0x32
    jmp loc_00437bce
loc_00437bc1:
    cmp ebx, 4
    je loc_00437bc9
    cmp ebx, 3
loc_00437bc9:
    mov eax, 0x33
loc_00437bce:
    mov edx, eax
loc_00437bd0:
    lea eax, [edx*4]
    sub eax, edx
    mov ecx, 0xffffffff
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], cx
    test ebp, ebp
    jne loc_00437bf7
    mov edx, 0x33
    jmp loc_00437c12
loc_00437bf7:
    cmp ebp, 1
    jne loc_00437c03
    mov eax, 0x32
    jmp loc_00437c10
loc_00437c03:
    cmp ebp, 4
    je loc_00437c0b
    cmp ebp, 3
loc_00437c0b:
    mov eax, 0x33
loc_00437c10:
    mov edx, eax
loc_00437c12:
    lea eax, [edx*4]
    sub eax, edx
    mov esi, 0xffffffff
    mov ecx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], si
    test ecx, ecx
    jne loc_00437c39
    mov edx, 0x33
    jmp loc_00437c54
loc_00437c39:
    cmp ecx, 1
    jne loc_00437c45
    mov eax, 0x32
    jmp loc_00437c52
loc_00437c45:
    cmp ecx, 4
    je loc_00437c4d
    cmp ecx, 3
loc_00437c4d:
    mov eax, 0x33
loc_00437c52:
    mov edx, eax
loc_00437c54:
    lea eax, [edx*4]
    sub eax, edx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_00437c77
    mov edx, 0x34
    jmp loc_00437c92
loc_00437c77:
    cmp eax, 1
    jne loc_00437c83
    mov eax, 0x33
    jmp loc_00437c90
loc_00437c83:
    cmp eax, 4
    je loc_00437c8b
    cmp eax, 3
loc_00437c8b:
    mov eax, 0x34
loc_00437c90:
    mov edx, eax
loc_00437c92:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0x2e
    mov esi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], dx
    test esi, esi
    jne loc_00437cb9
    mov edx, 0x34
    jmp loc_00437cd4
loc_00437cb9:
    cmp esi, 1
    jne loc_00437cc5
    mov eax, 0x33
    jmp loc_00437cd2
loc_00437cc5:
    cmp esi, 4
    je loc_00437ccd
    cmp esi, 3
loc_00437ccd:
    mov eax, 0x34
loc_00437cd2:
    mov edx, eax
loc_00437cd4:
    lea eax, [edx*4]
    sub eax, edx
    mov ebx, 0x3e
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa4], bx
    test edx, edx
    jne loc_00437cfb
    mov edx, 0x34
    jmp loc_00437d16
loc_00437cfb:
    cmp edx, 1
    jne loc_00437d07
    mov eax, 0x33
    jmp loc_00437d14
loc_00437d07:
    cmp edx, 4
    je loc_00437d0f
    cmp edx, 3
loc_00437d0f:
    mov eax, 0x34
loc_00437d14:
    mov edx, eax
loc_00437d16:
    lea eax, [edx*4]
    sub eax, edx
    mov ecx, 0xffffffff
    mov edi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], cx
    test edi, edi
    jne loc_00437d3d
    mov edx, 0x34
    jmp loc_00437d58
loc_00437d3d:
    cmp edi, 1
    jne loc_00437d49
    mov eax, 0x33
    jmp loc_00437d56
loc_00437d49:
    cmp edi, 4
    je loc_00437d51
    cmp edi, 3
loc_00437d51:
    mov eax, 0x34
loc_00437d56:
    mov edx, eax
loc_00437d58:
    lea eax, [edx*4]
    sub eax, edx
    mov esi, 0xffffffff
    mov ebx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], si
    test ebx, ebx
    jne loc_00437d7f
    mov edx, 0x34
    jmp loc_00437d9a
loc_00437d7f:
    cmp ebx, 1
    jne loc_00437d8b
    mov eax, 0x33
    jmp loc_00437d98
loc_00437d8b:
    cmp ebx, 4
    je loc_00437d93
    cmp ebx, 3
loc_00437d93:
    mov eax, 0x34
loc_00437d98:
    mov edx, eax
loc_00437d9a:
    lea eax, [edx*4]
    sub eax, edx
    mov edi, 0xffffffff
    mov ebp, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1faa], di
    test ebp, ebp
    jne loc_00437dc1
    mov edx, 0x35
    jmp loc_00437ddc
loc_00437dc1:
    cmp ebp, 1
    jne loc_00437dcd
    mov eax, 0x34
    jmp loc_00437dda
loc_00437dcd:
    cmp ebp, 4
    je loc_00437dd5
    cmp ebp, 3
loc_00437dd5:
    mov eax, 8
loc_00437dda:
    mov edx, eax
loc_00437ddc:
    lea eax, [edx*4]
    sub eax, edx
    mov edx, 0x2f
    mov ecx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa2], dx
    test ecx, ecx
    jne loc_00437e03
    mov eax, 0x35
    jmp loc_00437e1c
loc_00437e03:
    cmp ecx, 1
    jne loc_00437e0f
    mov eax, 0x34
    jmp loc_00437e1c
loc_00437e0f:
    cmp ecx, 4
    je loc_00437e17
    cmp ecx, 3
loc_00437e17:
    mov eax, 8
loc_00437e1c:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov word ptr [eax*4 + d_004a1fa4], 0x3f
    mov eax, dword ptr [d_004a2ca4]
    test eax, eax
    jne loc_00437e3d
    mov eax, 0x35
    jmp loc_00437e56
loc_00437e3d:
    cmp eax, 1
    jne loc_00437e49
    mov eax, 0x34
    jmp loc_00437e56
loc_00437e49:
    cmp eax, 4
    je loc_00437e51
    cmp eax, 3
loc_00437e51:
    mov eax, 8
loc_00437e56:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov ecx, 0xffffffff
    mov esi, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa6], cx
    test esi, esi
    jne loc_00437e7b
    mov eax, 0x35
    jmp loc_00437e94
loc_00437e7b:
    cmp esi, 1
    jne loc_00437e87
    mov eax, 0x34
    jmp loc_00437e94
loc_00437e87:
    cmp esi, 4
    je loc_00437e8f
    cmp esi, 3
loc_00437e8f:
    mov eax, 8
loc_00437e94:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov esi, 0xffffffff
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [eax*4 + d_004a1fa8], si
    test edx, edx
    jne loc_00437eb9
    mov eax, 0x35
    jmp loc_00437ed2
loc_00437eb9:
    cmp edx, 1
    jne loc_00437ec5
    mov eax, 0x34
    jmp loc_00437ed2
loc_00437ec5:
    cmp edx, 4
    je loc_00437ecd
    cmp edx, 3
loc_00437ecd:
    mov eax, 8
loc_00437ed2:
    mov edi, 0xffffffff
    mov ecx, 0x20
    mov edx, eax
    shl eax, 2
    mov ebx, 0x1a2
    sub eax, edx
    mov esi, 0x192
    mov edx, 0x197
    mov word ptr [eax*4 + d_004a1faa], di
    mov eax, 0x152
    mov word ptr [d_004a222a], di
    mov word ptr [d_004a222c], di
    mov word ptr [d_004a222e], di
    mov word ptr [d_004a2230], di
    mov word ptr [d_004a2232], di
    mov word ptr [d_004a20fe], di
    mov word ptr [d_004a2100], di
    mov word ptr [d_004a2102], di
    mov word ptr [d_004a2104], di
    mov word ptr [d_004a2106], di
    mov word ptr [d_004a2242], di
    mov word ptr [d_004a2244], di
    mov word ptr [d_004a2246], di
    mov word ptr [d_004a2248], di
    mov word ptr [d_004a224a], di
    mov word ptr [d_004a224e], cx
    mov word ptr [d_004a2250], cx
    mov word ptr [d_004a2252], cx
    mov word ptr [d_004a2254], cx
    mov word ptr [d_004a2256], cx
    mov word ptr [d_004a2842], di
    mov word ptr [d_004a2844], di
    mov word ptr [d_004a2846], di
    mov word ptr [d_004a2848], di
    mov word ptr [d_004a284a], di
    mov word ptr [d_004a26fe], di
    mov word ptr [d_004a2700], di
    mov word ptr [d_004a2702], di
    mov word ptr [d_004a2704], di
    mov word ptr [d_004a2706], di
    mov word ptr [d_004a297e], bx
    mov word ptr [d_004a2980], bx
    mov word ptr [d_004a2982], si
    mov word ptr [d_004a28fa], dx
    mov word ptr [d_004a28fc], dx
    mov edi, 0x147
    mov ecx, 0x177
    mov esi, 0x149
    mov ebx, 0x184
    mov edx, 0x193
    mov word ptr [d_004a297a], ax
    mov word ptr [d_004a297c], ax
    mov eax, 0x199
    mov word ptr [d_004a28f6], di
    mov word ptr [d_004a28f8], di
    mov word ptr [d_004a28fe], cx
    mov word ptr [d_004a290e], si
    mov word ptr [d_004a2910], si
    mov word ptr [d_004a2916], bx
    mov word ptr [d_004a298e], dx
    mov ecx, 0x153
    mov edi, 0x1a3
    mov ebx, 0x14f
    mov esi, 0x19f
    mov edx, 0x151
    mov word ptr [d_004a2912], ax
    mov word ptr [d_004a2914], ax
    mov eax, 0x175
    mov word ptr [d_004a2986], cx
    mov word ptr [d_004a2988], cx
    mov word ptr [d_004a298a], di
    mov word ptr [d_004a298c], di
    mov word ptr [d_004a2956], bx
    mov word ptr [d_004a2958], bx
    mov word ptr [d_004a295a], si
    mov word ptr [d_004a295c], si
    mov word ptr [d_004a296e], dx
    mov word ptr [d_004a2970], dx
    mov ecx, 0x1a1
    mov edi, 0x176
    mov ebx, 0x198
    mov esi, 0x18d
    mov edx, 0x1a0
    mov word ptr [d_004a295e], ax
    mov eax, 0x148
    mov word ptr [d_004a2972], cx
    mov word ptr [d_004a2974], cx
    mov word ptr [d_004a2976], di
    mov word ptr [d_004a2906], bx
    mov word ptr [d_004a2908], bx
    mov word ptr [d_004a290a], si
    mov word ptr [d_004a2966], dx
    mov word ptr [d_004a2968], dx
    mov edi, 0x150
    mov ecx, 0x191
    mov esi, 0x14b
    mov word ptr [d_004a2902], ax
    mov word ptr [d_004a2904], ax
    mov eax, 0x19b
    mov word ptr [d_004a2962], di
    mov word ptr [d_004a2964], di
    mov word ptr [d_004a296a], cx
    mov word ptr [d_004a2926], si
    mov word ptr [d_004a2928], si
    mov word ptr [d_004a292a], ax
    mov ebx, 0x173
    mov ecx, 0x14d
    mov edi, 0x19d
    mov edx, 0x174
    mov esi, 0x147
    mov word ptr [d_004a292c], ax
    mov eax, 0x2a
    mov word ptr [d_004a292e], bx
    mov word ptr [d_004a293e], cx
    mov word ptr [d_004a2940], cx
    mov word ptr [d_004a2942], di
    mov word ptr [d_004a2944], di
    mov word ptr [d_004a2946], dx
    mov word ptr [d_004a22f6], si
    mov ebx, 0xffffffff
    mov edx, 0x2f
    mov edi, 3
    mov ecx, 0x148
    mov esi, 0x38
    mov word ptr [d_004a2236], ax
    mov word ptr [d_004a2238], ax
    mov eax, 0x197
    mov word ptr [d_004a22de], bx
    mov word ptr [d_004a22e0], bx
    mov word ptr [d_004a22e2], bx
    mov word ptr [d_004a22e4], bx
    mov word ptr [d_004a22e6], bx
    mov word ptr [d_004a281e], dx
    mov word ptr [d_004a2820], dx
    mov word ptr [d_004a2822], bx
    mov word ptr [d_004a2824], bx
    mov word ptr [d_004a2826], di
    mov word ptr [d_004a223a], bx
    mov word ptr [d_004a223c], bx
    mov word ptr [d_004a223e], bx
    mov word ptr [d_004a231e], bx
    mov word ptr [d_004a2320], bx
    mov word ptr [d_004a2322], bx
    mov word ptr [d_004a2302], cx
    mov word ptr [d_004a2304], si
    mov edi, 0x2d
    mov ebx, 0x177
    mov edx, 0x18d
    mov ecx, 0x39
    mov esi, 0x199
    mov word ptr [d_004a22fa], ax
    mov word ptr [d_004a22fc], ax
    mov eax, 0x184
    mov word ptr [d_004a231a], di
    mov word ptr [d_004a231c], di
    mov word ptr [d_004a22fe], bx
    mov word ptr [d_004a230a], dx
    mov word ptr [d_004a2310], cx
    mov word ptr [d_004a2312], si
    mov word ptr [d_004a2314], si
    mov edi, 0x37
    mov ebx, 0x149
    mov edx, 0x2b
    mov ecx, 0xffffffff
    mov esi, 0x173
    mov word ptr [d_004a2316], ax
    mov eax, 0x14b
    mov word ptr [d_004a22f8], di
    mov word ptr [d_004a230e], bx
    mov word ptr [d_004a234a], dx
    mov word ptr [d_004a234c], dx
    mov word ptr [d_004a234e], cx
    mov word ptr [d_004a2350], cx
    mov word ptr [d_004a2352], cx
    mov word ptr [d_004a232e], si
    mov edi, 0x198
    mov edx, 0x34
    mov ebx, 0x19b
    mov ecx, 0x18f
    mov esi, 0x14d
    mov word ptr [d_004a2326], ax
    mov eax, 0x35
    mov word ptr [d_004a2306], di
    mov word ptr [d_004a2308], di
    mov word ptr [d_004a2328], dx
    mov word ptr [d_004a232a], bx
    mov word ptr [d_004a232c], bx
    mov word ptr [d_004a233a], cx
    mov word ptr [d_004a233e], si
    mov edi, 0x14c
    mov edx, 0x270f
    mov ebx, 0x174
    mov ecx, 0x14f
    mov esi, 0x31
    mov word ptr [d_004a2334], ax
    mov eax, 0x19d
    mov word ptr [d_004a2332], di
    mov word ptr [d_004a2336], dx
    mov word ptr [d_004a2338], dx
    mov word ptr [d_004a2346], bx
    mov word ptr [d_004a2356], cx
    mov word ptr [d_004a2358], si
    mov edi, 0x36
    mov edx, 0x175
    mov ebx, 0x150
    mov ecx, 0x32
    mov esi, 0x1a0
    mov word ptr [d_004a2342], ax
    mov word ptr [d_004a2344], ax
    mov eax, 0x191
    mov word ptr [d_004a2340], di
    mov word ptr [d_004a235e], dx
    mov word ptr [d_004a2362], bx
    mov word ptr [d_004a2364], cx
    mov word ptr [d_004a2366], si
    mov word ptr [d_004a2368], si
    mov edi, 0x19f
    mov edx, 0x151
    mov ebx, 0x33
    mov ecx, 0x1a1
    mov word ptr [d_004a236a], ax
    mov word ptr [d_004a235a], di
    mov word ptr [d_004a235c], di
    mov word ptr [d_004a236e], dx
    mov word ptr [d_004a2370], bx
    mov word ptr [d_004a2372], cx
    mov word ptr [d_004a2374], cx
    mov edi, 0x176
    mov eax, 0xd
    mov ebx, 0xffffffff
    mov edx, 0x1a2
    mov ecx, 0x192
    mov esi, 0x153
    mov word ptr [d_004a2376], di
    mov word ptr [d_004a26f2], ax
    mov word ptr [d_004a26f4], ax
    mov word ptr [d_004a26f6], bx
    mov word ptr [d_004a26f8], bx
    mov word ptr [d_004a26fa], bx
    mov word ptr [d_004a237e], dx
    mov word ptr [d_004a2380], dx
    mov word ptr [d_004a2382], cx
    mov word ptr [d_004a2386], si
    mov word ptr [d_004a238a], bx
    mov edi, 0x152
    mov eax, 0x30
    mov edx, 0x1a3
    mov ebx, 0x193
    mov word ptr [d_004a237a], di
    mov word ptr [d_004a237c], ax
    mov word ptr [d_004a238c], dx
    mov edi, 0x2e
    mov word ptr [d_004a238e], bx
    mov word ptr [d_004a2388], di
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00438500:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov edx, dword ptr [d_004a2ca4]
    call sub_00435ec8
    mov ebx, 0xb2
    mov ecx, 0xffffffff
    mov edi, 0x98
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [d_004a218e], bx
    mov word ptr [d_004a2190], cx
    mov esi, ecx
    mov word ptr [d_004a2192], cx
    mov word ptr [d_004a2194], cx
    mov word ptr [d_004a2196], cx
    mov word ptr [d_004a1fcc], di
    mov ebx, 0x26
    mov ecx, 0x31
    mov edi, 0x23
    mov word ptr [d_004a1fbe], si
    mov word ptr [d_004a1fc0], si
    mov word ptr [d_004a1fc2], si
    mov word ptr [d_004a1fca], si
    mov word ptr [d_004a1fce], si
    mov word ptr [d_004a1fd6], si
    mov word ptr [d_004a1fda], si
    mov word ptr [d_004a1fe2], si
    mov word ptr [d_004a1fe6], si
    mov word ptr [d_004a1fee], si
    mov word ptr [d_004a1ff2], si
    mov word ptr [d_004a1ffa], si
    mov word ptr [d_004a1ffe], si
    mov word ptr [d_004a2006], si
    mov word ptr [d_004a200a], si
    mov word ptr [d_004a2012], si
    mov word ptr [d_004a2016], si
    mov word ptr [d_004a201e], si
    mov word ptr [d_004a2022], si
    mov word ptr [d_004a202a], si
    mov word ptr [d_004a202e], si
    mov word ptr [d_004a2036], si
    mov word ptr [d_004a203a], si
    mov word ptr [d_004a1fba], bx
    mov word ptr [d_004a1fbc], cx
    mov word ptr [d_004a1fd8], di
    mov ebx, 0xe9
    mov ecx, 0x32
    mov edi, 0x7b
    mov word ptr [d_004a1fc6], bx
    mov word ptr [d_004a1fc8], cx
    mov word ptr [d_004a1fe4], di
    mov ebx, 0x22
    mov ecx, 0x33
    mov edi, 0x5b
    mov word ptr [d_004a1fd2], bx
    mov word ptr [d_004a1fd4], cx
    mov word ptr [d_004a1ff0], di
    mov ebx, 0x27
    mov ecx, 0x34
    mov edi, 0xa6
    mov word ptr [d_004a1fde], bx
    mov word ptr [d_004a1fe0], cx
    mov word ptr [d_004a1ffc], di
    mov ebx, 0x28
    mov ecx, 0x35
    mov edi, 0x60
    mov word ptr [d_004a1fea], bx
    mov word ptr [d_004a1fec], cx
    mov word ptr [d_004a2008], di
    mov ebx, 0x96
    mov ecx, 0x36
    mov edi, 0x5c
    mov word ptr [d_004a1ff6], bx
    mov word ptr [d_004a1ff8], cx
    mov word ptr [d_004a2014], di
    mov ebx, 0xe8
    mov ecx, 0x37
    mov edi, 0x88
    mov word ptr [d_004a2002], bx
    mov word ptr [d_004a2004], cx
    mov word ptr [d_004a2020], di
    mov ebx, 0x5f
    mov ecx, 0x38
    mov edi, 0x40
    mov word ptr [d_004a200e], bx
    mov word ptr [d_004a2010], cx
    mov word ptr [d_004a202c], di
    mov ebx, 0xe7
    mov ecx, 0x39
    mov edi, 0x5d
    mov word ptr [d_004a201a], bx
    mov word ptr [d_004a201c], cx
    mov word ptr [d_004a2038], di
    mov ebx, 0xe0
    mov ecx, 0x30
    mov word ptr [d_004a2026], bx
    mov word ptr [d_004a2028], cx
    mov ebx, 0x29
    mov ecx, 0xb0
    mov word ptr [d_004a2032], bx
    mov word ptr [d_004a2034], cx
    test edx, edx
    jne loc_00438771
    mov ebx, 0xd
    jmp loc_0043878c
loc_00438771:
    cmp edx, 1
    jne loc_0043877d
    mov eax, 0xd
    jmp loc_0043878a
loc_0043877d:
    cmp edx, 4
    je loc_00438785
    cmp edx, 3
loc_00438785:
    mov eax, 0xb
loc_0043878a:
    mov ebx, eax
loc_0043878c:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x3d
    test edx, edx
    jne loc_004387aa
    mov ebx, 0xd
    jmp loc_004387c5
loc_004387aa:
    cmp edx, 1
    jne loc_004387b6
    mov ebx, 0xd
    jmp loc_004387c5
loc_004387b6:
    cmp edx, 4
    je loc_004387be
    cmp edx, 3
loc_004387be:
    mov eax, 0xb
    mov ebx, eax
loc_004387c5:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x2b
    test edx, edx
    jne loc_004387e3
    mov eax, 0xd
    jmp loc_004387fc
loc_004387e3:
    cmp edx, 1
    jne loc_004387ef
    mov eax, 0xd
    jmp loc_004387fc
loc_004387ef:
    cmp edx, 4
    je loc_004387f7
    cmp edx, 3
loc_004387f7:
    mov eax, 0xb
loc_004387fc:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    jne loc_00438818
    mov ebx, 0xd
    jmp loc_00438833
loc_00438818:
    cmp edx, 1
    jne loc_00438824
    mov eax, 0xd
    jmp loc_00438831
loc_00438824:
    cmp edx, 4
    je loc_0043882c
    cmp edx, 3
loc_0043882c:
    mov eax, 0xb
loc_00438831:
    mov ebx, eax
loc_00438833:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0x7d
    test edx, edx
    jne loc_00438851
    mov ebx, 0xd
    jmp loc_0043886c
loc_00438851:
    cmp edx, 1
    jne loc_0043885d
    mov eax, 0xd
    jmp loc_0043886a
loc_0043885d:
    cmp edx, 4
    je loc_00438865
    cmp edx, 3
loc_00438865:
    mov eax, 0xb
loc_0043886a:
    mov ebx, eax
loc_0043886c:
    lea eax, [ebx*4]
    mov ecx, 0x88
    sub eax, ebx
    mov ebx, 0xffffffff
    mov esi, 0xa8
    mov word ptr [eax*4 + d_004a1faa], bx
    mov eax, 0xa4
    mov word ptr [d_004a20da], cx
    mov word ptr [d_004a20dc], si
    mov word ptr [d_004a20de], bx
    mov word ptr [d_004a20e0], bx
    mov word ptr [d_004a20e2], bx
    mov word ptr [d_004a20ea], bx
    mov word ptr [d_004a20ee], bx
    mov word ptr [d_004a2186], bx
    mov word ptr [d_004a2188], bx
    mov word ptr [d_004a218a], bx
    mov word ptr [d_004a21aa], bx
    mov word ptr [d_004a21ac], bx
    mov word ptr [d_004a21ae], bx
    mov word ptr [d_004a23ae], bx
    mov word ptr [d_004a23b0], bx
    mov word ptr [d_004a23b2], bx
    mov ecx, 0x24
    mov esi, 0xa3
    mov word ptr [d_004a20ec], ax
    mov word ptr [d_004a20e6], cx
    mov word ptr [d_004a20e8], si
    mov ecx, 0xf9
    mov esi, 0x25
    mov word ptr [d_004a2182], cx
    mov word ptr [d_004a2184], si
    mov ecx, 0x2a
    mov esi, 0xb5
    mov word ptr [d_004a21a6], cx
    mov word ptr [d_004a21a8], si
    mov ecx, 0x3c
    mov esi, 0x3e
    mov word ptr [d_004a23aa], cx
    mov word ptr [d_004a23ac], si
    test edx, edx
    je loc_0043897f
    cmp edx, 1
    jne loc_00438977
    mov eax, 0x32
    jmp loc_00438984
loc_00438977:
    cmp edx, 4
    je loc_0043897f
    cmp edx, 3
loc_0043897f:
    mov eax, 0x33
loc_00438984:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x2c
    test edx, edx
    je loc_004389ad
    cmp edx, 1
    jne loc_004389a5
    mov eax, 0x32
    jmp loc_004389b2
loc_004389a5:
    cmp edx, 4
    je loc_004389ad
    cmp edx, 3
loc_004389ad:
    mov eax, 0x33
loc_004389b2:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x3f
    test edx, edx
    jne loc_004389ce
    mov ebx, 0x33
    jmp loc_004389e9
loc_004389ce:
    cmp edx, 1
    jne loc_004389da
    mov eax, 0x32
    jmp loc_004389e7
loc_004389da:
    cmp edx, 4
    je loc_004389e2
    cmp edx, 3
loc_004389e2:
    mov eax, 0x33
loc_004389e7:
    mov ebx, eax
loc_004389e9:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    je loc_00438a14
    cmp edx, 1
    jne loc_00438a0c
    mov eax, 0x32
    jmp loc_00438a19
loc_00438a0c:
    cmp edx, 4
    je loc_00438a14
    cmp edx, 3
loc_00438a14:
    mov eax, 0x33
loc_00438a19:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    je loc_00438a42
    cmp edx, 1
    jne loc_00438a3a
    mov eax, 0x32
    jmp loc_00438a47
loc_00438a3a:
    cmp edx, 4
    je loc_00438a42
    cmp edx, 3
loc_00438a42:
    mov eax, 0x33
loc_00438a47:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    test edx, edx
    jne loc_00438a63
    mov eax, 0x27
    jmp loc_00438a75
loc_00438a63:
    cmp edx, 1
    je loc_00438a70
    cmp edx, 4
    je loc_00438a70
    cmp edx, 3
loc_00438a70:
    mov eax, 0x33
loc_00438a75:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x3b
    test edx, edx
    jne loc_00438a91
    mov eax, 0x27
    jmp loc_00438aa3
loc_00438a91:
    cmp edx, 1
    je loc_00438a9e
    cmp edx, 4
    je loc_00438a9e
    cmp edx, 3
loc_00438a9e:
    mov eax, 0x33
loc_00438aa3:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x2e
    test edx, edx
    jne loc_00438abf
    mov eax, 0x27
    jmp loc_00438ad1
loc_00438abf:
    cmp edx, 1
    je loc_00438acc
    cmp edx, 4
    je loc_00438acc
    cmp edx, 3
loc_00438acc:
    mov eax, 0x33
loc_00438ad1:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    jne loc_00438aed
    mov eax, 0x27
    jmp loc_00438aff
loc_00438aed:
    cmp edx, 1
    je loc_00438afa
    cmp edx, 4
    je loc_00438afa
    cmp edx, 3
loc_00438afa:
    mov eax, 0x33
loc_00438aff:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    jne loc_00438b1b
    mov eax, 0x27
    jmp loc_00438b2d
loc_00438b1b:
    cmp edx, 1
    je loc_00438b28
    cmp edx, 4
    je loc_00438b28
    cmp edx, 3
loc_00438b28:
    mov eax, 0x33
loc_00438b2d:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    test edx, edx
    jne loc_00438b49
    mov eax, 0x27
    jmp loc_00438b5b
loc_00438b49:
    cmp edx, 1
    je loc_00438b56
    cmp edx, 4
    je loc_00438b56
    cmp edx, 3
loc_00438b56:
    mov eax, 0x34
loc_00438b5b:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x3a
    test edx, edx
    jne loc_00438b77
    mov eax, 0x27
    jmp loc_00438b89
loc_00438b77:
    cmp edx, 1
    je loc_00438b84
    cmp edx, 4
    je loc_00438b84
    cmp edx, 3
loc_00438b84:
    mov eax, 0x34
loc_00438b89:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x2f
    test edx, edx
    jne loc_00438ba5
    mov eax, 0x27
    jmp loc_00438bb7
loc_00438ba5:
    cmp edx, 1
    je loc_00438bb2
    cmp edx, 4
    je loc_00438bb2
    cmp edx, 3
loc_00438bb2:
    mov eax, 0x34
loc_00438bb7:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    jne loc_00438bd3
    mov eax, 0x27
    jmp loc_00438be5
loc_00438bd3:
    cmp edx, 1
    je loc_00438be0
    cmp edx, 4
    je loc_00438be0
    cmp edx, 3
loc_00438be0:
    mov eax, 0x34
loc_00438be5:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    jne loc_00438c01
    mov ebx, 0x27
    jmp loc_00438c1c
loc_00438c01:
    cmp edx, 1
    jne loc_00438c0d
    mov ebx, 0x34
    jmp loc_00438c1c
loc_00438c0d:
    cmp edx, 4
    je loc_00438c15
    cmp edx, 3
loc_00438c15:
    mov eax, 0x34
    mov ebx, eax
loc_00438c1c:
    lea eax, [ebx*4]
    sub eax, ebx
    mov edi, 0xffffffff
    mov ebx, 0xa7
    mov word ptr [eax*4 + d_004a1faa], di
    mov eax, 0x21
    mov word ptr [d_004a2220], bx
    mov word ptr [d_004a2222], di
    mov word ptr [d_004a2224], di
    mov word ptr [d_004a2226], di
    mov word ptr [d_004a221e], ax
    mov dword ptr [d_004a2ca4], edx
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00438c6c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov edx, dword ptr [d_004a2ca4]
    call sub_00435ec8
    mov ebx, 0x88
    mov ecx, 0xba
    mov esi, 0xffffffff
    mov edi, 0xb2
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [d_004a218e], bx
    mov word ptr [d_004a2190], cx
    mov word ptr [d_004a2192], si
    mov word ptr [d_004a2194], si
    mov word ptr [d_004a2196], si
    mov word ptr [d_004a1fca], si
    mov word ptr [d_004a1fcc], di
    mov word ptr [d_004a1fce], si
    mov word ptr [d_004a1fd6], si
    mov word ptr [d_004a1fda], si
    mov word ptr [d_004a1ffa], si
    mov word ptr [d_004a1ffc], si
    mov word ptr [d_004a1ffe], si
    mov word ptr [d_004a2006], si
    mov word ptr [d_004a200a], si
    mov word ptr [d_004a2012], si
    mov word ptr [d_004a2016], si
    mov word ptr [d_004a201e], si
    mov word ptr [d_004a2022], si
    mov word ptr [d_004a202a], si
    mov word ptr [d_004a202e], si
    mov word ptr [d_004a2036], si
    mov word ptr [d_004a203a], si
    mov word ptr [d_004a2042], si
    mov word ptr [d_004a2044], si
    mov word ptr [d_004a2046], si
    mov ebx, 0x32
    mov ecx, 0x22
    mov edi, 0xb3
    mov word ptr [d_004a1fc6], bx
    mov word ptr [d_004a1fc8], cx
    mov word ptr [d_004a1fd8], di
    mov ebx, 0x33
    mov ecx, 0xa7
    mov edi, 0x7b
    mov word ptr [d_004a1fd2], bx
    mov word ptr [d_004a1fd4], cx
    mov word ptr [d_004a2008], di
    mov ebx, 0x36
    mov ecx, 0x26
    mov edi, 0x5b
    mov word ptr [d_004a1ff6], bx
    mov word ptr [d_004a1ff8], cx
    mov word ptr [d_004a2014], di
    mov ebx, 0x37
    mov ecx, 0xa6
    mov edi, 0x5d
    mov word ptr [d_004a2002], bx
    mov word ptr [d_004a2004], cx
    mov word ptr [d_004a2020], di
    mov ebx, 0x38
    mov ecx, 0x28
    mov edi, 0x7d
    mov word ptr [d_004a200e], bx
    mov word ptr [d_004a2010], cx
    mov word ptr [d_004a202c], di
    mov ebx, 0x39
    mov ecx, 0x29
    mov edi, 0x5c
    mov word ptr [d_004a201a], bx
    mov word ptr [d_004a201c], cx
    mov word ptr [d_004a2038], di
    mov ebx, 0x30
    mov ecx, 0x3d
    mov word ptr [d_004a2026], bx
    mov word ptr [d_004a2028], cx
    mov ebx, 0xdf
    mov ecx, 0x3f
    mov word ptr [d_004a2032], bx
    mov word ptr [d_004a2034], cx
    mov ebx, 0xb4
    mov ecx, 0x60
    mov word ptr [d_004a203e], bx
    mov word ptr [d_004a2040], cx
    test edx, edx
    je loc_00438e84
    cmp edx, 1
    jne loc_00438e7c
    mov eax, 0x1e
    jmp loc_00438e89
loc_00438e7c:
    cmp edx, 4
    je loc_00438e84
    cmp edx, 3
loc_00438e84:
    mov eax, 0x10
loc_00438e89:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x71
    test edx, edx
    je loc_00438eb2
    cmp edx, 1
    jne loc_00438eaa
    mov eax, 0x1e
    jmp loc_00438eb7
loc_00438eaa:
    cmp edx, 4
    je loc_00438eb2
    cmp edx, 3
loc_00438eb2:
    mov eax, 0x10
loc_00438eb7:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x51
    test edx, edx
    je loc_00438ee0
    cmp edx, 1
    jne loc_00438ed8
    mov eax, 0x1e
    jmp loc_00438ee5
loc_00438ed8:
    cmp edx, 4
    je loc_00438ee0
    cmp edx, 3
loc_00438ee0:
    mov eax, 0x10
loc_00438ee5:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0x110
    test edx, edx
    je loc_00438f0e
    cmp edx, 1
    jne loc_00438f06
    mov eax, 0x1e
    jmp loc_00438f13
loc_00438f06:
    cmp edx, 4
    je loc_00438f0e
    cmp edx, 3
loc_00438f0e:
    mov eax, 0x10
loc_00438f13:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0x40
    test edx, edx
    je loc_00438f3c
    cmp edx, 1
    jne loc_00438f34
    mov eax, 0x1e
    jmp loc_00438f41
loc_00438f34:
    cmp edx, 4
    je loc_00438f3c
    cmp edx, 3
loc_00438f3c:
    mov eax, 0x10
loc_00438f41:
    mov ebx, eax
    shl eax, 2
    mov ecx, 0xfc
    sub eax, ebx
    mov ebx, 0x11
    mov esi, 0xdc
    mov word ptr [eax*4 + d_004a1faa], bx
    mov edi, 0xffffffff
    mov word ptr [d_004a20da], cx
    mov word ptr [d_004a20dc], si
    mov word ptr [d_004a20de], di
    mov word ptr [d_004a20e0], di
    mov word ptr [d_004a20e2], di
    test edx, edx
    jne loc_00438f92
    mov eax, 0xd
    jmp loc_00438fab
loc_00438f92:
    cmp edx, 1
    jne loc_00438f9e
    mov eax, 0xd
    jmp loc_00438fab
loc_00438f9e:
    cmp edx, 4
    je loc_00438fa6
    cmp edx, 3
loc_00438fa6:
    mov eax, 0x1b
loc_00438fab:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x2b
    test edx, edx
    jne loc_00438fc7
    mov ebx, 0xd
    jmp loc_00438fe2
loc_00438fc7:
    cmp edx, 1
    jne loc_00438fd3
    mov ebx, 0xd
    jmp loc_00438fe2
loc_00438fd3:
    cmp edx, 4
    je loc_00438fdb
    cmp edx, 3
loc_00438fdb:
    mov eax, 0x1b
    mov ebx, eax
loc_00438fe2:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x2a
    test edx, edx
    jne loc_00439000
    mov eax, 0xd
    jmp loc_00439019
loc_00439000:
    cmp edx, 1
    jne loc_0043900c
    mov eax, 0xd
    jmp loc_00439019
loc_0043900c:
    cmp edx, 4
    je loc_00439014
    cmp edx, 3
loc_00439014:
    mov eax, 0x1b
loc_00439019:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    jne loc_00439035
    mov eax, 0xd
    jmp loc_0043904e
loc_00439035:
    cmp edx, 1
    jne loc_00439041
    mov eax, 0xd
    jmp loc_0043904e
loc_00439041:
    cmp edx, 4
    je loc_00439049
    cmp edx, 3
loc_00439049:
    mov eax, 0x1b
loc_0043904e:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0x98
    test edx, edx
    jne loc_0043906a
    mov ebx, 0xd
    jmp loc_00439083
loc_0043906a:
    cmp edx, 1
    jne loc_00439076
    mov ebx, 0xd
    jmp loc_00439083
loc_00439076:
    cmp edx, 4
    je loc_0043907e
    cmp edx, 3
loc_0043907e:
    mov ebx, 0x1b
loc_00439083:
    lea eax, [ebx*4]
    mov ecx, 0xffffffff
    sub eax, ebx
    mov esi, 0xf6
    mov edi, 0xd6
    mov word ptr [eax*4 + d_004a1faa], cx
    mov ebx, 0xa6
    mov word ptr [d_004a2176], si
    mov word ptr [d_004a2178], di
    mov word ptr [d_004a217a], cx
    mov word ptr [d_004a217c], cx
    mov word ptr [d_004a217e], cx
    mov word ptr [d_004a2186], cx
    mov word ptr [d_004a2188], cx
    mov word ptr [d_004a218a], cx
    mov word ptr [d_004a21aa], cx
    mov word ptr [d_004a21ac], cx
    mov word ptr [d_004a21ae], cx
    mov word ptr [d_004a23ae], cx
    mov word ptr [d_004a23b0], bx
    mov word ptr [d_004a23b2], cx
    mov esi, 0xe4
    mov edi, 0xc4
    mov word ptr [d_004a2182], si
    mov word ptr [d_004a2184], di
    mov esi, 0x23
    mov edi, 0x27
    mov word ptr [d_004a21a6], si
    mov word ptr [d_004a21a8], di
    mov esi, 0x3c
    mov edi, 0x3e
    mov word ptr [d_004a23aa], si
    mov word ptr [d_004a23ac], di
    test edx, edx
    jne loc_0043915d
    mov ebx, 0x32
    jmp loc_00439178
loc_0043915d:
    cmp edx, 1
    jne loc_00439169
    mov eax, 0x27
    jmp loc_00439176
loc_00439169:
    cmp edx, 4
    je loc_00439171
    cmp edx, 3
loc_00439171:
    mov eax, 0x32
loc_00439176:
    mov ebx, eax
loc_00439178:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x6d
    test edx, edx
    jne loc_00439196
    mov ebx, 0x32
    jmp loc_004391b1
loc_00439196:
    cmp edx, 1
    jne loc_004391a2
    mov eax, 0x27
    jmp loc_004391af
loc_004391a2:
    cmp edx, 4
    je loc_004391aa
    cmp edx, 3
loc_004391aa:
    mov eax, 0x32
loc_004391af:
    mov ebx, eax
loc_004391b1:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x4d
    test edx, edx
    je loc_004391dc
    cmp edx, 1
    jne loc_004391d4
    mov eax, 0x27
    jmp loc_004391e1
loc_004391d4:
    cmp edx, 4
    je loc_004391dc
    cmp edx, 3
loc_004391dc:
    mov eax, 0x32
loc_004391e1:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0x132
    test edx, edx
    je loc_0043920a
    cmp edx, 1
    jne loc_00439202
    mov eax, 0x27
    jmp loc_0043920f
loc_00439202:
    cmp edx, 4
    je loc_0043920a
    cmp edx, 3
loc_0043920a:
    mov eax, 0x32
loc_0043920f:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xb5
    test edx, edx
    jne loc_0043922b
    mov ebx, 0x32
    jmp loc_00439246
loc_0043922b:
    cmp edx, 1
    jne loc_00439237
    mov eax, 0x27
    jmp loc_00439244
loc_00439237:
    cmp edx, 4
    je loc_0043923f
    cmp edx, 3
loc_0043923f:
    mov eax, 0x32
loc_00439244:
    mov ebx, eax
loc_00439246:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xd
    test edx, edx
    je loc_00439271
    cmp edx, 1
    jne loc_00439269
    mov eax, 0x32
    jmp loc_00439276
loc_00439269:
    cmp edx, 4
    je loc_00439271
    cmp edx, 3
loc_00439271:
    mov eax, 0x33
loc_00439276:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x2c
    test edx, edx
    je loc_0043929f
    cmp edx, 1
    jne loc_00439297
    mov eax, 0x32
    jmp loc_004392a4
loc_00439297:
    cmp edx, 4
    je loc_0043929f
    cmp edx, 3
loc_0043929f:
    mov eax, 0x33
loc_004392a4:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x3b
    test edx, edx
    jne loc_004392c0
    mov ebx, 0x33
    jmp loc_004392db
loc_004392c0:
    cmp edx, 1
    jne loc_004392cc
    mov eax, 0x32
    jmp loc_004392d9
loc_004392cc:
    cmp edx, 4
    je loc_004392d4
    cmp edx, 3
loc_004392d4:
    mov eax, 0x33
loc_004392d9:
    mov ebx, eax
loc_004392db:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    jne loc_004392f9
    mov ebx, 0x33
    jmp loc_00439314
loc_004392f9:
    cmp edx, 1
    jne loc_00439305
    mov eax, 0x32
    jmp loc_00439312
loc_00439305:
    cmp edx, 4
    je loc_0043930d
    cmp edx, 3
loc_0043930d:
    mov eax, 0x33
loc_00439312:
    mov ebx, eax
loc_00439314:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    je loc_0043933f
    cmp edx, 1
    jne loc_00439337
    mov eax, 0x32
    jmp loc_00439344
loc_00439337:
    cmp edx, 4
    je loc_0043933f
    cmp edx, 3
loc_0043933f:
    mov eax, 0x33
loc_00439344:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    test edx, edx
    je loc_0043936d
    cmp edx, 1
    jne loc_00439365
    mov eax, 0x33
    jmp loc_00439372
loc_00439365:
    cmp edx, 4
    je loc_0043936d
    cmp edx, 3
loc_0043936d:
    mov eax, 0x34
loc_00439372:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x2e
    test edx, edx
    je loc_0043939b
    cmp edx, 1
    jne loc_00439393
    mov ebx, 0x33
    jmp loc_004393a0
loc_00439393:
    cmp edx, 4
    je loc_0043939b
    cmp edx, 3
loc_0043939b:
    mov ebx, 0x34
loc_004393a0:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x3a
    test edx, edx
    jne loc_004393be
    mov ebx, 0x34
    jmp loc_004393d9
loc_004393be:
    cmp edx, 1
    jne loc_004393ca
    mov eax, 0x33
    jmp loc_004393d7
loc_004393ca:
    cmp edx, 4
    je loc_004393d2
    cmp edx, 3
loc_004393d2:
    mov eax, 0x34
loc_004393d7:
    mov ebx, eax
loc_004393d9:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    je loc_00439404
    cmp edx, 1
    jne loc_004393fc
    mov eax, 0x33
    jmp loc_00439409
loc_004393fc:
    cmp edx, 4
    je loc_00439404
    cmp edx, 3
loc_00439404:
    mov eax, 0x34
loc_00439409:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    je loc_00439432
    cmp edx, 1
    jne loc_0043942a
    mov ebx, 0x33
    jmp loc_00439437
loc_0043942a:
    cmp edx, 4
    je loc_00439432
    cmp edx, 3
loc_00439432:
    mov ebx, 0x34
loc_00439437:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    test edx, edx
    jne loc_00439455
    mov ebx, 0xc
    jmp loc_00439470
loc_00439455:
    cmp edx, 1
    jne loc_00439461
    mov eax, 7
    jmp loc_0043946e
loc_00439461:
    cmp edx, 4
    je loc_00439469
    cmp edx, 3
loc_00439469:
    mov eax, 0x35
loc_0043946e:
    mov ebx, eax
loc_00439470:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x96
    test edx, edx
    jne loc_0043948e
    mov eax, 0xc
    jmp loc_004394a7
loc_0043948e:
    cmp edx, 1
    jne loc_0043949a
    mov eax, 7
    jmp loc_004394a7
loc_0043949a:
    cmp edx, 4
    je loc_004394a2
    cmp edx, 3
loc_004394a2:
    mov eax, 0x35
loc_004394a7:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x97
    test edx, edx
    jne loc_004394c3
    mov ebx, 0xc
    jmp loc_004394dc
loc_004394c3:
    cmp edx, 1
    jne loc_004394cf
    mov ebx, 7
    jmp loc_004394dc
loc_004394cf:
    cmp edx, 4
    je loc_004394d7
    cmp edx, 3
loc_004394d7:
    mov ebx, 0x35
loc_004394dc:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    jne loc_004394fa
    mov ebx, 0xc
    jmp loc_00439515
loc_004394fa:
    cmp edx, 1
    jne loc_00439506
    mov eax, 7
    jmp loc_00439513
loc_00439506:
    cmp edx, 4
    je loc_0043950e
    cmp edx, 3
loc_0043950e:
    mov eax, 0x35
loc_00439513:
    mov ebx, eax
loc_00439515:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    jne loc_00439533
    mov eax, 0xc
    jmp loc_0043954c
loc_00439533:
    cmp edx, 1
    jne loc_0043953f
    mov eax, 7
    jmp loc_0043954c
loc_0043953f:
    cmp edx, 4
    je loc_00439547
    cmp edx, 3
loc_00439547:
    mov eax, 0x35
loc_0043954c:
    mov ebx, eax
    shl eax, 2
    mov ecx, 0xffffffff
    sub eax, ebx
    mov esi, 0xf7
    mov edi, 0x2c
    mov word ptr [eax*4 + d_004a1faa], cx
    mov ebx, 0x1a3
    mov word ptr [d_004a281e], si
    mov word ptr [d_004a2820], si
    mov eax, ecx
    mov word ptr [d_004a2822], cx
    mov word ptr [d_004a2824], cx
    mov word ptr [d_004a2388], di
    mov word ptr [d_004a238c], bx
    mov ecx, 3
    mov esi, 0xd7
    mov word ptr [d_004a223a], ax
    mov word ptr [d_004a223c], ax
    mov word ptr [d_004a223e], ax
    mov word ptr [d_004a238a], ax
    mov word ptr [d_004a2826], cx
    mov word ptr [d_004a2236], si
    mov word ptr [d_004a2238], si
    mov esi, 0x153
    mov ecx, 0x193
    mov word ptr [d_004a2386], si
    mov word ptr [d_004a238e], cx
    mov dword ptr [d_004a2ca4], edx
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_004395f8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov edx, dword ptr [d_004a2ca4]
    call sub_00435ec8
    mov ebx, 0x5c
    mov ecx, 0x7c
    mov esi, 0xffffffff
    mov edi, 0x5b
    mov word ptr [d_004a218e], bx
    mov word ptr [d_004a2190], cx
    mov word ptr [d_004a2192], si
    mov word ptr [d_004a2194], si
    mov word ptr [d_004a2196], si
    mov word ptr [d_004a23ae], si
    mov word ptr [d_004a23b0], si
    mov word ptr [d_004a23b2], si
    mov word ptr [d_004a1fbe], si
    mov word ptr [d_004a1fc0], si
    mov word ptr [d_004a1fc2], si
    mov word ptr [d_004a1fca], si
    mov word ptr [d_004a1fcc], si
    mov word ptr [d_004a1fce], si
    mov word ptr [d_004a1fd6], si
    mov word ptr [d_004a1fd8], si
    mov word ptr [d_004a1fda], si
    mov word ptr [d_004a1ffa], si
    mov word ptr [d_004a1ffc], si
    mov word ptr [d_004a1ffe], si
    mov word ptr [d_004a2006], si
    mov word ptr [d_004a2008], si
    mov word ptr [d_004a200a], si
    mov word ptr [d_004a2012], si
    mov word ptr [d_004a2014], si
    mov word ptr [d_004a2016], si
    mov word ptr [d_004a201e], si
    mov word ptr [d_004a2020], si
    mov word ptr [d_004a2022], si
    mov word ptr [d_004a202a], si
    mov word ptr [d_004a202c], si
    mov word ptr [d_004a202e], si
    mov word ptr [d_004a2036], si
    mov word ptr [d_004a2038], si
    mov word ptr [d_004a203a], si
    mov word ptr [d_004a2042], si
    mov word ptr [d_004a2044], si
    mov word ptr [d_004a2046], si
    mov word ptr [d_004a20de], si
    mov word ptr [d_004a20e0], di
    mov word ptr [d_004a20e2], si
    mov word ptr [d_004a20ea], si
    mov word ptr [d_004a20ee], si
    mov word ptr [d_004a217a], si
    mov word ptr [d_004a217e], si
    mov ebx, 0x3c
    mov ecx, 0x3e
    mov edi, 0x5d
    mov word ptr [d_004a23aa], bx
    mov word ptr [d_004a23ac], cx
    mov word ptr [d_004a20ec], di
    mov ebx, 0x31
    mov ecx, 0x21
    mov edi, 0x40
    mov word ptr [d_004a1fba], bx
    mov word ptr [d_004a1fbc], cx
    mov word ptr [d_004a217c], di
    mov ebx, 0x32
    mov ecx, 0x22
    mov word ptr [d_004a1fc6], bx
    mov word ptr [d_004a1fc8], cx
    mov ebx, 0x33
    mov ecx, 0xa3
    mov word ptr [d_004a1fd2], bx
    mov word ptr [d_004a1fd4], cx
    mov ebx, 0x36
    mov ecx, 0x26
    mov word ptr [d_004a1ff6], bx
    mov word ptr [d_004a1ff8], cx
    mov ebx, 0x37
    mov ecx, 0x2f
    mov word ptr [d_004a2002], bx
    mov word ptr [d_004a2004], cx
    mov ebx, 0x38
    mov ecx, 0x28
    mov word ptr [d_004a200e], bx
    mov word ptr [d_004a2010], cx
    mov ebx, 0x39
    mov ecx, 0x29
    mov word ptr [d_004a201a], bx
    mov word ptr [d_004a201c], cx
    mov ebx, 0x30
    mov ecx, 0x3d
    mov word ptr [d_004a2026], bx
    mov word ptr [d_004a2028], cx
    mov ebx, 0x27
    mov ecx, 0x3f
    mov word ptr [d_004a2032], bx
    mov word ptr [d_004a2034], cx
    mov ebx, 0xec
    mov ecx, 0x5e
    mov word ptr [d_004a203e], bx
    mov word ptr [d_004a2040], cx
    mov ebx, 0xe8
    mov ecx, 0xe9
    mov word ptr [d_004a20da], bx
    mov word ptr [d_004a20dc], cx
    mov ebx, 0x2b
    mov ecx, 0x2a
    mov word ptr [d_004a20e6], bx
    mov word ptr [d_004a20e8], cx
    mov ebx, 0xf2
    mov ecx, 0xe7
    mov word ptr [d_004a2176], bx
    mov word ptr [d_004a2178], cx
    mov edx, 0xe0
    mov ebx, 0xb0
    mov eax, 0xf9
    mov ecx, esi
    mov word ptr [d_004a2186], si
    mov esi, 0x23
    mov word ptr [d_004a2182], dx
    mov word ptr [d_004a2184], bx
    mov edi, ecx
    mov word ptr [d_004a21a6], ax
    mov word ptr [d_004a21aa], cx
    mov word ptr [d_004a21ac], cx
    mov word ptr [d_004a21ae], cx
    mov edx, 0xa7
    mov word ptr [d_004a2188], si
    mov word ptr [d_004a21a8], dx
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [d_004a218a], di
    test edx, edx
    je loc_0043993f
    cmp edx, 1
    jne loc_00439937
    mov eax, 0x32
    jmp loc_00439944
loc_00439937:
    cmp edx, 4
    je loc_0043993f
    cmp edx, 3
loc_0043993f:
    mov eax, 0x33
loc_00439944:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x2c
    test edx, edx
    je loc_0043996d
    cmp edx, 1
    jne loc_00439965
    mov eax, 0x32
    jmp loc_00439972
loc_00439965:
    cmp edx, 4
    je loc_0043996d
    cmp edx, 3
loc_0043996d:
    mov eax, 0x33
loc_00439972:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x3b
    test edx, edx
    je loc_0043999b
    cmp edx, 1
    jne loc_00439993
    mov eax, 0x32
    jmp loc_004399a0
loc_00439993:
    cmp edx, 4
    je loc_0043999b
    cmp edx, 3
loc_0043999b:
    mov eax, 0x33
loc_004399a0:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    je loc_004399c9
    cmp edx, 1
    jne loc_004399c1
    mov eax, 0x32
    jmp loc_004399ce
loc_004399c1:
    cmp edx, 4
    je loc_004399c9
    cmp edx, 3
loc_004399c9:
    mov eax, 0x33
loc_004399ce:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    je loc_004399f7
    cmp edx, 1
    jne loc_004399ef
    mov eax, 0x32
    jmp loc_004399fc
loc_004399ef:
    cmp edx, 4
    je loc_004399f7
    cmp edx, 3
loc_004399f7:
    mov eax, 0x33
loc_004399fc:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    test edx, edx
    je loc_00439a25
    cmp edx, 1
    jne loc_00439a1d
    mov eax, 0x33
    jmp loc_00439a2a
loc_00439a1d:
    cmp edx, 4
    je loc_00439a25
    cmp edx, 3
loc_00439a25:
    mov eax, 0x34
loc_00439a2a:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x2e
    test edx, edx
    jne loc_00439a46
    mov ebx, 0x34
    jmp loc_00439a61
loc_00439a46:
    cmp edx, 1
    jne loc_00439a52
    mov eax, 0x33
    jmp loc_00439a5f
loc_00439a52:
    cmp edx, 4
    je loc_00439a5a
    cmp edx, 3
loc_00439a5a:
    mov eax, 0x34
loc_00439a5f:
    mov ebx, eax
loc_00439a61:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x3a
    test edx, edx
    jne loc_00439a7f
    mov ebx, 0x34
    jmp loc_00439a9a
loc_00439a7f:
    cmp edx, 1
    jne loc_00439a8b
    mov eax, 0x33
    jmp loc_00439a98
loc_00439a8b:
    cmp edx, 4
    je loc_00439a93
    cmp edx, 3
loc_00439a93:
    mov eax, 0x34
loc_00439a98:
    mov ebx, eax
loc_00439a9a:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    je loc_00439ac5
    cmp edx, 1
    jne loc_00439abd
    mov eax, 0x33
    jmp loc_00439aca
loc_00439abd:
    cmp edx, 4
    je loc_00439ac5
    cmp edx, 3
loc_00439ac5:
    mov eax, 0x34
loc_00439aca:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    jne loc_00439ae6
    mov ebx, 0x34
    jmp loc_00439b01
loc_00439ae6:
    cmp edx, 1
    jne loc_00439af2
    mov eax, 0x33
    jmp loc_00439aff
loc_00439af2:
    cmp edx, 4
    je loc_00439afa
    cmp edx, 3
loc_00439afa:
    mov eax, 0x34
loc_00439aff:
    mov ebx, eax
loc_00439b01:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    test edx, edx
    jne loc_00439b1f
    mov ebx, 0xc
    jmp loc_00439b3a
loc_00439b1f:
    cmp edx, 1
    jne loc_00439b2b
    mov ebx, 7
    jmp loc_00439b3a
loc_00439b2b:
    cmp edx, 4
    je loc_00439b33
    cmp edx, 3
loc_00439b33:
    mov eax, 0x35
    mov ebx, eax
loc_00439b3a:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x2d
    test edx, edx
    jne loc_00439b58
    mov eax, 0xc
    jmp loc_00439b71
loc_00439b58:
    cmp edx, 1
    jne loc_00439b64
    mov eax, 7
    jmp loc_00439b71
loc_00439b64:
    cmp edx, 4
    je loc_00439b6c
    cmp edx, 3
loc_00439b6c:
    mov eax, 0x35
loc_00439b71:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x5f
    test edx, edx
    jne loc_00439b8d
    mov ebx, 0xc
    jmp loc_00439ba6
loc_00439b8d:
    cmp edx, 1
    jne loc_00439b99
    mov ebx, 7
    jmp loc_00439ba6
loc_00439b99:
    cmp edx, 4
    je loc_00439ba1
    cmp edx, 3
loc_00439ba1:
    mov ebx, 0x35
loc_00439ba6:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    jne loc_00439bc4
    mov eax, 0xc
    jmp loc_00439bdd
loc_00439bc4:
    cmp edx, 1
    jne loc_00439bd0
    mov eax, 7
    jmp loc_00439bdd
loc_00439bd0:
    cmp edx, 4
    je loc_00439bd8
    cmp edx, 3
loc_00439bd8:
    mov eax, 0x35
loc_00439bdd:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    jne loc_00439bf9
    mov ebx, 0xc
    jmp loc_00439c14
loc_00439bf9:
    cmp edx, 1
    jne loc_00439c05
    mov eax, 7
    jmp loc_00439c12
loc_00439c05:
    cmp edx, 4
    je loc_00439c0d
    cmp edx, 3
loc_00439c0d:
    mov eax, 0x35
loc_00439c12:
    mov ebx, eax
loc_00439c14:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    mov dword ptr [d_004a2ca4], edx
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00439c34:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov edx, dword ptr [d_004a2ca4]
    call sub_00435ec8
    mov ebx, 0x31
    mov ecx, 0x21
    mov esi, 0xffffffff
    mov edi, 0x7c
    mov word ptr [d_004a1fba], bx
    mov word ptr [d_004a1fbc], cx
    mov word ptr [d_004a1fbe], si
    mov word ptr [d_004a1fc0], di
    mov word ptr [d_004a1fc2], si
    mov word ptr [d_004a1fca], si
    mov word ptr [d_004a1fce], si
    mov word ptr [d_004a1fd6], si
    mov word ptr [d_004a1fda], si
    mov word ptr [d_004a1ffa], si
    mov word ptr [d_004a1ffe], si
    mov word ptr [d_004a2006], si
    mov word ptr [d_004a2008], si
    mov word ptr [d_004a200a], si
    mov word ptr [d_004a2012], si
    mov word ptr [d_004a2014], si
    mov word ptr [d_004a2016], si
    mov word ptr [d_004a201e], si
    mov word ptr [d_004a2020], si
    mov word ptr [d_004a2022], si
    mov word ptr [d_004a202a], si
    mov word ptr [d_004a202c], si
    mov word ptr [d_004a202e], si
    mov word ptr [d_004a2036], si
    mov word ptr [d_004a2038], si
    mov word ptr [d_004a203a], si
    mov word ptr [d_004a2042], si
    mov word ptr [d_004a2044], si
    mov word ptr [d_004a2046], si
    mov word ptr [d_004a2192], si
    mov word ptr [d_004a2196], si
    mov word ptr [d_004a20de], si
    mov word ptr [d_004a20e2], si
    mov word ptr [d_004a20ea], si
    mov word ptr [d_004a20ee], si
    mov word ptr [d_004a23ae], si
    mov word ptr [d_004a23b0], si
    mov word ptr [d_004a23b2], si
    mov word ptr [d_004a217a], si
    mov word ptr [d_004a217c], si
    mov word ptr [d_004a217e], si
    mov ebx, 0x32
    mov ecx, 0x22
    mov edi, 0x40
    mov word ptr [d_004a1fc6], bx
    mov word ptr [d_004a1fc8], cx
    mov word ptr [d_004a1fcc], di
    mov ebx, 0x33
    mov ecx, 0x95
    mov edi, 0x23
    mov word ptr [d_004a1fd2], bx
    mov word ptr [d_004a1fd4], cx
    mov word ptr [d_004a1fd8], di
    mov ebx, 0x36
    mov ecx, 0x26
    mov edi, 0xac
    mov word ptr [d_004a1ff6], bx
    mov word ptr [d_004a1ff8], cx
    mov word ptr [d_004a1ffc], di
    mov ebx, 0x37
    mov ecx, 0x2f
    mov edi, 0x5c
    mov word ptr [d_004a2002], bx
    mov word ptr [d_004a2004], cx
    mov word ptr [d_004a2194], di
    mov ebx, 0x38
    mov ecx, 0x28
    mov edi, 0x5b
    mov word ptr [d_004a200e], bx
    mov word ptr [d_004a2010], cx
    mov word ptr [d_004a20e0], di
    mov ebx, 0x39
    mov ecx, 0x29
    mov edi, 0x5d
    mov word ptr [d_004a201a], bx
    mov word ptr [d_004a201c], cx
    mov word ptr [d_004a20ec], di
    mov ebx, 0x30
    mov ecx, 0x3d
    mov word ptr [d_004a2026], bx
    mov word ptr [d_004a2028], cx
    mov ebx, 0x92
    mov ecx, 0x3f
    mov word ptr [d_004a2032], bx
    mov word ptr [d_004a2034], cx
    mov ebx, 0xa1
    mov ecx, 0xbf
    mov word ptr [d_004a203e], bx
    mov word ptr [d_004a2040], cx
    mov ebx, 0xb0
    mov ecx, 0xaa
    mov word ptr [d_004a218e], bx
    mov word ptr [d_004a2190], cx
    mov ebx, 0x60
    mov ecx, 0x5e
    mov word ptr [d_004a20da], bx
    mov word ptr [d_004a20dc], cx
    mov ebx, 0x2b
    mov ecx, 0x2a
    mov word ptr [d_004a20e6], bx
    mov word ptr [d_004a20e8], cx
    mov ebx, 0x3c
    mov ecx, 0x3e
    mov word ptr [d_004a23aa], bx
    mov word ptr [d_004a23ac], cx
    mov ebx, 0xf1
    mov ecx, 0xd1
    mov word ptr [d_004a2176], bx
    mov word ptr [d_004a2178], cx
    mov edx, 0xa8
    mov ebx, 0xb4
    mov eax, 0xe7
    mov ecx, esi
    mov word ptr [d_004a2186], si
    mov esi, 0x7b
    mov word ptr [d_004a2182], dx
    mov word ptr [d_004a2184], bx
    mov edi, ecx
    mov word ptr [d_004a21a6], ax
    mov word ptr [d_004a21aa], cx
    mov edx, 0xc7
    mov ecx, 0x7d
    mov word ptr [d_004a2188], si
    mov word ptr [d_004a218a], di
    mov word ptr [d_004a21ae], di
    mov word ptr [d_004a21a8], dx
    mov edx, dword ptr [d_004a2ca4]
    mov word ptr [d_004a21ac], cx
    test edx, edx
    je loc_00439f94
    cmp edx, 1
    jne loc_00439f8c
    mov eax, 0x32
    jmp loc_00439f99
loc_00439f8c:
    cmp edx, 4
    je loc_00439f94
    cmp edx, 3
loc_00439f94:
    mov eax, 0x33
loc_00439f99:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x2c
    test edx, edx
    je loc_00439fc2
    cmp edx, 1
    jne loc_00439fba
    mov eax, 0x32
    jmp loc_00439fc7
loc_00439fba:
    cmp edx, 4
    je loc_00439fc2
    cmp edx, 3
loc_00439fc2:
    mov eax, 0x33
loc_00439fc7:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x3b
    test edx, edx
    je loc_00439ff0
    cmp edx, 1
    jne loc_00439fe8
    mov eax, 0x32
    jmp loc_00439ff5
loc_00439fe8:
    cmp edx, 4
    je loc_00439ff0
    cmp edx, 3
loc_00439ff0:
    mov eax, 0x33
loc_00439ff5:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    je loc_0043a01e
    cmp edx, 1
    jne loc_0043a016
    mov eax, 0x32
    jmp loc_0043a023
loc_0043a016:
    cmp edx, 4
    je loc_0043a01e
    cmp edx, 3
loc_0043a01e:
    mov eax, 0x33
loc_0043a023:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    je loc_0043a04c
    cmp edx, 1
    jne loc_0043a044
    mov eax, 0x32
    jmp loc_0043a051
loc_0043a044:
    cmp edx, 4
    je loc_0043a04c
    cmp edx, 3
loc_0043a04c:
    mov eax, 0x33
loc_0043a051:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    test edx, edx
    je loc_0043a07a
    cmp edx, 1
    jne loc_0043a072
    mov eax, 0x33
    jmp loc_0043a07f
loc_0043a072:
    cmp edx, 4
    je loc_0043a07a
    cmp edx, 3
loc_0043a07a:
    mov eax, 0x34
loc_0043a07f:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x2e
    test edx, edx
    jne loc_0043a09b
    mov ebx, 0x34
    jmp loc_0043a0b6
loc_0043a09b:
    cmp edx, 1
    jne loc_0043a0a7
    mov eax, 0x33
    jmp loc_0043a0b4
loc_0043a0a7:
    cmp edx, 4
    je loc_0043a0af
    cmp edx, 3
loc_0043a0af:
    mov eax, 0x34
loc_0043a0b4:
    mov ebx, eax
loc_0043a0b6:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x3a
    test edx, edx
    jne loc_0043a0d4
    mov ebx, 0x34
    jmp loc_0043a0ef
loc_0043a0d4:
    cmp edx, 1
    jne loc_0043a0e0
    mov eax, 0x33
    jmp loc_0043a0ed
loc_0043a0e0:
    cmp edx, 4
    je loc_0043a0e8
    cmp edx, 3
loc_0043a0e8:
    mov eax, 0x34
loc_0043a0ed:
    mov ebx, eax
loc_0043a0ef:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    je loc_0043a11a
    cmp edx, 1
    jne loc_0043a112
    mov eax, 0x33
    jmp loc_0043a11f
loc_0043a112:
    cmp edx, 4
    je loc_0043a11a
    cmp edx, 3
loc_0043a11a:
    mov eax, 0x34
loc_0043a11f:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    jne loc_0043a13b
    mov ebx, 0x34
    jmp loc_0043a156
loc_0043a13b:
    cmp edx, 1
    jne loc_0043a147
    mov eax, 0x33
    jmp loc_0043a154
loc_0043a147:
    cmp edx, 4
    je loc_0043a14f
    cmp edx, 3
loc_0043a14f:
    mov eax, 0x34
loc_0043a154:
    mov ebx, eax
loc_0043a156:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    test edx, edx
    jne loc_0043a174
    mov ebx, 0xc
    jmp loc_0043a18f
loc_0043a174:
    cmp edx, 1
    jne loc_0043a180
    mov ebx, 7
    jmp loc_0043a18f
loc_0043a180:
    cmp edx, 4
    je loc_0043a188
    cmp edx, 3
loc_0043a188:
    mov eax, 0x35
    mov ebx, eax
loc_0043a18f:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa2], 0x2d
    test edx, edx
    jne loc_0043a1ad
    mov eax, 0xc
    jmp loc_0043a1c6
loc_0043a1ad:
    cmp edx, 1
    jne loc_0043a1b9
    mov eax, 7
    jmp loc_0043a1c6
loc_0043a1b9:
    cmp edx, 4
    je loc_0043a1c1
    cmp edx, 3
loc_0043a1c1:
    mov eax, 0x35
loc_0043a1c6:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa4], 0x5f
    test edx, edx
    jne loc_0043a1e2
    mov ebx, 0xc
    jmp loc_0043a1fb
loc_0043a1e2:
    cmp edx, 1
    jne loc_0043a1ee
    mov ebx, 7
    jmp loc_0043a1fb
loc_0043a1ee:
    cmp edx, 4
    je loc_0043a1f6
    cmp edx, 3
loc_0043a1f6:
    mov ebx, 0x35
loc_0043a1fb:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa6], 0xffff
    test edx, edx
    jne loc_0043a219
    mov eax, 0xc
    jmp loc_0043a232
loc_0043a219:
    cmp edx, 1
    jne loc_0043a225
    mov eax, 7
    jmp loc_0043a232
loc_0043a225:
    cmp edx, 4
    je loc_0043a22d
    cmp edx, 3
loc_0043a22d:
    mov eax, 0x35
loc_0043a232:
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1fa8], 0xffff
    test edx, edx
    jne loc_0043a24e
    mov ebx, 0xc
    jmp loc_0043a269
loc_0043a24e:
    cmp edx, 1
    jne loc_0043a25a
    mov eax, 7
    jmp loc_0043a267
loc_0043a25a:
    cmp edx, 4
    je loc_0043a262
    cmp edx, 3
loc_0043a262:
    mov eax, 0x35
loc_0043a267:
    mov ebx, eax
loc_0043a269:
    lea eax, [ebx*4]
    sub eax, ebx
    mov word ptr [eax*4 + d_004a1faa], 0xffff
    mov dword ptr [d_004a2ca4], edx
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0043a288:
    push ecx
    push edx
    push 0x14
    call dword ptr cs:[__imp__GetKeyState]
    test al, 1
    je loc_0043a29e
    or byte ptr [d_0045c3be], 2
loc_0043a29e:
    push 0x90
    call dword ptr cs:[__imp__GetKeyState]
    test al, 1
    je loc_0043a2b5
    or byte ptr [d_0045c3be], 1
loc_0043a2b5:
    push 0x91
    call dword ptr cs:[__imp__GetKeyState]
    test al, 1
    je loc_0043a2cc
    or byte ptr [d_0045c3be], 4
loc_0043a2cc:
    pop edx
    pop ecx
    ret
    .byte 0x90
    push edx
    mov dl, byte ptr [d_0045c3be]
    test dl, 2
    je loc_0043a2e1
    and dl, 0xfd
    jmp loc_0043a2e4
loc_0043a2e1:
    or dl, 2
loc_0043a2e4:
    mov byte ptr [d_0045c3be], dl
    pop edx
    ret
    push edx
    mov dl, byte ptr [d_0045c3be]
    test dl, 1
    je loc_0043a2fd
    and dl, 0xfe
    jmp loc_0043a300
loc_0043a2fd:
    or dl, 1
loc_0043a300:
    mov byte ptr [d_0045c3be], dl
    pop edx
    ret
    push edx
    mov dl, byte ptr [d_0045c3be]
    test dl, 4
    je loc_0043a319
    and dl, 0xfb
    jmp loc_0043a31c
loc_0043a319:
    or dl, 4
loc_0043a31c:
    mov byte ptr [d_0045c3be], dl
    pop edx
    nop
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push ecx
    push edx
    mov edx, eax
    mov ebx, dword ptr [d_0045c3b4]
    inc ebx
    mov ecx, dword ptr [d_0045c3b8]
    and ebx, 0x3f
    mov eax, 0xffffffff
    cmp ebx, ecx
    je loc_0043a35c
    mov eax, dword ptr [d_0045c3b4]
    mov edx, dword ptr [edx]
    mov dword ptr [d_0045c3b4], ebx
    mov dword ptr [eax*4 + d_004a1ea0], edx
    xor eax, eax
loc_0043a35c:
    pop edx
    pop ecx
    pop ebx
    ret
    push ebx
    push edx
    push esi
    mov edx, dword ptr [d_0045c3b8]
    mov ebx, eax
    mov esi, dword ptr [d_0045c3b4]
    mov eax, 0xffffffff
    cmp edx, esi
    je loc_0043a38d
    test ebx, ebx
    je loc_0043a387
    mov eax, dword ptr [edx*4 + d_004a1ea0]
    mov dword ptr [ebx], eax
loc_0043a387:
    inc edx
    xor eax, eax
    and edx, 0x3f
loc_0043a38d:
    mov dword ptr [d_0045c3b8], edx
    pop esi
    pop edx
    pop ebx
    ret
    .byte 0x90
sub_0043a398:
    push ebx
    push ecx
    push esi
    push edi
    mov ecx, dword ptr [d_0045c3b8]
    mov edi, dword ptr [d_0045c3b4]
    mov ebx, eax
    mov esi, edx
    mov edx, 0xffffffff
    cmp ecx, edi
    je loc_0043a3e1
    cmp edi, ecx
    jle loc_0043a3c0
    mov eax, edi
    sub eax, ecx
    dec eax
    jmp loc_0043a3ca
loc_0043a3c0:
    mov eax, 0x40
    sub eax, ecx
    dec eax
    add eax, edi
loc_0043a3ca:
    cmp ebx, eax
    jg loc_0043a3e1
    add ebx, ecx
    and ebx, 0x3f
    mov eax, offset d_004a1ea0
    shl ebx, 2
    add eax, ebx
    xor edx, edx
    mov dword ptr [esi], eax
loc_0043a3e1:
    mov eax, edx
    mov dword ptr [d_0045c3b4], edi
    mov dword ptr [d_0045c3b8], ecx
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_0043a400:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov edx, eax
    call sub_00444760
    cmp eax, 1
    jne loc_0043a4c3
    call sub_00433b60
    cmp eax, -1
    je loc_0043a4c3
    call sub_00430d70
    cmp eax, -1
    je loc_0043a4c3
    mov eax, 1
    call sub_0043b518
    cmp eax, -1
    je loc_0043a457
    mov eax, 1
    call sub_0043b430
    call sub_0043ae28
    call sub_0043b6dc
    xor eax, eax
loc_0043a457:
    cmp eax, -1
    je loc_0043a4c3
    mov esi, 0xffffffff
    mov ecx, 0x119
    mov edi, offset ptr_0043a7c0
    mov ebp, offset ptr_0043a9d0
    mov dword ptr [d_004a3794], edx
    xor ebx, ebx
    xor eax, eax
    mov dword ptr [d_004a37a8], ebx
    mov dword ptr [d_004a37c0], ebx
    mov dword ptr [d_004a37b8], esi
    mov dword ptr [d_004a37a0], esi
    mov dword ptr [d_004a37a4], esi
    mov dword ptr [d_004a37c4], ebx
    mov dword ptr [d_004a37ac], ebx
    mov dword ptr [d_004a37b4], ecx
    mov dword ptr [d_004a37bc], edi
    mov esi, 0x12e
    mov dword ptr [d_004a3798], ebp
    mov dword ptr [d_004a37b0], esi
    jmp loc_0043a4c8
loc_0043a4c3:
    mov eax, 0xffffffff
loc_0043a4c8:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0043a4d0:
    push edx
    xor eax, eax
    call sub_0043b44c
    xor eax, eax
    call sub_0043b518
    call sub_00430e08
    call sub_00433bc8
    call sub_004447d8
    mov eax, dword ptr [d_004a37a8]
    test eax, eax
    je loc_0043a505
loc_0043a4f7:
    mov edx, dword ptr [eax + 8]
    call sub_00444630
    mov eax, edx
    test edx, edx
    jne loc_0043a4f7
loc_0043a505:
    pop edx
    ret
    .byte 0x90
sub_0043a508:
    push edx
    call sub_0043b5ec
    cmp dword ptr [d_0045c4e0], 0
    jne loc_0043a51c
    call sub_0043b7d8
loc_0043a51c:
    call sub_0043a56c
    call sub_0043a624
    mov edx, eax
    cmp eax, -1
    jne loc_0043a54c
    call sub_004318c4
    test al, 0x33
    je loc_0043a54c
    mov edx, offset d_004a37a4
    mov eax, offset d_004a37a0
    call sub_00431804
    mov eax, 0xfffffffe
    pop edx
    ret
loc_0043a54c:
    mov eax, edx
    call sub_0043df28
    pop edx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    mov ebx, dword ptr [d_004a37a0]
    mov dword ptr [eax], ebx
    mov eax, dword ptr [d_004a37a4]
    mov dword ptr [edx], eax
    pop ebx
loc_0043a569:
    ret
    .byte 0x8b,0xc0
sub_0043a56c:
    call sub_0043a6a4
    call sub_00444f4c
    cmp eax, 3
    je loc_0043a580
    call sub_004313c8
loc_0043a580:
    call sub_0043de70
    cmp eax, -1
    jne sub_0043a594
    call sub_00433cac
    cmp eax, -1
    je loc_0043a569
sub_0043a594:
    push ebx
    push edx
    push edi
    mov edx, eax
    cmp eax, -1
    # je 0x43a620
    .byte 0x0f,0x84
    .long loc_0043a620 - . - 4
    cmp eax, dword ptr [d_004a37b4]
    jne loc_0043a5b3
    call sub_0043a784
    pop edi
    pop edx
    pop ebx
    ret
loc_0043a5b3:
    cmp eax, dword ptr [d_004a37b0]
    jne loc_0043a5c4
    call sub_0043a8d4
    pop edi
    pop edx
    pop ebx
    ret
loc_0043a5c4:
    mov eax, dword ptr [d_004a37c0]
    cmp eax, dword ptr [d_004a37b8]
    je loc_0043a620
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    shl eax, 2
    mov dword ptr [eax + d_004a35b0], edx
    add eax, offset d_004a35b0
    lea edx, [eax + 8]
    add eax, 4
    call sub_00431804
    mov edi, dword ptr [d_004a37c0]
    inc edi
    mov dword ptr [d_004a37c0], edi
    cmp edi, 0x28
    jne loc_0043a60f
    xor ebx, ebx
    mov dword ptr [d_004a37c0], ebx
    pop edi
    pop edx
    pop ebx
    ret
loc_0043a60f:
    cmp dword ptr [d_004a37b8], -1
    jne loc_0043a620
    xor edx, edx
    mov dword ptr [d_004a37b8], edx
loc_0043a620:
    pop edi
    pop edx
    pop ebx
    ret
sub_0043a624:
    push ebx
    push ecx
    push edx
    push esi
    mov edx, dword ptr [d_004a37b8]
    mov ebx, 0xffffffff
    cmp edx, ebx
    je loc_0043a67d
    lea eax, [edx*4]
    sub eax, edx
    inc edx
    mov ebx, dword ptr [eax*4 + d_004a35b0]
    mov ecx, dword ptr [eax*4 + d_004a35b4]
    mov eax, dword ptr [eax*4 + d_004a35b8]
    mov dword ptr [d_004a37a0], ecx
    mov dword ptr [d_004a37a4], eax
    cmp edx, 0x28
    jne loc_0043a668
    xor edx, edx
loc_0043a668:
    cmp edx, dword ptr [d_004a37c0]
    jne loc_0043a67d
    xor esi, esi
    mov edx, 0xffffffff
    mov dword ptr [d_004a37c0], esi
loc_0043a67d:
    mov eax, ebx
    mov dword ptr [d_004a37b8], edx
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0043a68c:
    push ebx
    push edx
    xor edx, edx
    mov ebx, 0xffffffff
    mov dword ptr [d_004a37c0], edx
    mov dword ptr [d_004a37b8], ebx
    pop edx
    pop ebx
    ret
sub_0043a6a4:
    push ebx
    push ecx
    push edx
    cmp dword ptr [d_004a37ac], 0
    jne loc_0043a6f5
    cmp dword ptr [d_004a37c4], 0
    jne loc_0043a6f5
    call dword ptr cs:[__imp__timeGetTime]
    mov ecx, offset d_004a37a8
    mov edx, dword ptr [d_004a37a8]
    mov dword ptr [d_004a37c8], eax
    test edx, edx
    je loc_0043a6f5
loc_0043a6d4:
    mov ah, byte ptr [edx]
    mov ebx, dword ptr [edx + 8]
    test ah, 1
    je loc_0043a6e9
    mov eax, edx
    mov dword ptr [ecx], ebx
    call sub_00444630
    jmp loc_0043a6ef
loc_0043a6e9:
    call dword ptr [edx + 4]
    lea ecx, [edx + 8]
loc_0043a6ef:
    mov edx, ebx
    test ebx, ebx
    jne loc_0043a6d4
loc_0043a6f5:
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0043a6fc:
    push edx
    mov edx, eax
    mov eax, dword ptr [d_004a37a8]
    test eax, eax
    je loc_0043a724
loc_0043a708:
    cmp edx, dword ptr [eax + 4]
    jne loc_0043a71d
    mov dl, byte ptr [eax]
    test dl, 1
    je loc_0043a749
    mov dh, dl
    and dh, 0xfe
    mov byte ptr [eax], dh
    pop edx
    ret
loc_0043a71d:
    mov eax, dword ptr [eax + 8]
    test eax, eax
    jne loc_0043a708
loc_0043a724:
    mov eax, 0xc
    call sub_004444b0
    test eax, eax
    je loc_0043a749
    mov dword ptr [eax], 0
    mov dword ptr [eax + 4], edx
    mov edx, dword ptr [d_004a37a8]
    mov dword ptr [d_004a37a8], eax
    mov dword ptr [eax + 8], edx
loc_0043a749:
    pop edx
    ret
    .byte 0x90
sub_0043a74c:
    push edx
    mov edx, eax
    mov eax, dword ptr [d_004a37a8]
    test eax, eax
    je loc_0043a769
loc_0043a758:
    cmp edx, dword ptr [eax + 4]
    jne loc_0043a762
    or byte ptr [eax], 1
    pop edx
    ret
loc_0043a762:
    mov eax, dword ptr [eax + 8]
    test eax, eax
    jne loc_0043a758
loc_0043a769:
    pop edx
    ret
    .byte 0x90
    push edx
    xor edx, edx
    mov dword ptr [d_004a37c4], edx
    pop edx
    ret
    .byte 0x90
    mov dword ptr [d_004a37c4], 1
    ret
    .byte 0x90
sub_0043a784:
    push ecx
    push edx
    cmp dword ptr [d_004a37ac], 0
    jne loc_0043a7ba
    mov dword ptr [d_004a37ac], 1
    call dword ptr [d_004a37bc]
    mov edx, eax
loc_0043a7a1:
    call sub_0043a508
    cmp eax, 0x1b
    jne loc_0043a7a1
    xor ecx, ecx
    mov eax, edx
    mov dword ptr [d_004a37ac], ecx
    call sub_0043c960
loc_0043a7ba:
    pop edx
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
ptr_0043a7c0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov eax, offset d_0045ab24
    call dword ptr [d_0045c380]
    lea edi, [eax + 0x20]
    call dword ptr [d_0045c37c]
    lea esi, [eax*4]
    mov edx, dword ptr [d_004a3be4]
    sub esi, eax
    mov eax, dword ptr [d_004a3bec]
    sub eax, edx
    lea ebp, [esi + 0x10]
    lea edx, [eax + 1]
    sub edx, ebp
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov ebx, dword ptr [d_004a3be0]
    mov edx, dword ptr [d_004a3be8]
    sub edx, ebx
    inc edx
    sub edx, edi
    mov esi, eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    push 0x14
    push 0x100
    mov ecx, ebp
    mov ebx, edi
    mov edx, esi
    call sub_0043c734
    mov esi, eax
    cmp eax, -1
    je loc_0043a8b3
    call sub_0043ca60
    lea edx, [edi*8]
    mov eax, esi
    lea ebx, [edx + 0x10]
    call sub_0043dda4
    xor edx, edx
    mov ecx, edi
    mov dl, byte ptr [d_0049cf90]
    add eax, ebx
    push edx
    mov ebx, edi
    mov edx, offset d_0045ab24
    call dword ptr [d_0045c378]
    push 0
    push offset d_0045ab2c
    push 0x1b
    push -1
    push -1
    lea ebx, [ebp - 8]
    call dword ptr [d_0045c37c]
    sub ebx, eax
    mov eax, offset d_0045ab2c
    mov edx, edi
    call dword ptr [d_0045c380]
    sub edx, eax
    sub edx, 0x10
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov ecx, 0xffffffff
    sub ebx, 6
    mov edx, eax
    mov eax, esi
    call sub_00432298
    mov eax, esi
    call sub_0043d454
    mov eax, esi
loc_0043a8b3:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0043a8bc:
    mov dword ptr [d_004a37b4], eax
    test edx, edx
    jne loc_0043a8ca
    mov edx, offset ptr_0043a7c0
loc_0043a8ca:
    mov dword ptr [d_004a37bc], edx
    ret
    .byte 0x8d,0x40,0x00
sub_0043a8d4:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov eax, dword ptr [d_004a3be8]
    sub eax, dword ptr [d_004a3be0]
    lea esi, [eax + 1]
    mov ebx, dword ptr [d_004a3be4]
    mov eax, dword ptr [d_004a3bec]
    sub eax, ebx
    lea edx, [eax + 1]
    mov eax, esi
    imul eax, edx
    call sub_004444b0
    mov dword ptr [d_004a379c], eax
    test eax, eax
    je loc_0043a971
    mov ebp, offset ptr_0043a978
    mov eax, offset d_004a3be0
    mov ebx, dword ptr [d_004a3c08]
    mov ecx, dword ptr [d_0049d7fc]
    mov dword ptr [d_004a3c08], ebp
    mov dword ptr [d_0049d7fc], ebp
    xor ebp, ebp
    mov edi, dword ptr [d_0049d7f8]
    mov dword ptr [d_0049d7f8], ebp
    call sub_0043da90
    mov dword ptr [d_0049d7f8], edi
    mov dword ptr [d_0049d7fc], ecx
    mov dword ptr [d_004a3c08], ebx
    call sub_0042c570
    mov ebx, dword ptr [d_004a379c]
    mov ecx, eax
    mov eax, esi
    call dword ptr [d_004a3798]
    mov eax, dword ptr [d_004a379c]
    call sub_00444630
loc_0043a971:
    pop ebp
    pop edi
    pop esi
loc_0043a974:
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0043a978:
    push ebx
    push esi
    push edi
    push ebp
    mov eax, dword ptr [d_004a3be8]
    sub eax, dword ptr [d_004a3be0]
    mov edx, dword ptr [esp + 0x34]
    inc eax
    imul edx, eax
    mov ebx, dword ptr [esp + 0x30]
    push eax
    mov eax, dword ptr [d_004a379c]
    add eax, ebx
    add eax, edx
    mov ecx, dword ptr [esp + 0x1c]
    push eax
    mov eax, dword ptr [esp + 0x2c]
    imul eax, ecx
    mov esi, dword ptr [esp + 0x34]
    push ecx
    mov ebp, dword ptr [esp + 0x2c]
    mov edx, dword ptr [esp + 0x20]
    push esi
    mov edi, dword ptr [esp + 0x38]
    add edx, ebp
    push edi
    add eax, edx
    push eax
    call sub_004428b4
    add esp, 0x18
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_0043a9d0:
    push esi
    push edi
    push ebp
    sub esp, 0x3c
    mov dword ptr [esp + 0x20], eax
    mov dword ptr [esp + 0x24], edx
    mov dword ptr [esp + 0x14], ebx
    mov edi, ecx
    mov ebp, offset d_0045ab40
    xor esi, esi
loc_0043a9eb:
    push esi
    push offset d_0045ab34
    lea eax, [esp + 8]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov edx, ebp
    mov eax, esp
    call sub_004514fc
    test eax, eax
    je loc_0043aa19
    inc esi
    call sub_0045172e
    cmp esi, 0x186a0
    jl loc_0043a9eb
loc_0043aa19:
    cmp esi, 0x186a0
    je loc_0043aa35
    mov edx, offset d_0045ab44
    mov eax, esp
    call sub_004514fc
    mov ebp, eax
    mov esi, eax
    test eax, eax
    jne loc_0043aa3f
loc_0043aa35:
    mov eax, 0xffffffff
    jmp loc_0043acd8
loc_0043aa3f:
    mov edx, 0x4d42
    mov ebx, 1
    mov ecx, eax
    lea eax, [esp + 0x28]
    mov dword ptr [esp + 0x28], edx
    mov edx, 2
    call sub_00451958
    mov eax, dword ptr [esp + 0x20]
    imul eax, dword ptr [esp + 0x24]
    mov ebx, 1
    mov ecx, ebp
    add eax, 0x436
    mov edx, 4
    mov dword ptr [esp + 0x10], eax
    lea eax, [esp + 0x10]
    call sub_00451958
    mov edx, 2
    lea eax, [esp + 0x28]
    xor ebx, ebx
    mov ecx, ebp
    mov dword ptr [esp + 0x28], ebx
    mov ebx, 1
    call sub_00451958
    mov ebx, 1
    mov edx, 2
    xor ecx, ecx
    lea eax, [esp + 0x28]
    mov dword ptr [esp + 0x28], ecx
    mov ecx, ebp
    call sub_00451958
    mov ebx, 0x436
    mov edx, 4
    lea eax, [esp + 0x10]
    mov ecx, ebp
    mov dword ptr [esp + 0x10], ebx
    mov ebx, 1
    call sub_00451958
    mov ecx, 0x28
    mov ebx, 1
    mov edx, 4
    lea eax, [esp + 0x10]
    mov dword ptr [esp + 0x10], ecx
    mov ecx, ebp
    call sub_00451958
    mov eax, dword ptr [esp + 0x20]
    mov ebx, 1
    mov edx, 4
    mov ecx, ebp
    mov dword ptr [esp + 0x18], eax
    lea eax, [esp + 0x18]
    call sub_00451958
    mov eax, dword ptr [esp + 0x24]
    mov ebx, 1
    mov edx, 4
    mov ecx, ebp
    mov dword ptr [esp + 0x18], eax
    lea eax, [esp + 0x18]
    call sub_00451958
    mov eax, 1
    mov ebx, 1
    mov edx, 2
    mov ecx, ebp
    mov dword ptr [esp + 0x28], eax
    lea eax, [esp + 0x28]
    call sub_00451958
    mov edx, 8
    mov ebx, 1
    lea eax, [esp + 0x28]
    mov ecx, ebp
    mov dword ptr [esp + 0x28], edx
    mov edx, 2
    call sub_00451958
    mov ebx, 1
    mov edx, 4
    xor eax, eax
    mov ecx, ebp
    mov dword ptr [esp + 0x10], eax
    lea eax, [esp + 0x10]
    call sub_00451958
    mov ebx, 1
    lea eax, [esp + 0x10]
    xor edx, edx
    mov ecx, ebp
    mov dword ptr [esp + 0x10], edx
    mov edx, 4
    call sub_00451958
    mov edx, 4
    lea eax, [esp + 0x18]
    xor ebx, ebx
    mov ecx, ebp
    mov dword ptr [esp + 0x18], ebx
    mov ebx, 1
    call sub_00451958
    mov ebx, 1
    mov edx, 4
    xor ecx, ecx
    lea eax, [esp + 0x18]
    mov dword ptr [esp + 0x18], ecx
    mov ecx, ebp
    call sub_00451958
    mov ebx, 1
    mov edx, 4
    xor eax, eax
    mov ecx, ebp
    mov dword ptr [esp + 0x10], eax
    lea eax, [esp + 0x10]
    call sub_00451958
    mov ebx, 1
    lea eax, [esp + 0x10]
    xor edx, edx
    mov ecx, ebp
    mov dword ptr [esp + 0x10], edx
    mov edx, 4
    xor ebp, ebp
    call sub_00451958
loc_0043ac10:
    xor ah, ah
    mov byte ptr [esp + 0x38], ah
    mov al, byte ptr [edi]
    shl al, 2
    mov byte ptr [esp + 0x34], al
    mov al, byte ptr [edi + 1]
    shl al, 2
    mov byte ptr [esp + 0x30], al
    mov ebx, 1
    mov al, byte ptr [edi + 2]
    mov ecx, esi
    shl al, 2
    mov edx, ebx
    mov byte ptr [esp + 0x2c], al
    lea eax, [esp + 0x2c]
    call sub_00451958
    mov ebx, 1
    lea eax, [esp + 0x30]
    mov ecx, esi
    mov edx, ebx
    call sub_00451958
    mov ebx, 1
    lea eax, [esp + 0x34]
    mov ecx, esi
    mov edx, ebx
    add edi, 3
    call sub_00451958
    mov ebx, 1
    lea eax, [esp + 0x38]
    mov ecx, esi
    mov edx, ebx
    inc ebp
    call sub_00451958
    cmp ebp, 0x100
    jl loc_0043ac10
    mov ebp, dword ptr [esp + 0x24]
    dec ebp
    test ebp, ebp
    jl loc_0043acc8
    mov eax, dword ptr [esp + 0x20]
    mov edi, eax
    imul edi, ebp
    mov ecx, eax
    mov dword ptr [esp + 0x1c], eax
    neg ecx
    mov eax, dword ptr [esp + 0x14]
    mov dword ptr [esp + 0x1c], ecx
    add edi, eax
loc_0043acab:
    mov ebx, dword ptr [esp + 0x20]
    mov edx, 1
    mov ecx, esi
    mov eax, edi
    call sub_00451958
    mov ebx, dword ptr [esp + 0x1c]
    dec ebp
    add edi, ebx
    test ebp, ebp
    jge loc_0043acab
loc_0043acc8:
    mov eax, esi
    call sub_00452943
    mov eax, esi
    call sub_0045172e
    xor eax, eax
loc_0043acd8:
    add esp, 0x3c
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x90
    mov dword ptr [d_004a37b0], eax
    test edx, edx
    jne loc_0043acee
    mov edx, offset ptr_0043a9d0
loc_0043acee:
    mov dword ptr [d_004a3798], edx
    ret
    .byte 0x8d,0x40,0x00
sub_0043acf8:
    push ecx
    push edx
    call dword ptr cs:[__imp__timeGetTime]
    pop edx
    pop ecx
    ret
    push ebx
    push ecx
    push edx
    mov ebx, eax
    call dword ptr cs:[__imp__timeGetTime]
    mov edx, eax
    call sub_0043acf8
    cmp edx, eax
    ja loc_0043ad1f
    sub eax, edx
    jmp loc_0043ad24
loc_0043ad1f:
    mov eax, 0x7fffffff
loc_0043ad24:
    cmp eax, ebx
    jae loc_0043a974
    call sub_0043a56c
    call sub_0043acf8
    cmp edx, eax
    ja loc_0043ad1f
    sub eax, edx
    jmp loc_0043ad24
    .byte 0x8b,0xc0
    push ebx
    push ecx
    push edx
    mov ebx, eax
    call dword ptr cs:[__imp__timeGetTime]
    mov edx, eax
loc_0043ad4e:
    call sub_0043acf8
    cmp edx, eax
    ja loc_0043ad5b
    sub eax, edx
    jmp loc_0043ad60
loc_0043ad5b:
    mov eax, 0x7fffffff
loc_0043ad60:
    cmp eax, ebx
    jb loc_0043ad4e
    pop edx
    pop ecx
    pop ebx
    ret
sub_0043ad68:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    call dword ptr cs:[__imp__timeGetTime]
    cmp ebx, eax
    ja loc_0043ad7e
    sub eax, ebx
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043ad7e:
    mov eax, 0x7fffffff
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
    cmp edx, eax
    ja loc_0043ad8f
    sub eax, edx
    ret
loc_0043ad8f:
    mov eax, 0x7fffffff
    ret
    .byte 0x8d,0x40,0x00
    mov eax, dword ptr [d_004a37c8]
    ret
    .byte 0x8b,0xc0
    mov dword ptr [d_0045c3cc], eax
    ret
    .byte 0x8b,0xc0
    mov eax, dword ptr [d_0045c3cc]
    ret
    .byte 0x8b,0xc0
    mov dword ptr [d_0045c3d0], eax
    ret
    .byte 0x8b,0xc0
    mov eax, dword ptr [d_0045c3d0]
    ret
    .byte 0x8b,0xc0
sub_0043adc0:
    mov dword ptr [d_0045c3c8], eax
    ret
    .byte 0x8b,0xc0
    mov eax, dword ptr [d_0045c3c8]
    ret
    .byte 0x8b,0xc0
    mov dword ptr [d_0045c3c4], eax
    ret
    .byte 0x8b,0xc0
    mov eax, dword ptr [d_0045c3c4]
    ret
    .byte 0x8b,0xc0
    push edx
    mov eax, 1
    call sub_0043b518
    cmp eax, -1
    je loc_0043ae25
    mov eax, 1
    call sub_0043b44c
    call sub_00444848
    call sub_0043ae28
    xor eax, eax
loc_0043ae06:
    add eax, 8
    mov dword ptr [eax + d_004a2da8], 0xffffffff
    xor edx, edx
    mov word ptr [eax + d_004a2dac], dx
    cmp eax, 0x800
    jne loc_0043ae06
    xor eax, eax
loc_0043ae25:
    pop edx
    ret
    .byte 0x90
sub_0043ae28:
    push ebx
    push ecx
    push edx
    mov edx, dword ptr [d_004a2ca4]
    mov ah, 1
    mov bl, 2
    mov cl, 4
    mov byte ptr [d_004a2cb1], ah
    mov byte ptr [d_004a2cb2], bl
    mov byte ptr [d_004a2cb4], cl
    mov bh, 3
    mov ch, 5
    mov al, 6
    mov byte ptr [d_004a2cb3], bh
    mov byte ptr [d_004a2cb5], ch
    mov byte ptr [d_004a2cb6], al
    mov ah, 7
    mov bl, 8
    mov cl, 0xa
    mov byte ptr [d_004a2cb7], ah
    mov byte ptr [d_004a2cb8], bl
    mov byte ptr [d_004a2cba], cl
    mov bh, 9
    mov ch, 0xb
    mov byte ptr [d_004a2cb9], bh
    mov byte ptr [d_004a2cbb], ch
    test edx, edx
    jne loc_0043ae93
    mov eax, 0xc
    jmp loc_0043aeac
loc_0043ae93:
    cmp edx, 1
    jne loc_0043ae9f
    mov eax, 7
    jmp loc_0043aeac
loc_0043ae9f:
    cmp edx, 4
    je loc_0043aea7
    cmp edx, 3
loc_0043aea7:
    mov eax, 0x35
loc_0043aeac:
    mov byte ptr [d_004a2cbc], al
    test edx, edx
    jne loc_0043aebc
    mov eax, 0xd
    jmp loc_0043aed5
loc_0043aebc:
    cmp edx, 1
    jne loc_0043aec8
    mov eax, 0xd
    jmp loc_0043aed5
loc_0043aec8:
    cmp edx, 4
    je loc_0043aed0
    cmp edx, 3
loc_0043aed0:
    mov eax, 0xb
loc_0043aed5:
    mov byte ptr [d_004a2cbd], al
    mov byte ptr [d_004a2cbe], 0xe
    mov byte ptr [d_004a2cbf], 0xf
    test edx, edx
    je loc_0043af00
    cmp edx, 1
    jne loc_0043aef8
    mov eax, 0x1e
    jmp loc_0043af05
loc_0043aef8:
    cmp edx, 4
    je loc_0043af00
    cmp edx, 3
loc_0043af00:
    mov eax, 0x10
loc_0043af05:
    mov byte ptr [d_004a2cc0], al
    test edx, edx
    je loc_0043af22
    cmp edx, 1
    jne loc_0043af1a
    mov eax, 0x2c
    jmp loc_0043af27
loc_0043af1a:
    cmp edx, 4
    je loc_0043af22
    cmp edx, 3
loc_0043af22:
    mov eax, 0x11
loc_0043af27:
    mov bl, 0x12
    mov cl, 0x14
    mov byte ptr [d_004a2cc1], al
    mov byte ptr [d_004a2cc2], bl
    mov bh, 0x13
    mov byte ptr [d_004a2cc4], cl
    mov byte ptr [d_004a2cc3], bh
    test edx, edx
    jne loc_0043af4f
    mov eax, 0x15
    jmp loc_0043af78
loc_0043af4f:
    cmp edx, 1
    jne loc_0043af5b
    mov eax, 0x15
    jmp loc_0043af78
loc_0043af5b:
    cmp edx, 4
    jne loc_0043af67
    mov eax, 0x15
    jmp loc_0043af78
loc_0043af67:
    cmp edx, 3
    jne loc_0043af73
    mov eax, 0x15
    jmp loc_0043af78
loc_0043af73:
    mov eax, 0x2c
loc_0043af78:
    mov ch, 0x16
    mov bl, 0x19
    mov byte ptr [d_004a2cc5], al
    mov al, 0x17
    mov byte ptr [d_004a2cc6], ch
    mov byte ptr [d_004a2cc7], al
    mov ah, 0x18
    mov byte ptr [d_004a2cc9], bl
    mov byte ptr [d_004a2cc8], ah
    test edx, edx
    jne loc_0043afa7
    mov eax, 0x1a
    jmp loc_0043afd0
loc_0043afa7:
    cmp edx, 1
    jne loc_0043afb3
    mov eax, 6
    jmp loc_0043afd0
loc_0043afb3:
    cmp edx, 4
    jne loc_0043afbf
    mov eax, 0x1a
    jmp loc_0043afd0
loc_0043afbf:
    cmp edx, 3
    jne loc_0043afcb
    mov eax, 0x1a
    jmp loc_0043afd0
loc_0043afcb:
    mov eax, 9
loc_0043afd0:
    mov byte ptr [d_004a2cca], al
    test edx, edx
    jne loc_0043afe0
    mov eax, 0x1b
    jmp loc_0043b009
loc_0043afe0:
    cmp edx, 1
    jne loc_0043afec
    mov eax, 0xc
    jmp loc_0043b009
loc_0043afec:
    cmp edx, 4
    jne loc_0043aff8
    mov eax, 0x1b
    jmp loc_0043b009
loc_0043aff8:
    cmp edx, 3
    jne loc_0043b004
    mov eax, 0x1b
    jmp loc_0043b009
loc_0043b004:
    mov eax, 0xa
loc_0043b009:
    mov bh, 0x1c
    mov cl, 0x1d
    mov byte ptr [d_004a2ccb], al
    mov byte ptr [d_004a2ccc], bh
    mov byte ptr [d_004a2ccd], cl
    test edx, edx
    je loc_0043b036
    cmp edx, 1
    jne loc_0043b02e
    mov eax, 0x10
    jmp loc_0043b03b
loc_0043b02e:
    cmp edx, 4
    je loc_0043b036
    cmp edx, 3
loc_0043b036:
    mov eax, 0x1e
loc_0043b03b:
    mov ch, 0x1f
    mov bl, 0x22
    mov byte ptr [d_004a2cce], al
    mov al, 0x20
    mov byte ptr [d_004a2ccf], ch
    mov byte ptr [d_004a2cd2], bl
    mov bh, 0x23
    mov cl, 0x24
    mov byte ptr [d_004a2cd0], al
    mov ah, 0x21
    mov byte ptr [d_004a2cd3], bh
    mov byte ptr [d_004a2cd4], cl
    mov ch, 0x25
    mov byte ptr [d_004a2cd1], ah
    mov al, 0x26
    mov byte ptr [d_004a2cd5], ch
    mov byte ptr [d_004a2cd6], al
    test edx, edx
    jne loc_0043b089
    mov eax, 0x27
    jmp loc_0043b09b
loc_0043b089:
    cmp edx, 1
    je loc_0043b096
    cmp edx, 4
    je loc_0043b096
    cmp edx, 3
loc_0043b096:
    mov eax, 0x33
loc_0043b09b:
    mov byte ptr [d_004a2cd7], al
    test edx, edx
    jne loc_0043b0ab
    mov eax, 0x28
    jmp loc_0043b0d1
loc_0043b0ab:
    cmp edx, 1
    jne loc_0043b0b7
    mov eax, 5
    jmp loc_0043b0d1
loc_0043b0b7:
    cmp edx, 4
    jne loc_0043b0c3
    mov eax, 0xc
    jmp loc_0043b0d1
loc_0043b0c3:
    cmp edx, 3
    setne al
    and eax, 0xff
    add eax, 0xc
loc_0043b0d1:
    mov byte ptr [d_004a2cd8], al
    test edx, edx
    jne loc_0043b0e1
    mov eax, 0x29
    jmp loc_0043b104
loc_0043b0e1:
    cmp edx, 1
    jne loc_0043b0ed
    mov eax, 3
    jmp loc_0043b104
loc_0043b0ed:
    cmp edx, 4
    jne loc_0043b0f6
    xor eax, eax
    jmp loc_0043b104
loc_0043b0f6:
    cmp edx, 3
    jne loc_0043b0ff
    xor eax, eax
    jmp loc_0043b104
loc_0043b0ff:
    mov eax, 0x1b
loc_0043b104:
    mov byte ptr [d_004a2cd9], al
    mov byte ptr [d_004a2cda], 0x2a
    test edx, edx
    jne loc_0043b11b
    mov eax, 0x2b
    jmp loc_0043b144
loc_0043b11b:
    cmp edx, 1
    jne loc_0043b127
    mov eax, 9
    jmp loc_0043b144
loc_0043b127:
    cmp edx, 4
    jne loc_0043b133
    mov eax, 0x29
    jmp loc_0043b144
loc_0043b133:
    cmp edx, 3
    jne loc_0043b13f
    mov eax, 0x29
    jmp loc_0043b144
loc_0043b13f:
    mov eax, 0xc
loc_0043b144:
    mov byte ptr [d_004a2cdb], al
    test edx, edx
    jne loc_0043b154
    mov eax, 0x2c
    jmp loc_0043b17d
loc_0043b154:
    cmp edx, 1
    jne loc_0043b160
    mov eax, 0x11
    jmp loc_0043b17d
loc_0043b160:
    cmp edx, 4
    jne loc_0043b16c
    mov eax, 0x2c
    jmp loc_0043b17d
loc_0043b16c:
    cmp edx, 3
    jne loc_0043b178
    mov eax, 0x2c
    jmp loc_0043b17d
loc_0043b178:
    mov eax, 0x15
loc_0043b17d:
    mov bl, 0x2d
    mov cl, 0x2f
    mov byte ptr [d_004a2cdc], al
    mov al, 0x31
    mov byte ptr [d_004a2cdd], bl
    mov byte ptr [d_004a2cdf], cl
    mov bh, 0x2e
    mov ch, 0x30
    mov byte ptr [d_004a2ce1], al
    mov byte ptr [d_004a2cde], bh
    mov byte ptr [d_004a2ce0], ch
    test edx, edx
    je loc_0043b1c1
    cmp edx, 1
    jne loc_0043b1b9
    mov eax, 0x27
    jmp loc_0043b1c6
loc_0043b1b9:
    cmp edx, 4
    je loc_0043b1c1
    cmp edx, 3
loc_0043b1c1:
    mov eax, 0x32
loc_0043b1c6:
    mov byte ptr [d_004a2ce2], al
    test edx, edx
    je loc_0043b1e3
    cmp edx, 1
    jne loc_0043b1db
    mov eax, 0x32
    jmp loc_0043b1e8
loc_0043b1db:
    cmp edx, 4
    je loc_0043b1e3
    cmp edx, 3
loc_0043b1e3:
    mov eax, 0x33
loc_0043b1e8:
    mov byte ptr [d_004a2ce3], al
    test edx, edx
    je loc_0043b205
    cmp edx, 1
    jne loc_0043b1fd
    mov eax, 0x33
    jmp loc_0043b20a
loc_0043b1fd:
    cmp edx, 4
    je loc_0043b205
    cmp edx, 3
loc_0043b205:
    mov eax, 0x34
loc_0043b20a:
    mov byte ptr [d_004a2ce4], al
    test edx, edx
    jne loc_0043b21a
    mov eax, 0x35
    jmp loc_0043b233
loc_0043b21a:
    cmp edx, 1
    jne loc_0043b226
    mov eax, 0x34
    jmp loc_0043b233
loc_0043b226:
    cmp edx, 4
    je loc_0043b22e
    cmp edx, 3
loc_0043b22e:
    mov eax, 8
loc_0043b233:
    mov bl, 0x37
    mov cl, 0x39
    mov byte ptr [d_004a2ce5], al
    mov ah, 0x36
    mov byte ptr [d_004a2ce7], bl
    mov byte ptr [d_004a2ce9], cl
    mov bh, 0x38
    mov ch, 0x3a
    mov byte ptr [d_004a2ce6], ah
    mov al, 0x3b
    mov byte ptr [d_004a2ce8], bh
    mov byte ptr [d_004a2cea], ch
    mov bl, 0x3d
    mov cl, 0x3f
    mov byte ptr [d_004a2ceb], al
    mov ah, 0x3c
    mov byte ptr [d_004a2ced], bl
    mov byte ptr [d_004a2cef], cl
    mov bh, 0x3e
    mov ch, 0x40
    mov byte ptr [d_004a2cec], ah
    mov al, 0x41
    mov byte ptr [d_004a2cee], bh
    mov byte ptr [d_004a2cf0], ch
    mov bl, 0x43
    mov cl, 0x45
    mov byte ptr [d_004a2cf1], al
    mov ah, 0x42
    mov byte ptr [d_004a2cf3], bl
    mov byte ptr [d_004a2cf5], cl
    mov bh, 0x44
    mov ch, 0x46
    mov byte ptr [d_004a2cf2], ah
    mov al, 0x47
    mov byte ptr [d_004a2cf4], bh
    mov byte ptr [d_004a2cf6], ch
    mov bl, 0x49
    mov cl, 0x4b
    mov byte ptr [d_004a2cf7], al
    mov ah, 0x48
    mov byte ptr [d_004a2cf9], bl
    mov byte ptr [d_004a2cfb], cl
    mov bh, 0x4a
    mov ch, 0x4c
    mov byte ptr [d_004a2cf8], ah
    mov al, 0x4d
    mov byte ptr [d_004a2cfa], bh
    mov byte ptr [d_004a2cfc], ch
    mov bl, 0x4f
    mov cl, 0x51
    mov byte ptr [d_004a2cfd], al
    mov ah, 0x4e
    mov byte ptr [d_004a2cff], bl
    mov byte ptr [d_004a2d01], cl
    mov bh, 0x50
    mov ch, 0x52
    mov byte ptr [d_004a2cfe], ah
    mov al, 0x53
    mov byte ptr [d_004a2d00], bh
    mov byte ptr [d_004a2d02], ch
    mov bl, 0x58
    mov cl, 0xb5
    mov byte ptr [d_004a2d03], al
    mov ah, 0x57
    mov byte ptr [d_004a2d08], bl
    mov byte ptr [d_004a2d65], cl
    mov bh, 0xff
    mov ch, 0x54
    mov byte ptr [d_004a2d07], ah
    mov ah, 0x9c
    mov byte ptr [d_004a2d14], bh
    mov byte ptr [d_004a2d15], bh
    mov byte ptr [d_004a2d16], bh
    mov byte ptr [d_004a2d20], bh
    mov byte ptr [d_004a2d29], bh
    mov byte ptr [d_004a2d2b], bh
    mov byte ptr [d_004a2d2d], bh
    mov byte ptr [d_004a2d3d], bh
    mov byte ptr [d_004a2d40], bh
    mov byte ptr [d_004a2d41], bh
    mov byte ptr [d_004a2d42], bh
    mov byte ptr [d_004a2d43], bh
    mov byte ptr [d_004a2d44], bh
    mov byte ptr [d_004a2d45], bh
    mov byte ptr [d_004a2d46], bh
    mov byte ptr [d_004a2d47], bh
    mov byte ptr [d_004a2d67], ch
    mov bl, 0x9d
    mov cl, 0xcb
    mov byte ptr [d_004a2d4c], ah
    mov al, 0xb8
    mov byte ptr [d_004a2d4d], bl
    mov byte ptr [d_004a2d63], bh
    mov byte ptr [d_004a2d7b], cl
    mov bl, 0xc8
    mov ch, 0xcd
    mov byte ptr [d_004a2d68], al
    mov ah, 0xc7
    mov byte ptr [d_004a2d78], bl
    mov byte ptr [d_004a2d7d], ch
    mov bh, 0xc9
    mov cl, 0xd3
    mov byte ptr [d_004a2d77], ah
    mov al, 0xcf
    mov byte ptr [d_004a2d79], bh
    mov byte ptr [d_004a2d83], cl
    mov bl, 0xd1
    mov ch, 0xff
    mov byte ptr [d_004a2d7f], al
    mov ah, 0xd0
    mov byte ptr [d_004a2d81], bl
    mov byte ptr [d_004a2d8b], ch
    mov byte ptr [d_004a2d8c], ch
    mov byte ptr [d_004a2d8d], ch
    mov bh, 0xd2
    mov byte ptr [d_004a2d80], ah
    mov byte ptr [d_004a2d82], bh
    mov dword ptr [d_004a2ca4], edx
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0043b430:
    push edx
    mov edx, eax
    call sub_0043b44c
    test edx, edx
    je loc_0043b443
    call sub_00444848
    pop edx
    ret
loc_0043b443:
    call sub_00444874
    pop edx
    ret
    .byte 0x8b,0xc0
sub_0043b44c:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    cmp eax, dword ptr [d_0045c3d4]
    je loc_0043b4a6
    test eax, eax
    je loc_0043b488
    call sub_00444908
    test eax, eax
    jne loc_0043b46f
    mov eax, 0xffffffff
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043b46f:
    push 0
    push 0
    push offset ptr_0043b548
    push 2
    call dword ptr cs:[__imp__SetWindowsHookExA]
    mov dword ptr [d_004a3790], eax
    jmp loc_0043b49b
loc_0043b488:
    call sub_00444934
    mov ecx, dword ptr [d_004a3790]
    push ecx
    call dword ptr cs:[__imp__UnhookWindowsHookEx]
loc_0043b49b:
    call sub_00433c6c
    mov dword ptr [d_0045c3d4], ebx
loc_0043b4a6:
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043b4ac:
    mov ebx, dword ptr [esp]
    cmp ebx, 1
    jbe loc_0043b4b8
    mov eax, ebx
    jmp loc_0043b4bd
loc_0043b4b8:
    mov eax, 1
loc_0043b4bd:
    mov ecx, dword ptr [esp + 4]
    cmp eax, ecx
    jae loc_0043b4d8
    mov esi, dword ptr [esp]
    cmp esi, 1
    jbe loc_0043b4d1
    mov eax, esi
    jmp loc_0043b4da
loc_0043b4d1:
    mov eax, 1
    jmp loc_0043b4da
loc_0043b4d8:
    mov eax, ecx
loc_0043b4da:
    push eax
    mov dword ptr [d_0045c3d8], eax
    call dword ptr cs:[__imp__timeBeginPeriod]
    xor eax, eax
    add esp, 8
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043b4f1:
    mov edx, dword ptr [d_0045c3d8]
    push edx
    call dword ptr cs:[__imp__timeEndPeriod]
    xor eax, eax
    add esp, 8
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    xor eax, eax
    call sub_0043b44c
    xor eax, eax
    # lea eax, [eax]
    .byte 0x8d,0x40,0x00
sub_0043b518:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 8
    test eax, eax
    je loc_0043b4f1
    push 8
    lea eax, [esp + 4]
    push eax
    call dword ptr cs:[__imp__timeGetDevCaps]
    test eax, eax
    je loc_0043b4ac
    mov eax, 0xffffffff
    add esp, 8
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_0043b548:
    push ebx
    push esi
    # --- patched: original code of 0x0043b54a..0x0043b552 replaced (see hooks.s)
    call bm_key_hook
    .fill 3, 1, 0x90
    cmp dword ptr [esp + 0xc], 0
    # jl 0x43b5d2
    .byte 0x0f,0x8c
    .long loc_0043b5d2 - . - 4
    cmp ebx, 0x2e
    jne loc_0043b582
    test esi, 0x20000000
    je loc_0043b582
    push 0x11
    call dword ptr cs:[__imp__GetAsyncKeyState]
    cwde
    test eax, 0x80000000
    je loc_0043b582
    xor eax, eax
    pop esi
    pop ebx
    ret 0xc
loc_0043b582:
    cmp ebx, 0x1b
    jne loc_0043b59f
    push 0x11
    call dword ptr cs:[__imp__GetAsyncKeyState]
    cwde
    test eax, 0x80000000
    je loc_0043b59f
    xor eax, eax
    pop esi
    pop ebx
    ret 0xc
loc_0043b59f:
    cmp ebx, 9
    jne loc_0043b5b3
    test esi, 0x20000000
    je loc_0043b5b3
    xor eax, eax
    pop esi
    pop ebx
    ret 0xc
loc_0043b5b3:
    cmp ebx, 0x90
    je loc_0043b5d2
    cmp ebx, 0x14
    je loc_0043b5d2
    cmp ebx, 0x91
    je loc_0043b5d2
    mov eax, 1
    pop esi
    pop ebx
    ret 0xc
loc_0043b5d2:
    push esi
    push ebx
    mov ebx, dword ptr [esp + 0x14]
    push ebx
    mov ecx, dword ptr [d_004a3790]
    push ecx
    call dword ptr cs:[__imp__CallNextHookEx]
    pop esi
    pop ebx
    ret 0xc
sub_0043b5ec:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    sub esp, 0x20
    cmp dword ptr [d_0045c4e0], 0
    je loc_0043b6a3
    call sub_00433cdc
    test eax, eax
    jne loc_0043b6a3
loc_0043b60e:
    lea eax, [esp + 0x1c]
    call sub_004449b0
    cmp eax, 1
    jne loc_0043b627
    lea eax, [esp + 0x1c]
    call sub_0043b700
    jmp loc_0043b60e
loc_0043b627:
    call dword ptr cs:[__imp__timeGetTime]
    mov ecx, eax
    xor ebx, ebx
    xor edx, edx
loc_0043b634:
    mov esi, dword ptr [edx + d_004a2db0]
    cmp esi, -1
    je loc_0043b697
    mov eax, esi
    cmp esi, ecx
    ja loc_0043b64d
    mov esi, ecx
    sub esi, eax
    mov eax, esi
    jmp loc_0043b652
loc_0043b64d:
    mov eax, 0x7fffffff
loc_0043b652:
    mov di, word ptr [edx + d_004a2db4]
    mov esi, eax
    test di, di
    je loc_0043b667
    mov eax, dword ptr [d_0045c3cc]
    jmp loc_0043b66c
loc_0043b667:
    mov eax, dword ptr [d_0045c3d0]
loc_0043b66c:
    cmp esi, eax
    jbe loc_0043b697
    mov byte ptr [esp + 0x1d], 1
    lea eax, [esp + 0x1c]
    mov byte ptr [esp + 0x1c], bl
    call sub_0043b700
    mov ax, word ptr [edx + d_004a2db4]
    mov dword ptr [edx + d_004a2db0], ecx
    inc eax
    mov word ptr [edx + d_004a2db4], ax
loc_0043b697:
    inc ebx
    add edx, 8
    cmp ebx, 0x100
    jl loc_0043b634
loc_0043b6a3:
    xor ebx, ebx
loc_0043b6a5:
    push 1
    push ebx
    push ebx
    push ebx
    lea eax, [esp + 0x10]
    push eax
    call dword ptr cs:[__imp__PeekMessageA]
    test eax, eax
    je loc_0043b6d0
    mov eax, esp
    push eax
    call dword ptr cs:[__imp__TranslateMessage]
    mov eax, esp
    push eax
    call dword ptr cs:[__imp__DispatchMessageA]
    jmp loc_0043b6a5
loc_0043b6d0:
    add esp, 0x20
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0043b6dc:
    push edx
    xor eax, eax
loc_0043b6df:
    add eax, 8
    mov dword ptr [eax + d_004a2da8], 0xffffffff
    xor edx, edx
    mov word ptr [eax + d_004a2dac], dx
    cmp eax, 0x800
    jne loc_0043b6df
    pop edx
    ret
    .byte 0x8b,0xc0
sub_0043b700:
    push ebx
    push ecx
    push edx
    push esi
    mov edx, eax
    xor ah, ah
    mov al, byte ptr [edx]
    cmp al, 0xc7
    jb loc_0043b728
    cmp al, 0xc9
    jbe loc_0043b73c
    cmp al, 0xcd
    jb loc_0043b722
    jbe loc_0043b73c
    cmp al, 0xcf
    jb loc_0043b73e
    cmp al, 0xd3
    jbe loc_0043b73c
    jmp loc_0043b73e
loc_0043b722:
    cmp al, 0xcb
    je loc_0043b73c
    jmp loc_0043b73e
loc_0043b728:
    cmp al, 0xb5
    jb loc_0043b734
    jbe loc_0043b73c
    cmp al, 0xb8
    je loc_0043b73c
    jmp loc_0043b73e
loc_0043b734:
    cmp al, 0x9c
    jb loc_0043b73e
    cmp al, 0x9d
    ja loc_0043b73e
loc_0043b73c:
    mov ah, 1
loc_0043b73e:
    xor ecx, ecx
    mov cl, byte ptr [edx]
    xor bh, bh
    mov bl, byte ptr [ecx + d_004a2cb0]
    cmp dword ptr [d_0045c530], 1
    sete al
    xor ecx, ecx
    mov cl, al
    test ecx, ecx
    je loc_0043b779
    test byte ptr [d_0045c53c], 1
    je loc_0043b7d0
    mov dword ptr [d_0045c540], 2
    call sub_00444e74
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043b779:
    test ah, ah
    je loc_0043b78d
    mov eax, 0xe0
    call sub_00433e14
    sub ebx, 0x80
loc_0043b78d:
    cmp byte ptr [edx + 1], 0
    jne loc_0043b7a8
    xor eax, eax
    mov al, byte ptr [edx]
    mov esi, 0xffffffff
    or bl, 0x80
    mov dword ptr [eax*8 + d_004a2db0], esi
    jmp loc_0043b7c6
loc_0043b7a8:
    xor ecx, ecx
    call sub_0043acf8
    mov cl, byte ptr [edx]
    mov dword ptr [ecx*8 + d_004a2db0], eax
    xor eax, eax
    mov al, byte ptr [edx]
    xor edx, edx
    mov word ptr [eax*8 + d_004a2db4], dx
loc_0043b7c6:
    xor eax, eax
    mov ax, bx
    call sub_00433e14
loc_0043b7d0:
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0043b7d8:
    cmp dword ptr [d_0045c3c8], 0
    je loc_0043b7e9
    xor eax, eax
    call dword ptr [d_0045c3c8]
loc_0043b7e9:
    cmp dword ptr [d_0045c4e0], 0
    jne loc_0043b808
    call sub_0043b5ec
    cmp dword ptr [d_0045c3c4], 0
    je loc_0043b7e9
    call dword ptr [d_0045c3c4]
    jmp loc_0043b7e9
loc_0043b808:
    cmp dword ptr [d_0045c3c8], 0
    je loc_0043b81c
    mov eax, 1
    call dword ptr [d_0045c3c8]
loc_0043b81c:
    ret
sub_0043b81d:
    # push 0x10
    .byte 0x68,0x10,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push esi
    mov esi, eax
    mov ecx, edx
    cmp word ptr [d_004a37d0], 0
    je loc_0043b841
    mov eax, 3
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043b841:
    mov ebx, 0x3c
    xor edx, edx
    mov eax, ecx
    call sub_00451940
    mov edx, ecx
    mov eax, esi
    call sub_0043b99c
    mov dword ptr [d_004a37cc], ecx
    mov word ptr [d_004a37d0], 1
    xor eax, eax
    pop esi
    pop ecx
    pop ebx
    ret
sub_0043b86d:
    # push 0x10
    .byte 0x68,0x10,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    mov ecx, eax
    cmp word ptr [d_004a37d0], 0
    jne loc_0043b88f
    mov eax, 0xe
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043b88f:
    mov ebx, 0x3c
    xor edx, edx
    call sub_00451940
    mov edx, ecx
    xor eax, eax
    call sub_0043b99c
    xor edx, edx
    mov dword ptr [d_004a37cc], edx
    xor ebx, ebx
    mov word ptr [d_004a37d0], bx
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_0043b8bd:
    .long ptr_0043b91b
    .long ptr_0043b921
    .long ptr_0043b927
    .long ptr_0043b92d
    .long ptr_0043b933
    .long ptr_0043b939
    .long ptr_0043b93f
    .long ptr_0043b945
    .long ptr_0043b94b
    .long ptr_0043b951
    .long ptr_0043b957
    .long ptr_0043b95d
    .long ptr_0043b963
    .long ptr_0043b969
    .long ptr_0043b96f
    .long ptr_0043b975
    .long ptr_0043b97b
    .long ptr_0043b981
    .byte 0x68,0x04,0x00,0x00,0x00,0xe8,0x32,0xad,0x00,0x00,0x83,0xf8,0x11,0x77,0x73,0xff
    .byte 0x24,0x85
    .long ptr_0043b8bd
ptr_0043b91b:
    .byte 0xb8
    .long d_0045ab48
    .byte 0xc3
ptr_0043b921:
    .byte 0xb8
    .long d_0045ab5f
    .byte 0xc3
ptr_0043b927:
    .byte 0xb8
    .long d_0045ab7a
    .byte 0xc3
ptr_0043b92d:
    .byte 0xb8
    .long d_0045ab8c
    .byte 0xc3
ptr_0043b933:
    .byte 0xb8
    .long d_0045aba0
    .byte 0xc3
ptr_0043b939:
    .byte 0xb8
    .long d_0045abc2
    .byte 0xc3
ptr_0043b93f:
    .byte 0xb8
    .long d_0045abdd
    .byte 0xc3
ptr_0043b945:
    .byte 0xb8
    .long d_0045ac10
    .byte 0xc3
ptr_0043b94b:
    .byte 0xb8
    .long d_0045ac22
    .byte 0xc3
ptr_0043b951:
    .byte 0xb8
    .long d_0045ac3a
    .byte 0xc3
ptr_0043b957:
    .byte 0xb8
    .long d_0045ac55
    .byte 0xc3
ptr_0043b95d:
    .byte 0xb8
    .long d_0045ac78
    .byte 0xc3
ptr_0043b963:
    .byte 0xb8
    .long d_0045ac9a
    .byte 0xc3
ptr_0043b969:
    .byte 0xb8
    .long d_0045acc2
    .byte 0xc3
ptr_0043b96f:
    .byte 0xb8
    .long d_0045ace2
    .byte 0xc3
ptr_0043b975:
    .byte 0xb8
    .long d_0045ad00
    .byte 0xc3
ptr_0043b97b:
    .byte 0xb8
    .long d_0045ad15
    .byte 0xc3
ptr_0043b981:
    .byte 0xb8
    .long d_0045ad2b
    .byte 0xc3,0xb8
    .long d_0045ad39
    .byte 0xc3,0x68,0x04,0x00,0x00,0x00,0xe8,0xaa,0xac,0x00,0x00,0xe9,0x11,0xad,0x00,0x00
sub_0043b99c:
    # push 8
    .byte 0x68,0x08,0x00,0x00,0x00
    call sub_00446641
    push ecx
    mov dword ptr [edx], eax
    shl eax, 5
    mov ecx, dword ptr [eax + d_0045c3dc]
    mov dword ptr [edx + 4], ecx
    mov ecx, dword ptr [eax + d_0045c3e0]
    mov dword ptr [edx + 8], ecx
    mov ecx, dword ptr [eax + d_0045c3e4]
    mov dword ptr [edx + 0xc], ecx
    mov ecx, dword ptr [eax + d_0045c3e8]
    mov dword ptr [edx + 0x10], ecx
    mov ecx, dword ptr [eax + d_0045c3ec]
    mov dword ptr [edx + 0x14], ecx
    mov ecx, dword ptr [eax + d_0045c3f0]
    mov dword ptr [edx + 0x18], ecx
    mov ecx, dword ptr [eax + d_0045c3f4]
    mov dword ptr [edx + 0x1c], ecx
    mov eax, dword ptr [eax + d_0045c3f8]
    mov dword ptr [edx + 0x20], eax
    pop ecx
    ret
ptr_0043b9f6:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    mov eax, 9
    ret
ptr_0043ba06:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
loc_0043ba0b:
    call sub_00446641
    mov eax, 0xe
    ret
ptr_0043ba16:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    jmp loc_0043ba0b
ptr_0043ba1d:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    jmp loc_0043ba0b
ptr_0043ba24:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    jmp loc_0043ba0b
ptr_0043ba2b:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    jmp loc_0043ba0b
ptr_0043ba32:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    jmp loc_0043ba0b
ptr_0043ba39:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    jmp loc_0043ba0b
ptr_0043ba40:
    .byte 0xff,0xff,0xff,0xff,0xff,0xff
ptr_0043ba46:
    push 0x1a4
    call sub_00446641
    push ecx
    push edx
    sub esp, 0x190
    mov edx, dword ptr [d_004a37d4]
    test edx, edx
    je loc_0043ba69
    mov eax, 3
    jmp loc_0043bab1
loc_0043ba69:
    mov dword ptr [d_004a37dc], edx
    mov eax, esp
    push eax
    push 0x101
    call sub_00457e32
    test eax, eax
    je loc_0043ba87
    call sub_0043c07f
    jmp loc_0043bab1
loc_0043ba87:
    push 0x8180
    push 0x40
    call dword ptr cs:[__imp__GlobalAlloc]
    mov dword ptr [d_0045c45c], eax
    test eax, eax
    jne loc_0043baa5
    mov eax, 0xc
    jmp loc_0043bab1
loc_0043baa5:
    mov dword ptr [d_004a37d4], 1
    xor eax, eax
loc_0043bab1:
    add esp, 0x190
    pop edx
    pop ecx
    ret
ptr_0043baba:
    # push 0x14
    .byte 0x68,0x14,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    cmp dword ptr [d_004a37d4], 0
    jne loc_0043bad9
    mov eax, 0xe
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043bad9:
    mov ecx, dword ptr [d_0045c45c]
    push ecx
    call dword ptr cs:[__imp__GlobalFree]
    xor ebx, ebx
    mov dword ptr [d_0045c45c], ebx
    call sub_00457e2c
    cmp eax, -1
    jne loc_0043bb02
    call sub_0043c07f
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043bb02:
    mov dword ptr [d_004a37d4], ebx
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0043bb0e:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    mov eax, 0x6445
    # push 0x40
    .byte 0x68,0x40,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x18
    mov esi, eax
    mov edx, 0xe
    mov dword ptr [esp + 0x14], edx
    cmp dword ptr [d_004a37d4], 0
    jne loc_0043be28
    mov eax, edx
    jmp loc_0043bf82
ptr_0043bb4f:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    mov eax, 0x6445
    # push 0x18
    .byte 0x68,0x18,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    push esi
    cmp dword ptr [d_004a37d4], 0
    jne loc_0043bf8c
    mov eax, 0xe
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0043bb83:
    push 0x24c
    call sub_00446641
    push esi
    push edi
    push ebp
    sub esp, 0x224
    mov esi, eax
    mov dword ptr [esp + 0x220], edx
    mov ebp, ebx
    mov edx, dword ptr [ebx]
    cmp edx, 0x200
    jg loc_0043bbaf
    test edx, edx
    jge loc_0043bbb9
loc_0043bbaf:
    mov eax, 6
    jmp loc_0043bca5
loc_0043bbb9:
    mov word ptr [esp + 0x208], 6
    test eax, eax
    jne loc_0043bc0b
    lea edi, [esp + 0x218]
    mov esi, offset ptr_0043ba40
    movsd dword ptr es:[edi], dword ptr [esi]
    movsw word ptr es:[edi], word ptr [esi]
    mov ebx, 4
    mov edx, offset d_004a37e8
    lea eax, [esp + 0x20a]
    call sub_00451dc4
    mov ebx, 6
    lea edx, [esp + 0x218]
    lea eax, [esp + 0x20e]
    call sub_00451dc4
    push 0x6445
    jmp loc_0043bc39
loc_0043bc0b:
    mov ebx, 4
    mov edx, eax
    lea eax, [esp + 0x20a]
    call sub_00451dc4
    lea edx, [esi + 4]
    mov ebx, 6
    lea eax, [esp + 0x20e]
    call sub_00451dc4
    xor eax, eax
    mov ax, word ptr [esi + 0xa]
    push eax
loc_0043bc39:
    call sub_00457e26
    mov word ptr [esp + 0x214], ax
    mov eax, dword ptr [d_004a37dc]
    mov dword ptr [esp], eax
    inc eax
    mov dword ptr [d_004a37dc], eax
    mov ax, word ptr [ebp]
    mov word ptr [esp + 4], ax
    mov ebx, dword ptr [ebp]
    mov edx, dword ptr [esp + 0x220]
    lea eax, [esp + 6]
    call sub_00451dc4
    push 0xe
    lea eax, [esp + 0x20c]
    push eax
    push 0
    mov eax, dword ptr [ebp]
    add eax, 6
    push eax
    lea eax, [esp + 0x10]
    push eax
    mov ebx, dword ptr [d_004a37f4]
    push ebx
    call sub_00457e20
    cmp eax, -1
    jne loc_0043bca0
    call sub_0043c07f
    jmp loc_0043bca5
loc_0043bca0:
    mov dword ptr [ebp], eax
    xor eax, eax
loc_0043bca5:
    add esp, 0x224
    pop ebp
    pop edi
    pop esi
    ret
ptr_0043bcaf:
    # push 0x10
    .byte 0x68,0x10,0x00,0x00,0x00
    call sub_00446641
    push ecx
    push esi
    push edi
    mov edi, eax
    mov esi, edx
    xor ecx, ecx
    jmp loc_0043bcca
loc_0043bcc4:
    inc ecx
    cmp ecx, 0x40
    je loc_0043bcde
loc_0043bcca:
    mov edx, dword ptr [d_004a37f4]
    mov eax, 0x6445
    call sub_0043bfc9
    test eax, eax
    jne loc_0043bcc4
loc_0043bcde:
    mov eax, dword ptr [d_004a37d8]
    cmp eax, dword ptr [d_004a37e4]
    je loc_0043bd7e
    mov edx, eax
    shl eax, 6
    add eax, edx
    shl eax, 2
    sub eax, edx
    add eax, eax
    mov edx, dword ptr [d_0045c45c]
    add eax, edx
    xor ebx, ebx
    mov bx, word ptr [eax + 4]
    lea edx, [eax + 6]
    mov eax, edi
    call sub_00451dc4
    mov edx, dword ptr [d_004a37d8]
    mov eax, edx
    shl eax, 6
    add eax, edx
    shl eax, 2
    sub eax, edx
    lea edx, [eax + eax]
    mov eax, dword ptr [d_0045c45c]
    mov ax, word ptr [edx + eax + 4]
    and eax, 0xffff
    mov dword ptr [esi], eax
    mov edx, dword ptr [d_004a37d8]
    mov eax, edx
    shl eax, 6
    add eax, edx
    shl eax, 2
    sub eax, edx
    lea edx, [eax + eax]
    mov eax, dword ptr [d_0045c45c]
    add eax, edx
    mov ebx, 0x206
    xor edx, edx
    call sub_00451940
    mov edx, dword ptr [d_004a37d8]
    inc edx
    mov ecx, 0x40
    mov eax, edx
    sar edx, 0x1f
    idiv ecx
    mov dword ptr [d_004a37d8], edx
    jmp loc_0043bd84
loc_0043bd7e:
    mov dword ptr [esi], 0
loc_0043bd84:
    xor eax, eax
    pop edi
    pop esi
    pop ecx
    ret
ptr_0043bd8a:
    # push 0x10
    .byte 0x68,0x10,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    cmp dword ptr [d_004a37e0], 0
    jne loc_0043bda9
    mov eax, 0xd
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043bda9:
    mov ebx, 0x206
    xor edx, edx
    mov eax, offset d_0045c45c
    call sub_00451940
    xor ecx, ecx
    mov dword ptr [d_004a37e4], ecx
    mov dword ptr [d_004a37d8], ecx
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0043bdce:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    mov eax, dword ptr [d_004a37e0]
    ret
sub_0043bdde:
    # push 0x18
    .byte 0x68,0x18,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    push esi
    mov esi, eax
    mov ebx, 4
    mov edx, offset d_004a37e8
    call sub_00451dc4
    lea eax, [esi + 4]
    mov ebx, 6
    mov edx, offset d_004a37ec
    call sub_00451dc4
    xor eax, eax
    mov ax, word ptr [d_004a37f2]
    push eax
    call sub_00457e26
    mov word ptr [esi + 0xa], ax
    xor eax, eax
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043be28:
    cmp dword ptr [d_004a37e0], 0
    je loc_0043be3b
    mov eax, 2
    jmp loc_0043bf82
loc_0043be3b:
    push 0x3e8
    push 2
    push 6
    call sub_00457e1a
    mov dword ptr [d_004a37f4], eax
    cmp eax, -1
    jne loc_0043be5d
    call sub_0043c07f
    jmp loc_0043bf82
loc_0043be5d:
    mov ebx, 0xe
    xor edx, edx
    mov eax, esp
    call sub_00451940
    mov word ptr [esp], 6
    xor eax, eax
    mov ax, si
    push eax
    call sub_00457e26
    mov word ptr [esp + 0xc], ax
    push 0xe
    lea eax, [esp + 4]
    push eax
    mov esi, dword ptr [d_004a37f4]
    push esi
    call sub_00457e14
    cmp eax, -1
    jne loc_0043beb3
    call sub_0043c07f
    mov ebx, eax
    mov esi, dword ptr [d_004a37f4]
    push esi
loc_0043bea7:
    call sub_00457e0e
    mov eax, ebx
    jmp loc_0043bf82
loc_0043beb3:
    lea eax, [esp + 0x14]
    push eax
    lea eax, [esp + 4]
    push eax
    mov edi, dword ptr [d_004a37f4]
    push edi
    call sub_00457e08
    cmp eax, -1
    jne loc_0043bed8
    mov eax, 1
    jmp loc_0043bf82
loc_0043bed8:
    mov ebx, 4
    lea edx, [esp + 2]
    mov eax, offset d_004a37e8
    call sub_00451dc4
    mov ebx, 6
    lea edx, [esp + 6]
    mov eax, offset d_004a37ec
    call sub_00451dc4
    mov eax, dword ptr [esp + 0xc]
    mov word ptr [d_004a37f2], ax
    mov eax, dword ptr [d_004a37f4]
    mov ebx, 1
    mov edx, 4
    call sub_0043c129
    lea eax, [esp + 0x10]
    push eax
    push 0x8004667e
    mov ebp, dword ptr [d_004a37f4]
    push ebp
    call sub_00457e02
    cmp eax, -1
    jne loc_0043bf4a
    call sub_0043c07f
    mov ebx, eax
    mov ecx, dword ptr [d_004a37f4]
    push ecx
    jmp loc_0043bea7
loc_0043bf4a:
    mov eax, dword ptr [d_004a37f4]
    mov ebx, 1
    mov edx, 0x20
    call sub_0043c129
    cmp eax, -1
    jne loc_0043bf76
    call sub_0043c07f
    mov ebx, eax
    mov edx, dword ptr [d_004a37f4]
    push edx
    jmp loc_0043bea7
loc_0043bf76:
    mov dword ptr [d_004a37e0], 1
    xor eax, eax
loc_0043bf82:
    add esp, 0x18
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043bf8c:
    cmp dword ptr [d_004a37e0], 0
    jne loc_0043bf9f
    mov eax, 0xd
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043bf9f:
    mov ebx, dword ptr [d_004a37f4]
    push ebx
    call sub_00457e0e
    cmp eax, -1
    jne loc_0043bfba
    call sub_0043c07f
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043bfba:
    xor esi, esi
    mov dword ptr [d_004a37e0], esi
    xor eax, eax
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0043bfc9:
    # push 0x40
    .byte 0x68,0x40,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push esi
    sub esp, 0x18
    mov esi, eax
    mov ebx, edx
    xor edx, edx
    mov dword ptr [esp + 0x10], edx
    mov dword ptr [esp + 0x14], 0xe
    lea eax, [esp + 0x10]
    push eax
    push 0x4004667f
    push ebx
    call sub_00457e02
    cmp eax, -1
    # je 0x43c076
    .byte 0x0f,0x84
    .long loc_0043c076 - . - 4
    cmp dword ptr [esp + 0x10], 0
    je loc_0043c076
    mov word ptr [esp], 6
    mov word ptr [esp + 0xc], si
    lea eax, [esp + 0x14]
    push eax
    lea eax, [esp + 4]
    push eax
    push 0
    push 0x206
    mov edx, dword ptr [d_004a37e4]
    mov eax, edx
    shl eax, 6
    add eax, edx
    shl eax, 2
    sub eax, edx
    lea edx, [eax + eax]
    mov eax, dword ptr [d_0045c45c]
    add eax, edx
    push eax
    push ebx
    call sub_00457dfc
    cmp eax, -1
    jne loc_0043c056
    call sub_0043c07f
    jmp loc_0043c078
loc_0043c056:
    mov edx, dword ptr [d_004a37e4]
    inc edx
    mov ebx, 0x40
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [d_004a37e4], edx
    mov eax, 1
    jmp loc_0043c078
loc_0043c076:
    xor eax, eax
loc_0043c078:
    add esp, 0x18
    pop esi
    pop ecx
    pop ebx
    ret
sub_0043c07f:
    # push 0xc
    .byte 0x68,0x0c,0x00,0x00,0x00
    call sub_00446641
    push ecx
    push edx
    call sub_00457df6
    cmp eax, 0x2742
    jb loc_0043c0cd
    # jbe 0x43c0f9
    .byte 0x0f,0x86
    .long loc_0043c0f9 - . - 4
    cmp eax, 0x276b
    jb loc_0043c0c1
    # jbe 0x43c119
    .byte 0x0f,0x86
    .long loc_0043c119 - . - 4
    cmp eax, 0x276c
    # jbe 0x43c119
    .byte 0x0f,0x86
    .long loc_0043c119 - . - 4
    cmp eax, 0x276d
    je loc_0043c0f1
    # jmp 0x43c121
    .byte 0xe9
    .long loc_0043c121 - . - 4
loc_0043c0c1:
    cmp eax, 0x2747
    je loc_0043c109
    # jmp 0x43c121
    .byte 0xe9
    .long loc_0043c121 - . - 4
loc_0043c0cd:
    cmp eax, 0x2728
    jb loc_0043c0e8
    jbe loc_0043c109
    cmp eax, 0x2738
    jb loc_0043c121
    jbe loc_0043c111
    cmp eax, 0x2741
    je loc_0043c0f9
    jmp loc_0043c121
loc_0043c0e8:
    cmp eax, 0x2726
    je loc_0043c101
    jmp loc_0043c121
loc_0043c0f1:
    mov eax, 0xe
    pop edx
    pop ecx
    ret
loc_0043c0f9:
    mov eax, 0x10
    pop edx
    pop ecx
    ret
loc_0043c101:
    mov eax, 8
    pop edx
    pop ecx
    ret
loc_0043c109:
    mov eax, 4
    pop edx
    pop ecx
    ret
loc_0043c111:
    mov eax, 6
    pop edx
    pop ecx
    ret
loc_0043c119:
    mov eax, 0xb
    pop edx
    pop ecx
    ret
loc_0043c121:
    mov eax, 0x11
    pop edx
    pop ecx
    ret
sub_0043c129:
    # push 0x20
    .byte 0x68,0x20,0x00,0x00,0x00
    call sub_00446641
    push ecx
    push ebx
    push 4
    lea ecx, [esp + 4]
    push ecx
    push edx
    push 0xffff
    push eax
    call sub_00457df0
    add esp, 4
    pop ecx
    ret
    .byte 0x00,0x00,0x00
sub_0043c150:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov dword ptr [esp], eax
    mov dword ptr [esp + 4], ebx
    mov edx, dword ptr [d_0045c4e4]
    push edx
    mov ebx, 0xffffffff
    call dword ptr cs:[iat_004a7264]
    mov ecx, dword ptr [d_0045c460]
    mov dword ptr [d_0045c4e4], ebx
    test ecx, ecx
    je loc_0043c18b
    mov eax, 9
    jmp loc_0043c4ac
loc_0043c18b:
    cmp ebx, dword ptr [d_0045c464]
    jne loc_0043c1a0
    mov eax, 0xa
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043c1a0:
    cmp dword ptr [d_0045c468], 0
    je loc_0043c1b6
    mov eax, 4
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043c1b6:
    mov ecx, 0x32
    mov eax, offset d_004a3800
    mov edx, ebx
    call sub_00445a27
    call sub_0043e82c
    test eax, eax
    jne loc_0043c1f3
    mov ecx, 1
    mov ebx, offset d_0045ad4c
    xor edx, edx
    call sub_0043e750
    cmp eax, -1
    jne loc_0043c1f3
    mov eax, 7
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043c1f3:
    call sub_00431b1c
    cmp eax, -1
    jne loc_0043c20a
    mov eax, 3
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043c20a:
    call sub_00442eb8
    mov eax, dword ptr [esp]
    mov ebp, offset sub_0044324c
    mov dword ptr [d_004a39a4], eax
    mov dword ptr [d_004a3990], ebp
    call dword ptr [esp]
    cmp eax, -1
    jne loc_0043c237
    mov eax, 1
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043c237:
    cmp eax, 8
    je loc_0043c4ac
    test byte ptr [esp + 4], 1
    je loc_0043c298
    mov esi, dword ptr [d_004a3bec]
    mov edx, dword ptr [d_004a3be4]
    mov eax, dword ptr [d_004a3be8]
    mov ebx, dword ptr [d_004a3be0]
    sub esi, edx
    sub eax, ebx
    inc esi
    inc eax
    imul eax, esi
    call sub_004444b0
    mov dword ptr [d_0045c484], eax
    test eax, eax
    jne loc_0043c298
    cmp dword ptr [d_004a3990], 0
    je loc_0043c286
    call dword ptr [d_004a3990]
    jmp loc_0043c28b
loc_0043c286:
    call sub_0044324c
loc_0043c28b:
    mov eax, 2
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043c298:
    mov ebx, offset ptr_0043e6d4
    mov edx, offset ptr_0043e6dc
    xor ecx, ecx
    mov eax, offset ptr_0043e668
    mov dword ptr [d_004a399c], ecx
    mov dword ptr [d_004a39a8], ecx
    call sub_0042c3c8
    mov ebx, offset sub_00444630
    mov edx, offset ptr_00444548
    mov eax, offset sub_004444b0
    call sub_0042cf70
    call sub_0042dae0
    test eax, eax
    jne loc_0043c33d
    mov eax, 0x300
    call sub_004444b0
    mov esi, eax
    test eax, eax
    jne loc_0043c318
    cmp dword ptr [d_004a3990], 0
    je loc_0043c2f8
    call dword ptr [d_004a3990]
    jmp loc_0043c2fd
loc_0043c2f8:
    call sub_0044324c
loc_0043c2fd:
    mov eax, dword ptr [d_0045c484]
    test eax, eax
    je loc_0043c30b
    call sub_00444630
loc_0043c30b:
    mov eax, 2
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043c318:
    push ecx
    mov ecx, 0x300
    mov ebx, 1
    mov edx, ecx
    call sub_00442a5c
    mov edx, esi
    call sub_0042c570
    call sub_0042d03c
    mov eax, esi
    call sub_00444630
loc_0043c33d:
    call sub_0042be50
    mov eax, dword ptr [esp + 4]
    and eax, 0x200
    call sub_0043a400
    cmp eax, -1
    jne loc_0043c362
    mov eax, 0xb
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043c362:
    call sub_004308ac
    mov eax, 0x44
    call sub_004444b0
    mov dword ptr [d_004a38c8], eax
    test eax, eax
    jne loc_0043c3ae
    cmp dword ptr [d_004a3990], 0
    je loc_0043c38b
    call dword ptr [d_004a3990]
    jmp loc_0043c390
loc_0043c38b:
    call sub_0044324c
loc_0043c390:
    mov edi, dword ptr [d_0045c484]
    test edi, edi
    je loc_0043c3a1
    mov eax, edi
    call sub_00444630
loc_0043c3a1:
    mov eax, 2
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043c3ae:
    mov dword ptr [eax + 0x2c], 0
    mov dword ptr [eax], 0
    mov dword ptr [eax + 4], 0
    mov dword ptr [eax + 0x30], 0
    mov dword ptr [eax + 0x34], 0
    mov dword ptr [eax + 0x38], 0
    mov dword ptr [eax + 0x3c], 0
    mov ecx, 1
    mov dword ptr [eax + 0x24], 0
    mov esi, dword ptr [d_004a3be0]
    mov dword ptr [eax + 0x28], 0
    mov edx, 0x5294
    mov dword ptr [eax + 8], esi
    mov esi, dword ptr [d_004a3be4]
    mov ebx, 0x7feb
    mov dword ptr [eax + 0xc], esi
    mov esi, dword ptr [d_004a3be8]
    mov edi, dword ptr [d_004a3be0]
    mov dword ptr [eax + 0x10], esi
    mov esi, dword ptr [d_004a3bec]
    mov ebp, dword ptr [d_004a3be4]
    mov dword ptr [eax + 0x14], esi
    mov esi, dword ptr [d_004a3be8]
    mov dword ptr [d_004a3994], ecx
    sub esi, edi
    mov dword ptr [d_0045c468], ecx
    inc esi
    mov dword ptr [d_0045c478], edx
    mov dword ptr [eax + 0x18], esi
    mov esi, dword ptr [d_004a3bec]
    mov dword ptr [d_0045c47c], ebx
    sub esi, ebp
    mov ecx, 0x7c00
    inc esi
    mov dword ptr [d_0045c480], ecx
    mov dword ptr [eax + 0x1c], esi
    xor eax, eax
    mov edi, 0x294a
    mov dword ptr [d_004a3800], eax
    mov dword ptr [d_004a39ac], eax
    mov dword ptr [d_004a39a0], eax
    mov eax, dword ptr [esp + 4]
    mov dword ptr [d_0045c46c], edi
    mov dword ptr [d_004a3998], eax
    mov eax, 0x2108
    mov ebp, 0x3def
    mov dword ptr [d_0045c474], eax
    mov eax, offset sub_0043c668
    mov dword ptr [d_0045c470], ebp
    call sub_00444418
    xor eax, eax
loc_0043c4ac:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov dword ptr [esp], eax
    mov edx, dword ptr [d_0045c468]
    xor edi, edi
    test edx, edx
    jne loc_0043c4d6
    mov eax, 5
    jmp loc_0043c653
loc_0043c4d6:
    call dword ptr [esp]
    cmp eax, -1
    jne loc_0043c4ed
    mov eax, 1
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043c4ed:
    mov eax, dword ptr [d_004a3be8]
    sub eax, dword ptr [d_004a3be0]
    lea esi, [eax + 1]
    mov ecx, dword ptr [d_004a3be4]
    mov eax, dword ptr [d_004a3bec]
    sub eax, ecx
    mov ebp, dword ptr [d_004a3994]
    lea ebx, [eax + 1]
    cmp ebp, 1
    jle loc_0043c540
    mov eax, 4
    lea edx, [ebp*4]
loc_0043c522:
    mov ecx, dword ptr [eax + d_004a38c8]
    cmp esi, dword ptr [ecx + 0x18]
    jl loc_0043c532
    cmp ebx, dword ptr [ecx + 0x1c]
    jge loc_0043c539
loc_0043c532:
    mov edi, 6
    jmp loc_0043c540
loc_0043c539:
    add eax, 4
    cmp eax, edx
    jl loc_0043c522
loc_0043c540:
    test edi, edi
    jne loc_0043c58e
    test byte ptr [d_004a3998], 1
    je loc_0043c58e
    mov eax, dword ptr [d_004a3bec]
    sub eax, dword ptr [d_004a3be4]
    mov ebx, dword ptr [d_004a3be0]
    mov edx, eax
    mov eax, dword ptr [d_004a3be8]
    sub eax, ebx
    inc edx
    inc eax
    imul eax, edx
    call sub_004444b0
    mov edx, eax
    test eax, eax
    jne loc_0043c57e
    mov edi, 2
    jmp loc_0043c58e
loc_0043c57e:
    mov eax, dword ptr [d_0045c484]
    call sub_00444630
    mov dword ptr [d_0045c484], edx
loc_0043c58e:
    test edi, edi
    je loc_0043c59a
    call dword ptr [d_004a39a4]
    jmp loc_0043c5a2
loc_0043c59a:
    mov eax, dword ptr [esp]
    mov dword ptr [d_004a39a4], eax
loc_0043c5a2:
    call sub_0042c570
    call sub_0042c534
    mov edx, dword ptr [d_004a38c8]
    mov eax, dword ptr [d_004a3be0]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [d_004a3be4]
    mov dword ptr [edx + 0xc], eax
    mov eax, dword ptr [d_004a3be8]
    mov dword ptr [edx + 0x10], eax
    mov eax, dword ptr [d_004a3bec]
    mov ecx, dword ptr [d_004a3be0]
    mov dword ptr [edx + 0x14], eax
    mov edx, dword ptr [d_004a3be8]
    sub edx, ecx
    mov eax, dword ptr [d_004a38c8]
    inc edx
    mov esi, dword ptr [d_004a3be4]
    mov dword ptr [eax + 0x18], edx
    mov eax, dword ptr [d_004a3bec]
    sub eax, esi
    mov edx, dword ptr [d_004a38c8]
    inc eax
    mov dword ptr [edx + 0x1c], eax
    xor eax, eax
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    je loc_0043c61e
    test eax, eax
    je loc_0043c61e
    lea edx, [eax + 8]
    xor ebx, ebx
    call sub_0043d4d0
loc_0043c61e:
    mov ecx, 1
    cmp ecx, dword ptr [d_004a3994]
    jge loc_0043c651
    mov esi, 4
loc_0043c630:
    mov eax, dword ptr [esi + d_004a38c8]
    mov ebx, dword ptr [eax + 0xc]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [eax]
    inc ecx
    call sub_0043d398
    mov edx, dword ptr [d_004a3994]
    add esi, 4
    cmp ecx, edx
    jl loc_0043c630
loc_0043c651:
    mov eax, edi
loc_0043c653:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    mov eax, dword ptr [d_0045c468]
    ret
    .byte 0x8b,0xc0
sub_0043c668:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    cmp dword ptr [d_0045c488], 0
    jne loc_0043c72c
    mov ebx, 1
    mov ecx, dword ptr [d_0045c468]
    mov dword ptr [d_0045c488], ebx
    test ecx, ecx
    je loc_0043c724
    call sub_00430964
    mov ebx, dword ptr [d_004a3994]
    dec ebx
    test ebx, ebx
    jl loc_0043c6bf
    lea edx, [ebx*4]
loc_0043c6aa:
    mov eax, dword ptr [edx + d_004a38c8]
    sub edx, 4
    mov eax, dword ptr [eax]
    dec ebx
    call sub_0043ca04
    test edx, edx
    jge loc_0043c6aa
loc_0043c6bf:
    mov esi, dword ptr [d_004a39ac]
    test esi, esi
    je loc_0043c6d0
    mov eax, esi
    call sub_00444630
loc_0043c6d0:
    mov edi, dword ptr [d_0045c484]
    test edi, edi
    je loc_0043c6e1
    mov eax, edi
    call sub_00444630
loc_0043c6e1:
    cmp dword ptr [d_004a3990], 0
    je loc_0043c6f0
    call dword ptr [d_004a3990]
loc_0043c6f0:
    call sub_0043a4d0
    call sub_00445560
    call sub_00431b8c
    call sub_0042db2c
    mov edx, dword ptr [d_0045c464]
    xor eax, eax
    push edx
    mov ebx, 0xffffffff
    mov dword ptr [d_0045c468], eax
    call dword ptr cs:[iat_004a7264]
    mov dword ptr [d_0045c464], ebx
loc_0043c724:
    xor ecx, ecx
    mov dword ptr [d_0045c488], ecx
loc_0043c72c:
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0043c734:
    push esi
    push edi
    push ebp
    sub esp, 8
    mov dword ptr [esp + 4], eax
    mov dword ptr [esp], edx
    mov edx, ebx
    mov ebx, dword ptr [esp + 0x18]
    cmp dword ptr [d_0045c468], 0
    je loc_0043c796
    cmp dword ptr [d_004a3994], 0x32
    je loc_0043c796
    mov eax, dword ptr [d_004a3be8]
    sub eax, dword ptr [d_004a3be0]
    inc eax
    cmp edx, eax
    jg loc_0043c796
    mov eax, dword ptr [d_004a3bec]
    sub eax, dword ptr [d_004a3be4]
    inc eax
    cmp ecx, eax
    jg loc_0043c796
    mov eax, 0x44
    call sub_004444b0
    mov esi, dword ptr [d_004a3994]
    mov dword ptr [esi*4 + d_004a38c8], eax
    mov esi, eax
    test eax, eax
    jne loc_0043c7a0
loc_0043c796:
    mov ebx, 0xffffffff
    jmp loc_0043c953
loc_0043c7a0:
    mov edi, eax
    mov eax, edx
    imul eax, ecx
    call sub_004444b0
    mov dword ptr [esi + 0x2c], eax
    test eax, eax
    jne loc_0043c7ca
    mov eax, esi
    mov ebx, 0xffffffff
    call sub_00444630
    mov eax, ebx
    add esp, 8
    pop ebp
    pop edi
    pop esi
    ret 8
loc_0043c7ca:
    mov esi, 1
    jmp loc_0043c7d2
loc_0043c7d1:
    inc esi
loc_0043c7d2:
    mov eax, esi
    call sub_0043dd7c
    test eax, eax
    jne loc_0043c7d1
    mov ah, byte ptr [esp + 0x1c]
    mov dword ptr [edi], esi
    test ah, 1
    je loc_0043c7f7
    mov ebp, dword ptr [esp + 0x1c]
    mov eax, dword ptr [d_004a3998]
    or ebp, eax
    mov dword ptr [esp + 0x1c], ebp
loc_0043c7f7:
    mov dword ptr [edi + 0x18], edx
    mov eax, dword ptr [esp + 0x1c]
    mov dword ptr [edi + 0x1c], ecx
    mov dword ptr [edi + 4], eax
    call sub_0045190a
    and eax, 0xfffe
    mov dword ptr [edi + 0x24], eax
    call sub_0045190a
    and eax, 0xfffe
    mov dword ptr [edi + 0x28], eax
    cmp ebx, 0x100
    je loc_0043c84b
    test bh, 0xff
    je loc_0043c866
    mov eax, ebx
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    xor bx, bx
    or ebx, eax
    jmp loc_0043c866
loc_0043c84b:
    cmp dword ptr [d_004a39ac], 0
    jne loc_0043c866
    mov ebx, dword ptr [d_0045c46c]
    mov bl, byte ptr [ebx + d_00495390]
    and ebx, 0xff
loc_0043c866:
    mov dword ptr [edi + 0x30], 0
    mov dword ptr [edi + 0x34], 0
    mov dword ptr [edi + 0x38], 0
    mov dword ptr [edi + 0x3c], 0
    push ebx
    mov dword ptr [edi + 0x40], offset sub_004428e4
    mov eax, dword ptr [d_004a3994]
    mov dword ptr [edi + 0x20], ebx
    push ecx
    mov dword ptr [esi*4 + d_004a3800], eax
    lea ebx, [eax + 1]
    mov ecx, edx
    mov dword ptr [d_004a3994], ebx
    mov eax, esi
    xor edx, edx
    xor ebx, ebx
    call sub_0043d1c0
    mov dl, byte ptr [edi + 4]
    mov ebx, dword ptr [esp]
    or dl, 8
    mov eax, esi
    mov byte ptr [edi + 4], dl
    mov edx, dword ptr [esp + 4]
    call sub_0043d398
    mov eax, dword ptr [esp + 0x1c]
    mov dh, byte ptr [esp + 0x1c]
    mov dword ptr [edi + 4], eax
    test dh, 4
    # jne 0x43c951
    .byte 0x0f,0x85
    .long loc_0043c951 - . - 4
    mov ebx, dword ptr [d_004a3994]
    sub ebx, 2
    test ebx, ebx
    jg loc_0043c8f4
    jmp loc_0043c907
loc_0043c8ea:
    sub eax, 4
    dec ebx
    test eax, eax
    jg loc_0043c8fb
    jmp loc_0043c907
loc_0043c8f4:
    lea eax, [ebx*4]
loc_0043c8fb:
    mov edx, dword ptr [eax + d_004a38c8]
    test byte ptr [edx + 4], 4
    jne loc_0043c8ea
loc_0043c907:
    mov eax, dword ptr [d_004a3994]
    sub eax, 2
    cmp ebx, eax
    je loc_0043c951
    mov edx, dword ptr [d_004a3994]
    inc ebx
    dec edx
    cmp edx, ebx
    jle loc_0043c943
    lea eax, [edx*4]
loc_0043c926:
    mov ecx, dword ptr [eax + d_004a38c4]
    mov dword ptr [eax + d_004a38c8], ecx
    mov ecx, dword ptr [ecx]
    mov dword ptr [ecx*4 + d_004a3800], edx
    dec edx
    sub eax, 4
    cmp edx, ebx
    jg loc_0043c926
loc_0043c943:
    mov dword ptr [ebx*4 + d_004a38c8], edi
    mov dword ptr [esi*4 + d_004a3800], ebx
loc_0043c951:
    mov ebx, esi
loc_0043c953:
    mov eax, ebx
    add esp, 8
    pop ebp
    pop edi
    pop esi
    ret 8
    .byte 0x8b,0xc0
sub_0043c960:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    sub esp, 0x10
    mov ecx, dword ptr [d_004a3994]
    mov edx, eax
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    # je 0x43c9f5
    .byte 0x0f,0x84
    .long loc_0043c9f5 - . - 4
    test eax, eax
    je loc_0043c9f5
    mov edi, esp
    lea esi, [eax + 8]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov ebx, dword ptr [eax]
    mov esi, 0xffffffff
    mov eax, edx
    mov ebx, dword ptr [ebx*4 + d_004a3800]
    call sub_0043ca04
    mov ecx, dword ptr [d_004a3994]
    mov dword ptr [edx*4 + d_004a3800], esi
    dec ecx
    mov edx, ebx
    cmp ebx, ecx
    jge loc_0043c9dc
    lea eax, [ebx*4]
loc_0043c9bf:
    mov ebx, dword ptr [eax + d_004a38cc]
    mov dword ptr [eax + d_004a38c8], ebx
    mov ebx, dword ptr [ebx]
    mov dword ptr [ebx*4 + d_004a3800], edx
    inc edx
    add eax, 4
    cmp edx, ecx
    jl loc_0043c9bf
loc_0043c9dc:
    mov edi, dword ptr [d_0045c468]
    mov dword ptr [d_004a3994], ecx
    test edi, edi
    je loc_0043c9f5
    mov eax, esp
    xor edx, edx
    call sub_0043dd08
loc_0043c9f5:
    mov ecx, dword ptr [d_004a3994]
    add esp, 0x10
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0043ca04:
    push ebx
    push ecx
    push edx
    call sub_0043dd7c
    mov ebx, eax
    test eax, eax
    je loc_0043ca4a
    mov edx, dword ptr [eax + 0x2c]
    test edx, edx
    je loc_0043ca20
    mov eax, edx
    call sub_00444630
loc_0043ca20:
    mov ecx, dword ptr [ebx + 0x3c]
    test ecx, ecx
    je loc_0043ca2e
    mov eax, ecx
    call sub_00444630
loc_0043ca2e:
    mov eax, dword ptr [ebx + 0x30]
    test eax, eax
    je loc_0043ca43
loc_0043ca35:
    mov edx, dword ptr [eax + 0x78]
    call sub_004332e4
    mov eax, edx
    test edx, edx
    jne loc_0043ca35
loc_0043ca43:
    mov eax, ebx
    call sub_00444630
loc_0043ca4a:
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    cmp dword ptr [d_0045c484], 0
    je loc_0043ca5e
    mov dword ptr [d_004a399c], eax
loc_0043ca5e:
    ret
    .byte 0x90
sub_0043ca60:
    push ebx
    push ecx
    push edx
    push esi
    call sub_0043dd7c
    mov edx, dword ptr [d_0045c468]
    mov esi, eax
    test edx, edx
    je loc_0043cb88
    test eax, eax
    je loc_0043cb88
    mov ebx, 5
    mov ecx, dword ptr [eax + 0x18]
    mov eax, dword ptr [eax + 0x2c]
    lea edx, [ecx - 0xa]
    add eax, 5
    call sub_00442c28
    mov edx, 5
    mov ecx, dword ptr [esi + 0x18]
    mov ebx, dword ptr [esi + 0x1c]
    mov eax, dword ptr [esi + 0x2c]
    call sub_00442c28
    mov ecx, dword ptr [esi + 0x18]
    mov eax, dword ptr [esi + 0x2c]
    mov edx, 5
    add eax, ecx
    mov ebx, dword ptr [esi + 0x1c]
    sub eax, 5
    call sub_00442c28
    mov ecx, dword ptr [esi + 0x18]
    mov ebx, dword ptr [esi + 0x1c]
    lea edx, [ecx - 0xa]
    sub ebx, 5
    imul ebx, ecx
    mov eax, dword ptr [esi + 0x2c]
    add eax, ebx
    mov ebx, 5
    add eax, 5
    call sub_00442c28
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    mov eax, dword ptr [esi + 0x1c]
    dec eax
    push eax
    mov eax, dword ptr [esi + 0x18]
    mov edx, dword ptr [esi + 0x18]
    dec eax
    xor ecx, ecx
    push eax
    xor ebx, ebx
    mov eax, dword ptr [esi + 0x2c]
    call sub_00442384
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [esi + 0x1c]
    sub eax, 2
    push eax
    mov eax, dword ptr [esi + 0x18]
    mov ecx, 1
    sub eax, 2
    mov edx, dword ptr [esi + 0x18]
    push eax
    mov ebx, ecx
    mov eax, dword ptr [esi + 0x2c]
    call sub_0044240c
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [esi + 0x1c]
    sub eax, 6
    push eax
    mov eax, dword ptr [esi + 0x18]
    mov ecx, 5
    sub eax, 6
    mov edx, dword ptr [esi + 0x18]
    push eax
    mov ebx, ecx
    mov eax, dword ptr [esi + 0x2c]
    call sub_0044240c
loc_0043cb88:
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    cmp dword ptr [d_0045c468], 0
    je loc_0043cbf9
    mov ebx, dword ptr [d_004a39ac]
    test ebx, ebx
    je loc_0043cbb8
    mov eax, ebx
    xor ecx, ecx
    call sub_00444630
    mov dword ptr [d_004a39ac], ecx
loc_0043cbb8:
    mov esi, 0x294a
    mov edi, 0x3def
    mov ebp, 0x2108
    mov eax, 0x5294
    mov edx, 0x7feb
    mov ebx, 0x7c00
    mov dword ptr [d_0045c46c], esi
    mov dword ptr [d_0045c470], edi
    mov dword ptr [d_0045c474], ebp
    mov dword ptr [d_0045c478], eax
    mov dword ptr [d_0045c47c], edx
    mov dword ptr [d_0045c480], ebx
loc_0043cbf9:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x53,0x51,0x52,0x56,0x57,0x55,0x83,0xec,0x5c,0x83,0x3d
    .long d_0045c468
    .byte 0x00,0x0f,0x84,0xef,0x00,0x00,0x00,0xba
    .long d_0045ad50
    .byte 0xe8,0x14,0x25,0x00,0x00,0x89,0xc6,0x85,0xc0,0x0f,0x84,0xdb,0x00,0x00,0x00,0xba
    .byte 0x4f,0x00,0x00,0x00,0x89,0xc3,0x89,0xe0,0x89,0xe7,0xe8,0x56,0x30,0x00,0x00,0x29
    .byte 0xc9,0x49,0x31,0xc0,0xf2,0xae,0xf7,0xd1,0x49,0x30,0xe4,0x8b,0x1d
    .long d_004a39ac
    .byte 0x88,0x64,0x0c,0xff,0x85,0xdb,0x74,0x07,0x89,0xd8,0xe8,0xd5,0x79,0x00,0x00,0x89
    .byte 0xe0,0xe8,0x56,0x13,0x00,0x00,0x31,0xc9,0xa3
    .long d_004a39ac
    .byte 0xbf,0x64,0x00,0x00,0x00,0xba,0x4f,0x00,0x00,0x00,0x89,0xe0,0x89,0xf3,0xe8,0x14
    .byte 0x30,0x00,0x00,0x8d,0x44,0x24,0x50,0x50,0x8d,0x44,0x24,0x58,0x50,0x8d,0x44,0x24
    .byte 0x60,0x50,0x68
    .long d_0045ad54
    .byte 0x8d,0x44,0x24,0x10,0x50,0xe8,0x94,0x9b,0x00,0x00,0x83,0xc4,0x14,0x8b,0x54,0x24
    .byte 0x58,0xc1,0xe2,0x05,0x4a,0x89,0xd0,0xc1,0xfa,0x1f,0xf7,0xff,0x8b,0x54,0x24,0x54
    .byte 0xc1,0xe2,0x05,0x4a,0x89,0x44,0x24,0x58,0x89,0xd0,0xc1,0xfa,0x1f,0xf7,0xff,0x8b
    .byte 0x54,0x24,0x50,0xc1,0xe2,0x05,0x4a,0x89,0x44,0x24,0x54,0x89,0xd0,0xc1,0xfa,0x1f
    .byte 0xf7,0xff,0x8b,0x54,0x24,0x54,0x89,0x44,0x24,0x50,0x8b,0x44,0x24,0x58,0xc1,0xe2
    .byte 0x05,0xc1,0xe0,0x0a,0x8b,0x6c,0x24,0x50,0x09,0xd0,0x83,0xc1,0x04,0x09,0xe8,0x89
    .byte 0x81
    .long d_0045c468
    .byte 0x83,0xf9,0x18,0x0f,0x85,0x70,0xff,0xff,0xff,0x89,0xf0,0xe8,0x4b,0x51,0x00,0x00
    .byte 0x83,0xc4,0x5c,0x5d,0x5f,0x5e,0x5a,0x59,0x5b,0xc3,0x90,0x53,0x52,0x83,0x3d
    .long d_0045c468
    .byte 0x00,0x74,0x23,0xa3
    .long d_004a39a0
    .byte 0x31,0xc0,0xe8,0x55,0x10,0x00,0x00,0x83,0x3d
    .long d_0045c468
    .byte 0x00,0x74,0x0e,0x85,0xc0,0x74,0x0a,0x8d,0x50,0x08,0x31,0xdb,0xe8,0x92,0x07,0x00
    .byte 0x00,0x5a,0x5b,0xc3,0x8d,0x40,0x00
sub_0043cd44:
    push esi
    push edi
    push ebp
    sub esp, 0x1c
    mov ebp, edx
    mov edi, ebx
    mov dword ptr [esp + 0x18], ecx
    call sub_0043dd7c
    mov edx, dword ptr [d_0045c468]
    mov esi, eax
    test edx, edx
    je loc_0043cec9
    test eax, eax
    je loc_0043cec9
    test ebx, ebx
    jne loc_0043cd8e
    test byte ptr [esp + 0x32], 4
    je loc_0043cd84
    mov eax, ebp
    call dword ptr [d_0045c388]
    jmp loc_0043cd8c
loc_0043cd84:
    mov eax, ebp
    call dword ptr [d_0045c380]
loc_0043cd8c:
    mov edi, eax
loc_0043cd8e:
    mov eax, dword ptr [esp + 0x18]
    mov ebx, dword ptr [esi + 0x18]
    add eax, edi
    cmp eax, ebx
    jle loc_0043cdae
    test byte ptr [esp + 0x33], 4
    je loc_0043cec9
    mov ecx, dword ptr [esp + 0x18]
    mov edi, ebx
    sub edi, ecx
loc_0043cdae:
    mov edx, dword ptr [esp + 0x18]
    mov eax, dword ptr [esi + 0x2c]
    mov ebx, dword ptr [esi + 0x18]
    add edx, eax
    mov eax, dword ptr [esp + 0x2c]
    imul eax, ebx
    mov ecx, dword ptr [esp + 0x2c]
    add edx, eax
    call dword ptr [d_0045c37c]
    mov dword ptr [esp + 0x10], edx
    add eax, ecx
    cmp eax, dword ptr [esi + 0x1c]
    jg loc_0043cec9
    test byte ptr [esp + 0x33], 2
    jne loc_0043ce3d
    cmp dword ptr [esi + 0x20], 0x100
    jne loc_0043ce23
    mov ecx, dword ptr [d_004a39ac]
    test ecx, ecx
    je loc_0043ce23
    mov edx, dword ptr [esp + 0x2c]
    mov eax, dword ptr [esi + 0x28]
    add eax, edx
    mov ebx, dword ptr [esp + 0x18]
    push eax
    mov eax, dword ptr [esi + 0x24]
    add eax, ebx
    push eax
    push ecx
    mov edx, edi
    mov ecx, dword ptr [esi + 0x18]
    call dword ptr [d_0045c37c]
    mov ebx, eax
    mov eax, dword ptr [esp + 0x1c]
    call sub_00442ac0
    jmp loc_0043ce3d
loc_0043ce23:
    mov eax, dword ptr [esi + 0x20]
    push eax
    mov edx, edi
    mov ecx, dword ptr [esi + 0x18]
    call dword ptr [d_0045c37c]
    mov ebx, eax
    mov eax, dword ptr [esp + 0x14]
    call sub_00442a5c
loc_0043ce3d:
    test byte ptr [esp + 0x31], 0xff
    je loc_0043ce67
    mov eax, dword ptr [esp + 0x30]
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    xor edx, edx
    mov dl, byte ptr [eax + d_00495390]
    mov eax, dword ptr [esp + 0x30]
    xor ax, ax
    or eax, edx
    jmp loc_0043ce6b
loc_0043ce67:
    mov eax, dword ptr [esp + 0x30]
loc_0043ce6b:
    mov dword ptr [esp + 0x14], eax
    mov eax, dword ptr [esp + 0x14]
    mov ebx, edi
    mov edx, ebp
    push eax
    mov ecx, dword ptr [esi + 0x18]
    mov eax, dword ptr [esp + 0x14]
    call dword ptr [d_0045c378]
    test byte ptr [esp + 0x17], 1
    je loc_0043cec9
    mov eax, dword ptr [esp + 0x18]
    mov edx, dword ptr [esi + 8]
    add eax, edx
    mov dword ptr [esp], eax
    mov eax, dword ptr [esp + 0x2c]
    mov ebx, dword ptr [esi + 0xc]
    add eax, ebx
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esp]
    add eax, edi
    mov dword ptr [esp + 8], eax
    call dword ptr [d_0045c37c]
    mov edx, dword ptr [esp + 4]
    add edx, eax
    xor ebx, ebx
    mov dword ptr [esp + 0xc], edx
    mov eax, esi
    mov edx, esp
    call sub_0043d4d0
loc_0043cec9:
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    ret 8
    .byte 0x8b,0xc0
sub_0043ced4:
    push esi
    push edi
    push ebp
    sub esp, 0x28
    mov dword ptr [esp + 0x14], eax
    mov dword ptr [esp + 4], edx
    mov dword ptr [esp + 0x10], ebx
    mov dword ptr [esp + 0x1c], ecx
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    je loc_0043d013
    test eax, eax
    je loc_0043d013
    mov esi, dword ptr [esp + 0x3c]
    mov edi, dword ptr [eax + 0x18]
    imul esi, edi
    mov ebx, dword ptr [esp + 0x38]
    mov ebp, dword ptr [esp + 0x10]
    mov eax, dword ptr [eax + 0x2c]
    xor ecx, ecx
    add eax, ebx
    mov dword ptr [esp + 0x24], ecx
    add esi, eax
    call dword ptr [d_0045c37c]
    mov edx, eax
    mov dword ptr [esp + 8], eax
    test ebp, ebp
    jle loc_0043d013
    imul eax, edi
    mov dword ptr [esp + 0xc], eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov ebp, eax
    mov eax, dword ptr [esp + 0x1c]
    dec eax
    mov dword ptr [esp + 0x18], eax
    mov eax, ebp
    inc eax
    mov dword ptr [esp], eax
    mov eax, dword ptr [esp + 4]
    mov dword ptr [esp + 0x20], eax
loc_0043cf60:
    mov eax, dword ptr [esp + 0x20]
    mov eax, dword ptr [eax]
    cmp byte ptr [eax], 0
    je loc_0043cf8a
    mov ebx, dword ptr [esp + 0x40]
    mov ecx, dword ptr [esp + 0x3c]
    push ebx
    mov edx, eax
    mov eax, dword ptr [esp + 0x18]
    push ecx
    mov ebx, dword ptr [esp + 0x24]
    mov ecx, dword ptr [esp + 0x40]
    call sub_0043cd44
    jmp loc_0043cfdd
loc_0043cf8a:
    cmp dword ptr [esp + 0x1c], 0
    je loc_0043cfdd
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov ecx, dword ptr [esp + 0x1c]
    push ebp
    mov edx, edi
    xor ebx, ebx
    push ecx
    mov eax, esi
    mov ecx, ebp
    call sub_004421a0
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [esp + 4]
    mov edx, dword ptr [esp + 0x1c]
    push eax
    xor ebx, ebx
    mov ecx, eax
    push edx
    mov eax, esi
    mov edx, edi
    call sub_004421a0
loc_0043cfdd:
    mov eax, dword ptr [esp + 0x20]
    mov edx, dword ptr [esp + 0x24]
    mov ebx, dword ptr [esp + 0xc]
    mov ecx, dword ptr [esp + 0x3c]
    add eax, 4
    inc edx
    add esi, ebx
    mov dword ptr [esp + 0x20], eax
    mov eax, dword ptr [esp + 8]
    mov dword ptr [esp + 0x24], edx
    add ecx, eax
    mov eax, edx
    mov edx, dword ptr [esp + 0x10]
    mov dword ptr [esp + 0x3c], ecx
    cmp eax, edx
    jl loc_0043cf60
loc_0043d013:
    add esp, 0x28
    pop ebp
    pop edi
    pop esi
    ret 0xc
    push esi
    push edi
    push ebp
    call sub_0043dd7c
    mov edi, dword ptr [d_0045c468]
    mov esi, eax
    test edi, edi
    je loc_0043d079
    test eax, eax
    je loc_0043d079
    test byte ptr [esp + 0x15], 0xff
    je loc_0043d05d
    mov eax, dword ptr [esp + 0x14]
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    movzx edi, byte ptr [eax + d_00495390]
    mov eax, dword ptr [esp + 0x14]
    xor ax, ax
    or eax, edi
    jmp loc_0043d061
loc_0043d05d:
    mov eax, dword ptr [esp + 0x14]
loc_0043d061:
    push eax
    mov ebp, dword ptr [esp + 0x14]
    push ebp
    mov edi, dword ptr [esi + 0x18]
    mov eax, dword ptr [esi + 0x2c]
    push ecx
    mov ecx, ebx
    mov ebx, edx
    mov edx, edi
    call sub_004421a0
loc_0043d079:
    pop ebp
    pop edi
    pop esi
    ret 8
    .byte 0x90
sub_0043d080:
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, dword ptr [esp + 0x14]
    call sub_0043dd7c
    mov ebp, dword ptr [d_0045c468]
    mov edi, eax
    test ebp, ebp
    je loc_0043d104
    test eax, eax
    je loc_0043d104
    test byte ptr [esp + 0x19], 0xff
    je loc_0043d0d2
    mov eax, dword ptr [esp + 0x18]
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    mov al, byte ptr [eax + d_00495390]
    mov ebp, dword ptr [esp + 0x18]
    and ebp, 0xffff0000
    and eax, 0xff
    or ebp, eax
    mov dword ptr [esp], ebp
    jmp loc_0043d0d9
loc_0043d0d2:
    mov eax, dword ptr [esp + 0x18]
    mov dword ptr [esp], eax
loc_0043d0d9:
    mov eax, dword ptr [esp]
    cmp ecx, edx
    jge loc_0043d0e6
    xor ecx, edx
    xor edx, ecx
    xor ecx, edx
loc_0043d0e6:
    cmp esi, ebx
    jge loc_0043d0f0
    xor esi, ebx
    xor ebx, esi
    xor esi, ebx
loc_0043d0f0:
    push eax
    push esi
    mov eax, dword ptr [edi + 0x2c]
    push ecx
    mov esi, dword ptr [edi + 0x18]
    mov ecx, ebx
    mov ebx, edx
    mov edx, esi
    call sub_00442384
loc_0043d104:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret 8
    .byte 0x8d,0x40,0x00
    push esi
    push edi
    push ebp
    sub esp, 8
    mov esi, ecx
    mov ecx, dword ptr [esp + 0x20]
    call sub_0043dd7c
    mov ebp, dword ptr [d_0045c468]
    mov edi, eax
    test ebp, ebp
    je loc_0043d1b6
    test eax, eax
    # je 0x43d1b6
    .byte 0x0f,0x84
    .long loc_0043d1b6 - . - 4
    test byte ptr [esp + 0x1d], 0xff
    je loc_0043d16c
    mov eax, dword ptr [esp + 0x1c]
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    mov dword ptr [esp], eax
    mov eax, dword ptr [esp + 0x1c]
    mov ebp, dword ptr [esp]
    xor ax, ax
    or eax, ebp
    jmp loc_0043d170
loc_0043d16c:
    mov eax, dword ptr [esp + 0x1c]
loc_0043d170:
    mov dword ptr [esp + 4], eax
    test ch, 0xff
    je loc_0043d197
    mov eax, ecx
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    xor cx, cx
    or ecx, eax
loc_0043d197:
    push ecx
    mov eax, dword ptr [esp + 8]
    push eax
    mov ecx, dword ptr [esp + 0x20]
    push ecx
    mov eax, dword ptr [edi + 0x18]
    push esi
    mov ecx, ebx
    mov ebx, edx
    mov esi, dword ptr [edi + 0x2c]
    mov edx, eax
    mov eax, esi
    call sub_0044240c
loc_0043d1b6:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    ret 0xc
    .byte 0x90
sub_0043d1c0:
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ebp, edx
    mov edi, ebx
    mov esi, ecx
    call sub_0043dd7c
    mov edx, dword ptr [d_0045c468]
    mov dword ptr [esp], eax
    test edx, edx
    je loc_0043d29a
    test eax, eax
    je loc_0043d29a
    mov ebx, dword ptr [esp + 0x18]
    cmp ebx, 0x100
    jne loc_0043d240
    cmp dword ptr [d_004a39ac], 0
    jne loc_0043d211
    mov eax, dword ptr [d_0045c46c]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    jmp loc_0043d26b
loc_0043d211:
    mov ecx, dword ptr [eax + 0x28]
    add ecx, edi
    push ecx
    mov ecx, dword ptr [eax + 0x24]
    add ecx, ebp
    push ecx
    mov edx, dword ptr [d_004a39ac]
    push edx
    mov ecx, dword ptr [eax + 0x18]
    mov edx, edi
    imul edx, ecx
    mov eax, dword ptr [eax + 0x2c]
    mov ebx, dword ptr [esp + 0x20]
    add eax, edx
    mov edx, esi
    add eax, ebp
    call sub_00442ac0
    jmp loc_0043d26f
loc_0043d240:
    test byte ptr [esp + 0x19], 0xff
    je loc_0043d269
    mov eax, ebx
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    mov al, byte ptr [eax + d_00495390]
    mov edx, ebx
    and eax, 0xff
    xor dx, bx
    or eax, edx
    jmp loc_0043d26b
loc_0043d269:
    mov eax, ebx
loc_0043d26b:
    mov dword ptr [esp + 0x18], eax
loc_0043d26f:
    mov ebx, dword ptr [esp + 0x18]
    cmp ebx, 0x100
    jge loc_0043d29a
    mov ecx, dword ptr [esp]
    mov ecx, dword ptr [ecx + 0x18]
    imul edi, ecx
    mov eax, dword ptr [esp]
    push ebx
    mov eax, dword ptr [eax + 0x2c]
    mov edx, esi
    add eax, edi
    mov ebx, dword ptr [esp + 0x18]
    add eax, ebp
    call sub_00442a5c
loc_0043d29a:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret 8
    .byte 0x90
sub_0043d2a4:
    push ebx
    push ecx
    push edx
    push esi
    call sub_0043dd7c
    mov ecx, dword ptr [eax]
    mov edx, dword ptr [d_0045c468]
    mov esi, eax
    mov ecx, dword ptr [ecx*4 + d_004a3800]
    test edx, edx
    je loc_0043d355
    mov dl, byte ptr [eax + 4]
    test dl, 8
    je loc_0043d2eb
    mov dh, dl
    and dh, 0xf7
    mov byte ptr [eax + 4], dh
    mov edx, dword ptr [d_004a3994]
    dec edx
    cmp ecx, edx
    jne loc_0043d2eb
    lea edx, [eax + 8]
    xor ebx, ebx
    call sub_0043d4d0
loc_0043d2eb:
    mov ebx, dword ptr [d_004a3994]
    dec ebx
    cmp ecx, ebx
    jge loc_0043d355
    test byte ptr [esi + 4], 2
    je loc_0043d32e
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043d301:
    test byte ptr [esi + 4], 4
    jne loc_0043d313
    mov edx, dword ptr [eax + d_004a38cc]
    test byte ptr [edx + 4], 4
    jne loc_0043d339
loc_0043d313:
    mov edx, dword ptr [eax + d_004a38cc]
    mov dword ptr [eax + d_004a38c8], edx
    mov edx, dword ptr [edx]
    add eax, 4
    mov dword ptr [edx*4 + d_004a3800], ecx
    inc ecx
    jmp loc_0043d335
loc_0043d32e:
    lea eax, [ecx*4]
loc_0043d335:
    cmp ecx, ebx
    jl loc_0043d301
loc_0043d339:
    mov dword ptr [ecx*4 + d_004a38c8], esi
    mov eax, dword ptr [esi]
    xor ebx, ebx
    lea edx, [esi + 8]
    mov dword ptr [eax*4 + d_004a3800], ecx
    mov eax, esi
    call sub_0043d4d0
loc_0043d355:
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ebx
    push edx
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    je loc_0043d394
    test eax, eax
    je loc_0043d394
    mov dl, byte ptr [eax + 4]
    test dl, 8
    jne loc_0043d394
    mov dh, dl
    add eax, 8
    or dh, 8
    mov ebx, dword ptr [d_0045c468]
    mov byte ptr [eax - 4], dh
    test ebx, ebx
    je loc_0043d394
    xor edx, edx
    call sub_0043dd08
loc_0043d394:
    pop edx
    pop ebx
    ret
    .byte 0x90
sub_0043d398:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    call sub_0043dd7c
    mov ecx, dword ptr [d_0045c468]
    mov esi, eax
    test ecx, ecx
    je loc_0043d44b
    test eax, eax
    je loc_0043d44b
    mov edi, esp
    lea esi, [esi + 8]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    test edx, edx
    jge loc_0043d3cb
    xor edx, edx
loc_0043d3cb:
    test ebx, ebx
    jge loc_0043d3d1
    xor ebx, ebx
loc_0043d3d1:
    test byte ptr [eax + 5], 1
    je loc_0043d3da
    add edx, 2
loc_0043d3da:
    mov esi, dword ptr [eax + 0x18]
    add esi, edx
    mov edi, dword ptr [d_004a3be8]
    dec esi
    cmp esi, edi
    jle loc_0043d3f0
    mov edx, edi
    sub edx, dword ptr [eax + 0x18]
    inc edx
loc_0043d3f0:
    mov esi, dword ptr [eax + 0x1c]
    add esi, ebx
    mov ecx, dword ptr [d_004a3bec]
    dec esi
    cmp esi, ecx
    jle loc_0043d406
    mov ebx, ecx
    sub ebx, dword ptr [eax + 0x1c]
    inc ebx
loc_0043d406:
    test byte ptr [eax + 5], 1
    je loc_0043d40f
    and dl, 0xfc
loc_0043d40f:
    mov edi, dword ptr [eax + 0x18]
    mov ebp, dword ptr [eax + 0x1c]
    mov dword ptr [eax + 8], edx
    add edx, edi
    mov dword ptr [eax + 0xc], ebx
    dec edx
    add ebx, ebp
    mov dword ptr [eax + 0x10], edx
    dec ebx
    mov dl, byte ptr [eax + 4]
    mov dword ptr [eax + 0x14], ebx
    test dl, 8
    jne loc_0043d44b
    lea edx, [eax + 8]
    xor ebx, ebx
    call sub_0043d4d0
    cmp dword ptr [d_0045c468], 0
    je loc_0043d44b
    mov eax, esp
    xor edx, edx
    call sub_0043dd08
loc_0043d44b:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
sub_0043d454:
    push ebx
    push edx
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    je loc_0043d472
    test eax, eax
    je loc_0043d472
    lea edx, [eax + 8]
    xor ebx, ebx
    call sub_0043d4d0
loc_0043d472:
    pop edx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0043d478:
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 0x10
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    je loc_0043d4c6
    test eax, eax
    je loc_0043d4c6
    mov ebx, dword ptr [edx]
    mov ecx, dword ptr [eax + 8]
    add ebx, ecx
    mov dword ptr [esp], ebx
    mov ebx, dword ptr [edx + 4]
    mov esi, dword ptr [eax + 0xc]
    add ebx, esi
    mov dword ptr [esp + 4], ebx
    mov ebx, dword ptr [edx + 8]
    mov edi, dword ptr [eax + 8]
    add ebx, edi
    mov dword ptr [esp + 8], ebx
    mov edx, dword ptr [edx + 0xc]
    add edx, dword ptr [eax + 0xc]
    xor ebx, ebx
    mov dword ptr [esp + 0xc], edx
    mov edx, esp
    call sub_0043d4d0
loc_0043d4c6:
    add esp, 0x10
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0043d4d0:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x34
    mov esi, eax
    mov ebp, edx
    mov dword ptr [esp + 0x28], ebx
    test byte ptr [eax + 4], 8
    jne loc_0043da85
    test byte ptr [esi + 4], 0x20
    je loc_0043d621
    cmp dword ptr [d_004a399c], 0
    je loc_0043d621
    cmp dword ptr [d_004a39a8], 0
    jne loc_0043d621
    mov edx, dword ptr [d_0045c484]
    mov eax, ebp
    call sub_0043dd08
    mov eax, dword ptr [ebp + 8]
    sub eax, dword ptr [ebp]
    inc eax
    mov edi, dword ptr [ebp + 4]
    mov dword ptr [esp + 0x1c], eax
    mov eax, dword ptr [ebp + 0xc]
    sub eax, edi
    lea edi, [eax + 1]
    call sub_004318cc
    test eax, eax
    jne loc_0043d5ec
    mov ecx, dword ptr [ebp + 0xc]
    mov ebx, dword ptr [ebp + 8]
    mov edx, dword ptr [ebp + 4]
    mov eax, dword ptr [ebp]
    call sub_004316f0
    test eax, eax
    je loc_0043d5ec
    call sub_00431178
    mov eax, esp
    mov edx, esp
    call sub_004317c8
    mov eax, ebp
    call sub_0044570c
    mov dword ptr [esp + 0x10], eax
    mov ebx, eax
    test eax, eax
    je loc_0043da85
loc_0043d579:
    mov eax, dword ptr [ebx + 0x10]
    mov edx, ebx
    mov dword ptr [esp + 0x14], eax
    mov eax, esi
    call sub_004339b4
    mov edi, dword ptr [ebx + 4]
    push edi
    mov eax, dword ptr [ebx]
    push eax
    mov eax, dword ptr [ebx + 0xc]
    sub eax, edi
    mov edx, edi
    lea edi, [eax + 1]
    mov ecx, dword ptr [ebx]
    mov eax, dword ptr [ebx + 8]
    sub eax, ecx
    push edi
    inc eax
    push eax
    push 0
    push 0
    mov eax, edx
    mov edx, dword ptr [ebp + 4]
    push edi
    mov edi, dword ptr [esp + 0x38]
    sub eax, edx
    mov ecx, edi
    imul ecx, eax
    push edi
    mov edi, dword ptr [ebp]
    mov eax, dword ptr [ebx]
    mov edx, dword ptr [d_0045c484]
    sub eax, edi
    add eax, edx
    add ecx, eax
    push ecx
    call dword ptr [d_004a3c08]
    add esp, 0x24
    mov eax, ebx
    mov ebx, dword ptr [esp + 0x14]
    call sub_00445864
    test ebx, ebx
    jne loc_0043d579
    add esp, 0x34
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043d5ec:
    mov edx, ebp
    mov eax, esi
    call sub_004339b4
    mov eax, dword ptr [ebp + 4]
    push eax
    mov edx, dword ptr [ebp]
    push edx
    push edi
    mov ebx, dword ptr [esp + 0x28]
    push ebx
    push 0
    push 0
    push edi
    push ebx
    mov esi, dword ptr [d_0045c484]
    push esi
    call dword ptr [d_004a3c08]
    add esp, 0x24
    add esp, 0x34
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043d621:
    call sub_00445818
    mov dword ptr [esp + 0x10], eax
    test eax, eax
    je loc_0043da85
    mov dword ptr [eax + 0x10], 0
    lea eax, [esi + 8]
    mov ecx, dword ptr [ebp]
    mov edx, dword ptr [eax]
    cmp edx, ecx
    jge loc_0043d64d
    mov ebx, dword ptr [esp + 0x10]
    mov dword ptr [ebx], ecx
    jmp loc_0043d653
loc_0043d64d:
    mov ebx, dword ptr [esp + 0x10]
    mov dword ptr [ebx], edx
loc_0043d653:
    mov edx, dword ptr [eax + 4]
    mov edi, dword ptr [ebp + 4]
    cmp edx, edi
    jge loc_0043d666
    mov edx, dword ptr [esp + 0x10]
    mov dword ptr [edx + 4], edi
    jmp loc_0043d66f
loc_0043d666:
    mov ebx, edx
    mov edx, dword ptr [esp + 0x10]
    mov dword ptr [edx + 4], ebx
loc_0043d66f:
    mov edx, dword ptr [eax + 8]
    mov ebx, dword ptr [ebp + 8]
    cmp edx, ebx
    jle loc_0043d67b
    mov edx, ebx
loc_0043d67b:
    mov ebx, dword ptr [esp + 0x10]
    mov dword ptr [ebx + 8], edx
    mov edx, dword ptr [eax + 0xc]
    mov ecx, dword ptr [ebp + 0xc]
    cmp edx, ecx
    jle loc_0043d695
    mov eax, dword ptr [esp + 0x10]
    mov dword ptr [eax + 0xc], ecx
    jmp loc_0043d69c
loc_0043d695:
    mov eax, dword ptr [esp + 0x10]
    mov dword ptr [eax + 0xc], edx
loc_0043d69c:
    mov eax, dword ptr [esp + 0x10]
    mov edx, dword ptr [eax]
    cmp edx, dword ptr [eax + 8]
    jg loc_0043d6af
    mov edx, dword ptr [eax + 4]
    cmp edx, dword ptr [eax + 0xc]
    jle loc_0043d6c0
loc_0043d6af:
    mov eax, dword ptr [esp + 0x10]
    call sub_00445864
    add esp, 0x34
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043d6c0:
    cmp dword ptr [esp + 0x28], 0
    je loc_0043d6d2
    mov eax, dword ptr [ebp + 8]
    sub eax, dword ptr [ebp]
    inc eax
    mov dword ptr [esp + 0x24], eax
loc_0043d6d2:
    mov ebx, dword ptr [esp + 0x28]
    lea edx, [esp + 0x10]
    mov eax, esi
    call sub_0043daa4
    cmp dword ptr [esi], 0
    jne loc_0043d7ec
    mov esi, dword ptr [esp + 0x10]
    test esi, esi
    je loc_0043d9e0
loc_0043d6f6:
    mov eax, dword ptr [esi + 0x10]
    mov edi, dword ptr [esi]
    mov dword ptr [esp + 0x20], eax
    mov eax, dword ptr [esi + 8]
    sub eax, edi
    lea edi, [eax + 1]
    mov edx, dword ptr [esi + 4]
    mov eax, dword ptr [esi + 0xc]
    sub eax, edx
    inc eax
    mov dword ptr [esp + 0x2c], eax
    imul eax, edi
    call sub_004444b0
    mov dword ptr [esp + 0x30], eax
    mov dword ptr [esp + 0x18], eax
    test eax, eax
    je loc_0043d7db
    mov ecx, dword ptr [d_004a39a0]
    mov ebx, dword ptr [esp + 0x2c]
    push ecx
    mov edx, edi
    mov ecx, edi
    call sub_00442a5c
    cmp dword ptr [esp + 0x28], 0
    jne loc_0043d7a0
    mov ebx, dword ptr [d_004a399c]
    test ebx, ebx
    je loc_0043d77f
    mov eax, dword ptr [d_004a3be8]
    sub eax, dword ptr [d_004a3be0]
    inc eax
    mov ebx, dword ptr [esi + 4]
    push eax
    imul eax, ebx
    mov edx, dword ptr [d_0045c484]
    mov ecx, dword ptr [esi]
    add eax, edx
    add eax, ecx
    push eax
    push edi
    mov esi, dword ptr [esp + 0x38]
    push esi
    push edi
    mov edi, dword ptr [esp + 0x44]
    push edi
    jmp loc_0043d7ca
loc_0043d77f:
    mov ecx, dword ptr [esi + 4]
    push ecx
    mov eax, dword ptr [esi]
    push eax
    mov edx, dword ptr [esp + 0x34]
    push edx
    push edi
    push ebx
    push ebx
    push edx
    push edi
    mov ecx, dword ptr [esp + 0x50]
    push ecx
    call dword ptr [d_004a3c08]
    add esp, 0x24
    jmp loc_0043d7d2
loc_0043d7a0:
    mov eax, dword ptr [esi + 4]
    mov ebx, dword ptr [ebp + 4]
    mov edx, dword ptr [esp + 0x24]
    sub eax, ebx
    imul eax, edx
    push edx
    mov edx, dword ptr [esp + 0x2c]
    add edx, eax
    mov eax, dword ptr [esi]
    sub eax, dword ptr [ebp]
    add eax, edx
    push eax
    push edi
    mov eax, dword ptr [esp + 0x38]
    push eax
    push edi
    mov edx, dword ptr [esp + 0x44]
    push edx
loc_0043d7ca:
    call sub_004428b4
    add esp, 0x18
loc_0043d7d2:
    mov eax, dword ptr [esp + 0x18]
    call sub_00444630
loc_0043d7db:
    mov esi, dword ptr [esp + 0x20]
    test esi, esi
    jne loc_0043d6f6
    jmp loc_0043d9e0
loc_0043d7ec:
    mov ebx, dword ptr [esp + 0x10]
    test ebx, ebx
    je loc_0043d9e0
loc_0043d7f8:
    mov edx, ebx
    mov eax, esi
    mov edi, dword ptr [ebx + 0x10]
    call sub_004339b4
    cmp dword ptr [esp + 0x28], 0
    jne loc_0043d916
    cmp dword ptr [d_004a399c], 0
    je loc_0043d8c6
    mov eax, dword ptr [d_004a3be8]
    sub eax, dword ptr [d_004a3be0]
    mov cl, byte ptr [esi + 4]
    inc eax
    test cl, 0x20
    je loc_0043d87d
    mov ecx, dword ptr [ebx + 4]
    push eax
    imul eax, ecx
    mov edx, dword ptr [d_0045c484]
    add eax, edx
    add eax, dword ptr [ebx]
    push eax
    mov edx, dword ptr [ebx + 4]
    mov eax, dword ptr [ebx + 0xc]
    mov ecx, dword ptr [esi + 0x18]
    sub eax, edx
    push ecx
    inc eax
    mov ecx, dword ptr [ebx]
    push eax
    mov eax, dword ptr [ebx + 8]
    sub eax, ecx
    inc eax
    push eax
    mov eax, edx
    mov edx, dword ptr [esi + 0xc]
    mov ecx, dword ptr [esi + 0x18]
    sub eax, edx
    imul ecx, eax
    mov eax, dword ptr [ebx]
    mov ebx, dword ptr [esi + 8]
    mov edx, dword ptr [esi + 0x2c]
    sub eax, ebx
    add eax, edx
    add eax, ecx
    push eax
    call dword ptr [esi + 0x40]
    jmp loc_0043d9d3
loc_0043d87d:
    mov edx, dword ptr [ebx + 4]
    push eax
    imul eax, edx
    mov edx, dword ptr [d_0045c484]
    mov ecx, dword ptr [ebx]
    add eax, edx
    add eax, ecx
    push eax
    mov eax, dword ptr [esi + 0x18]
    mov edx, dword ptr [ebx + 4]
    push eax
    mov eax, dword ptr [ebx + 0xc]
    sub eax, edx
    inc eax
    push eax
    mov eax, dword ptr [ebx + 8]
    sub eax, ecx
    inc eax
    push eax
    mov eax, edx
    mov edx, dword ptr [esi + 0xc]
    mov ecx, dword ptr [esi + 0x18]
    sub eax, edx
    imul ecx, eax
    mov eax, dword ptr [ebx]
    mov ebx, dword ptr [esi + 8]
    mov edx, dword ptr [esi + 0x2c]
    sub eax, ebx
    add eax, edx
    add eax, ecx
    jmp loc_0043d9cd
loc_0043d8c6:
    mov eax, dword ptr [ebx + 4]
    mov ecx, dword ptr [ebx + 4]
    push eax
    mov eax, dword ptr [ebx + 0xc]
    mov edx, dword ptr [ebx]
    sub eax, ecx
    push edx
    lea edx, [eax + 1]
    mov ecx, dword ptr [ebx]
    mov eax, dword ptr [ebx + 8]
    sub eax, ecx
    push edx
    inc eax
    push eax
    push 0
    push 0
    push edx
    mov eax, dword ptr [esi + 0x18]
    push eax
    mov edx, dword ptr [esi + 0xc]
    mov eax, dword ptr [ebx + 4]
    mov ecx, dword ptr [esi + 0x18]
    sub eax, edx
    imul ecx, eax
    mov eax, dword ptr [ebx]
    mov ebx, dword ptr [esi + 8]
    mov edx, dword ptr [esi + 0x2c]
    sub eax, ebx
    add eax, edx
    add eax, ecx
    push eax
    call dword ptr [d_004a3c08]
    add esp, 0x24
    jmp loc_0043d9d6
loc_0043d916:
    cmp dword ptr [d_004a399c], 0
    je loc_0043d97d
    test byte ptr [esi + 4], 0x20
    je loc_0043d97d
    mov eax, dword ptr [ebx + 4]
    mov edx, dword ptr [ebp + 4]
    mov ecx, dword ptr [esp + 0x24]
    sub eax, edx
    imul eax, ecx
    push ecx
    mov edx, dword ptr [esp + 0x2c]
    mov ecx, dword ptr [ebp]
    add edx, eax
    mov eax, dword ptr [ebx]
    sub eax, ecx
    add eax, edx
    push eax
    mov eax, dword ptr [esi + 0x18]
    mov edx, dword ptr [ebx + 4]
    push eax
    mov eax, dword ptr [ebx + 0xc]
    sub eax, edx
    inc eax
    mov ecx, dword ptr [ebx]
    push eax
    mov eax, dword ptr [ebx + 8]
    sub eax, ecx
    inc eax
    push eax
    mov eax, edx
    mov edx, dword ptr [esi + 0xc]
    mov ecx, dword ptr [esi + 0x18]
    sub eax, edx
    imul ecx, eax
    mov eax, dword ptr [ebx]
    mov ebx, dword ptr [esi + 8]
    mov edx, dword ptr [esi + 0x2c]
    sub eax, ebx
    add eax, edx
    add eax, ecx
    push eax
    call dword ptr [esi + 0x40]
    jmp loc_0043d9d3
loc_0043d97d:
    mov eax, dword ptr [ebx + 4]
    mov edx, dword ptr [ebp + 4]
    mov ecx, dword ptr [esp + 0x24]
    sub eax, edx
    imul eax, ecx
    push ecx
    mov edx, dword ptr [esp + 0x2c]
    mov ecx, dword ptr [ebp]
    add edx, eax
    mov eax, dword ptr [ebx]
    sub eax, ecx
    add eax, edx
    push eax
    mov eax, dword ptr [esi + 0x18]
    mov edx, dword ptr [ebx + 4]
    push eax
    mov eax, dword ptr [ebx + 0xc]
    sub eax, edx
    inc eax
    mov ecx, dword ptr [ebx]
    push eax
    mov eax, dword ptr [ebx + 8]
    sub eax, ecx
    inc eax
    push eax
    mov eax, edx
    sub eax, dword ptr [esi + 0xc]
    mov edx, dword ptr [esi + 0x18]
    imul edx, eax
    mov ebx, dword ptr [esi + 8]
    mov eax, ecx
    sub eax, ebx
    mov ebx, dword ptr [esi + 0x2c]
    add eax, ebx
    add eax, edx
loc_0043d9cd:
    push eax
    call sub_004428b4
loc_0043d9d3:
    add esp, 0x18
loc_0043d9d6:
    mov ebx, edi
    test edi, edi
    jne loc_0043d7f8
loc_0043d9e0:
    mov ebx, dword ptr [esp + 0x10]
    test ebx, ebx
    je loc_0043da52
loc_0043d9e8:
    mov ecx, dword ptr [d_004a399c]
    mov edi, dword ptr [ebx + 0x10]
    test ecx, ecx
    je loc_0043da45
    cmp dword ptr [esp + 0x28], 0
    jne loc_0043da45
    mov eax, dword ptr [ebx + 4]
    mov ecx, dword ptr [ebx + 4]
    push eax
    mov eax, dword ptr [ebx + 0xc]
    sub eax, ecx
    lea esi, [eax + 1]
    mov edx, dword ptr [ebx]
    mov eax, dword ptr [ebx + 8]
    push edx
    sub eax, edx
    push esi
    inc eax
    mov ecx, dword ptr [d_004a3be0]
    push eax
    mov eax, dword ptr [d_004a3be8]
    sub eax, ecx
    mov edx, dword ptr [ebx + 4]
    inc eax
    imul edx, eax
    push 0
    push 0
    push esi
    push eax
    mov esi, dword ptr [ebx]
    mov eax, dword ptr [d_0045c484]
    add eax, esi
    add eax, edx
    push eax
    call dword ptr [d_004a3c08]
    add esp, 0x24
loc_0043da45:
    mov eax, ebx
    call sub_00445864
    mov ebx, edi
    test edi, edi
    jne loc_0043d9e8
loc_0043da52:
    cmp dword ptr [d_004a39a8], 0
    jne loc_0043da85
    cmp dword ptr [esp + 0x28], 0
    jne loc_0043da85
    call sub_004318cc
    test eax, eax
    jne loc_0043da85
    mov ecx, dword ptr [ebp + 0xc]
    mov ebx, dword ptr [ebp + 8]
    mov edx, dword ptr [ebp + 4]
    mov eax, dword ptr [ebp]
    call sub_004316f0
    test eax, eax
    je loc_0043da85
    call sub_00431178
loc_0043da85:
    add esp, 0x34
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
sub_0043da90:
    push edx
    cmp dword ptr [d_0045c468], 0
    je loc_0043daa1
    xor edx, edx
    call sub_0043dd08
loc_0043daa1:
    pop edx
    ret
    .byte 0x90
sub_0043daa4:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov esi, edx
    mov ebp, ebx
    mov eax, dword ptr [eax]
    mov edi, dword ptr [eax*4 + d_004a3800]
    mov edx, dword ptr [d_004a3994]
    inc edi
    cmp edi, edx
    jl loc_0043db14
    jmp loc_0043db20
loc_0043dac5:
    mov eax, dword ptr [ecx + d_004a38c8]
    mov dl, byte ptr [eax + 4]
    test dl, 8
    jne loc_0043db04
    cmp dword ptr [d_004a399c], 0
    je loc_0043daf4
    test dl, 0x20
    je loc_0043daf4
    cmp dword ptr [d_004a39a8], 0
    jne loc_0043db04
    lea edx, [eax + 8]
    xor ebx, ebx
    call sub_0043d4d0
loc_0043daf4:
    mov edx, dword ptr [ecx + d_004a38c8]
    mov eax, esi
    add edx, 8
    call sub_00445584
loc_0043db04:
    mov ebx, dword ptr [d_004a3994]
    inc edi
    add ecx, 4
    cmp edi, ebx
    jl loc_0043db1b
    jmp loc_0043db20
loc_0043db14:
    lea ecx, [edi*4]
loc_0043db1b:
    cmp dword ptr [esi], 0
    jne loc_0043dac5
loc_0043db20:
    cmp ebp, dword ptr [d_0045c484]
    je loc_0043db2c
    test ebp, ebp
    jne loc_0043db45
loc_0043db2c:
    call sub_004318cc
    test eax, eax
    jne loc_0043db45
    mov eax, esp
    mov edx, esp
    call sub_004317c8
    mov eax, esi
    call sub_00445584
loc_0043db45:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
sub_0043db50:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x1c
    mov edx, eax
    call sub_0043dd7c
    mov edi, dword ptr [d_0045c468]
    mov esi, eax
    mov ecx, eax
    xor ebx, ebx
    xor ebp, ebp
    test edi, edi
    je loc_0043dce0
    test eax, eax
    je loc_0043dce0
    mov eax, edx
    mov edi, esp
    call sub_0043d2a4
    lea esi, [esi + 8]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    call sub_0043a6a4
    call sub_00444f4c
    cmp eax, 3
    je loc_0043dba2
    call sub_004313c8
loc_0043dba2:
    lea eax, [ecx + 8]
    mov dword ptr [esp + 0x18], eax
loc_0043dba9:
    call sub_004318c4
    test al, 0x30
    jne loc_0043dcc7
    test ebx, ebx
    jne loc_0043dbbe
    test ebp, ebp
    je loc_0043dc28
loc_0043dbbe:
    mov eax, dword ptr [ecx + 8]
    mov edx, dword ptr [ecx + 0xc]
    mov esi, dword ptr [ecx + 0x10]
    mov edi, dword ptr [ecx + 0x14]
    add eax, ebx
    add edx, ebp
    add esi, ebx
    mov dword ptr [ecx + 8], eax
    add edi, ebp
    mov dword ptr [ecx + 0xc], edx
    xor ebx, ebx
    mov dword ptr [ecx + 0x10], esi
    mov edx, dword ptr [esp + 0x18]
    mov eax, ecx
    mov dword ptr [ecx + 0x14], edi
    call sub_0043d4d0
    mov edx, dword ptr [esp + 0x18]
    mov eax, esp
    call sub_0044570c
    mov esi, eax
    test eax, eax
    je loc_0043dc1f
loc_0043dbfc:
    mov ebp, dword ptr [d_0045c468]
    mov edi, dword ptr [esi + 0x10]
    test ebp, ebp
    je loc_0043dc12
    mov eax, esi
    xor edx, edx
    call sub_0043dd08
loc_0043dc12:
    mov eax, esi
    call sub_00445864
    mov esi, edi
    test edi, edi
    jne loc_0043dbfc
loc_0043dc1f:
    mov edi, esp
    lea esi, [ecx + 8]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
loc_0043dc28:
    lea edx, [esp + 0x10]
    lea eax, [esp + 0x14]
    call sub_00431804
    call sub_0043a6a4
    call sub_00444f4c
    cmp eax, 3
    je loc_0043dc49
    call sub_004313c8
loc_0043dc49:
    mov ebx, dword ptr [esp + 0x14]
    lea edx, [esp + 0x10]
    lea eax, [esp + 0x14]
    mov ebp, dword ptr [esp + 0x10]
    call sub_00431804
    mov eax, dword ptr [esp + 0x14]
    sub eax, ebx
    mov ebx, eax
    mov eax, dword ptr [esp + 0x10]
    sub eax, ebp
    mov ebp, eax
    mov eax, dword ptr [ecx + 8]
    mov edx, dword ptr [d_004a3be0]
    add eax, ebx
    cmp eax, edx
    jge loc_0043dc82
    mov ebx, edx
    sub ebx, dword ptr [ecx + 8]
loc_0043dc82:
    mov eax, dword ptr [ecx + 0x10]
    mov edi, dword ptr [d_004a3be8]
    add eax, ebx
    cmp eax, edi
    jle loc_0043dc96
    mov ebx, edi
    sub ebx, dword ptr [ecx + 0x10]
loc_0043dc96:
    mov eax, dword ptr [ecx + 0xc]
    mov edx, dword ptr [d_004a3be4]
    add eax, ebp
    cmp eax, edx
    jge loc_0043dcaa
    mov ebp, edx
    sub ebp, dword ptr [ecx + 0xc]
loc_0043dcaa:
    mov eax, dword ptr [ecx + 0x14]
    mov edi, dword ptr [d_004a3bec]
    add eax, ebp
    cmp eax, edi
    jle loc_0043dba9
    mov ebp, edi
    sub ebp, dword ptr [ecx + 0x14]
    jmp loc_0043dba9
loc_0043dcc7:
    test byte ptr [ecx + 5], 1
    je loc_0043dce0
    test byte ptr [ecx + 8], 3
    je loc_0043dce0
    mov ebx, dword ptr [ecx + 0xc]
    mov edx, dword ptr [ecx + 8]
    mov eax, dword ptr [ecx]
    call sub_0043d398
loc_0043dce0:
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0043dcec:
    push edx
    sub esp, 0x10
    mov edx, eax
    mov eax, esp
    call sub_004317c8
    mov eax, esp
    call sub_0043dd08
    add esp, 0x10
    pop edx
    ret
    .byte 0x8d,0x40,0x00
sub_0043dd08:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov edi, eax
    mov ebp, edx
    mov edx, 1
    mov ebx, dword ptr [d_004a3994]
    xor esi, esi
    mov dword ptr [d_004a39a8], edx
    test ebx, ebx
    jle loc_0043dd46
    xor ecx, ecx
loc_0043dd2a:
    mov ebx, ebp
    mov edx, edi
    mov eax, dword ptr [ecx + d_004a38c8]
    call sub_0043d4d0
    inc esi
    mov eax, dword ptr [d_004a3994]
    add ecx, 4
    cmp esi, eax
    jl loc_0043dd2a
loc_0043dd46:
    xor edx, edx
    mov dword ptr [d_004a39a8], edx
    test ebp, ebp
    jne loc_0043dd74
    call sub_004318cc
    test eax, eax
    jne loc_0043dd74
    mov ecx, dword ptr [edi + 0xc]
    mov ebx, dword ptr [edi + 8]
    mov edx, dword ptr [edi + 4]
    mov eax, dword ptr [edi]
    call sub_004316f0
    test eax, eax
    je loc_0043dd74
    call sub_00431178
loc_0043dd74:
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0043dd7c:
    push edx
    cmp eax, -1
    jne loc_0043dd86
    xor eax, eax
    pop edx
    ret
loc_0043dd86:
    shl eax, 2
    mov edx, dword ptr [eax + d_004a3800]
    cmp edx, -1
    jne loc_0043dd98
    xor eax, eax
    pop edx
    ret
loc_0043dd98:
    mov eax, dword ptr [edx*4 + d_004a38c8]
    pop edx
    ret
    .byte 0x8d,0x40,0x00
sub_0043dda4:
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    je loc_0043ddb6
    test eax, eax
    jne loc_0043ddb9
loc_0043ddb6:
    xor eax, eax
    ret
loc_0043ddb9:
    mov eax, dword ptr [eax + 0x2c]
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push ecx
    push esi
    mov ecx, eax
    mov esi, edx
    mov ebx, dword ptr [d_004a3994]
    dec ebx
    cmp ebx, 1
    jl loc_0043ddfd
    lea edx, [ebx*4]
loc_0043ddda:
    mov eax, dword ptr [edx + d_004a38c8]
    cmp ecx, dword ptr [eax + 8]
    jl loc_0043ddf4
    cmp ecx, dword ptr [eax + 0x10]
    jg loc_0043ddf4
    cmp esi, dword ptr [eax + 0xc]
    jl loc_0043ddf4
    cmp esi, dword ptr [eax + 0x14]
    jle loc_0043ddfd
loc_0043ddf4:
    sub edx, 4
    dec ebx
    cmp edx, 4
    jge loc_0043ddda
loc_0043ddfd:
    mov eax, dword ptr [ebx*4 + d_004a38c8]
    mov eax, dword ptr [eax]
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0043de0c:
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    je loc_0043de1e
    test eax, eax
    jne loc_0043de24
loc_0043de1e:
    mov eax, 0xffffffff
    ret
loc_0043de24:
    mov eax, dword ptr [eax + 0x18]
    ret
sub_0043de28:
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    je loc_0043de3a
    test eax, eax
    jne loc_0043de40
loc_0043de3a:
    mov eax, 0xffffffff
    ret
loc_0043de40:
    mov eax, dword ptr [eax + 0x1c]
    ret
sub_0043de44:
    push esi
    push edi
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    je loc_0043de58
    test eax, eax
    jne loc_0043de60
loc_0043de58:
    mov eax, 0xffffffff
    pop edi
    pop esi
    ret
loc_0043de60:
    mov edi, edx
    lea esi, [eax + 8]
    xor eax, eax
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    pop edi
    pop esi
    ret
    .byte 0x8b,0xc0
sub_0043de70:
    push ebx
    push ecx
    push edx
    sub esp, 4
    mov edx, 0xffffffff
    mov ebx, dword ptr [d_0045c468]
    mov dword ptr [esp], edx
    test ebx, ebx
    jne loc_0043de8c
    mov eax, edx
    jmp loc_0043dec8
loc_0043de8c:
    mov ecx, dword ptr [d_004a3994]
    dec ecx
    cmp ecx, 1
    jl loc_0043dec5
    lea ebx, [ecx*4]
loc_0043de9f:
    mov edx, esp
    mov eax, dword ptr [ebx + d_004a38c8]
    call sub_00432998
    test eax, eax
    je loc_0043dec5
    mov eax, dword ptr [ebx + d_004a38c8]
    test byte ptr [eax + 4], 0x10
    jne loc_0043dec5
    sub ebx, 4
    dec ecx
    cmp ebx, 4
    jge loc_0043de9f
loc_0043dec5:
    mov eax, dword ptr [esp]
loc_0043dec8:
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0043ded0:
    push ebx
    push ecx
    push esi
    push edi
    mov ebx, eax
    mov edi, edx
    mov edx, dword ptr [d_004a3994]
    xor ecx, ecx
    test edx, edx
    jle loc_0043df21
    mov esi, dword ptr [d_004a3994]
    xor edx, edx
    shl esi, 2
loc_0043deef:
    mov eax, dword ptr [edx + d_004a38c8]
    mov eax, dword ptr [eax + 0x30]
    test eax, eax
    je loc_0043df19
loc_0043defc:
    cmp ebx, dword ptr [eax]
    jne loc_0043df12
    test edi, edi
    je loc_0043df23
    mov edx, dword ptr [ecx*4 + d_004a38c8]
    mov dword ptr [edi], edx
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043df12:
    mov eax, dword ptr [eax + 0x78]
    test eax, eax
    jne loc_0043defc
loc_0043df19:
    add edx, 4
    inc ecx
    cmp edx, esi
    jl loc_0043deef
loc_0043df21:
    xor eax, eax
loc_0043df23:
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0043df28:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, eax
    cmp dword ptr [d_0045c468], 0
    jne loc_0043df46
    mov eax, 0xffffffff
    # jmp 0x43dfad
    .byte 0xe9
    .long loc_0043dfad - . - 4
loc_0043df46:
    mov eax, dword ptr [d_004a3994]
    dec eax
    mov dword ptr [esp], eax
    cmp eax, 1
    jl loc_0043dfab
    lea ebp, [eax*4]
loc_0043df5b:
    mov eax, dword ptr [ebp + d_004a38c8]
    cmp dword ptr [eax + 0x3c], 0
    je loc_0043df90
    mov edi, ebp
    xor edx, edx
    xor ebx, ebx
    jmp loc_0043df82
loc_0043df6f:
    cmp esi, dword ptr [ebx + eax + 0x28]
    jne loc_0043df7e
    call sub_0042fdf0
    mov esi, eax
    jmp loc_0043df90
loc_0043df7e:
    add ebx, 0x24
    inc edx
loc_0043df82:
    mov eax, dword ptr [edi + d_004a38c8]
    mov eax, dword ptr [eax + 0x3c]
    cmp edx, dword ptr [eax + 0x14]
    jl loc_0043df6f
loc_0043df90:
    mov eax, dword ptr [ebp + d_004a38c8]
    test byte ptr [eax + 4], 0x10
    jne loc_0043dfab
    mov ecx, dword ptr [esp]
    dec ecx
    sub ebp, 4
    mov dword ptr [esp], ecx
    cmp ebp, 4
    jge loc_0043df5b
loc_0043dfab:
    mov eax, esi
loc_0043dfad:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x12c
    mov edx, offset d_0045ad60
    call sub_0043f134
    xor ebx, ebx
    xor ecx, ecx
    mov edi, eax
    test eax, eax
    jne loc_0043dfdf
    xor esi, esi
    jmp loc_0043e5ba
loc_0043dfdf:
    xor esi, esi
    xor edx, edx
loc_0043dfe3:
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + edx + 0x100], eax
    cmp eax, -1
    je loc_0043dfff
    add edx, 4
    inc esi
    cmp edx, 0x10
    jl loc_0043dfe3
loc_0043dfff:
    cmp esi, 4
    jge loc_0043e01c
    mov eax, edi
    call sub_00441e50
    xor esi, esi
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e01c:
    mov eax, dword ptr [esp + 0x104]
    mov dword ptr [esp + 0x100], eax
    mov eax, dword ptr [esp + 0x108]
    mov dword ptr [esp + 0x104], eax
    mov eax, dword ptr [esp + 0x10c]
    mov dword ptr [esp + 0x108], eax
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x10c], eax
    cmp eax, -1
    je loc_0043e07c
    cmp dword ptr [esp + 0x100], 0x42
    jne loc_0043e01c
    cmp dword ptr [esp + 0x104], 0x4d
    jne loc_0043e01c
    cmp dword ptr [esp + 0x108], 0x48
    jne loc_0043e01c
    cmp eax, 0x44
    jne loc_0043e01c
loc_0043e07c:
    cmp dword ptr [esp + 0x10c], -1
    jne loc_0043e09e
    mov eax, edi
    call sub_00441e50
    xor esi, esi
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e09e:
    xor esi, esi
    xor edx, edx
loc_0043e0a2:
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + edx + 0x100], eax
    cmp eax, -1
    je loc_0043e0be
    add edx, 4
    inc esi
    cmp edx, 0x10
    jl loc_0043e0a2
loc_0043e0be:
    cmp esi, 4
    jge loc_0043e0db
    mov eax, edi
    call sub_00441e50
    xor esi, esi
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e0db:
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x100], eax
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x104], eax
    mov eax, dword ptr [esp + 0x100]
    mov edx, dword ptr [esp + 0x104]
    shl eax, 8
    add edx, eax
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x100], eax
    mov eax, edi
    mov word ptr [esp + 0x124], dx
    call sub_0043fa10
    mov dword ptr [esp + 0x104], eax
    mov eax, dword ptr [esp + 0x100]
    mov edx, dword ptr [esp + 0x104]
    shl eax, 8
    add edx, eax
    mov word ptr [esp + 0x128], dx
    mov edx, dword ptr [esp + 0x122]
    mov eax, dword ptr [esp + 0x126]
    sar edx, 0x10
    sar eax, 0x10
    imul eax, edx
    add eax, 4
    call sub_004444b0
    mov dword ptr [esp + 0x118], eax
    test eax, eax
    jne loc_0043e184
    xor esi, esi
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e184:
    mov dl, byte ptr [esp + 0x124]
    mov byte ptr [eax], dl
    lea edx, [eax + 1]
    inc edx
    inc edx
    inc edx
    mov al, byte ptr [esp + 0x125]
    mov byte ptr [edx - 3], al
    mov al, byte ptr [esp + 0x128]
    mov byte ptr [edx - 2], al
    mov al, byte ptr [esp + 0x129]
    xor esi, esi
    mov byte ptr [edx - 1], al
loc_0043e1b3:
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x100], eax
    cmp eax, -1
    je loc_0043e1cc
    inc esi
    cmp esi, 6
    jl loc_0043e1b3
loc_0043e1cc:
    cmp esi, 6
    jl loc_0043e1e4
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x114], eax
    cmp eax, -1
    jne loc_0043e1fc
loc_0043e1e4:
    mov eax, edi
    call sub_00441e50
    xor esi, esi
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e1fc:
    mov eax, dword ptr [esp + 0x104]
    mov dword ptr [esp + 0x100], eax
    mov eax, dword ptr [esp + 0x108]
    mov dword ptr [esp + 0x104], eax
    mov eax, dword ptr [esp + 0x10c]
    mov dword ptr [esp + 0x108], eax
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x10c], eax
    cmp eax, -1
    je loc_0043e25c
    cmp dword ptr [esp + 0x100], 0x43
    jne loc_0043e1fc
    cmp dword ptr [esp + 0x104], 0x4d
    jne loc_0043e1fc
    cmp dword ptr [esp + 0x108], 0x41
    jne loc_0043e1fc
    cmp eax, 0x50
    jne loc_0043e1fc
loc_0043e25c:
    cmp dword ptr [esp + 0x10c], -1
    jne loc_0043e28a
    mov eax, edi
    call sub_00441e50
    mov eax, dword ptr [esp + 0x118]
    xor esi, esi
    call sub_00444630
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e28a:
    xor ebp, ebp
    xor esi, esi
loc_0043e28e:
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + esi + 0x100], eax
    cmp eax, -1
    je loc_0043e2aa
    add esi, 4
    inc ebp
    cmp esi, 0x10
    jl loc_0043e28e
loc_0043e2aa:
    cmp ebp, 4
    jge loc_0043e2d3
    mov eax, edi
    call sub_00441e50
    mov eax, dword ptr [esp + 0x118]
    xor esi, esi
    call sub_00444630
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e2d3:
    xor esi, esi
loc_0043e2d5:
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x100], eax
    cmp eax, -1
    je loc_0043e34e
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x104], eax
    cmp eax, -1
    je loc_0043e34e
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x108], eax
    cmp eax, -1
    je loc_0043e34e
    mov ebp, dword ptr [esp + 0x104]
    sar ebp, 3
    shl ebp, 5
    mov dword ptr [esp + 0x110], ebp
    mov ebp, dword ptr [esp + 0x100]
    sar ebp, 3
    shl ebp, 0xa
    sar eax, 3
    or ebp, dword ptr [esp + 0x110]
    or eax, ebp
    inc esi
    mov al, byte ptr [eax + d_00495390]
    mov byte ptr [esp + esi - 1], al
    cmp esi, 0x100
    jl loc_0043e2d5
loc_0043e34e:
    cmp esi, 0x100
    jge loc_0043e37a
    mov eax, edi
    call sub_00441e50
    mov eax, dword ptr [esp + 0x118]
    xor esi, esi
    call sub_00444630
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e37a:
    mov eax, dword ptr [esp + 0x104]
    mov dword ptr [esp + 0x100], eax
    mov eax, dword ptr [esp + 0x108]
    mov dword ptr [esp + 0x104], eax
    mov eax, dword ptr [esp + 0x10c]
    mov dword ptr [esp + 0x108], eax
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x10c], eax
    cmp eax, -1
    je loc_0043e3da
    cmp dword ptr [esp + 0x100], 0x42
    jne loc_0043e37a
    cmp dword ptr [esp + 0x104], 0x4f
    jne loc_0043e37a
    cmp dword ptr [esp + 0x108], 0x44
    jne loc_0043e37a
    cmp eax, 0x59
    jne loc_0043e37a
loc_0043e3da:
    cmp dword ptr [esp + 0x10c], -1
    jne loc_0043e408
    mov eax, edi
    call sub_00441e50
    mov eax, dword ptr [esp + 0x118]
    xor esi, esi
    call sub_00444630
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e408:
    xor ebp, ebp
    xor esi, esi
loc_0043e40c:
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + esi + 0x100], eax
    cmp eax, -1
    je loc_0043e428
    add esi, 4
    inc ebp
    cmp esi, 0x10
    jl loc_0043e40c
loc_0043e428:
    cmp ebp, 4
    jge loc_0043e451
    mov eax, edi
    call sub_00441e50
    mov eax, dword ptr [esp + 0x118]
    xor esi, esi
    call sub_00444630
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e451:
    cmp dword ptr [esp + 0x114], 0
    jne loc_0043e49e
    xor ebx, ebx
    jmp loc_0043e47e
loc_0043e45f:
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x100], eax
    cmp eax, -1
    je loc_0043e5ac
    inc edx
    mov al, byte ptr [esp + eax]
    inc ebx
    mov byte ptr [edx - 1], al
loc_0043e47e:
    mov eax, dword ptr [esp + 0x122]
    mov ecx, dword ptr [esp + 0x126]
    sar eax, 0x10
    sar ecx, 0x10
    imul eax, ecx
    cmp ebx, eax
    jl loc_0043e45f
    jmp loc_0043e5ac
loc_0043e49e:
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x11c], eax
    mov ebp, eax
    cmp eax, -1
    je loc_0043e5ac
    cmp eax, 0x80
    # jge 0x43e53e
    .byte 0x0f,0x8d
    .long loc_0043e53e - . - 4
    xor esi, esi
    mov dword ptr [esp + 0x120], esi
    test eax, eax
    jl loc_0043e52c
loc_0043e4cf:
    mov eax, edi
    call sub_0043fa10
    mov esi, eax
    mov dword ptr [esp + 0x100], eax
    cmp eax, -1
    je loc_0043e52c
    mov eax, dword ptr [esp + 0x122]
    sar eax, 0x10
    cmp ebx, eax
    jge loc_0043e507
    mov eax, dword ptr [esp + 0x126]
    sar eax, 0x10
    cmp ecx, eax
    jge loc_0043e507
    inc edx
    mov al, byte ptr [esp + esi]
    mov byte ptr [edx - 1], al
loc_0043e507:
    mov eax, dword ptr [esp + 0x122]
    inc ebx
    sar eax, 0x10
    cmp ebx, eax
    jne loc_0043e519
    inc ecx
    xor ebx, eax
loc_0043e519:
    mov esi, dword ptr [esp + 0x120]
    inc esi
    mov dword ptr [esp + 0x120], esi
    cmp ebp, esi
    jge loc_0043e4cf
loc_0043e52c:
    cmp ebp, dword ptr [esp + 0x120]
    # jge 0x43e5ac
    .byte 0x0f,0x8d
    .long loc_0043e5ac - . - 4
    jmp loc_0043e49e
loc_0043e53e:
    mov eax, edi
    call sub_0043fa10
    mov dword ptr [esp + 0x100], eax
    cmp eax, -1
    je loc_0043e5ac
    mov ebp, 0x100
    sub ebp, dword ptr [esp + 0x11c]
    xor esi, esi
    test ebp, ebp
    jl loc_0043e5a4
loc_0043e563:
    mov eax, dword ptr [esp + 0x122]
    sar eax, 0x10
    cmp ebx, eax
    jge loc_0043e58d
    mov eax, dword ptr [esp + 0x126]
    sar eax, 0x10
    cmp ecx, eax
    jge loc_0043e58d
    mov eax, dword ptr [esp + 0x100]
    inc edx
    mov al, byte ptr [esp + eax]
    mov byte ptr [edx - 1], al
loc_0043e58d:
    mov eax, dword ptr [esp + 0x122]
    inc ebx
    sar eax, 0x10
    cmp ebx, eax
    jne loc_0043e59f
    inc ecx
    xor ebx, eax
loc_0043e59f:
    inc esi
    cmp esi, ebp
    jle loc_0043e563
loc_0043e5a4:
    cmp esi, ebp
    jg loc_0043e49e
loc_0043e5ac:
    mov eax, edi
    mov esi, dword ptr [esp + 0x118]
    call sub_00441e50
loc_0043e5ba:
    mov eax, esi
    add esp, 0x12c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0043e5cc:
    push ebx
    push ecx
    push edx
    push esi
    mov esi, eax
    test eax, eax
    je loc_0043e63a
    cmp dword ptr [d_0045c464], -1
    jne loc_0043e60a
    push eax
    push 1
    push 0
    call dword ptr cs:[iat_004a726c]
    mov dword ptr [d_0045c464], eax
    call dword ptr cs:[__imp__GetLastError]
    test eax, eax
    je loc_0043e60a
    mov dword ptr [d_0045c460], 1
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e60a:
    mov ebx, 0x100
    mov eax, offset d_004a3d10
    mov edx, esi
    call sub_0045169c
    xor ah, ah
    mov ebx, dword ptr [d_0045c4d0]
    mov byte ptr [d_004a3e0f], ah
    test ebx, ebx
    je loc_0043e63a
    push offset d_004a3d10
    push ebx
    call dword ptr cs:[__imp__SetWindowTextA]
loc_0043e63a:
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
    call sub_0043dd7c
    cmp dword ptr [d_0045c468], 0
    je loc_0043e667
    test eax, eax
    je loc_0043e667
    test byte ptr [eax + 4], 0x20
    je loc_0043e667
    test edx, edx
    je loc_0043e660
    mov dword ptr [eax + 0x40], edx
    ret
loc_0043e660:
    mov dword ptr [eax + 0x40], offset sub_004428e4
loc_0043e667:
    ret
ptr_0043e668:
    push ebx
    push ecx
    push esi
    sub esp, 4
    mov esi, eax
    mov ecx, edx
    mov ebx, 4
    mov eax, esp
    xor edx, edx
    call sub_00451940
    test cl, 1
    je loc_0043e68b
    mov byte ptr [esp], 0x77
    jmp loc_0043e6a4
loc_0043e68b:
    test cl, 0x10
    je loc_0043e6a0
    mov byte ptr [esp], 0x61
    test ch, 1
    je loc_0043e6b0
    mov byte ptr [esp + 1], 0x74
    jmp loc_0043e6ba
loc_0043e6a0:
    mov byte ptr [esp], 0x72
loc_0043e6a4:
    test ch, 1
    je loc_0043e6b0
    mov byte ptr [esp + 1], 0x74
    jmp loc_0043e6ba
loc_0043e6b0:
    test ch, 2
    je loc_0043e6ba
    mov byte ptr [esp + 1], 0x62
loc_0043e6ba:
    mov edx, esp
    mov eax, esi
    call sub_0043f134
    test eax, eax
    jne loc_0043e6cc
    mov eax, 0xffffffff
loc_0043e6cc:
    add esp, 4
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
ptr_0043e6d4:
    # jmp 0x441e50
    .byte 0xe9
    .long sub_00441e50 - . - 4
    .byte 0x8d,0x40,0x00
ptr_0043e6dc:
    push ecx
    push esi
    mov esi, edx
    mov edx, 1
    mov ecx, eax
    mov eax, esi
    call sub_0043f4c0
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push ecx
    push edx
    push esi
    mov esi, eax
    push 0x7f00
    mov edx, dword ptr [d_0045c4d4]
    push edx
    call dword ptr cs:[__imp__LoadCursorA]
    push eax
    call dword ptr cs:[iat_004a7178]
    push 1
    mov ebx, eax
    call dword ptr cs:[iat_004a7188]
    push 0x10
    push 0
    push esi
    push 0
    call dword ptr cs:[__imp__MessageBoxA]
    push 0
    call dword ptr cs:[iat_004a7188]
    push ebx
    call dword ptr cs:[iat_004a7178]
    mov eax, 1
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_0043e750:
    push esi
    push edi
    sub esp, 4
    mov esi, eax
    mov edi, ebx
    mov eax, esp
    call sub_00441318
    test eax, eax
    jne loc_0043e7c2
    mov eax, dword ptr [esp]
    mov ebx, edx
    mov edx, esi
    call sub_004413b0
    test eax, eax
    jne loc_0043e7ba
    mov eax, dword ptr [esp]
    mov edx, edi
    call sub_0044165c
    test eax, eax
    jne loc_0043e7ba
    cmp dword ptr [d_0045c48c], 0
    jne loc_0043e793
    mov eax, dword ptr [esp]
    mov dword ptr [d_0045c48c], eax
loc_0043e793:
    cmp dword ptr [d_0045c4a0], 0
    je loc_0043e7b5
    mov eax, dword ptr [esp]
    call sub_00441728
    test eax, eax
    je loc_0043e7b5
    mov eax, dword ptr [esp]
    mov dword ptr [eax + 0x1ac], 0
loc_0043e7b5:
    mov eax, dword ptr [esp]
    jmp loc_0043e7c7
loc_0043e7ba:
    mov eax, dword ptr [esp]
    call sub_0043e848
loc_0043e7c2:
    mov eax, 0xffffffff
loc_0043e7c7:
    add esp, 4
    pop edi
    pop esi
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push edx
    mov edx, eax
    cmp eax, -1
    je loc_0043e80b
    test eax, eax
    je loc_0043e80b
    mov ebx, dword ptr [d_004a39b0]
    xor eax, eax
    cmp edx, ebx
    jne loc_0043e7f9
loc_0043e7e9:
    mov eax, dword ptr [eax + d_004a39b0]
    mov dword ptr [d_0045c48c], eax
    xor eax, eax
    pop edx
    pop ebx
    ret
loc_0043e7f9:
    add eax, 4
    cmp eax, 0x28
    jge loc_0043e80b
    cmp edx, dword ptr [eax + d_004a39b0]
    je loc_0043e7e9
    jmp loc_0043e7f9
loc_0043e80b:
    mov eax, 0xffffffff
    pop edx
    pop ebx
    ret
    .byte 0x90
    push edx
    mov edx, dword ptr [d_0045c48c]
    test edx, edx
    je loc_0043e823
    mov eax, edx
    pop edx
    ret
loc_0043e823:
    mov eax, 0xffffffff
    pop edx
    ret
    .byte 0x8b,0xc0
sub_0043e82c:
    push edx
    xor edx, edx
    xor eax, eax
loc_0043e831:
    cmp dword ptr [eax + d_004a39b0], 0
    je loc_0043e83b
    inc edx
loc_0043e83b:
    add eax, 4
    cmp eax, 0x28
    jne loc_0043e831
    mov eax, edx
    pop edx
    ret
    .byte 0x90
sub_0043e848:
    push ebx
    push ecx
    push edx
    push esi
    mov ecx, eax
    test eax, eax
    je loc_0043e8fb
    cmp eax, -1
    je loc_0043e8fb
    mov esi, dword ptr [d_004a39b0]
    mov ebx, eax
    xor edx, edx
    xor eax, eax
    cmp ecx, esi
    # jne 0x43e8e4
    .byte 0x0f,0x85
    .long loc_0043e8e4 - . - 4
loc_0043e873:
    cmp ebx, dword ptr [d_0045c48c]
    jne loc_0043e882
    xor eax, eax
    mov dword ptr [d_0045c48c], eax
loc_0043e882:
    mov eax, dword ptr [edx*4 + d_004a39b0]
    call sub_004415cc
    mov eax, dword ptr [edx*4 + d_004a39b0]
    call sub_004416fc
    mov eax, dword ptr [edx*4 + d_004a39b0]
    mov ecx, dword ptr [eax + 0x1ac]
    mov ebx, eax
    test ecx, ecx
    je loc_0043e8b4
    mov eax, ecx
    call sub_0044207c
loc_0043e8b4:
    shl edx, 2
    mov dword ptr [ebx + 0x1ac], 0
    add edx, offset d_004a39b0
    je loc_0043e8dd
    mov esi, dword ptr [edx]
    test esi, esi
    je loc_0043e8dd
    mov eax, esi
    call dword ptr [d_0045c49c]
    mov dword ptr [edx], 0
loc_0043e8dd:
    xor eax, eax
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0043e8e4:
    add eax, 4
    inc edx
    cmp eax, 0x28
    jge loc_0043e8fb
    cmp ebx, dword ptr [eax + d_004a39b0]
    je loc_0043e873
    jmp loc_0043e8e4
loc_0043e8fb:
    mov eax, 0xffffffff
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push edx
    xor edx, edx
loc_0043e90c:
    mov ebx, dword ptr [edx + d_004a39b0]
    test ebx, ebx
    je loc_0043e91d
    mov eax, ebx
    call sub_0043e848
loc_0043e91d:
    add edx, 4
    cmp edx, 0x28
    jne loc_0043e90c
    pop edx
    pop ebx
    ret
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 0x104
    mov ecx, eax
    mov ebx, edx
    cmp dword ptr [d_0045c48c], 0
    je loc_0043ea37
    test eax, eax
    je loc_0043ea37
    test ebx, ebx
    je loc_0043ea37
    mov ah, byte ptr [eax]
    mov esi, 1
    cmp ah, 0x40
    jne loc_0043e97f
    mov edi, esp
    add esi, ecx
    push edi
loc_0043e964:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0043e97c
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0043e964
loc_0043e97c:
    pop edi
    xor esi, esi
loc_0043e97f:
    mov eax, dword ptr [d_0045c48c]
    mov edi, dword ptr [eax + 0xc]
    test edi, edi
    je loc_0043e9df
    test esi, esi
    je loc_0043e9a3
    push ecx
    push edi
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
loc_0043e9a3:
    mov edx, offset d_0045ad6c
    mov eax, esp
    call sub_004514fc
    mov edx, eax
    test eax, eax
    je loc_0043e9df
    mov dword ptr [ebx], 4
    mov dword ptr [ebx + 4], 0
    mov eax, dword ptr [eax + 0x10]
    call sub_004442df
    mov dword ptr [ebx + 8], eax
    mov eax, edx
    mov dword ptr [ebx + 0xc], 0
    call sub_0045172e
    xor eax, eax
    jmp loc_0043ea3c
loc_0043e9df:
    mov eax, dword ptr [d_0045c48c]
    cmp dword ptr [eax], 0
    je loc_0043ea37
    test esi, esi
    je loc_0043ea04
    push ecx
    mov ecx, dword ptr [eax + 8]
    push ecx
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
loc_0043ea04:
    mov eax, esp
    call sub_0044684f
    mov edx, ebx
    mov eax, esp
    call sub_00441f00
    test eax, eax
    jne loc_0043ea37
    cmp dword ptr [ebx], 0
    jne loc_0043ea23
    mov dword ptr [ebx], 0x10
loc_0043ea23:
    mov dl, byte ptr [ebx]
    or dl, 8
    xor eax, eax
    mov byte ptr [ebx], dl
    add esp, 0x104
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043ea37:
    mov eax, 0xffffffff
loc_0043ea3c:
    add esp, 0x104
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
    push esi
    push edi
    push ebp
    sub esp, 0x124
    mov dword ptr [esp + 0x118], eax
    mov dword ptr [esp + 0x11c], edx
    mov dword ptr [esp + 0x120], ebx
    mov ebp, ecx
    cmp dword ptr [d_0045c48c], 0
    je loc_0043ecc1
    test eax, eax
    je loc_0043ecc1
    cmp dword ptr [esp + 0x11c], 0
    je loc_0043ecc1
    test ebx, ebx
    je loc_0043ecc1
    test ebp, ebp
    je loc_0043ecc1
    mov dl, byte ptr [eax]
    mov edi, 1
    cmp dl, 0x40
    jne loc_0043eac8
    lea esi, [eax + edi]
    mov edi, esp
    push edi
loc_0043eaad:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0043eac5
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0043eaad
loc_0043eac5:
    pop edi
    xor edi, edi
loc_0043eac8:
    mov eax, dword ptr [d_0045c48c]
    mov edx, dword ptr [eax + 0xc]
    test edx, edx
    je loc_0043ebac
    test edi, edi
    je loc_0043eaf7
    mov ebx, dword ptr [esp + 0x118]
    push ebx
    push edx
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
loc_0043eaf7:
    mov edx, offset d_0045ad6c
    mov eax, esp
    call sub_004514fc
    mov esi, eax
    mov dword ptr [esp + 0x114], eax
    test eax, eax
    je loc_0043ebac
    mov eax, dword ptr [esp + 0x11c]
    mov dword ptr [eax], 0
    mov eax, dword ptr [esi + 0x10]
    mov edx, dword ptr [esp + 0x120]
    call sub_004442df
    mov dword ptr [edx], eax
    test eax, eax
    je loc_0043eb91
    mov dword ptr [d_0045c490], 1
    call dword ptr [d_0045c494]
    mov dword ptr [ebp], eax
    test eax, eax
    je loc_0043eb84
    mov ecx, esi
    mov ebx, dword ptr [edx]
    mov edx, 1
    call sub_00451b5f
    mov edx, dword ptr [esp + 0x120]
    cmp eax, dword ptr [edx]
    jne loc_0043eb74
    mov eax, esi
    call sub_0045172e
    xor eax, eax
    jmp loc_0043ecc6
loc_0043eb74:
    mov eax, dword ptr [ebp]
    call dword ptr [d_0045c49c]
    mov dword ptr [ebp], 0
loc_0043eb84:
    mov eax, dword ptr [esp + 0x120]
    mov dword ptr [eax], 0
loc_0043eb91:
    mov eax, dword ptr [esp + 0x114]
    call sub_0045172e
    mov eax, 0xffffffff
    add esp, 0x124
    pop ebp
    pop edi
    pop esi
    ret
loc_0043ebac:
    mov eax, dword ptr [d_0045c48c]
    cmp dword ptr [eax], 0
    je loc_0043ecc1
    test edi, edi
    je loc_0043ebdc
    mov edi, dword ptr [esp + 0x118]
    push edi
    mov edx, dword ptr [eax + 8]
    push edx
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
loc_0043ebdc:
    mov eax, esp
    lea edx, [esp + 0x104]
    call sub_0044684f
    mov eax, esp
    call sub_00441f00
    test eax, eax
    jne loc_0043ecc1
    mov eax, dword ptr [d_0045c48c]
    mov ebx, dword ptr [eax + 4]
    test ebx, ebx
    je loc_0043ecc1
    mov edx, dword ptr [esp + 0x108]
    mov eax, ebx
    xor ebx, ebx
    call sub_0044419a
    test eax, eax
    jne loc_0043ecc1
    mov edx, dword ptr [esp + 0x11c]
    mov eax, dword ptr [esp + 0x110]
    mov dword ptr [edx], eax
    mov edx, dword ptr [esp + 0x120]
    mov eax, dword ptr [esp + 0x10c]
    mov dword ptr [edx], eax
    mov eax, dword ptr [esp + 0x11c]
    mov ecx, 1
    mov eax, dword ptr [eax]
    mov dword ptr [d_0045c490], ecx
    call dword ptr [d_0045c494]
    mov dword ptr [ebp], eax
    test eax, eax
    je loc_0043eca7
    mov ecx, dword ptr [d_0045c48c]
    mov ebx, dword ptr [esp + 0x11c]
    mov edx, 1
    mov ecx, dword ptr [ecx + 4]
    mov ebx, dword ptr [ebx]
    call sub_00451b5f
    mov edx, dword ptr [esp + 0x11c]
    mov edi, dword ptr [edx]
    cmp eax, edi
    jne loc_0043ec97
    xor eax, edi
    add esp, 0x124
    pop ebp
    pop edi
    pop esi
    ret
loc_0043ec97:
    mov eax, dword ptr [ebp]
    call dword ptr [d_0045c49c]
    mov dword ptr [ebp], 0
loc_0043eca7:
    mov eax, dword ptr [esp + 0x11c]
    mov dword ptr [eax], 0
    mov eax, dword ptr [esp + 0x120]
    mov dword ptr [eax], 0
loc_0043ecc1:
    mov eax, 0xffffffff
loc_0043ecc6:
    add esp, 0x124
    pop ebp
    pop edi
    pop esi
    ret
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x11c
    mov ebx, eax
    mov ebp, edx
    cmp dword ptr [d_0045c48c], 0
    je loc_0043f121
    test eax, eax
    je loc_0043f121
    test ebp, ebp
    je loc_0043f121
    mov ah, byte ptr [eax]
    mov esi, 1
    cmp ah, 0x40
    jne loc_0043ed28
    mov edi, esp
    add esi, ebx
    push edi
loc_0043ed0d:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0043ed25
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0043ed0d
loc_0043ed25:
    pop edi
    xor esi, esi
loc_0043ed28:
    mov eax, dword ptr [d_0045c48c]
    mov ecx, dword ptr [eax + 0xc]
    test ecx, ecx
    je loc_0043edf8
    test esi, esi
    je loc_0043ed50
    push ebx
    push ecx
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
loc_0043ed50:
    mov edx, offset d_0045ad6c
    mov eax, esp
    call sub_004514fc
    mov edx, eax
    mov edi, eax
    test eax, eax
    je loc_0043edf8
    mov eax, dword ptr [eax + 0x10]
    call sub_004442df
    mov esi, dword ptr [d_0045c4ac]
    mov ebx, eax
    test esi, esi
    je loc_0043edd5
    mov edx, dword ptr [d_0045c4a4]
    mov esi, eax
    mov eax, dword ptr [d_0045c4a8]
    sub eax, edx
    cmp ebx, eax
    jl loc_0043edb9
loc_0043ed8f:
    mov edx, 1
    mov ecx, edi
    mov ebx, eax
    mov eax, ebp
    call sub_00451b5f
    add ebp, eax
    sub esi, eax
    xor eax, eax
    mov dword ptr [d_0045c4a4], eax
    call dword ptr [d_0045c4ac]
    mov eax, dword ptr [d_0045c4a8]
    cmp esi, eax
    jge loc_0043ed8f
loc_0043edb9:
    test esi, esi
    je loc_0043ede3
    mov edx, 1
    mov ecx, edi
    mov ebx, esi
    mov eax, ebp
    call sub_00451b5f
    add dword ptr [d_0045c4a4], esi
    jmp loc_0043ede3
loc_0043edd5:
    mov ecx, edx
    mov eax, ebp
    mov edx, 1
    call sub_00451b5f
loc_0043ede3:
    mov eax, edi
    call sub_0045172e
    xor eax, eax
    add esp, 0x11c
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043edf8:
    mov eax, dword ptr [d_0045c48c]
    cmp dword ptr [eax], 0
    je loc_0043f121
    test esi, esi
    je loc_0043ee21
    push ebx
    mov ebx, dword ptr [eax + 8]
    push ebx
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
loc_0043ee21:
    mov eax, esp
    lea edx, [esp + 0x104]
    call sub_0044684f
    mov eax, esp
    call sub_00441f00
    cmp eax, -1
    je loc_0043f121
    mov eax, dword ptr [d_0045c48c]
    mov ecx, dword ptr [eax + 4]
    test ecx, ecx
    je loc_0043f121
    mov edx, dword ptr [esp + 0x108]
    mov eax, ecx
    xor ebx, ebx
    call sub_0044419a
    test eax, eax
    jne loc_0043f121
    mov esi, dword ptr [esp + 0x104]
    mov ebx, 0xffffffff
    test esi, esi
    jne loc_0043ee82
    mov dword ptr [esp + 0x104], 0x10
loc_0043ee82:
    mov eax, dword ptr [esp + 0x104]
    and eax, 0xf0
    cmp eax, 0x20
    jb loc_0043eea3
    jbe loc_0043eec7
    cmp eax, 0x40
    je loc_0043ef81
    jmp loc_0043f113
loc_0043eea3:
    cmp eax, 0x10
    jne loc_0043f113
    mov eax, dword ptr [d_0045c48c]
    mov ebx, dword ptr [esp + 0x110]
    mov edx, ebp
    mov eax, dword ptr [eax + 4]
    call sub_00446880
    jmp loc_0043f111
loc_0043eec7:
    cmp dword ptr [d_0045c4ac], 0
    je loc_0043ef55
    mov eax, dword ptr [d_0045c4a8]
    mov ebx, dword ptr [d_0045c4a4]
    mov esi, dword ptr [esp + 0x10c]
    sub eax, ebx
    cmp eax, esi
    jg loc_0043ef20
    mov edi, 1
loc_0043eef1:
    mov ecx, dword ptr [d_0045c48c]
    mov ebx, eax
    mov edx, edi
    mov eax, ebp
    mov ecx, dword ptr [ecx + 4]
    call sub_00451b5f
    add ebp, eax
    xor ebx, ebx
    sub esi, eax
    mov dword ptr [d_0045c4a4], ebx
    call dword ptr [d_0045c4ac]
    mov eax, dword ptr [d_0045c4a8]
    cmp esi, eax
    jge loc_0043eef1
loc_0043ef20:
    test esi, esi
    je loc_0043f111
    mov edx, 1
    mov ecx, dword ptr [d_0045c48c]
    mov ebx, esi
    mov eax, ebp
    mov ecx, dword ptr [ecx + 4]
    call sub_00451b5f
    add dword ptr [d_0045c4a4], esi
    xor ebx, ebx
    mov eax, ebx
    add esp, 0x11c
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043ef55:
    mov ebx, dword ptr [esp + 0x10c]
    mov ecx, dword ptr [d_0045c48c]
    mov edx, 1
    mov eax, ebp
    mov ecx, dword ptr [ecx + 4]
    call sub_00451b5f
    xor ebx, ebx
    mov eax, ebx
    add esp, 0x11c
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043ef81:
    mov esi, dword ptr [esp + 0x10c]
    mov eax, dword ptr [d_0045c4ac]
    add esi, ebp
    test eax, eax
    je loc_0043f08d
loc_0043ef97:
    cmp ebp, esi
    jae loc_0043f111
    mov eax, dword ptr [d_0045c48c]
    lea edx, [esp + 0x114]
    mov eax, dword ptr [eax + 4]
    call sub_0044215c
    test eax, eax
    jne loc_0043ef97
    mov bl, byte ptr [esp + 0x115]
    test bl, 0x80
    je loc_0043f035
    mov edx, 1
    mov bh, bl
    mov ecx, dword ptr [d_0045c48c]
    and bh, 0x7f
    mov eax, ebp
    mov byte ptr [esp + 0x115], bh
    xor ebx, ebx
    mov ecx, dword ptr [ecx + 4]
    mov bx, word ptr [esp + 0x114]
    call sub_00451b5f
    xor eax, eax
    mov edi, dword ptr [d_0045c4a4]
    mov ax, word ptr [esp + 0x114]
    mov edx, dword ptr [d_0045c4a8]
    add edi, eax
    add ebp, eax
    mov dword ptr [d_0045c4a4], edi
    cmp edi, edx
    jb loc_0043ef97
loc_0043f012:
    mov eax, dword ptr [d_0045c4a8]
    sub dword ptr [d_0045c4a4], eax
    call dword ptr [d_0045c4ac]
    mov eax, dword ptr [d_0045c4a4]
    cmp eax, dword ptr [d_0045c4a8]
    jae loc_0043f012
    jmp loc_0043ef97
loc_0043f035:
    mov eax, dword ptr [d_0045c48c]
    xor ebx, ebx
    mov edx, ebp
    mov bx, word ptr [esp + 0x114]
    mov eax, dword ptr [eax + 4]
    call sub_00446880
    mov ebx, dword ptr [d_0045c4a4]
    add ebx, eax
    mov ecx, dword ptr [d_0045c4a8]
    mov dword ptr [d_0045c4a4], ebx
    cmp ebx, ecx
    jb loc_0043ef97
loc_0043f06a:
    mov eax, dword ptr [d_0045c4a8]
    sub dword ptr [d_0045c4a4], eax
    call dword ptr [d_0045c4ac]
    mov eax, dword ptr [d_0045c4a4]
    cmp eax, dword ptr [d_0045c4a8]
    jae loc_0043f06a
    jmp loc_0043ef97
loc_0043f08d:
    mov edi, 1
loc_0043f092:
    cmp ebp, esi
    # jae 0x43f111
    .byte 0x0f,0x83
    .long loc_0043f111 - . - 4
    mov eax, dword ptr [d_0045c48c]
    lea edx, [esp + 0x118]
    mov eax, dword ptr [eax + 4]
    call sub_0044215c
    test eax, eax
    jne loc_0043f092
    mov dl, byte ptr [esp + 0x119]
    test dl, 0x80
    je loc_0043f0f4
    mov dh, dl
    mov ecx, dword ptr [d_0045c48c]
    and dh, 0x7f
    xor ebx, ebx
    mov byte ptr [esp + 0x119], dh
    mov eax, ebp
    mov bx, word ptr [esp + 0x118]
    mov edx, edi
    mov ecx, dword ptr [ecx + 4]
    call sub_00451b5f
    xor eax, eax
    mov ax, word ptr [esp + 0x118]
    add ebp, eax
    jmp loc_0043f092
loc_0043f0f4:
    mov eax, dword ptr [d_0045c48c]
    xor ebx, ebx
    mov edx, ebp
    mov bx, word ptr [esp + 0x118]
    mov eax, dword ptr [eax + 4]
    call sub_00446880
    add ebp, eax
    jmp loc_0043f092
loc_0043f111:
    xor ebx, ebx
loc_0043f113:
    mov eax, ebx
    add esp, 0x11c
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043f121:
    mov eax, 0xffffffff
    add esp, 0x11c
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0043f134:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x128
    mov dword ptr [esp + 0x118], eax
    mov dword ptr [esp + 0x114], edx
    mov edx, dword ptr [d_0045c48c]
    test edx, edx
    je loc_0043f4af
    test eax, eax
    je loc_0043f4af
    mov ecx, dword ptr [esp + 0x114]
    test ecx, ecx
    je loc_0043f4af
    cmp dword ptr [edx + 0x40], 0xa
    jge loc_0043f4af
    mov ebp, 0xffffffff
    mov edx, ecx
    mov cl, byte ptr [ecx]
    mov ebx, 1
    test cl, cl
    je loc_0043f1c3
loc_0043f18e:
    mov al, byte ptr [edx]
    cmp al, 0x62
    jb loc_0043f1a2
    jbe loc_0043f1b5
    cmp al, 0x72
    jb loc_0043f1bb
    jbe loc_0043f1ae
    cmp al, 0x77
    je loc_0043f1b9
    jmp loc_0043f1bb
loc_0043f1a2:
    cmp al, 0x2b
    jb loc_0043f1bb
    jbe loc_0043f1b9
    cmp al, 0x61
    je loc_0043f1b9
    jmp loc_0043f1bb
loc_0043f1ae:
    mov ebp, 1
    jmp loc_0043f1bb
loc_0043f1b5:
    xor ebx, ebx
    jmp loc_0043f1bb
loc_0043f1b9:
    xor ebp, ebp
loc_0043f1bb:
    mov ch, byte ptr [edx + 1]
    inc edx
    test ch, ch
    jne loc_0043f18e
loc_0043f1c3:
    cmp ebp, -1
    je loc_0043f4af
    xor eax, eax
    mov edi, 1
    mov dword ptr [esp + 0x11c], eax
    cmp ebx, edi
    sete al
    and eax, 0xff
    add eax, edi
    mov dword ptr [esp + 0x120], eax
    mov eax, dword ptr [esp + 0x118]
    cmp byte ptr [eax], 0x40
    jne loc_0043f21a
    lea esi, [eax + edi]
    mov edi, esp
    push edi
loc_0043f1ff:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0043f217
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0043f1ff
loc_0043f217:
    pop edi
    xor edi, edi
loc_0043f21a:
    mov eax, dword ptr [d_0045c48c]
    cmp dword ptr [eax + 0xc], 0
    je loc_0043f2f2
    xor dh, dh
    xor esi, esi
    mov byte ptr [esp + 0x124], dh
    mov dl, 0x5c
    test edi, edi
    je loc_0043f258
    mov ebx, dword ptr [esp + 0x118]
    push ebx
    mov ecx, dword ptr [eax + 0xc]
    push ecx
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
loc_0043f258:
    test ebp, ebp
    jne loc_0043f278
    xor ebx, ebx
    mov eax, dword ptr [d_0045c48c]
    mov bl, dl
    mov edx, dword ptr [esp + 0x118]
    mov esi, 1
    call sub_004419cc
    jmp loc_0043f2a7
loc_0043f278:
    lea ecx, [esp + 0x124]
    xor ebx, ebx
    mov eax, dword ptr [d_0045c48c]
    mov bl, dl
    mov edx, dword ptr [esp + 0x118]
    call sub_00441af0
    test eax, eax
    jne loc_0043f2a2
    cmp byte ptr [esp + 0x124], 1
    jne loc_0043f2a7
loc_0043f2a2:
    mov esi, 1
loc_0043f2a7:
    test esi, esi
    je loc_0043f2c0
    mov edx, dword ptr [esp + 0x114]
    mov eax, esp
    call sub_004514fc
    mov dword ptr [esp + 0x11c], eax
loc_0043f2c0:
    mov esi, dword ptr [esp + 0x11c]
    test esi, esi
    je loc_0043f2f2
    mov al, byte ptr [esp + 0x120]
    or al, 4
    xor ebx, ebx
    mov byte ptr [esp + 0x120], al
    xor edx, edx
    mov ecx, dword ptr [esp + 0x120]
    mov eax, esi
    call sub_00441c30
    jmp loc_0043f4b1
loc_0043f2f2:
    test ebp, ebp
    je loc_0043f4af
    mov eax, dword ptr [d_0045c48c]
    cmp dword ptr [eax], 0
    je loc_0043f4af
    test edi, edi
    je loc_0043f32a
    mov edx, dword ptr [esp + 0x118]
    push edx
    mov ebx, dword ptr [eax + 8]
    push ebx
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
loc_0043f32a:
    mov eax, esp
    lea edx, [esp + 0x104]
    call sub_0044684f
    mov eax, esp
    call sub_00441f00
    cmp eax, -1
    je loc_0043f4af
    mov eax, dword ptr [d_0045c48c]
    mov ecx, dword ptr [eax + 4]
    test ecx, ecx
    je loc_0043f4af
    mov edx, dword ptr [esp + 0x108]
    mov eax, ecx
    xor ebx, ebx
    call sub_0044419a
    test eax, eax
    jne loc_0043f4af
    cmp dword ptr [esp + 0x104], 0
    jne loc_0043f385
    mov dword ptr [esp + 0x104], 0x10
loc_0043f385:
    mov eax, dword ptr [esp + 0x104]
    and eax, 0xf0
    cmp eax, 0x20
    jb loc_0043f3aa
    jbe loc_0043f41e
    cmp eax, 0x40
    je loc_0043f458
    jmp loc_0043f4af
loc_0043f3aa:
    cmp eax, 0x10
    jne loc_0043f4af
    mov dword ptr [d_0045c490], 1
    mov eax, dword ptr [esp + 0x10c]
    call dword ptr [d_0045c494]
    mov ebp, eax
    test eax, eax
    je loc_0043f4af
    mov ch, byte ptr [esp + 0x120]
    mov eax, dword ptr [d_0045c48c]
    mov ebx, dword ptr [esp + 0x110]
    mov edx, ebp
    mov eax, dword ptr [eax + 4]
    or ch, 0x18
    call sub_00446880
    mov ebx, dword ptr [esp + 0x10c]
    mov byte ptr [esp + 0x120], ch
    mov edx, ebp
    xor eax, eax
    mov ecx, dword ptr [esp + 0x120]
    call sub_00441c30
    add esp, 0x128
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043f41e:
    mov cl, byte ptr [esp + 0x120]
    mov ebx, dword ptr [esp + 0x10c]
    mov eax, dword ptr [d_0045c48c]
    or cl, 0x28
    xor edx, edx
    mov byte ptr [esp + 0x120], cl
    mov eax, dword ptr [eax + 4]
    mov ecx, dword ptr [esp + 0x120]
    call sub_00441c30
    add esp, 0x128
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043f458:
    mov ebp, 1
    mov eax, 0x4000
    mov dword ptr [d_0045c490], ebp
    call dword ptr [d_0045c494]
    test eax, eax
    je loc_0043f4af
    mov bh, byte ptr [esp + 0x120]
    mov esi, dword ptr [d_0045c48c]
    mov edx, eax
    or bh, 0x48
    mov esi, dword ptr [esi + 4]
    mov byte ptr [esp + 0x120], bh
    mov eax, esi
    mov ecx, dword ptr [esp + 0x120]
    mov ebx, dword ptr [esp + 0x10c]
    call sub_00441c30
    add esp, 0x128
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043f4af:
    xor eax, eax
loc_0043f4b1:
    add esp, 0x128
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0043f4c0:
    push esi
    push edi
    push ebp
    sub esp, 0x1c
    mov edi, eax
    mov dword ptr [esp + 4], edx
    mov dword ptr [esp], ebx
    mov ebp, ecx
    xor edx, edx
    mov dword ptr [esp + 0xc], edx
    test ecx, ecx
    je loc_0043f580
    test byte ptr [ecx + 4], 4
    je loc_0043f5a8
    cmp dword ptr [d_0045c4ac], 0
    je loc_0043f58b
    mov esi, edi
    mov edi, dword ptr [esp + 4]
    imul edi, ebx
    mov eax, dword ptr [d_0045c4a8]
    sub eax, dword ptr [d_0045c4a4]
    cmp edi, eax
    jl loc_0043f543
loc_0043f50e:
    mov edx, 1
    mov ebx, eax
    mov ecx, dword ptr [ebp + 0xc]
    mov eax, esi
    call sub_00451b5f
    mov ecx, dword ptr [esp + 0xc]
    add esi, eax
    sub edi, eax
    add ecx, eax
    xor eax, eax
    mov dword ptr [d_0045c4a4], eax
    call dword ptr [d_0045c4ac]
    mov eax, dword ptr [d_0045c4a8]
    mov dword ptr [esp + 0xc], ecx
    cmp edi, eax
    jge loc_0043f50e
loc_0043f543:
    test edi, edi
    je loc_0043f570
    mov edx, 1
    mov ebx, edi
    mov eax, esi
    mov ecx, dword ptr [ebp + 0xc]
    call sub_00451b5f
    mov edx, dword ptr [esp + 0xc]
    mov ebx, dword ptr [d_0045c4a4]
    add edx, eax
    add ebx, edi
    mov dword ptr [esp + 0xc], edx
    mov dword ptr [d_0045c4a4], ebx
loc_0043f570:
    mov eax, dword ptr [esp + 0xc]
    mov ecx, dword ptr [esp + 4]
    xor edx, edx
    div ecx
    mov dword ptr [esp + 0xc], eax
loc_0043f580:
    mov eax, dword ptr [esp + 0xc]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    ret
loc_0043f58b:
    mov edx, dword ptr [esp + 4]
    mov eax, edi
    mov ecx, dword ptr [ecx + 0xc]
    call sub_00451b5f
    mov dword ptr [esp + 0xc], eax
    mov eax, dword ptr [esp + 0xc]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    ret
loc_0043f5a8:
    test edi, edi
    je loc_0043f580
    mov eax, dword ptr [ecx + 4]
    and eax, 0xf0
    cmp eax, 0x20
    jb loc_0043f5d3
    jbe loc_0043f6f6
    cmp eax, 0x40
    je loc_0043f844
    mov eax, dword ptr [esp + 0xc]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    ret
loc_0043f5d3:
    cmp eax, 0x10
    jne loc_0043f580
    mov ebx, dword ptr [ecx + 0x10]
    test ebx, ebx
    jbe loc_0043f580
    mov ecx, dword ptr [esp + 4]
    mov eax, ebx
    div ecx
    mov esi, dword ptr [esp]
    mov dword ptr [esp + 0xc], eax
    cmp eax, esi
    jbe loc_0043f5f6
    mov dword ptr [esp + 0xc], esi
loc_0043f5f6:
    mov eax, dword ptr [esp + 0xc]
    test eax, eax
    jbe loc_0043f580
    imul eax, dword ptr [esp + 4]
    mov ebx, dword ptr [d_0045c4ac]
    mov dword ptr [esp + 8], eax
    test ebx, ebx
    je loc_0043f6c2
    mov ebx, dword ptr [d_0045c4a8]
    mov edx, edi
    sub ebx, dword ptr [d_0045c4a4]
    cmp ebx, eax
    ja loc_0043f671
loc_0043f627:
    mov ecx, ebx
    mov edi, edx
    mov esi, dword ptr [ebp + 0x20]
    push edi
    mov eax, ecx
    shr ecx, 2
    # movsd dword ptr es:[edi], dword ptr [esi]
    .byte 0xf2,0xa5
    # mov cl, al
    .byte 0x8a,0xc8
    and cl, 3
    repne movsb byte ptr es:[edi], byte ptr [esi]
    pop edi
    mov edi, dword ptr [esp + 8]
    mov ecx, dword ptr [ebp + 0x20]
    mov esi, dword ptr [ebp + 0x10]
    xor eax, eax
    add edx, ebx
    mov dword ptr [d_0045c4a4], eax
    add ecx, ebx
    sub esi, ebx
    mov dword ptr [ebp + 0x20], ecx
    sub edi, ebx
    mov dword ptr [ebp + 0x10], esi
    call dword ptr [d_0045c4ac]
    mov ebx, dword ptr [d_0045c4a8]
    mov dword ptr [esp + 8], edi
    cmp ebx, edi
    jbe loc_0043f627
loc_0043f671:
    cmp dword ptr [esp + 8], 0
    je loc_0043f580
    mov ecx, dword ptr [esp + 8]
    mov edi, edx
    mov esi, dword ptr [ebp + 0x20]
    push edi
    mov eax, ecx
    shr ecx, 2
    # movsd dword ptr es:[edi], dword ptr [esi]
    .byte 0xf2,0xa5
    # mov cl, al
    .byte 0x8a,0xc8
    and cl, 3
    repne movsb byte ptr es:[edi], byte ptr [esi]
    pop edi
    mov eax, dword ptr [esp + 8]
    mov ebx, dword ptr [d_0045c4a4]
    mov edi, dword ptr [ebp + 0x20]
    mov edx, dword ptr [ebp + 0x10]
    add edi, eax
    sub edx, eax
    add ebx, eax
    mov dword ptr [ebp + 0x20], edi
    mov dword ptr [d_0045c4a4], ebx
    mov dword ptr [ebp + 0x10], edx
    mov eax, dword ptr [esp + 0xc]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    ret
loc_0043f6c2:
    mov ecx, eax
    mov esi, dword ptr [ebp + 0x20]
    push edi
    mov eax, ecx
    shr ecx, 2
    # movsd dword ptr es:[edi], dword ptr [esi]
    .byte 0xf2,0xa5
    # mov cl, al
    .byte 0x8a,0xc8
    and cl, 3
    repne movsb byte ptr es:[edi], byte ptr [esi]
    pop edi
    mov eax, dword ptr [esp + 8]
    mov ecx, dword ptr [ebp + 0x20]
    mov esi, dword ptr [ebp + 0x10]
    add ecx, eax
    sub esi, eax
    mov dword ptr [ebp + 0x20], ecx
    mov dword ptr [ebp + 0x10], esi
    mov eax, dword ptr [esp + 0xc]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    ret
loc_0043f6f6:
    mov eax, dword ptr [ecx + 0x10]
    test eax, eax
    jbe loc_0043f580
    div dword ptr [esp + 4]
    mov ecx, dword ptr [esp]
    mov dword ptr [esp + 0xc], eax
    cmp eax, ecx
    jbe loc_0043f714
    mov dword ptr [esp + 0xc], ecx
loc_0043f714:
    mov esi, dword ptr [esp + 0xc]
    test esi, esi
    jbe loc_0043f580
    mov eax, dword ptr [ebp]
    mov edx, dword ptr [ebp + 0x18]
    xor ebx, ebx
    mov eax, dword ptr [eax + 4]
    call sub_0044419a
    test eax, eax
    jne loc_0043f580
    cmp dword ptr [d_0045c4ac], 0
    je loc_0043f803
    mov eax, dword ptr [esp]
    mov esi, edi
    mov edi, dword ptr [esp + 4]
    imul edi, eax
    mov edx, dword ptr [d_0045c4a4]
    mov eax, dword ptr [d_0045c4a8]
    sub eax, edx
    cmp edi, eax
    jl loc_0043f79b
loc_0043f762:
    mov edx, 1
    mov ecx, dword ptr [ebp]
    mov ebx, eax
    mov eax, esi
    mov ecx, dword ptr [ecx + 4]
    call sub_00451b5f
    mov edx, dword ptr [esp + 0xc]
    add esi, eax
    xor ebx, ebx
    sub edi, eax
    mov dword ptr [d_0045c4a4], ebx
    add edx, eax
    call dword ptr [d_0045c4ac]
    mov eax, dword ptr [d_0045c4a8]
    mov dword ptr [esp + 0xc], edx
    cmp edi, eax
    jge loc_0043f762
loc_0043f79b:
    test edi, edi
    je loc_0043f7cb
    mov edx, 1
    mov ecx, dword ptr [ebp]
    mov ebx, edi
    mov eax, esi
    mov ecx, dword ptr [ecx + 4]
    call sub_00451b5f
    mov ecx, dword ptr [esp + 0xc]
    mov esi, dword ptr [d_0045c4a4]
    add ecx, eax
    add esi, edi
    mov dword ptr [esp + 0xc], ecx
    mov dword ptr [d_0045c4a4], esi
loc_0043f7cb:
    mov eax, dword ptr [ebp]
    mov eax, dword ptr [eax + 4]
    mov edi, dword ptr [esp + 4]
    call sub_0044428e
    mov dword ptr [ebp + 0x18], eax
    mov eax, dword ptr [esp + 0xc]
    imul eax, edi
    mov edx, dword ptr [ebp + 0x10]
    sub edx, eax
    mov eax, dword ptr [esp + 0xc]
    mov dword ptr [ebp + 0x10], edx
    xor edx, edx
    div edi
    mov dword ptr [esp + 0xc], eax
    mov eax, dword ptr [esp + 0xc]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    ret
loc_0043f803:
    mov edx, dword ptr [esp + 4]
    mov ecx, dword ptr [ebp]
    mov ebx, esi
    mov eax, edi
    mov ecx, dword ptr [ecx + 4]
    call sub_00451b5f
    mov ebx, dword ptr [esp + 4]
    mov edx, eax
    imul edx, ebx
    mov dword ptr [esp + 0xc], eax
    mov eax, dword ptr [ebp]
    mov eax, dword ptr [eax + 4]
    call sub_0044428e
    mov ecx, dword ptr [ebp + 0x10]
    mov dword ptr [ebp + 0x18], eax
    sub ecx, edx
    mov dword ptr [ebp + 0x10], ecx
    mov eax, dword ptr [esp + 0xc]
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    ret
loc_0043f844:
    mov ebx, dword ptr [ecx + 0x10]
    test ebx, ebx
    jbe loc_0043f580
    mov ecx, dword ptr [esp + 4]
    mov eax, ebx
    div ecx
    mov esi, dword ptr [esp]
    mov dword ptr [esp + 0xc], eax
    cmp eax, esi
    jbe loc_0043f866
    mov dword ptr [esp + 0xc], esi
loc_0043f866:
    mov eax, dword ptr [esp + 0xc]
    test eax, eax
    jbe loc_0043f580
    mov ecx, dword ptr [esp + 4]
    mov ebx, eax
    imul ebx, ecx
    mov esi, dword ptr [d_0045c4ac]
    mov edx, edi
    test esi, esi
    je loc_0043f9ea
    mov esi, dword ptr [d_0045c4a8]
    sub esi, dword ptr [d_0045c4a4]
    cmp ebx, esi
    jb loc_0043f942
loc_0043f89f:
    mov eax, ebp
    call sub_0044209c
    mov eax, dword ptr [ebp + 0x1c]
    mov ecx, dword ptr [ebp + 0x20]
    add eax, 0x4000
    sub eax, ecx
    cmp esi, eax
    jae loc_0043f8bd
    mov dword ptr [esp + 0x18], esi
    jmp loc_0043f8c1
loc_0043f8bd:
    mov dword ptr [esp + 0x18], eax
loc_0043f8c1:
    mov ecx, dword ptr [esp + 0x18]
    mov edi, edx
    mov esi, dword ptr [ebp + 0x20]
    push edi
    mov eax, ecx
    shr ecx, 2
    # movsd dword ptr es:[edi], dword ptr [esi]
    .byte 0xf2,0xa5
    # mov cl, al
    .byte 0x8a,0xc8
    and cl, 3
    repne movsb byte ptr es:[edi], byte ptr [esi]
    pop edi
    mov ecx, dword ptr [esp + 0x18]
    mov esi, dword ptr [ebp + 0x20]
    push edi
    mov eax, ecx
    shr ecx, 2
    # movsd dword ptr es:[edi], dword ptr [esi]
    .byte 0xf2,0xa5
    # mov cl, al
    .byte 0x8a,0xc8
    and cl, 3
    repne movsb byte ptr es:[edi], byte ptr [esi]
    pop edi
    mov eax, dword ptr [esp + 0x18]
    mov edi, dword ptr [d_0045c4a8]
    mov esi, dword ptr [ebp + 0x20]
    mov ecx, dword ptr [ebp + 0x10]
    add esi, eax
    add edx, eax
    sub ebx, eax
    mov dword ptr [ebp + 0x20], esi
    mov esi, dword ptr [d_0045c4a4]
    sub ecx, eax
    add esi, eax
    mov dword ptr [ebp + 0x10], ecx
    mov dword ptr [d_0045c4a4], esi
    cmp esi, edi
    jb loc_0043f92e
    xor eax, eax
    mov dword ptr [d_0045c4a4], eax
    call dword ptr [d_0045c4ac]
loc_0043f92e:
    mov esi, dword ptr [d_0045c4a8]
    sub esi, dword ptr [d_0045c4a4]
    cmp ebx, esi
    jae loc_0043f89f
loc_0043f942:
    test ebx, ebx
    je loc_0043f580
loc_0043f94a:
    test ebx, ebx
    je loc_0043f580
    mov eax, ebp
    call sub_0044209c
    mov eax, dword ptr [ebp + 0x1c]
    mov ecx, dword ptr [ebp + 0x20]
    add eax, 0x4000
    sub eax, ecx
    cmp ebx, eax
    jae loc_0043f970
    mov dword ptr [esp + 0x14], ebx
    jmp loc_0043f974
loc_0043f970:
    mov dword ptr [esp + 0x14], eax
loc_0043f974:
    mov ecx, dword ptr [esp + 0x14]
    mov edi, edx
    mov esi, dword ptr [ebp + 0x20]
    push edi
    mov eax, ecx
    shr ecx, 2
    # movsd dword ptr es:[edi], dword ptr [esi]
    .byte 0xf2,0xa5
    # mov cl, al
    .byte 0x8a,0xc8
    and cl, 3
    repne movsb byte ptr es:[edi], byte ptr [esi]
    pop edi
    mov eax, dword ptr [esp + 0x14]
    mov ecx, dword ptr [d_0045c4a4]
    mov esi, dword ptr [ebp + 0x20]
    mov edi, dword ptr [ebp + 0x10]
    add esi, eax
    add edx, eax
    add ecx, eax
    sub ebx, eax
    sub edi, eax
    mov dword ptr [ebp + 0x20], esi
    mov dword ptr [d_0045c4a4], ecx
    mov dword ptr [ebp + 0x10], edi
    jmp loc_0043f94a
loc_0043f9b5:
    mov dword ptr [esp + 0x10], eax
loc_0043f9b9:
    mov ecx, dword ptr [esp + 0x10]
    mov edi, edx
    mov esi, dword ptr [ebp + 0x20]
    push edi
    mov eax, ecx
    shr ecx, 2
    # movsd dword ptr es:[edi], dword ptr [esi]
    .byte 0xf2,0xa5
    # mov cl, al
    .byte 0x8a,0xc8
    and cl, 3
    repne movsb byte ptr es:[edi], byte ptr [esi]
    pop edi
    mov eax, dword ptr [esp + 0x10]
    mov edi, dword ptr [ebp + 0x20]
    mov esi, dword ptr [ebp + 0x10]
    add edi, eax
    add edx, eax
    sub esi, eax
    mov dword ptr [ebp + 0x20], edi
    sub ebx, eax
    mov dword ptr [ebp + 0x10], esi
loc_0043f9ea:
    test ebx, ebx
    je loc_0043f580
    mov eax, ebp
    call sub_0044209c
    mov eax, dword ptr [ebp + 0x1c]
    mov esi, dword ptr [ebp + 0x20]
    add eax, 0x4000
    sub eax, esi
    cmp ebx, eax
    jae loc_0043f9b5
    mov dword ptr [esp + 0x10], ebx
    jmp loc_0043f9b9
sub_0043fa10:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ecx, eax
    mov esi, 0xffffffff
    test eax, eax
    je loc_0043fba7
    test byte ptr [eax + 4], 4
    je loc_0043fa3a
    mov eax, dword ptr [ecx + 0xc]
    call sub_0045266a
    mov esi, eax
    jmp loc_0043fba7
loc_0043fa3a:
    mov eax, dword ptr [ecx + 4]
    and eax, 0xf0
    cmp eax, 0x20
    jb loc_0043fa53
    jbe loc_0043fabc
    cmp eax, 0x40
    je loc_0043fa5d
    jmp loc_0043fba7
loc_0043fa53:
    cmp eax, 0x10
    je loc_0043fa64
    jmp loc_0043fba7
loc_0043fa5d:
    mov eax, ecx
    call sub_0044209c
loc_0043fa64:
    cmp dword ptr [ecx + 0x10], 0
    jbe loc_0043fba7
    mov eax, dword ptr [ecx + 0x20]
    mov edx, dword ptr [ecx + 0x10]
    inc eax
    dec edx
    movzx esi, byte ptr [eax - 1]
    mov dword ptr [ecx + 0x20], eax
    mov dword ptr [ecx + 0x10], edx
    test edx, edx
    jbe loc_0043fba7
    test byte ptr [ecx + 4], 2
    je loc_0043fba7
    cmp esi, 0xd
    jne loc_0043fba7
    mov eax, dword ptr [ecx + 0x20]
    mov dl, byte ptr [eax]
    cmp dl, 0xa
    jne loc_0043fba7
    mov edi, dword ptr [ecx + 0x10]
    inc eax
    dec edi
    mov dword ptr [ecx + 0x20], eax
    movzx esi, dl
    mov dword ptr [ecx + 0x10], edi
    jmp loc_0043fba7
loc_0043fabc:
    cmp dword ptr [ecx + 0x10], 0
    jbe loc_0043fba7
    mov eax, dword ptr [ecx]
    mov edx, dword ptr [ecx + 0x18]
    xor ebx, ebx
    mov eax, dword ptr [eax + 4]
    call sub_0044419a
    test eax, eax
    jne loc_0043fba7
    mov esi, dword ptr [ecx]
    mov esi, dword ptr [esi + 4]
    mov ebx, dword ptr [esi + 4]
    test ebx, ebx
    jle loc_0043fafd
    test byte ptr [esi + 0xc], 4
    jne loc_0043fafd
    mov eax, dword ptr [esi]
    mov dh, byte ptr [eax]
    cmp dh, 0xd
    je loc_0043fafd
    cmp dh, 0x1a
    jne loc_0043fb09
loc_0043fafd:
    mov eax, dword ptr [ecx]
    mov eax, dword ptr [eax + 4]
    call sub_0045266a
    jmp loc_0043fb1f
loc_0043fb09:
    lea edi, [ebx - 1]
    mov dword ptr [esi + 4], edi
    mov eax, dword ptr [ecx]
    mov eax, dword ptr [eax + 4]
    mov edx, dword ptr [eax]
    lea esi, [edx + 1]
    mov dword ptr [eax], esi
    xor eax, eax
    mov al, byte ptr [edx]
loc_0043fb1f:
    mov ebp, dword ptr [ecx + 0x10]
    dec ebp
    mov esi, eax
    mov dword ptr [ecx + 0x10], ebp
    test ebp, ebp
    # jbe 0x43fb9a
    .byte 0x0f,0x86
    .long loc_0043fb9a - . - 4
    test byte ptr [ecx + 4], 2
    # je 0x43fb9a
    .byte 0x0f,0x84
    .long loc_0043fb9a - . - 4
    cmp eax, 0xd
    jne loc_0043fb9a
    mov eax, dword ptr [ecx]
    mov eax, dword ptr [eax + 4]
    cmp dword ptr [eax + 4], 0
    jle loc_0043fb5e
    test byte ptr [eax + 0xc], 4
    jne loc_0043fb5e
    mov edx, dword ptr [eax]
    mov bl, byte ptr [edx]
    cmp bl, 0xd
    je loc_0043fb5e
    cmp bl, 0x1a
    jne loc_0043fb6a
loc_0043fb5e:
    mov eax, dword ptr [ecx]
    mov eax, dword ptr [eax + 4]
    call sub_0045266a
    jmp loc_0043fb80
loc_0043fb6a:
    dec dword ptr [eax + 4]
    mov edx, dword ptr [ecx]
    mov edx, dword ptr [edx + 4]
    mov eax, dword ptr [edx]
    lea ebx, [eax + 1]
    mov dword ptr [edx], ebx
    mov al, byte ptr [eax]
    and eax, 0xff
loc_0043fb80:
    cmp eax, 0xa
    jne loc_0043fb90
    mov ebp, dword ptr [ecx + 0x10]
    dec ebp
    mov esi, eax
    mov dword ptr [ecx + 0x10], ebp
    jmp loc_0043fb9a
loc_0043fb90:
    mov edx, dword ptr [ecx]
    mov edx, dword ptr [edx + 4]
    call sub_00449e29
loc_0043fb9a:
    mov eax, dword ptr [ecx]
    mov eax, dword ptr [eax + 4]
    call sub_0044428e
    mov dword ptr [ecx + 0x18], eax
loc_0043fba7:
    cmp dword ptr [d_0045c4ac], 0
    je loc_0043fbd3
    mov eax, dword ptr [d_0045c4a4]
    inc eax
    mov edx, dword ptr [d_0045c4a8]
    mov dword ptr [d_0045c4a4], eax
    cmp eax, edx
    jb loc_0043fbd3
    xor ebx, ebx
    mov dword ptr [d_0045c4a4], ebx
    call dword ptr [d_0045c4ac]
loc_0043fbd3:
    mov eax, esi
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
    push ebp
    mov esi, eax
    mov ecx, edx
    test edx, edx
    je loc_0043fc86
    test byte ptr [edx + 4], 4
    je loc_0043fc03
    mov eax, esi
    mov edx, dword ptr [edx + 0xc]
    call sub_00449e29
    mov esi, eax
    jmp loc_0043fc86
loc_0043fc03:
    mov eax, dword ptr [edx + 4]
    and eax, 0xf0
    cmp eax, 0x20
    jb loc_0043fc1e
    jbe loc_0043fc3f
    cmp eax, 0x40
    je loc_0043fc23
    mov eax, esi
    pop ebp
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043fc1e:
    cmp eax, 0x10
    jne loc_0043fc86
loc_0043fc23:
    mov eax, dword ptr [ecx + 0x20]
    cmp eax, dword ptr [ecx + 0x1c]
    je loc_0043fc86
    lea ebp, [eax - 1]
    mov eax, dword ptr [ecx + 0x10]
    mov dword ptr [ecx + 0x20], ebp
    inc eax
    mov dword ptr [ecx + 0x10], eax
    mov eax, esi
    pop ebp
    pop esi
    pop ecx
    pop ebx
    ret
loc_0043fc3f:
    mov eax, dword ptr [edx + 0x18]
    cmp eax, dword ptr [edx + 0x14]
    je loc_0043fc86
    mov eax, dword ptr [ecx]
    mov edx, dword ptr [ecx + 0x18]
    xor ebx, ebx
    mov eax, dword ptr [eax + 4]
    call sub_0044419a
    test eax, eax
    jne loc_0043fc86
    mov eax, dword ptr [ecx]
    mov ebx, 1
    mov edx, 0xffffffff
    mov eax, dword ptr [eax + 4]
    call sub_0044419a
    test eax, eax
    jne loc_0043fc86
    mov eax, dword ptr [ecx]
    mov eax, dword ptr [eax + 4]
    call sub_0044428e
    mov ebx, dword ptr [ecx + 0x10]
    mov dword ptr [ecx + 0x18], eax
    inc ebx
    mov dword ptr [ecx + 0x10], ebx
loc_0043fc86:
    mov eax, esi
    pop ebp
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0043fc90:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov ebp, eax
    mov ecx, ebx
    xor ebx, ebx
    mov dword ptr [esp], ebx
    test ecx, ecx
    je loc_0043fcfc
    test byte ptr [ecx + 4], 4
    je loc_0043fcb9
    mov eax, ebp
    mov ebx, dword ptr [ecx + 0xc]
    call sub_004515ff
    mov dword ptr [esp], eax
    jmp loc_0043fcfc
loc_0043fcb9:
    test ebp, ebp
    je loc_0043fcfc
    lea edi, [edx - 1]
    mov ebx, ebp
    xor esi, esi
    test edi, edi
    jbe loc_0043fcf1
loc_0043fcc8:
    mov eax, ecx
    call sub_0043fa10
    mov dword ptr [esp + 4], eax
    cmp eax, -1
    je loc_0043fcf1
    mov dl, byte ptr [esp + 4]
    mov byte ptr [ebx], dl
    lea edx, [esi + 1]
    cmp eax, 0xa
    jne loc_0043fcea
    mov esi, edx
    jmp loc_0043fcf1
loc_0043fcea:
    inc ebx
    mov esi, edx
    cmp edx, edi
    jb loc_0043fcc8
loc_0043fcf1:
    mov byte ptr [esi + ebp], 0
    test esi, esi
    je loc_0043fcfc
    mov dword ptr [esp], ebp
loc_0043fcfc:
    mov eax, dword ptr [esp]
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
sub_0043fd08:
    push ecx
    push esi
    push edi
    push ebp
    mov ecx, eax
    mov esi, edx
    mov edx, ebx
    mov edi, 0xffffffff
    test eax, eax
    je loc_0043fe8c
    test byte ptr [eax + 4], 4
    je loc_0043fd36
    mov edx, esi
    mov eax, dword ptr [ecx + 0xc]
    call sub_0044419a
    mov edi, eax
    jmp loc_0043fe8c
loc_0043fd36:
    mov eax, ecx
    call sub_0043fe94
    mov ebx, eax
    cmp edx, 1
    jb loc_0043fd4d
    jbe loc_0043fd53
    cmp edx, 2
    je loc_0043fd57
    jmp loc_0043fd5c
loc_0043fd4d:
    test edx, edx
    jne loc_0043fd5c
    jmp loc_0043fd61
loc_0043fd53:
    add esi, eax
    jmp loc_0043fd61
loc_0043fd57:
    add esi, dword ptr [ecx + 0xc]
    jmp loc_0043fd61
loc_0043fd5c:
    mov esi, 0xffffffff
loc_0043fd61:
    test esi, esi
    jl loc_0043fe8c
    cmp esi, dword ptr [ecx + 0xc]
    ja loc_0043fe8c
    mov eax, dword ptr [ecx + 4]
    and eax, 0xf0
    cmp eax, 0x20
    jb loc_0043fd8d
    jbe loc_0043fda0
    cmp eax, 0x40
    je loc_0043fdcb
    mov eax, edi
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0043fd8d:
    cmp eax, 0x10
    jne loc_0043fe8c
    mov eax, dword ptr [ecx + 0x1c]
    add eax, esi
    jmp loc_0043fe7f
loc_0043fda0:
    mov eax, dword ptr [ecx]
    mov edx, dword ptr [ecx + 0x14]
    xor ebx, ebx
    mov eax, dword ptr [eax + 4]
    add edx, esi
    call sub_0044419a
    test eax, eax
    jne loc_0043fe8c
    mov eax, dword ptr [ecx]
    mov eax, dword ptr [eax + 4]
    call sub_0044428e
    mov dword ptr [ecx + 0x18], eax
    jmp loc_0043fe82
loc_0043fdcb:
    mov eax, esi
    mov edx, dword ptr [ecx + 0x20]
    sub eax, ebx
    add eax, edx
    mov edx, dword ptr [ecx + 0x1c]
    cmp eax, edx
    jb loc_0043fde9
    add edx, 0x4000
    cmp eax, edx
    jb loc_0043fe7f
loc_0043fde9:
    cmp esi, ebx
    jge loc_0043fdfa
    mov eax, ecx
    call sub_0043fee0
    mov edx, esi
    mov eax, esi
    jmp loc_0043fe2e
loc_0043fdfa:
    mov eax, dword ptr [ecx + 0x1c]
    mov ebx, dword ptr [ecx + 0x20]
    add eax, 0x4000
    mov edi, dword ptr [ecx + 0x10]
    sub eax, ebx
    sub edi, eax
    mov eax, dword ptr [ecx + 0x1c]
    add eax, 0x4000
    mov dword ptr [ecx + 0x20], eax
    mov eax, ecx
    mov dword ptr [ecx + 0x10], edi
    call sub_0044209c
    mov eax, ecx
    mov edx, esi
    call sub_0043fe94
    sub edx, eax
    mov eax, edx
loc_0043fe2e:
    sar edx, 0x1f
    shl edx, 0xe
    # sbb eax, edx
    .byte 0x1b,0xc2
    sar eax, 0xe
    mov edx, eax
loc_0043fe3b:
    test edx, edx
    je loc_0043fe60
    dec edx
    mov eax, dword ptr [ecx + 0x1c]
    mov ebx, dword ptr [ecx + 0x10]
    add eax, 0x4000
    sub ebx, 0x4000
    mov dword ptr [ecx + 0x20], eax
    mov eax, ecx
    mov dword ptr [ecx + 0x10], ebx
    call sub_0044209c
    jmp loc_0043fe3b
loc_0043fe60:
    mov ebx, 0x4000
    mov edx, esi
    mov eax, esi
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    je loc_0043fe82
    mov ebp, dword ptr [ecx + 0x10]
    mov eax, dword ptr [ecx + 0x20]
    sub ebp, edx
    add eax, edx
    mov dword ptr [ecx + 0x10], ebp
loc_0043fe7f:
    mov dword ptr [ecx + 0x20], eax
loc_0043fe82:
    mov eax, dword ptr [ecx + 0xc]
    sub eax, esi
    xor edi, edi
    mov dword ptr [ecx + 0x10], eax
loc_0043fe8c:
    mov eax, edi
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
sub_0043fe94:
    push ebx
    push edx
    mov ebx, 0xffffffff
    test eax, eax
    je loc_0043fed9
    test byte ptr [eax + 4], 4
    je loc_0043feb4
    mov eax, dword ptr [eax + 0xc]
    call sub_0044428e
    mov ebx, eax
    mov eax, ebx
    pop edx
    pop ebx
    ret
loc_0043feb4:
    mov edx, dword ptr [eax + 4]
    and edx, 0xf0
    cmp edx, 0x20
    jb loc_0043fece
    jbe loc_0043fed3
    cmp edx, 0x40
    je loc_0043fed3
    mov eax, ebx
    pop edx
    pop ebx
    ret
loc_0043fece:
    cmp edx, 0x10
    jne loc_0043fed9
loc_0043fed3:
    mov ebx, dword ptr [eax + 0xc]
    sub ebx, dword ptr [eax + 0x10]
loc_0043fed9:
    mov eax, ebx
    pop edx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0043fee0:
    push edx
    test eax, eax
    # je 0x43ff4e
    .byte 0x0f,0x84
    .long loc_0043ff4e - . - 4
    test byte ptr [eax + 4], 4
    je loc_0043fef9
    mov eax, dword ptr [eax + 0xc]
    call sub_004515e8
    pop edx
    ret
loc_0043fef9:
    mov edx, dword ptr [eax + 4]
    and edx, 0xf0
    cmp edx, 0x20
    jb loc_0043ff10
    jbe loc_0043ff23
    cmp edx, 0x40
    je loc_0043ff31
    pop edx
    ret
loc_0043ff10:
    cmp edx, 0x10
    jne loc_0043ff4e
    mov edx, dword ptr [eax + 0xc]
    mov dword ptr [eax + 0x10], edx
    mov edx, dword ptr [eax + 0x1c]
    mov dword ptr [eax + 0x20], edx
    pop edx
    ret
loc_0043ff23:
    mov edx, dword ptr [eax + 0x14]
    mov dword ptr [eax + 0x18], edx
    mov edx, dword ptr [eax + 0xc]
    mov dword ptr [eax + 0x10], edx
    pop edx
    ret
loc_0043ff31:
    mov edx, dword ptr [eax + 0xc]
    mov dword ptr [eax + 0x10], edx
    mov edx, dword ptr [eax + 0x1c]
    add edx, 0x4000
    mov dword ptr [eax + 0x20], edx
    mov edx, dword ptr [eax + 0x14]
    mov dword ptr [eax + 0x18], edx
    call sub_0044209c
loc_0043ff4e:
    pop edx
    ret
sub_0043ff50:
    test ecx, ecx
    je loc_0043ff62
    test byte ptr [ecx + 4], 4
    je loc_0043ff62
    mov ecx, dword ptr [ecx + 0xc]
    # jmp 0x451958
    .byte 0xe9
    .long sub_00451958 - . - 4
loc_0043ff62:
    lea eax, [ebx - 1]
    ret
    .byte 0x8b,0xc0
sub_0043ff68:
    test edx, edx
    je loc_0043ff7a
    test byte ptr [edx + 4], 4
    je loc_0043ff7a
    mov edx, dword ptr [edx + 0xc]
    # jmp 0x4527e3
    .byte 0xe9
    .long sub_004527e3 - . - 4
loc_0043ff7a:
    mov eax, 0xffffffff
    ret
sub_0043ff80:
    test edx, edx
    je loc_0043ff92
    test byte ptr [edx + 4], 4
    je loc_0043ff92
    mov edx, dword ptr [edx + 0xc]
    # jmp 0x451e74
    .byte 0xe9
    .long sub_00451e74 - . - 4
loc_0043ff92:
    mov eax, 0xffffffff
    ret
    push ebx
    call sub_0043fa10
    mov ebx, eax
    cmp eax, -1
    je loc_0043ffa9
    xor eax, eax
    mov byte ptr [edx], bl
loc_0043ffa9:
    pop ebx
    ret
    .byte 0x90
sub_0043ffac:
    push ebx
    push ecx
    sub esp, 4
    mov ebx, eax
    call sub_0043fa10
    mov dword ptr [esp], eax
    cmp eax, -1
    je loc_0043ffc5
    mov cl, byte ptr [esp]
    xor eax, eax
loc_0043ffc5:
    cmp eax, -1
    je loc_00440000
    xor ah, ah
    mov al, cl
    mov word ptr [edx], ax
    mov eax, ebx
    call sub_0043fa10
    mov ebx, eax
    cmp eax, -1
    je loc_0043ffe3
    mov cl, al
    xor eax, eax
loc_0043ffe3:
    cmp eax, -1
    je loc_00440000
    mov bx, word ptr [edx]
    xor ah, ah
    shl ebx, 8
    mov al, cl
    mov ecx, ebx
    mov word ptr [edx], bx
    or ecx, eax
    xor eax, eax
    mov word ptr [edx], cx
    jmp loc_00440005
loc_00440000:
    mov eax, 0xffffffff
loc_00440005:
    add esp, 4
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0044000c:
    push ebx
    push ecx
    sub esp, 4
    mov ecx, eax
    mov ebx, edx
    mov edx, esp
    call sub_0043ffac
    cmp eax, -1
    je loc_0044004e
    xor eax, eax
    mov ax, word ptr [esp]
    mov edx, esp
    mov dword ptr [ebx], eax
    mov eax, ecx
    call sub_0043ffac
    cmp eax, -1
    je loc_0044004e
    mov edx, dword ptr [ebx]
    shl edx, 0x10
    xor eax, eax
    mov dword ptr [ebx], edx
    mov ecx, edx
    mov ax, word ptr [esp]
    or ecx, eax
    xor eax, eax
    mov dword ptr [ebx], ecx
    jmp loc_00440053
loc_0044004e:
    mov eax, 0xffffffff
loc_00440053:
    add esp, 4
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0044005c:
    push ebx
    xor ebx, ebx
    mov bl, dl
    test eax, eax
    je loc_00440077
    test byte ptr [eax + 4], 4
    je loc_00440077
    mov edx, dword ptr [eax + 0xc]
    mov eax, ebx
    call sub_004527e3
    jmp loc_0044007c
loc_00440077:
    mov eax, 0xffffffff
loc_0044007c:
    cmp eax, -1
    setne al
    and eax, 0xff
    dec eax
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0044008c:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    xor eax, eax
    mov ax, dx
    sar eax, 8
    and eax, 0xff
    and eax, 0xff
    mov edx, ebx
    call sub_0043ff68
    cmp eax, -1
    setne al
    and eax, 0xff
    dec eax
    cmp eax, -1
    je loc_004400d3
    xor eax, eax
    mov edx, ebx
    mov al, cl
    call sub_0043ff68
    cmp eax, -1
    setne al
    and eax, 0xff
    dec eax
loc_004400d3:
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    shr edx, 0x10
    and edx, 0xffff
    and edx, 0xffff
    call sub_0044008c
    cmp eax, -1
    je loc_00440105
    mov eax, ecx
    xor edx, edx
    mov dx, ax
    mov eax, ebx
    call sub_0044008c
loc_00440105:
    pop ecx
    pop ebx
    ret
sub_00440108:
    push ebx
    push ecx
    sub esp, 8
    mov ebx, eax
    mov ecx, edx
    mov eax, edx
    shr eax, 0x10
    and eax, 0xffff
    mov word ptr [esp], ax
    and eax, 0xffff
    sar eax, 8
    xor edx, edx
    and eax, 0xff
    mov dl, al
    mov eax, ebx
    call sub_0044005c
    cmp eax, -1
    je loc_0044014a
    mov al, byte ptr [esp]
    xor edx, edx
    mov dl, al
    mov eax, ebx
    call sub_0044005c
loc_0044014a:
    cmp eax, -1
    je loc_00440180
    xor eax, eax
    mov ax, cx
    sar eax, 8
    xor edx, edx
    and eax, 0xff
    mov dl, al
    mov eax, ebx
    mov word ptr [esp + 4], cx
    call sub_0044005c
    cmp eax, -1
    je loc_00440180
    mov al, byte ptr [esp + 4]
    xor edx, edx
    mov dl, al
    mov eax, ebx
    call sub_0044005c
loc_00440180:
    add esp, 8
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ebx
    push ecx
    push edx
    mov ebx, eax
    mov ecx, dword ptr [esp + 0x10]
    mov eax, ecx
    shr eax, 0x10
    xor edx, edx
    and eax, 0xffff
    mov dx, ax
    mov eax, ebx
    call sub_0044008c
    cmp eax, -1
    je loc_004401b8
    xor edx, edx
    mov eax, ebx
    mov dx, cx
    call sub_0044008c
loc_004401b8:
    pop edx
    pop ecx
    pop ebx
    ret 4
    .byte 0x8b,0xc0
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ecx, eax
    mov ebp, edx
    mov esi, ebx
    xor edi, edi
    xor edx, edx
    test ebx, ebx
    jle loc_004401f6
    mov ebx, ebp
loc_004401d7:
    mov eax, ecx
    call sub_0043fa10
    mov dword ptr [esp], eax
    cmp eax, -1
    jne loc_004401ea
    mov edi, eax
    jmp loc_004401f6
loc_004401ea:
    inc ebx
    mov al, byte ptr [esp]
    inc edx
    mov byte ptr [ebx - 1], al
    cmp edx, esi
    jl loc_004401d7
loc_004401f6:
    mov eax, edi
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov ecx, eax
    mov edi, ebx
    xor ebp, ebp
    xor ebx, ebx
    test edi, edi
    # jle 0x440292
    .byte 0x0f,0x8e
    .long loc_00440292 - . - 4
loc_00440217:
    mov eax, ecx
    call sub_0043fa10
    mov dword ptr [esp], eax
    cmp eax, -1
    je loc_00440231
    mov al, byte ptr [esp]
    xor esi, esi
    mov byte ptr [esp + 8], al
    jmp loc_00440233
loc_00440231:
    mov esi, eax
loc_00440233:
    cmp esi, -1
    jne loc_0044023c
    mov ebp, esi
    jmp loc_00440292
loc_0044023c:
    xor ah, ah
    mov al, byte ptr [esp + 8]
    mov word ptr [edx], ax
    mov eax, ecx
    call sub_0043fa10
    mov dword ptr [esp + 4], eax
    cmp eax, -1
    je loc_00440261
    mov al, byte ptr [esp + 4]
    xor esi, esi
    mov byte ptr [esp + 8], al
    jmp loc_00440263
loc_00440261:
    mov esi, eax
loc_00440263:
    cmp esi, -1
    jne loc_00440274
    mov ebp, esi
    mov eax, ebp
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_00440274:
    mov si, word ptr [edx]
    add edx, 2
    xor ah, ah
    shl esi, 8
    mov al, byte ptr [esp + 8]
    mov word ptr [edx - 2], si
    or esi, eax
    inc ebx
    mov word ptr [edx - 2], si
    cmp ebx, edi
    jl loc_00440217
loc_00440292:
    mov eax, ebp
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    push ecx
    push esi
    push edi
    push ebp
    mov esi, eax
    mov edi, ebx
    xor ebp, ebp
    xor ecx, ecx
    test ebx, ebx
    jle loc_004402c8
    mov ebx, edx
loc_004402ae:
    mov edx, ebx
    mov eax, esi
    call sub_0044000c
    cmp eax, -1
    jne loc_004402c0
    mov ebp, eax
    jmp loc_004402c8
loc_004402c0:
    inc ecx
    add ebx, 4
    cmp ecx, edi
    jl loc_004402ae
loc_004402c8:
    mov eax, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ecx, eax
    mov edi, ebx
    xor ebp, ebp
    xor esi, esi
    test ebx, ebx
    jle loc_0044032b
    mov ebx, edx
loc_004402e5:
    mov edx, esp
    mov eax, ecx
    call sub_0043ffac
    cmp eax, -1
    jne loc_004402f7
    mov ebp, eax
    jmp loc_0044032b
loc_004402f7:
    xor eax, eax
    mov ax, word ptr [esp]
    mov edx, esp
    mov dword ptr [ebx], eax
    mov eax, ecx
    call sub_0043ffac
    cmp eax, -1
    jne loc_00440311
    mov ebp, eax
    jmp loc_0044032b
loc_00440311:
    mov edx, dword ptr [ebx]
    shl edx, 0x10
    xor eax, eax
    mov dword ptr [ebx], edx
    mov ax, word ptr [esp]
    add ebx, 4
    or edx, eax
    inc esi
    mov dword ptr [ebx - 4], edx
    cmp esi, edi
    jl loc_004402e5
loc_0044032b:
    mov eax, ebp
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
    push ecx
    push esi
    push edi
    push ebp
    mov esi, eax
    mov edi, ebx
    xor ebp, ebp
    xor ecx, ecx
    test ebx, ebx
    jle loc_00440364
    mov ebx, edx
loc_0044034a:
    mov edx, ebx
    mov eax, esi
    call sub_0044000c
    cmp eax, -1
    jne loc_0044035c
    mov ebp, eax
    jmp loc_00440364
loc_0044035c:
    inc ecx
    add ebx, 4
    cmp ecx, edi
    jl loc_0044034a
loc_00440364:
    mov eax, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
    push ecx
    push esi
    push edi
    push ebp
    mov ecx, eax
    mov edi, ebx
    xor ebp, ebp
    xor esi, esi
    test ebx, ebx
    jle loc_004403aa
    mov ebx, edx
loc_0044037e:
    xor eax, eax
    mov al, byte ptr [ebx]
    test ecx, ecx
    je loc_00440396
    test byte ptr [ecx + 4], 4
    je loc_00440396
    mov edx, dword ptr [ecx + 0xc]
    call sub_004527e3
    jmp loc_0044039b
loc_00440396:
    mov eax, 0xffffffff
loc_0044039b:
    cmp eax, -1
    jne loc_004403a4
    mov ebp, eax
    jmp loc_004403aa
loc_004403a4:
    inc esi
    inc ebx
    cmp esi, edi
    jl loc_0044037e
loc_004403aa:
    mov eax, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
    push ecx
    push esi
    push edi
    push ebp
    mov ecx, eax
    mov edi, ebx
    xor ebp, ebp
    xor esi, esi
    test ebx, ebx
    jle loc_0044041f
    mov ebx, edx
loc_004403c6:
    xor eax, eax
    mov ax, word ptr [ebx]
    sar eax, 8
    and eax, 0xff
    and eax, 0xff
    mov edx, ecx
    call sub_0043ff68
    cmp eax, -1
    setne al
    and eax, 0xff
    dec eax
    cmp eax, -1
    jne loc_004403f4
    mov ebp, eax
    jmp loc_0044041f
loc_004403f4:
    mov al, byte ptr [ebx]
    and eax, 0xff
    mov edx, ecx
    call sub_0043ff68
    cmp eax, -1
    setne al
    and eax, 0xff
    dec eax
    cmp eax, -1
    jne loc_00440417
    mov ebp, eax
    jmp loc_0044041f
loc_00440417:
    inc esi
    add ebx, 2
    cmp esi, edi
    jl loc_004403c6
loc_0044041f:
    mov eax, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8b,0xc0
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ecx, eax
    mov ebp, ebx
    xor ebx, ebx
    mov dword ptr [esp], ebx
    test ebp, ebp
    jle loc_0044047d
    mov esi, edx
loc_0044043e:
    mov eax, dword ptr [esi]
    mov edi, eax
    shr eax, 0x10
    xor edx, edx
    and eax, 0xffff
    mov dx, ax
    mov eax, ecx
    call sub_0044008c
    cmp eax, -1
    je loc_00440469
    mov eax, edi
    xor edx, edx
    mov dx, ax
    mov eax, ecx
    call sub_0044008c
loc_00440469:
    mov edx, eax
    cmp edx, -1
    jne loc_00440475
    mov dword ptr [esp], edx
    jmp loc_0044047d
loc_00440475:
    inc ebx
    add esi, 4
    cmp ebx, ebp
    jl loc_0044043e
loc_0044047d:
    mov eax, dword ptr [esp]
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov ecx, eax
    mov edi, ebx
    xor ebp, ebp
    xor esi, esi
    test ebx, ebx
    jle loc_00440534
    mov ebx, edx
loc_004404a1:
    mov eax, dword ptr [ebx]
    shr eax, 0x10
    and eax, 0xffff
    mov word ptr [esp + 4], ax
    and eax, 0xffff
    sar eax, 8
    xor edx, edx
    and eax, 0xff
    mov dl, al
    mov eax, ecx
    call sub_0044005c
    cmp eax, -1
    je loc_004404dc
    mov al, byte ptr [esp + 4]
    xor edx, edx
    mov dl, al
    mov eax, ecx
    call sub_0044005c
loc_004404dc:
    cmp eax, -1
    jne loc_004404e5
    mov ebp, eax
    jmp loc_00440534
loc_004404e5:
    mov ax, word ptr [ebx]
    mov word ptr [esp], ax
    and eax, 0xffff
    sar eax, 8
    xor edx, edx
    and eax, 0xff
    mov dl, al
    mov eax, ecx
    call sub_0044005c
    cmp eax, -1
    je loc_00440517
    mov al, byte ptr [esp]
    xor edx, edx
    mov dl, al
    mov eax, ecx
    call sub_0044005c
loc_00440517:
    cmp eax, -1
    jne loc_00440528
    mov ebp, eax
    mov eax, ebp
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_00440528:
    inc esi
    add ebx, 4
    cmp esi, edi
    jl loc_004404a1
loc_00440534:
    mov eax, ebp
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8b,0xc0
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, eax
    mov ecx, edx
    mov edi, ebx
    xor ebp, ebp
    xor ebx, ebx
    test edi, edi
    jle loc_00440575
loc_00440555:
    mov eax, dword ptr [ecx]
    mov dword ptr [esp], eax
    mov eax, esi
    mov edx, dword ptr [esp]
    call sub_00440108
    cmp eax, -1
    jne loc_0044056d
    mov ebp, eax
    jmp loc_00440575
loc_0044056d:
    inc ebx
    add ecx, 4
    cmp ebx, edi
    jl loc_00440555
loc_00440575:
    mov eax, ebp
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
sub_00440580:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    call sub_0045266a
    mov edx, eax
    cmp eax, -1
    je loc_004405d8
    mov eax, ebx
    call sub_0045266a
    cmp eax, -1
    je loc_004405d8
    shl edx, 8
    and eax, 0xff
    or edx, eax
    mov eax, ebx
    call sub_0045266a
    cmp eax, -1
    je loc_004405d8
    shl edx, 8
    and eax, 0xff
    or edx, eax
    mov eax, ebx
    call sub_0045266a
    cmp eax, -1
    je loc_004405d8
    shl edx, 8
    and eax, 0xff
    or edx, eax
    xor eax, eax
    mov dword ptr [ecx], edx
loc_004405d8:
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_004405dc:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    mov eax, edx
    shr eax, 0x18
    and eax, 0xff
    and eax, 0xff
    mov edx, ebx
    call sub_004527e3
    cmp eax, -1
    je loc_00440645
    mov eax, ecx
    shr eax, 0x10
    and eax, 0xff
    and eax, 0xff
    mov edx, ebx
    call sub_004527e3
    cmp eax, -1
    je loc_00440645
    mov eax, ecx
    shr eax, 8
    and eax, 0xff
    and eax, 0xff
    mov edx, ebx
    call sub_004527e3
    cmp eax, -1
    je loc_00440645
    xor eax, eax
    mov edx, ebx
    mov al, cl
    call sub_004527e3
    cmp eax, -1
    je loc_00440645
    xor eax, eax
loc_00440645:
    pop ecx
    pop ebx
    ret
    push ebx
    push edx
    sub esp, 4
    mov ebx, dword ptr [esp + 0x10]
    test ebx, ebx
    je loc_00440677
    test byte ptr [ebx + 4], 4
    je loc_00440677
    lea eax, [esp + 0x18]
    mov dword ptr [esp], eax
    mov edx, dword ptr [esp + 0x14]
    mov eax, dword ptr [ebx + 0xc]
    mov ebx, esp
    call sub_00449ec4
    xor edx, edx
    mov dword ptr [esp], edx
    jmp loc_0044067c
loc_00440677:
    mov eax, 0xffffffff
loc_0044067c:
    add esp, 4
    pop edx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ebx
    push edx
    mov ebx, 0xffffffff
    test eax, eax
    je loc_004406d5
    test byte ptr [eax + 4], 4
    je loc_004406a3
    mov eax, dword ptr [eax + 0xc]
    mov ebx, dword ptr [eax + 0xc]
    and ebx, 0x10
    mov eax, ebx
    pop edx
    pop ebx
    ret
loc_004406a3:
    mov edx, dword ptr [eax + 4]
    and edx, 0xf0
    cmp edx, 0x20
    jb loc_004406bd
    jbe loc_004406c2
    cmp edx, 0x40
    je loc_004406c2
    mov eax, ebx
    pop edx
    pop ebx
    ret
loc_004406bd:
    cmp edx, 0x10
    jne loc_004406d5
loc_004406c2:
    cmp dword ptr [eax + 0x10], 0
    setbe al
    and eax, 0xff
    setne al
    xor ebx, ebx
    mov bl, al
loc_004406d5:
    mov eax, ebx
    pop edx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push esi
    push edi
    push ebp
    sub esp, 0x16c
    mov dword ptr [esp + 0x134], eax
    mov dword ptr [esp + 0x14c], edx
    mov dword ptr [esp + 0x148], ebx
    mov dword ptr [esp + 0x150], ecx
    xor edx, edx
    mov ebx, dword ptr [d_0045c48c]
    mov dword ptr [esp + 0x130], edx
    test ebx, ebx
    je loc_00440cf0
    test eax, eax
    je loc_00440cf0
    cmp dword ptr [esp + 0x14c], 0
    je loc_00440cf0
    mov edi, 1
    mov dl, byte ptr [eax]
    xor ebp, ebp
    mov dword ptr [esp + 0x12c], edi
    cmp dl, 0x40
    jne loc_0044075c
    mov edx, dword ptr [esp + 0x134]
    xor eax, eax
    add edx, edi
    mov dword ptr [esp + 0x12c], eax
    mov dword ptr [esp + 0x134], edx
loc_0044075c:
    mov eax, dword ptr [esp + 0x14c]
    mov edx, 0x5c
    mov dword ptr [eax], 0
    mov eax, dword ptr [esp + 0x134]
    call sub_00451d5e
    test eax, eax
    je loc_00440783
    lea edx, [eax + 1]
    jmp loc_0044078a
loc_00440783:
    mov edx, dword ptr [esp + 0x134]
loc_0044078a:
    mov edi, edx
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    cmp ecx, 5
    jne loc_00440cf0
    cmp byte ptr [edx], 0x2a
    jne loc_00440cf0
    cmp byte ptr [edx + 1], 0x2e
    jne loc_00440cf0
    cmp dword ptr [esp + 0x148], 0
    je loc_004407de
    mov ecx, 1
    mov eax, dword ptr [esp + 0x150]
    mov dword ptr [d_0045c490], ecx
    call dword ptr [d_0045c494]
    mov ebp, eax
    test eax, eax
    je loc_00440cf0
loc_004407de:
    mov ebx, dword ptr [esp + 0x150]
    mov edx, 0xa
    lea eax, [esp + 0x104]
    xor ecx, ecx
    call sub_00449ee8
    cmp eax, -1
    je loc_00440ce4
    cmp dword ptr [esp + 0x12c], 0
    jne loc_0044082e
    mov esi, dword ptr [esp + 0x134]
    mov edi, esp
    push edi
loc_00440815:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044082d
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_00440815
loc_0044082d:
    pop edi
loc_0044082e:
    mov eax, dword ptr [d_0045c48c]
    cmp dword ptr [eax], 0
    je loc_004409f6
    mov edx, dword ptr [esp + 0x12c]
    xor ecx, ecx
    test edx, edx
    je loc_00440867
    mov ebx, dword ptr [esp + 0x134]
    push ebx
    mov esi, dword ptr [eax + 8]
    push esi
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
loc_00440867:
    mov eax, esp
    mov edx, 0x5c
    call sub_0044684f
    mov eax, esp
    call sub_00451d5e
    mov dword ptr [esp + 0x168], eax
    test eax, eax
    je loc_004408d5
    mov byte ptr [eax], 0
    mov cl, byte ptr [esp]
    mov edx, esp
    cmp cl, 0x2e
    jne loc_0044089c
    mov ch, byte ptr [edx + 1]
    inc edx
    cmp ch, 0x5c
    jne loc_0044089c
    inc edx
loc_0044089c:
    mov edi, edx
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    test ecx, ecx
    jbe loc_004408bd
    mov eax, dword ptr [d_0045c48c]
    add eax, 0x14
    call sub_0044a088
    mov ecx, eax
    jmp loc_004408bf
loc_004408bd:
    xor ecx, ecx
loc_004408bf:
    mov eax, dword ptr [esp + 0x168]
    lea edi, [eax + 1]
    mov byte ptr [eax], 0x5c
    mov dword ptr [esp + 0x168], edi
    jmp loc_004408de
loc_004408d5:
    mov eax, esp
    mov dword ptr [esp + 0x168], eax
loc_004408de:
    cmp ecx, -1
    je loc_004409f6
    xor eax, eax
    mov dword ptr [esp + 0x15c], eax
    lea eax, [ecx*4]
    add eax, ecx
    xor edx, edx
    shl eax, 3
    mov dword ptr [esp + 0x164], edx
    mov dword ptr [esp + 0x13c], eax
    jmp loc_004409d5
loc_00440911:
    mov esi, dword ptr [esp + 0x164]
    mov eax, dword ptr [eax + 0x24]
    add eax, esi
    mov esi, dword ptr [eax]
    mov edi, esi
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    cmp ecx, 5
    # jl 0x4409b5
    .byte 0x0f,0x8c
    .long loc_004409b5 - . - 4
    add ecx, esi
    mov edx, dword ptr [esp + 0x168]
    mov al, byte ptr [ecx - 3]
    cmp al, byte ptr [edx + 2]
    # jne 0x4409b5
    .byte 0x0f,0x85
    .long loc_004409b5 - . - 4
    mov al, byte ptr [ecx - 2]
    cmp al, byte ptr [edx + 3]
    jne loc_004409b5
    mov al, byte ptr [ecx - 1]
    cmp al, byte ptr [edx + 4]
    jne loc_004409b5
    test ebp, ebp
    je loc_004409a5
    mov edx, offset d_0045ad6c
    mov eax, esi
    call sub_0043f134
    mov dword ptr [esp + 0x144], eax
    test eax, eax
    je loc_004409a5
    mov edx, dword ptr [esp + 0x150]
    mov ebx, eax
    mov eax, ebp
    call sub_0043fc90
    test eax, eax
    je loc_00440999
    mov edi, ebp
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov byte ptr [ecx + ebp - 1], 0
loc_00440999:
    mov eax, dword ptr [esp + 0x144]
    call sub_00441e50
loc_004409a5:
    lea eax, [esp + 0x104]
    mov ebx, ebp
    mov edx, esi
    call sub_0044a0b4
loc_004409b5:
    mov edi, dword ptr [esp + 0x164]
    mov eax, dword ptr [esp + 0x15c]
    add edi, 8
    inc eax
    mov dword ptr [esp + 0x164], edi
    mov dword ptr [esp + 0x15c], eax
loc_004409d5:
    mov eax, dword ptr [d_0045c48c]
    mov ebx, dword ptr [esp + 0x13c]
    mov eax, dword ptr [eax + 0x3c]
    add eax, ebx
    mov edx, dword ptr [esp + 0x15c]
    cmp edx, dword ptr [eax + 4]
    jl loc_00440911
loc_004409f6:
    mov eax, dword ptr [d_0045c48c]
    mov edx, dword ptr [eax + 0xc]
    test edx, edx
    je loc_00440b04
    cmp dword ptr [esp + 0x12c], 0
    je loc_00440a2b
    mov ecx, dword ptr [esp + 0x134]
    push ecx
    push edx
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
loc_00440a2b:
    mov eax, esp
    call sub_0044684f
    mov eax, esp
    call sub_0044ac9b
    mov edx, eax
    mov dword ptr [esp + 0x140], eax
    test eax, eax
    je loc_00440a61
    call sub_0044aca8
    mov dword ptr [esp + 0x160], eax
    test eax, eax
    je loc_00440a5a
    xor eax, eax
    jmp loc_00440a66
loc_00440a5a:
    mov eax, edx
    call sub_0044ad1b
loc_00440a61:
    mov eax, 0xffffffff
loc_00440a66:
    cmp eax, -1
    je loc_00440b04
loc_00440a6f:
    test ebp, ebp
    je loc_00440ab9
    mov eax, dword ptr [esp + 0x160]
    mov edx, offset d_0045ad6c
    add eax, 0x1e
    call sub_004514fc
    mov esi, eax
    test eax, eax
    je loc_00440ab9
    mov edx, dword ptr [esp + 0x150]
    mov ebx, eax
    mov eax, ebp
    call sub_004515ff
    test eax, eax
    je loc_00440ab2
    mov edi, ebp
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov byte ptr [ecx + ebp - 1], 0
loc_00440ab2:
    mov eax, esi
    call sub_0045172e
loc_00440ab9:
    mov edx, dword ptr [esp + 0x160]
    lea eax, [esp + 0x104]
    mov ebx, ebp
    add edx, 0x1e
    call sub_0044a0b4
    mov eax, dword ptr [esp + 0x140]
    call sub_0044aca8
    mov dword ptr [esp + 0x160], eax
    test eax, eax
    setne al
    and eax, 0xff
    dec eax
    cmp eax, -1
    jne loc_00440a6f
    mov eax, dword ptr [esp + 0x140]
    call sub_0044ad1b
loc_00440b04:
    mov eax, dword ptr [esp + 0x108]
    mov dword ptr [esp + 0x130], eax
    test eax, eax
    jle loc_00440cd8
    mov edx, dword ptr [esp + 0x108]
    shl eax, 4
    mov ebx, 1
    add eax, edx
    mov edx, dword ptr [esp + 0x14c]
    mov dword ptr [d_0045c490], ebx
    call dword ptr [d_0045c494]
    mov dword ptr [edx], eax
    test eax, eax
    je loc_00440cd8
    mov esi, dword ptr [esp + 0x108]
    xor ecx, ecx
    test esi, esi
    jle loc_00440bda
    mov dword ptr [esp + 0x158], ecx
    xor edx, edx
    xor ebx, ebx
loc_00440b64:
    mov esi, dword ptr [esp + 0x108]
    mov eax, dword ptr [esp + 0x14c]
    shl esi, 2
    mov eax, dword ptr [eax]
    add esi, eax
    add esi, ebx
    mov dword ptr [edx + eax], esi
    mov edi, dword ptr [esp + 0x158]
    mov esi, dword ptr [esp + 0x128]
    mov eax, dword ptr [esp + 0x14c]
    add esi, edi
    add edx, 4
    mov eax, dword ptr [eax]
    mov esi, dword ptr [esi]
    mov edi, dword ptr [edx + eax - 4]
    inc ecx
    push edi
loc_00440ba2:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_00440bba
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_00440ba2
loc_00440bba:
    pop edi
    mov eax, dword ptr [esp + 0x158]
    add ebx, 0xd
    add eax, 8
    mov esi, dword ptr [esp + 0x108]
    mov dword ptr [esp + 0x158], eax
    cmp ecx, esi
    jl loc_00440b64
loc_00440bda:
    mov edi, dword ptr [esp + 0x148]
    test edi, edi
    je loc_00440cd8
    mov eax, dword ptr [esp + 0x150]
    mov edx, dword ptr [esp + 0x108]
    add eax, 4
    imul eax, edx
    mov dword ptr [d_0045c490], 1
    call dword ptr [d_0045c494]
    mov dword ptr [edi], eax
    test eax, eax
    je loc_00440c30
    mov eax, dword ptr [esp + 0x14c]
    xor edi, edi
    mov eax, dword ptr [eax]
    mov dword ptr [esp + 0x130], edi
    call dword ptr [d_0045c49c]
    jmp loc_00440cd8
loc_00440c30:
    mov esi, dword ptr [esp + 0x108]
    xor ecx, ecx
    test esi, esi
    jle loc_00440cd8
    mov dword ptr [esp + 0x154], eax
    mov eax, dword ptr [esp + 0x150]
    xor edx, edx
    mov dword ptr [esp + 0x138], eax
    imul ebx, eax, 0
loc_00440c5b:
    mov esi, dword ptr [esp + 0x108]
    mov eax, dword ptr [esp + 0x148]
    shl esi, 2
    mov eax, dword ptr [eax]
    add esi, eax
    add esi, ebx
    mov dword ptr [edx + eax], esi
    mov edi, dword ptr [esp + 0x154]
    mov esi, dword ptr [esp + 0x128]
    mov eax, dword ptr [esp + 0x148]
    add esi, edi
    add edx, 4
    mov eax, dword ptr [eax]
    mov esi, dword ptr [esi + 4]
    mov edi, dword ptr [edx + eax - 4]
    inc ecx
    push edi
loc_00440c9a:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_00440cb2
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_00440c9a
loc_00440cb2:
    pop edi
    mov eax, dword ptr [esp + 0x154]
    mov esi, dword ptr [esp + 0x138]
    mov edi, dword ptr [esp + 0x108]
    add eax, 8
    add ebx, esi
    mov dword ptr [esp + 0x154], eax
    cmp ecx, edi
    jl loc_00440c5b
loc_00440cd8:
    lea eax, [esp + 0x104]
    call sub_00449f88
loc_00440ce4:
    test ebp, ebp
    je loc_00440cf0
    mov eax, ebp
    call dword ptr [d_0045c49c]
loc_00440cf0:
    mov eax, dword ptr [esp + 0x130]
    add esp, 0x16c
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push ecx
    push esi
    mov ebx, eax
    test eax, eax
    je loc_00440d21
    mov ecx, dword ptr [eax]
    test ecx, ecx
    je loc_00440d21
    mov eax, ecx
    call dword ptr [d_0045c49c]
    mov dword ptr [ebx], 0
loc_00440d21:
    test edx, edx
    je loc_00440d39
    mov esi, dword ptr [edx]
    test esi, esi
    je loc_00440d39
    mov eax, esi
    call dword ptr [d_0045c49c]
    mov dword ptr [edx], 0
loc_00440d39:
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
ptr_00440d40:
    push esi
    push edi
    mov esi, eax
    mov edi, edx
    cmp ebx, 0x10
    jne loc_00440d7e
    call sub_00440580
    test eax, eax
    jne loc_00440d7e
    lea edx, [edi + 4]
    mov eax, esi
    call sub_00440580
    test eax, eax
    jne loc_00440d7e
    lea edx, [edi + 8]
    mov eax, esi
    call sub_00440580
    test eax, eax
    jne loc_00440d7e
    lea edx, [edi + 0xc]
    mov eax, esi
    call sub_00440580
    test eax, eax
    je loc_00440d83
loc_00440d7e:
    mov eax, 0xffffffff
loc_00440d83:
    pop edi
    pop esi
    ret
    .byte 0x8b,0xc0
ptr_00440d88:
    push esi
    push edi
    mov esi, eax
    mov edi, edx
    cmp ebx, 0x10
    jne loc_00440dc8
    mov edx, dword ptr [edx]
    call sub_004405dc
    test eax, eax
    jne loc_00440dc8
    mov eax, esi
    mov edx, dword ptr [edi + 4]
    call sub_004405dc
    test eax, eax
    jne loc_00440dc8
    mov eax, esi
    mov edx, dword ptr [edi + 8]
    call sub_004405dc
    test eax, eax
    jne loc_00440dc8
    mov eax, esi
    mov edx, dword ptr [edi + 0xc]
    call sub_004405dc
    test eax, eax
    je loc_00440dcd
loc_00440dc8:
    mov eax, 0xffffffff
loc_00440dcd:
    pop edi
    pop esi
    ret
    push esi
    push edi
    mov esi, eax
    mov edi, edx
    cmp ebx, 0x10
    jne loc_00440e0e
    call sub_0044000c
    test eax, eax
    jne loc_00440e0e
    lea edx, [edi + 4]
    mov eax, esi
    call sub_0044000c
    test eax, eax
    jne loc_00440e0e
    lea edx, [edi + 8]
    mov eax, esi
    call sub_0044000c
    test eax, eax
    jne loc_00440e0e
    lea edx, [edi + 0xc]
    mov eax, esi
    call sub_0044000c
    test eax, eax
    je loc_00440e13
loc_00440e0e:
    mov eax, 0xffffffff
loc_00440e13:
    pop edi
    pop esi
    ret
    .byte 0x8b,0xc0
    push esi
    mov esi, eax
    cmp ebx, 0x10
    jne loc_00440ee7
    mov eax, dword ptr [edx]
    mov ebx, edx
    mov ecx, eax
    shr eax, 0x10
    xor edx, edx
    and eax, 0xffff
    mov dx, ax
    mov eax, esi
    call sub_0044008c
    cmp eax, -1
    je loc_00440e51
    mov eax, ecx
    xor edx, edx
    mov dx, ax
    mov eax, esi
    call sub_0044008c
loc_00440e51:
    test eax, eax
    jne loc_00440ee7
    mov eax, dword ptr [ebx + 4]
    mov ecx, eax
    shr eax, 0x10
    xor edx, edx
    and eax, 0xffff
    mov dx, ax
    mov eax, esi
    call sub_0044008c
    cmp eax, -1
    je loc_00440e83
    xor edx, edx
    mov eax, esi
    mov dx, cx
    call sub_0044008c
loc_00440e83:
    test eax, eax
    jne loc_00440ee7
    mov eax, dword ptr [ebx + 8]
    mov ecx, eax
    shr eax, 0x10
    xor edx, edx
    and eax, 0xffff
    mov dx, ax
    mov eax, esi
    call sub_0044008c
    cmp eax, -1
    je loc_00440eb3
    mov eax, ecx
    xor edx, edx
    mov dx, ax
    mov eax, esi
    call sub_0044008c
loc_00440eb3:
    test eax, eax
    jne loc_00440ee7
    mov eax, dword ptr [ebx + 0xc]
    mov ebx, eax
    shr eax, 0x10
    xor edx, edx
    and eax, 0xffff
    mov dx, ax
    mov eax, esi
    call sub_0044008c
    cmp eax, -1
    je loc_00440ee3
    mov eax, ebx
    xor edx, edx
    mov dx, ax
    mov eax, esi
    call sub_0044008c
loc_00440ee3:
    test eax, eax
    je loc_00440eec
loc_00440ee7:
    mov eax, 0xffffffff
loc_00440eec:
    pop esi
    ret
    .byte 0x8b,0xc0
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x13c
    mov dword ptr [esp + 0x130], eax
    mov ebp, edx
    xor esi, esi
    test eax, eax
    # je 0x441229
    .byte 0x0f,0x84
    .long loc_00441229 - . - 4
    mov ebx, 1
    mov dl, byte ptr [eax]
    mov dword ptr [esp + 0x12c], ebx
    cmp dl, 0x40
    jne loc_00440f32
    lea edi, [eax + ebx]
    mov dword ptr [esp + 0x12c], esi
    mov dword ptr [esp + 0x130], edi
loc_00440f32:
    mov eax, dword ptr [esp + 0x130]
    cmp byte ptr [eax], 0x5c
    jne loc_00440f46
    inc eax
    mov dword ptr [esp + 0x130], eax
loc_00440f46:
    mov eax, dword ptr [esp + 0x130]
    cmp byte ptr [eax], 0
    # je 0x441229
    .byte 0x0f,0x84
    .long loc_00441229 - . - 4
    test ebp, ebp
    # je 0x441229
    .byte 0x0f,0x84
    .long loc_00441229 - . - 4
    mov edx, 0xa
    lea eax, [esp + 0x104]
    xor ecx, ecx
    xor ebx, ebx
    call sub_00449ee8
    cmp eax, -1
    # je 0x441229
    .byte 0x0f,0x84
    .long loc_00441229 - . - 4
    mov eax, dword ptr [d_0045c48c]
    cmp dword ptr [eax], 0
    # je 0x441059
    .byte 0x0f,0x84
    .long loc_00441059 - . - 4
    mov edx, dword ptr [esp + 0x130]
    mov eax, offset d_0045ad70
    call sub_00451f10
    test eax, eax
    jne loc_00440fd6
    mov esi, 1
    mov ecx, 8
    xor edi, edi
    jmp loc_00440fc6
loc_00440fad:
    add ecx, 8
    mov edx, dword ptr [eax + 0x38]
    mov ebx, edi
    lea eax, [esp + 0x104]
    mov edx, dword ptr [ecx + edx - 8]
    inc esi
    call sub_0044a0b4
loc_00440fc6:
    mov eax, dword ptr [d_0045c48c]
    cmp esi, dword ptr [eax + 0x18]
    # jge 0x441059
    .byte 0x0f,0x8d
    .long loc_00441059 - . - 4
    jmp loc_00440fad
loc_00440fd6:
    mov edi, dword ptr [esp + 0x130]
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    xor esi, esi
    mov dword ptr [esp + 0x134], ecx
    xor edi, edi
    # jmp 0x44104f
    .byte 0xeb
    .byte loc_0044104f - . - 1
loc_00440ff4:
    mov edx, dword ptr [eax + 0x38]
    mov ebx, dword ptr [esp + 0x134]
    # mov eax, dword ptr [esp + 0x130]
    .byte 0x8b,0x84,0x24,0x30,0x01,0x00,0x00
