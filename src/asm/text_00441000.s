# code 0x00441000 - 0x00451000
    .intel_syntax noprefix
    .text
    mov edx, dword ptr [edx + esi]
    call sub_004528c8
    test eax, eax
    jne loc_0044104b
    mov eax, dword ptr [d_0045c48c]
    mov ecx, dword ptr [eax + 0x38]
    mov eax, dword ptr [esp + 0x134]
    mov ecx, dword ptr [ecx + esi]
    add ecx, eax
    cmp byte ptr [ecx], 0x5c
    jne loc_0044104b
    inc ecx
    mov edx, 0x5c
    mov eax, ecx
    call sub_00451d5e
    test eax, eax
    jne loc_0044104b
    lea eax, [esp + 0x104]
    mov edx, ecx
    xor ebx, ebx
    call sub_0044a0b4
loc_0044104b:
    add esi, 8
    inc edi
loc_0044104f:
    mov eax, dword ptr [d_0045c48c]
    cmp edi, dword ptr [eax + 0x18]
    # jl 0x440ff4
    .byte 0x7c
    .byte loc_00440ff4 - . - 1
loc_00441059:
    mov eax, dword ptr [d_0045c48c]
    mov ebx, dword ptr [eax + 0xc]
    test ebx, ebx
    je loc_0044115a
    cmp dword ptr [esp + 0x12c], 0
    je loc_00441097
    push offset d_0045ad74
    push 0x5c
    mov edi, dword ptr [esp + 0x138]
    push edi
    push ebx
    push offset d_0045ad78
    lea eax, [esp + 0x14]
    push eax
    call sub_004518d0
    add esp, 0x18
    jmp loc_004410b8
loc_00441097:
    push offset d_0045ad74
    push 0x5c
    mov esi, dword ptr [esp + 0x138]
    push esi
    push offset d_0045ad84
    lea eax, [esp + 0x10]
    push eax
    call sub_004518d0
    add esp, 0x14
loc_004410b8:
    mov eax, esp
    call sub_0044684f
    mov eax, esp
    call sub_0044ac9b
    mov edx, eax
    mov esi, eax
    test eax, eax
    je loc_004410e9
    call sub_0044aca8
    mov dword ptr [esp + 0x138], eax
    test eax, eax
    je loc_004410e2
    xor eax, eax
    jmp loc_004410ee
loc_004410e2:
    mov eax, edx
    call sub_0044ad1b
loc_004410e9:
    mov eax, 0xffffffff
loc_004410ee:
    cmp eax, -1
    je loc_0044115a
    xor edi, edi
loc_004410f5:
    mov eax, dword ptr [esp + 0x138]
    test byte ptr [eax + 0x15], 0x10
    je loc_00441135
    lea ecx, [eax + 0x1e]
    mov edx, offset d_0045ad70
    mov eax, ecx
    call sub_00451f10
    test eax, eax
    je loc_00441135
    mov edx, offset d_0045ad8c
    mov eax, ecx
    call sub_00451f10
    test eax, eax
    je loc_00441135
    lea eax, [esp + 0x104]
    mov ebx, edi
    mov edx, ecx
    call sub_0044a0b4
loc_00441135:
    mov eax, esi
    call sub_0044aca8
    mov dword ptr [esp + 0x138], eax
    test eax, eax
    setne al
    and eax, 0xff
    dec eax
    cmp eax, -1
    jne loc_004410f5
    mov eax, esi
    call sub_0044ad1b
loc_0044115a:
    mov eax, dword ptr [esp + 0x108]
    shl eax, 2
    mov ebx, 1
    add eax, 4
    mov dword ptr [d_0045c490], ebx
    call dword ptr [d_0045c494]
    mov dword ptr [ebp], eax
    test eax, eax
    je loc_00441216
    mov edx, eax
    mov eax, dword ptr [esp + 0x108]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp]
    add eax, 4
    mov dword ptr [ebp], eax
    mov esi, dword ptr [esp + 0x108]
    xor ecx, ecx
    test esi, esi
    # jle 0x441216
    .byte 0x0f,0x8e
    .long loc_00441216 - . - 4
    xor edx, edx
    xor esi, esi
loc_004411ac:
    mov eax, dword ptr [esp + 0x128]
    mov eax, dword ptr [esi + eax]
    call sub_00442068
    mov edi, dword ptr [ebp]
    mov dword ptr [edx + edi], eax
    mov eax, dword ptr [ebp]
    cmp dword ptr [edx + eax], 0
    jne loc_00441204
    dec ecx
    test ecx, ecx
    jl loc_004411eb
    lea edx, [ecx*4]
loc_004411d6:
    sub edx, 4
    mov eax, dword ptr [ebp]
    mov eax, dword ptr [edx + eax + 4]
    dec ecx
    call dword ptr [d_0045c49c]
    test edx, edx
    jge loc_004411d6
loc_004411eb:
    mov eax, dword ptr [ebp]
    call dword ptr [d_0045c49c]
    lea eax, [esp + 0x104]
    call sub_00449f88
    xor eax, eax
    jmp loc_0044122b
loc_00441204:
    mov edi, dword ptr [esp + 0x108]
    add edx, 4
    inc ecx
    add esi, 8
    cmp ecx, edi
    jl loc_004411ac
loc_00441216:
    lea eax, [esp + 0x104]
    mov esi, dword ptr [esp + 0x108]
    call sub_00449f88
loc_00441229:
    mov eax, esi
loc_0044122b:
    add esp, 0x13c
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
    mov ebx, eax
    test eax, eax
    je loc_0044127e
    mov edx, dword ptr [eax]
    test edx, edx
    je loc_0044127e
    mov eax, dword ptr [edx - 4]
    test eax, eax
    jle loc_00441271
    lea ecx, [eax*4]
    xor edx, edx
loc_00441258:
    mov eax, dword ptr [ebx]
    add eax, edx
    mov esi, dword ptr [eax]
    test esi, esi
    je loc_0044126a
    mov eax, esi
    call dword ptr [d_0045c49c]
loc_0044126a:
    add edx, 4
    cmp edx, ecx
    jl loc_00441258
loc_00441271:
    mov eax, dword ptr [ebx]
    sub eax, 4
    mov dword ptr [ebx], eax
    call dword ptr [d_0045c49c]
loc_0044127e:
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00441284:
    push edx
    mov edx, 0xffffffff
    test eax, eax
    je loc_004412a8
    test byte ptr [eax + 4], 4
    je loc_004412a5
    mov eax, dword ptr [eax + 0xc]
    mov eax, dword ptr [eax + 0x10]
    call sub_004442df
    mov edx, eax
    mov eax, edx
    pop edx
    ret
loc_004412a5:
    mov edx, dword ptr [eax + 0xc]
loc_004412a8:
    mov eax, edx
    pop edx
    ret
    push esi
    push edi
    push ebp
    cmp dword ptr [d_0045c490], 0
    jne loc_004412fa
    test eax, eax
    je loc_004412d9
    test edx, edx
    je loc_004412d9
    test ebx, ebx
    je loc_004412d9
    mov dword ptr [d_0045c494], eax
    mov dword ptr [d_0045c498], edx
    mov dword ptr [d_0045c49c], ebx
    pop ebp
    pop edi
    pop esi
    ret
loc_004412d9:
    mov esi, offset ptr_00442084
    mov edi, offset ptr_0044208c
    mov ebp, offset ptr_00442094
    mov dword ptr [d_0045c494], esi
    mov dword ptr [d_0045c498], edi
    mov dword ptr [d_0045c49c], ebp
loc_004412fa:
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x8b,0xc0
    push ebx
    mov dword ptr [d_0045c4ac], eax
    xor ebx, ebx
    mov dword ptr [d_0045c4a8], edx
    mov dword ptr [d_0045c4a4], ebx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00441318:
    push ebx
    push ecx
    push edx
    push esi
    mov esi, eax
    mov ebx, dword ptr [d_004a39b0]
    xor edx, edx
    xor eax, eax
    test ebx, ebx
    je loc_0044133e
loc_0044132c:
    add eax, 4
    inc edx
    cmp eax, 0x28
    jge loc_0044133e
    cmp dword ptr [eax + d_004a39b0], 0
    jne loc_0044132c
loc_0044133e:
    cmp edx, 0xa
    jge loc_00441379
    mov eax, 0x1b0
    lea ecx, [edx*4]
    call sub_00442054
    mov dword ptr [ecx + d_004a39b0], eax
    test eax, eax
    je loc_00441379
    mov ebx, 0x1b0
    xor edx, edx
    call sub_00451940
    mov eax, dword ptr [ecx + d_004a39b0]
    mov dword ptr [esi], eax
    xor eax, eax
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00441379:
    mov eax, 0xffffffff
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
    push ebx
    push edx
    mov edx, eax
    test eax, eax
    je loc_004413a5
    mov ebx, dword ptr [eax]
    test ebx, ebx
    je loc_004413a5
    mov eax, ebx
    call dword ptr [d_0045c49c]
    mov dword ptr [edx], 0
    xor eax, eax
    pop edx
    pop ebx
    ret
loc_004413a5:
    mov eax, 0xffffffff
    pop edx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_004413b0:
    push esi
    push edi
    push ebp
    sub esp, 0x1c
    mov ebp, eax
    mov dword ptr [esp + 0x14], ebx
    mov eax, edx
    test ebp, ebp
    je loc_004415c0
    test edx, edx
    je loc_004415c5
    mov dword ptr [d_0045c490], 1
    call dword ptr [d_0045c498]
    mov dword ptr [ebp], eax
    test eax, eax
    je loc_004415c0
    mov edx, offset d_0045ad6c
    call sub_004514fc
    mov dword ptr [ebp + 4], eax
    test eax, eax
    je loc_004415b0
    mov ebx, 0x28
    lea esi, [ebp + 0x14]
    xor ecx, ecx
    xor edx, edx
    mov eax, esi
    call sub_00449ee8
    test eax, eax
    jne loc_004415a8
    mov edx, esi
    mov eax, dword ptr [ebp + 4]
    xor ebx, ebx
    call sub_0044a484
    test eax, eax
    jne loc_004415a8
    mov edx, dword ptr [ebp + 0x18]
    lea eax, [edx*4]
    add eax, edx
    mov esi, 1
    shl eax, 3
    mov dword ptr [d_0045c490], esi
    call dword ptr [d_0045c494]
    mov dword ptr [ebp + 0x3c], eax
    test eax, eax
    je loc_004415a0
    mov eax, offset ptr_00440d40
    mov edx, offset ptr_00440d88
    xor ebx, ebx
    mov dword ptr [esp], eax
    mov dword ptr [esp + 4], edx
    mov dword ptr [esp + 8], ebx
    mov dword ptr [esp + 0xc], ebx
    mov edi, dword ptr [ebp + 0x18]
    xor esi, esi
    test edi, edi
    jle loc_0044150a
    mov ebx, 0xffffffff
    xor edi, edi
    mov dword ptr [esp + 0x18], ebx
loc_0044148b:
    mov ecx, esp
    mov ebx, 0x10
    mov eax, dword ptr [ebp + 0x3c]
    xor edx, edx
    add eax, edi
    call sub_00449ee8
    mov edx, dword ptr [esp + 0x18]
    imul ecx, edx, 0x28
    test eax, eax
    jne loc_004414da
    mov edx, dword ptr [ebp + 0x3c]
    mov eax, dword ptr [ebp + 4]
    xor ebx, ebx
    add edx, edi
    call sub_0044a484
    test eax, eax
    je loc_004414f6
    mov esi, dword ptr [esp + 0x18]
    test esi, esi
    jl loc_0044150a
    mov edi, ecx
loc_004414c6:
    mov eax, dword ptr [ebp + 0x3c]
    dec esi
    add eax, edi
    sub edi, 0x28
    call sub_00449f88
    test edi, edi
    jl loc_0044150a
    jmp loc_004414c6
loc_004414da:
    mov esi, edx
    test edx, edx
    jl loc_0044150a
    mov edi, ecx
loc_004414e2:
    mov eax, dword ptr [ebp + 0x3c]
    dec esi
    add eax, edi
    sub edi, 0x28
    call sub_00449f88
    test edi, edi
    jl loc_0044150a
    jmp loc_004414e2
loc_004414f6:
    mov eax, dword ptr [esp + 0x18]
    add edi, 0x28
    inc esi
    inc eax
    mov edx, dword ptr [ebp + 0x18]
    mov dword ptr [esp + 0x18], eax
    cmp esi, edx
    jl loc_0044148b
loc_0044150a:
    cmp esi, dword ptr [ebp + 0x18]
    jne loc_00441597
    mov edx, dword ptr [esp + 0x14]
    test edx, edx
    je loc_00441535
    mov edi, edx
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    test ecx, ecx
    je loc_00441535
    mov esi, edx
    cmp byte ptr [edx], 0x5c
    jne loc_0044153a
    inc esi
    jmp loc_0044153a
loc_00441535:
    mov esi, offset d_0045ad90
loc_0044153a:
    mov edi, esi
    mov ebx, 1
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    lea eax, [ecx + 2]
    mov dword ptr [d_0045c490], ebx
    call dword ptr [d_0045c494]
    mov dword ptr [ebp + 8], eax
    test eax, eax
    je loc_00441597
    mov edi, eax
    push edi
loc_00441564:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044157c
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_00441564
loc_0044157c:
    pop edi
    mov eax, dword ptr [ebp + 8]
    add eax, ecx
    cmp byte ptr [eax - 1], 0x5c
    je loc_00441593
    mov byte ptr [eax], 0x5c
    mov eax, dword ptr [ebp + 8]
    mov byte ptr [ecx + eax + 1], 0
loc_00441593:
    xor eax, eax
    jmp loc_004415c5
loc_00441597:
    mov eax, dword ptr [ebp + 0x3c]
    call dword ptr [d_0045c49c]
loc_004415a0:
    lea eax, [ebp + 0x14]
    call sub_00449f88
loc_004415a8:
    mov eax, dword ptr [ebp + 4]
    call sub_0045172e
loc_004415b0:
    mov eax, dword ptr [ebp]
    call dword ptr [d_0045c49c]
    mov dword ptr [ebp], 0
loc_004415c0:
    mov eax, 0xffffffff
loc_004415c5:
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    ret
sub_004415cc:
    push ebx
    push ecx
    push edx
    push edi
    push ebp
    mov ecx, eax
    test eax, eax
    # je 0x441656
    .byte 0x0f,0x84
    .long loc_00441656 - . - 4
    mov edx, dword ptr [eax + 4]
    test edx, edx
    je loc_004415f0
    mov eax, edx
    call sub_0045172e
    mov dword ptr [ecx + 4], 0
loc_004415f0:
    mov ebx, dword ptr [ecx]
    test ebx, ebx
    je loc_00441604
    mov eax, ebx
    call dword ptr [d_0045c49c]
    mov dword ptr [ecx], 0
loc_00441604:
    cmp dword ptr [ecx + 0x3c], 0
    je loc_0044163a
    mov edi, dword ptr [ecx + 0x18]
    xor edx, edx
    test edi, edi
    jle loc_0044162a
    xor ebx, ebx
loc_00441615:
    mov eax, dword ptr [ecx + 0x3c]
    add eax, ebx
    inc edx
    call sub_00449f88
    mov ebp, dword ptr [ecx + 0x18]
    add ebx, 0x28
    cmp edx, ebp
    jl loc_00441615
loc_0044162a:
    mov eax, dword ptr [ecx + 0x3c]
    call dword ptr [d_0045c49c]
    mov dword ptr [ecx + 0x3c], 0
loc_0044163a:
    lea eax, [ecx + 0x14]
    call sub_00449f88
    mov eax, dword ptr [ecx + 8]
    test eax, eax
    je loc_00441656
    call dword ptr [d_0045c49c]
    mov dword ptr [ecx + 8], 0
loc_00441656:
    pop ebp
    pop edi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0044165c:
    push ebx
    push ecx
    push esi
    push edi
    mov ebx, eax
    test eax, eax
    je loc_004416ef
    test edx, edx
    jne loc_00441676
    mov dword ptr [eax + 0xc], edx
    # jmp 0x4416e8
    .byte 0xe9
    .long loc_004416e8 - . - 4
loc_00441676:
    mov edi, edx
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    test ecx, ecx
    je loc_004416e1
    mov esi, 1
    lea eax, [ecx + 2]
    mov dword ptr [d_0045c490], esi
    call dword ptr [d_0045c494]
    mov dword ptr [ebx + 0xc], eax
    test eax, eax
    je loc_004416ef
    mov esi, edx
    mov edi, dword ptr [ebx + 0xc]
    mov byte ptr [ebx + 0x10], 1
    push edi
loc_004416ab:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_004416c3
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_004416ab
loc_004416c3:
    pop edi
    mov eax, dword ptr [ebx + 0xc]
    add eax, ecx
    cmp byte ptr [eax - 1], 0x5c
    je loc_004416e8
    mov byte ptr [eax], 0x5c
    mov eax, dword ptr [ebx + 0xc]
    mov byte ptr [ecx + eax + 1], 0
    xor eax, eax
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_004416e1:
    mov dword ptr [ebx + 0xc], offset d_0045ad94
loc_004416e8:
    xor eax, eax
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_004416ef:
    mov eax, 0xffffffff
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_004416fc:
    push edx
    mov edx, eax
    test eax, eax
    je loc_00441723
    cmp dword ptr [eax + 0xc], 0
    je loc_00441718
    cmp byte ptr [eax + 0x10], 1
    jne loc_00441718
    mov eax, dword ptr [edx + 0xc]
    call dword ptr [d_0045c49c]
loc_00441718:
    mov dword ptr [edx + 0xc], offset d_0045ad94
    mov byte ptr [edx + 0x10], 0
loc_00441723:
    pop edx
    ret
    .byte 0x8d,0x40,0x00
sub_00441728:
    push ecx
    push edx
    mov edx, eax
    cmp dword ptr [d_0045c4a0], 0
    jne loc_0044173d
    mov eax, 0xffffffff
    pop edx
    pop ecx
    ret
loc_0044173d:
    test eax, eax
    jne loc_00441749
    mov eax, 0xffffffff
    pop edx
    pop ecx
    ret
loc_00441749:
    mov ecx, 1
    mov eax, 0xfff
    mov dword ptr [d_0045c490], ecx
    call dword ptr [d_0045c494]
    mov dword ptr [edx + 0x1ac], eax
    test eax, eax
    jne loc_00441771
    mov eax, 0xffffffff
    pop edx
    pop ecx
    ret
loc_00441771:
    mov eax, edx
    call sub_00441788
    pop edx
    pop ecx
    ret
    .byte 0x90
    mov dword ptr [d_0045c4a0], 1
    ret
    .byte 0x90
sub_00441788:
    push ebx
    push ecx
    push edx
    push edi
    mov ecx, eax
    cmp dword ptr [d_0045c4a0], 0
    jne loc_004417a1
    mov eax, 0xffffffff
    pop edi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004417a1:
    test eax, eax
    jne loc_004417af
    mov eax, 0xffffffff
    pop edi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004417af:
    cmp dword ptr [eax + 0xc], 0
    jne loc_004417bf
    mov eax, 0xffffffff
    pop edi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004417bf:
    cmp dword ptr [eax + 0x1ac], 0
    jne loc_004417f2
    mov edi, 1
    mov eax, 0xfff
    mov dword ptr [d_0045c490], edi
    call dword ptr [d_0045c494]
    mov dword ptr [ecx + 0x1ac], eax
    test eax, eax
    je loc_004417f2
    mov eax, 0xffffffff
    pop edi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004417f2:
    mov ebx, 0xfff
    mov eax, dword ptr [ecx + 0x1ac]
    xor edx, edx
    call sub_00451940
    mov eax, ecx
    mov edx, dword ptr [ecx + 0xc]
    call sub_00441814
    pop edi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00441814:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x104
    mov esi, eax
    mov ebp, edx
    cmp dword ptr [d_0045c4a0], 0
    jne loc_00441836
    mov eax, 0xffffffff
    jmp loc_00441933
loc_00441836:
    test eax, eax
    jne loc_0044184b
    mov eax, 0xffffffff
    add esp, 0x104
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044184b:
    cmp dword ptr [eax + 0x1ac], 0
    jne loc_00441865
    mov eax, 0xffffffff
    add esp, 0x104
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_00441865:
    push offset d_0045ad74
    push ebp
    push offset d_0045ad64
    lea eax, [esp + 0xc]
    push eax
    call sub_004518d0
    add esp, 0x10
    mov eax, esp
    call sub_0044684f
    mov eax, esp
    call sub_0044ac9b
    mov edx, eax
    mov edi, eax
    test eax, eax
    je loc_004418a9
    call sub_0044aca8
    mov ebx, eax
    test eax, eax
    je loc_004418a2
    xor eax, eax
    jmp loc_004418ae
loc_004418a2:
    mov eax, edx
    call sub_0044ad1b
loc_004418a9:
    mov eax, 0xffffffff
loc_004418ae:
    cmp eax, -1
    # je 0x441931
    .byte 0x0f,0x84
    .long loc_00441931 - . - 4
loc_004418b7:
    mov ah, byte ptr [ebx + 0x15]
    lea ecx, [ebx + 0x1e]
    test ah, 0x10
    je loc_00441903
    mov edx, offset d_0045ad70
    mov eax, ecx
    call sub_00451f10
    test eax, eax
    je loc_00441911
    mov edx, offset d_0045ad8c
    mov eax, ecx
    call sub_00451f10
    test eax, eax
    je loc_00441911
    push 0x5c
    push ecx
    push ebp
    push offset d_0045ad98
    lea eax, [esp + 0x10]
    push eax
    call sub_004518d0
    add esp, 0x14
    mov edx, esp
    mov eax, esi
    call sub_00441814
    jmp loc_00441911
loc_00441903:
    mov ebx, 0x5c
    mov edx, ecx
    mov eax, esi
    call sub_004419cc
loc_00441911:
    mov eax, edi
    call sub_0044aca8
    mov ebx, eax
    test eax, eax
    setne al
    and eax, 0xff
    dec eax
    cmp eax, -1
    jne loc_004418b7
    mov eax, edi
    call sub_0044ad1b
loc_00441931:
    xor eax, eax
loc_00441933:
    add esp, 0x104
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
    push ebx
    push edx
    cmp dword ptr [d_0045c4a0], 0
    jne loc_00441953
    mov eax, 0xffffffff
    pop edx
    pop ebx
    ret
loc_00441953:
    mov edx, dword ptr [d_004a39b0]
    xor ebx, ebx
loc_0044195b:
    test edx, edx
    je loc_00441966
    mov eax, edx
    call sub_00441788
loc_00441966:
    inc ebx
    add edx, 0x1b0
    cmp ebx, 0xa
    jb loc_0044195b
    xor eax, eax
    pop edx
    pop ebx
    ret
    .byte 0x90
    push ebx
    push ecx
    cmp dword ptr [d_0045c4a0], 0
    jne loc_0044198b
    mov eax, 0xffffffff
    pop ecx
    pop ebx
    ret
loc_0044198b:
    mov ecx, dword ptr [d_0045c48c]
    test ecx, ecx
    jne loc_0044199d
    mov eax, 0xffffffff
    pop ecx
    pop ebx
    ret
loc_0044199d:
    cmp dword ptr [ecx + 0x1ac], 0
    jne loc_004419ae
    mov eax, 0xffffffff
    pop ecx
    pop ebx
    ret
loc_004419ae:
    test eax, eax
    jne loc_004419ba
    mov eax, 0xffffffff
    pop ecx
    pop ebx
    ret
loc_004419ba:
    xor ebx, ebx
    mov bl, dl
    mov edx, eax
    mov eax, ecx
    call sub_004419cc
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_004419cc:
    push ecx
    sub esp, 4
    mov ecx, eax
    mov eax, edx
    cmp dword ptr [d_0045c4a0], 0
    jne loc_004419e7
    mov eax, 0xffffffff
    add esp, 4
    pop ecx
    ret
loc_004419e7:
    test ecx, ecx
    jne loc_004419f5
    mov eax, 0xffffffff
    add esp, 4
    pop ecx
    ret
loc_004419f5:
    cmp dword ptr [ecx + 0x1ac], 0
    jne loc_00441a08
    mov eax, 0xffffffff
    add esp, 4
    pop ecx
    ret
loc_00441a08:
    test eax, eax
    jne loc_00441a16
    mov eax, 0xffffffff
    add esp, 4
    pop ecx
    ret
loc_00441a16:
    xor edx, edx
    mov dl, bl
    mov ebx, esp
    call sub_00441b80
    test eax, eax
    je loc_00441a2f
    mov eax, 0xffffffff
    add esp, 4
    pop ecx
    ret
loc_00441a2f:
    mov ebx, 1
    mov edx, dword ptr [esp]
    mov eax, ecx
    call sub_00441a44
    add esp, 4
    pop ecx
    ret
    .byte 0x90
sub_00441a44:
    push ecx
    push esi
    push edi
    sub esp, 4
    mov esi, eax
    mov ecx, edx
    mov byte ptr [esp], bl
    cmp dword ptr [d_0045c4a0], 0
    jne loc_00441a64
    mov eax, 0xffffffff
    jmp loc_00441ae7
loc_00441a64:
    cmp dword ptr [eax + 0x1ac], 0
    jne loc_00441a79
    mov eax, 0xffffffff
    add esp, 4
    pop edi
    pop esi
    pop ecx
    ret
loc_00441a79:
    cmp ecx, 0x7fff
    jl loc_00441a8d
    mov eax, 0xffffffff
    add esp, 4
    pop edi
    pop esi
    pop ecx
    ret
loc_00441a8d:
    mov edx, ecx
    mov eax, ecx
    sar edx, 0x1f
    shl edx, 3
    # sbb eax, edx
    .byte 0x1b,0xc2
    sar eax, 3
    mov edi, 8
    mov ebx, eax
    mov edx, ecx
    mov eax, ecx
    sar edx, 0x1f
    idiv edi
    mov ah, byte ptr [esp]
    mov ecx, edx
    cmp ah, 1
    jne loc_00441acf
    mov eax, dword ptr [esi + 0x1ac]
    add ebx, eax
    mov eax, 1
    shl eax, cl
    mov ecx, eax
    xor eax, eax
    mov al, byte ptr [ebx]
    or eax, ecx
    jmp loc_00441ae3
loc_00441acf:
    mov eax, dword ptr [esi + 0x1ac]
    add ebx, eax
    xor eax, eax
    shl eax, cl
    mov ecx, eax
    xor eax, eax
    mov al, byte ptr [ebx]
    and eax, ecx
loc_00441ae3:
    mov byte ptr [ebx], al
    xor eax, eax
loc_00441ae7:
    add esp, 4
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8b,0xc0
sub_00441af0:
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, eax
    mov edi, ecx
    mov eax, edx
    cmp dword ptr [d_0045c4a0], 0
    jne loc_00441b0c
    mov eax, 0xffffffff
    jmp loc_00441b78
loc_00441b0c:
    cmp dword ptr [esi + 0x1ac], 0
    jne loc_00441b21
    mov eax, 0xffffffff
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret
loc_00441b21:
    test eax, eax
    jne loc_00441b31
    mov eax, 0xffffffff
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret
loc_00441b31:
    xor edx, edx
    mov dl, bl
    mov ebx, esp
    call sub_00441b80
    test eax, eax
    jne loc_00441b4b
    mov ebp, dword ptr [esp]
    cmp ebp, 0x7fff
    jb loc_00441b57
loc_00441b4b:
    mov eax, 0xffffffff
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret
loc_00441b57:
    mov eax, ebp
    mov edx, dword ptr [esi + 0x1ac]
    shr eax, 3
    mov al, byte ptr [edx + eax]
    mov ecx, ebp
    and eax, 0xff
    and ecx, 7
    sar eax, cl
    and eax, 1
    mov byte ptr [edi], al
    xor eax, eax
loc_00441b78:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x90
sub_00441b80:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ebp, ebx
    mov esi, 1
    test eax, eax
    jne loc_00441b99
    mov eax, 0xffffffff
    jmp loc_00441c01
loc_00441b99:
    mov dword ptr [d_0045c490], esi
    call dword ptr [d_0045c498]
    mov ebx, eax
    mov dword ptr [esp], eax
    call sub_0044684f
    and edx, 0xff
    mov eax, ebx
    call sub_00451d5e
    test eax, eax
    jne loc_00441bc4
    mov edx, ebx
    jmp loc_00441bc7
loc_00441bc4:
    lea edx, [eax + esi]
loc_00441bc7:
    xor ebx, ebx
    jmp loc_00441bda
loc_00441bcb:
    xor ecx, ecx
    mov cl, byte ptr [edx]
    imul esi, ecx
    inc edx
    inc ebx
    and esi, 0x7fffffff
loc_00441bda:
    mov edi, edx
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    cmp ebx, ecx
    jb loc_00441bcb
    shr esi, 0x10
    and esi, 0x7fff
    mov eax, dword ptr [esp]
    mov dword ptr [ebp], esi
    call dword ptr [d_0045c49c]
    xor eax, eax
loc_00441c01:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push edx
    mov edx, eax
    mov ebx, dword ptr [eax + 0x1ac]
    test ebx, ebx
    je loc_00441c22
    mov eax, ebx
    call dword ptr [d_0045c49c]
loc_00441c22:
    mov dword ptr [edx + 0x1ac], 0
    pop edx
    pop ebx
    ret
    .byte 0x90
sub_00441c30:
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov esi, eax
    mov edi, edx
    mov ebp, ebx
    mov dword ptr [esp + 0xc], ecx
    mov eax, dword ptr [d_0045c48c]
    mov edx, dword ptr [eax + 0x40]
    xor ecx, ecx
    cmp edx, 0xa
    jge loc_00441e13
    mov eax, esp
    call sub_00441ebc
    test eax, eax
    jne loc_00441e13
    mov edx, dword ptr [esp]
    lea eax, [edx*8]
    mov ebx, dword ptr [d_0045c48c]
    add eax, edx
    add ebx, 0x44
    shl eax, 2
    xor edx, edx
    add eax, ebx
    mov ebx, 0x24
    call sub_00451940
    mov eax, dword ptr [esp]
    mov dword ptr [esp + 4], eax
    mov ebx, dword ptr [esp + 4]
    shl eax, 3
    add eax, ebx
    mov edx, dword ptr [d_0045c48c]
    mov dword ptr [edx + eax*4 + 0x44], edx
    lea eax, [edx + 0x44]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp]
    mov dword ptr [esp + 4], eax
    mov ebx, dword ptr [esp + 4]
    shl eax, 3
    add eax, ebx
    shl eax, 2
    mov bl, byte ptr [esp + 0xc]
    add eax, edx
    test bl, 4
    je loc_00441ce4
    mov dword ptr [eax + 0x50], esi
    mov edx, dword ptr [esp]
    lea eax, [edx*8]
    add eax, edx
    mov ecx, dword ptr [esp + 8]
    shl eax, 2
    add ecx, eax
    jmp loc_00441e13
loc_00441ce4:
    mov dword ptr [eax + 0x50], ebp
    mov eax, dword ptr [esp]
    mov dword ptr [esp + 4], eax
    mov ebx, dword ptr [esp + 4]
    shl eax, 3
    add eax, ebx
    mov dword ptr [edx + eax*4 + 0x54], ebp
    mov eax, dword ptr [esp + 0xc]
    and eax, 0xf0
    cmp eax, 0x20
    jb loc_00441d19
    jbe loc_00441d5c
    cmp eax, 0x40
    je loc_00441d9c
    jmp loc_00441e13
loc_00441d19:
    cmp eax, 0x10
    jne loc_00441e13
    mov ecx, dword ptr [esp]
    lea eax, [ecx*8]
    add eax, ecx
    mov dword ptr [edx + eax*4 + 0x60], edi
    mov ecx, dword ptr [esp]
    lea eax, [ecx*8]
    add eax, ecx
    mov dword ptr [edx + eax*4 + 0x64], edi
    mov edx, dword ptr [esp]
    lea eax, [edx*8]
    add eax, edx
    mov ecx, dword ptr [esp + 8]
    shl eax, 2
    add ecx, eax
    jmp loc_00441e13
loc_00441d5c:
    mov eax, esi
    call sub_0044428e
    mov ecx, dword ptr [esp]
    mov edx, eax
    lea eax, [ecx*8]
    mov ebx, dword ptr [d_0045c48c]
    add eax, ecx
    mov dword ptr [ebx + eax*4 + 0x58], edx
    mov eax, esi
    call sub_0044428e
    mov ecx, dword ptr [esp]
    mov esi, eax
    lea eax, [ecx*8]
    mov edx, dword ptr [d_0045c48c]
    add eax, ecx
    mov dword ptr [edx + eax*4 + 0x5c], esi
    jmp loc_00441dfe
loc_00441d9c:
    mov eax, esi
    call sub_0044428e
    mov edx, dword ptr [esp]
    mov ecx, eax
    lea eax, [edx*8]
    mov ebx, dword ptr [d_0045c48c]
    add eax, edx
    mov dword ptr [ebx + eax*4 + 0x58], ecx
    mov eax, esi
    call sub_0044428e
    mov ecx, dword ptr [esp]
    lea esi, [ecx*8]
    mov edx, dword ptr [d_0045c48c]
    add esi, ecx
    mov dword ptr [edx + esi*4 + 0x5c], eax
    mov eax, dword ptr [esp]
    lea esi, [eax*8]
    add esi, eax
    mov dword ptr [edx + esi*4 + 0x60], edi
    mov eax, dword ptr [esp]
    lea esi, [eax*8]
    add esi, eax
    add edi, 0x4000
    mov dword ptr [edx + esi*4 + 0x64], edi
loc_00441dfe:
    mov ecx, dword ptr [esp]
    lea eax, [ecx*8]
    add eax, ecx
    add edx, 0x44
    shl eax, 2
    lea ecx, [edx + eax]
loc_00441e13:
    test ecx, ecx
    je loc_00441e45
    mov esi, dword ptr [esp]
    lea eax, [esi*8]
    mov edx, dword ptr [d_0045c48c]
    add eax, esi
    mov ebx, dword ptr [esp + 0xc]
    mov dword ptr [edx + eax*4 + 0x48], ebx
    mov esi, dword ptr [esp]
    lea eax, [esi*8]
    add eax, esi
    mov byte ptr [edx + eax*4 + 0x4c], 1
    inc dword ptr [edx + 0x40]
loc_00441e45:
    mov eax, ecx
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x8b,0xc0
sub_00441e50:
    push ebx
    push ecx
    push edx
    mov ecx, eax
    test eax, eax
    je loc_00441eb0
    test byte ptr [eax + 4], 4
    je loc_00441e69
    mov eax, dword ptr [ecx + 0xc]
    call sub_0045172e
    jmp loc_00441e93
loc_00441e69:
    mov eax, dword ptr [ecx + 4]
    and eax, 0xf0
    cmp eax, 0x20
    jb loc_00441e7f
    jbe loc_00441e93
    cmp eax, 0x40
    je loc_00441e84
    jmp loc_00441e93
loc_00441e7f:
    cmp eax, 0x10
    jne loc_00441e93
loc_00441e84:
    mov edx, dword ptr [ecx + 0x1c]
    test edx, edx
    je loc_00441e93
    mov eax, edx
    call dword ptr [d_0045c49c]
loc_00441e93:
    mov eax, dword ptr [ecx]
    mov ebx, dword ptr [eax + 0x40]
    dec ebx
    xor edx, edx
    mov dword ptr [eax + 0x40], ebx
    mov ebx, 0x24
    mov eax, ecx
    call sub_00451940
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
loc_00441eb0:
    mov eax, 0xffffffff
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_00441ebc:
    push ebx
    push edx
    push esi
    push edi
    mov esi, dword ptr [d_0045c48c]
    mov edi, eax
    test eax, eax
    je loc_00441ef0
    cmp dword ptr [esi + 0x40], 0xa
    jge loc_00441ef0
    mov ebx, esi
    xor edx, edx
    xor eax, eax
loc_00441ed8:
    cmp byte ptr [ebx + eax + 0x4c], 0
    jne loc_00441ee5
    xor eax, eax
    mov dword ptr [edi], edx
    jmp loc_00441ef5
loc_00441ee5:
    add eax, 0x24
    inc edx
    cmp eax, 0x168
    jl loc_00441ed8
loc_00441ef0:
    mov eax, 0xffffffff
loc_00441ef5:
    mov dword ptr [d_0045c48c], esi
    pop edi
    pop esi
    pop edx
    pop ebx
    ret
sub_00441f00:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov esi, eax
    mov ebp, edx
    mov eax, dword ptr [d_0045c48c]
    cmp dword ptr [eax], 0
    je loc_00441feb
    test esi, esi
    je loc_00441feb
    test ebp, ebp
    je loc_00441feb
    cmp byte ptr [esi], 0x2e
    jne loc_00441f39
    mov dl, byte ptr [esi + 1]
    inc esi
    cmp dl, 0x5c
    jne loc_00441f39
    inc esi
loc_00441f39:
    mov edi, esi
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    lea ebx, [ecx - 1]
    test ebx, ebx
    jge loc_00441f56
    jmp loc_00441f5e
loc_00441f4e:
    dec ebx
    dec eax
    test ebx, ebx
    jge loc_00441f59
    jmp loc_00441f5e
loc_00441f56:
    lea eax, [ebx + esi]
loc_00441f59:
    cmp byte ptr [eax], 0x5c
    jne loc_00441f4e
loc_00441f5e:
    test ebx, ebx
    jl loc_00441f79
    mov eax, dword ptr [d_0045c48c]
    mov edx, esi
    add eax, 0x14
    mov byte ptr [esi + ebx], 0
    call sub_0044a088
    mov ecx, eax
    jmp loc_00441f7b
loc_00441f79:
    xor ecx, ecx
loc_00441f7b:
    cmp ecx, -1
    je loc_00441fe3
    lea edi, [esi + ebx]
    lea eax, [edi + 1]
    mov dword ptr [esp], eax
    lea eax, [ecx*4]
    add eax, ecx
    shl eax, 3
    mov edx, dword ptr [d_0045c48c]
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [edx + 0x3c]
    add eax, dword ptr [esp + 4]
    mov edx, dword ptr [esp]
    call sub_0044a088
    mov edx, eax
    cmp eax, -1
    je loc_00441fe3
    test ebx, ebx
    jl loc_00441fbc
    mov byte ptr [edi], 0x5c
loc_00441fbc:
    lea ebx, [ecx*4]
    mov esi, dword ptr [d_0045c48c]
    add ebx, ecx
    mov eax, dword ptr [esi + 0x3c]
    shl ebx, 3
    mov eax, dword ptr [ebx + eax + 0x24]
    mov edi, ebp
    mov esi, dword ptr [eax + edx*8 + 4]
    xor eax, eax
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    jmp loc_00441ff0
loc_00441fe3:
    test ebx, ebx
    jl loc_00441feb
    mov byte ptr [esi + ebx], 0x5c
loc_00441feb:
    mov eax, 0xffffffff
loc_00441ff0:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    call sub_0044ac9b
    mov dword ptr [edx], eax
    test eax, eax
    je loc_0044201d
    call sub_0044aca8
    mov dword ptr [edx + 4], eax
    test eax, eax
    je loc_00442016
    xor eax, eax
    ret
loc_00442016:
    mov eax, dword ptr [edx]
    call sub_0044ad1b
loc_0044201d:
    mov eax, 0xffffffff
    ret
    .byte 0x90
    push edx
    mov edx, eax
    mov eax, dword ptr [eax]
    call sub_0044aca8
    mov dword ptr [edx + 4], eax
    test eax, eax
    setne al
    and eax, 0xff
    dec eax
    pop edx
    ret
    .byte 0x8b,0xc0
    mov eax, dword ptr [eax]
    call sub_0044ad1b
    test eax, eax
    sete al
    and eax, 0xff
    dec eax
    ret
    .byte 0x90
sub_00442054:
    mov dword ptr [d_0045c490], 1
    call dword ptr [d_0045c494]
    ret
    .byte 0x8d,0x40,0x00
sub_00442068:
    mov dword ptr [d_0045c490], 1
    call dword ptr [d_0045c498]
    ret
    .byte 0x8d,0x40,0x00
sub_0044207c:
    call dword ptr [d_0045c49c]
    ret
    .byte 0x90
ptr_00442084:
    # jmp 0x4529cc
    .byte 0xe9
    .long sub_004529cc - . - 4
    .byte 0x8d,0x40,0x00
ptr_0044208c:
    jmp sub_0044ad68
    .byte 0x8d,0x40,0x00
ptr_00442094:
    # jmp 0x452b35
    .byte 0xe9
    .long sub_00452b35 - . - 4
    .byte 0x8d,0x40,0x00
sub_0044209c:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 4
    mov esi, eax
    test byte ptr [eax + 4], 8
    je loc_00442152
    mov eax, dword ptr [esi + 4]
    and eax, 0xf0
    cmp eax, 0x40
    jne loc_00442152
    cmp dword ptr [esi + 0x10], 0
    jbe loc_00442152
    mov eax, dword ptr [esi + 0x1c]
    mov ebx, dword ptr [esi + 0x20]
    add eax, 0x4000
    cmp eax, ebx
    # ja 0x442152
    .byte 0x0f,0x87
    .long loc_00442152 - . - 4
    mov eax, dword ptr [esi]
    mov edx, dword ptr [esi + 0x18]
    xor ebx, ebx
    mov eax, dword ptr [eax + 4]
    call sub_0044419a
    test eax, eax
    jne loc_00442152
    mov eax, dword ptr [esi]
    mov edx, esp
    mov eax, dword ptr [eax + 4]
    call sub_0044215c
    test eax, eax
    jne loc_00442152
    mov dl, byte ptr [esp + 1]
    test dl, 0x80
    je loc_0044212c
    mov dh, dl
    and dh, 0x7f
    xor ebx, ebx
    mov byte ptr [esp + 1], dh
    mov bx, word ptr [esp]
    mov ecx, dword ptr [esi]
    mov edx, 1
    mov eax, dword ptr [esi + 0x1c]
    mov ecx, dword ptr [ecx + 4]
    call sub_00451b5f
    jmp loc_0044213f
loc_0044212c:
    mov eax, dword ptr [esi]
    xor ebx, ebx
    mov edx, dword ptr [esi + 0x1c]
    mov bx, word ptr [esp]
    mov eax, dword ptr [eax + 4]
    call sub_00446880
loc_0044213f:
    mov eax, dword ptr [esi + 0x1c]
    mov dword ptr [esi + 0x20], eax
    mov eax, dword ptr [esi]
    mov eax, dword ptr [eax + 4]
    call sub_0044428e
    mov dword ptr [esi + 0x18], eax
loc_00442152:
    add esp, 4
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0044215c:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    call sub_0045266a
    mov edx, eax
    cmp eax, -1
    je loc_0044218e
    mov eax, ebx
    call sub_0045266a
    cmp eax, -1
    je loc_0044218e
    mov ebx, edx
    and eax, 0xff
    shl ebx, 8
    or ebx, eax
    xor eax, eax
    mov word ptr [ecx], bx
    pop ecx
    pop ebx
    ret
loc_0044218e:
    mov eax, 0xffffffff
    pop ecx
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_004421a0:
    push esi
    push edi
    push ebp
    sub esp, 0x20
    mov edi, eax
    mov esi, ebx
    mov ebp, ecx
    mov ebx, dword ptr [esp + 0x34]
    xor ebx, ebp
    mov dword ptr [esp + 8], ebx
    mov ebx, dword ptr [esp + 0x34]
    xor ebx, dword ptr [esp + 8]
    mov dword ptr [esp + 0xc], ebx
    mov ebx, dword ptr [esp + 8]
    xor ebx, dword ptr [esp + 0xc]
    mov dword ptr [esp], ebx
    mov ebx, dword ptr [esp + 0x30]
    mov ecx, eax
    cmp esi, ebx
    jne loc_00442219
    cmp ebp, dword ptr [esp + 0x34]
    jle loc_004421e8
    mov ebx, dword ptr [esp + 0xc]
    mov ebp, dword ptr [esp]
    mov dword ptr [esp + 0x34], ebx
loc_004421e8:
    imul ebp, edx
    mov ecx, dword ptr [esp + 0x34]
    imul ecx, edx
    add esi, ebp
    add edi, esi
    add ecx, dword ptr [esp + 0x30]
    add eax, ecx
    cmp edi, eax
    ja loc_00442378
    mov bl, byte ptr [esp + 0x38]
loc_00442208:
    mov byte ptr [eax], bl
    sub eax, edx
    mov byte ptr [edi], bl
    add edi, edx
    cmp edi, eax
    jbe loc_00442208
    jmp loc_00442378
loc_00442219:
    jle loc_00442230
    xor esi, ebx
    xor ebx, esi
    mov dword ptr [esp + 0x30], ebx
    xor esi, ebx
    mov ebx, dword ptr [esp + 0xc]
    mov ebp, dword ptr [esp]
    mov dword ptr [esp + 0x34], ebx
loc_00442230:
    mov ebx, ebp
    imul ebx, edx
    add ebx, esi
    add edi, ebx
    mov ebx, dword ptr [esp + 0x34]
    imul ebx, edx
    add ebx, dword ptr [esp + 0x30]
    add eax, ebx
    cmp ebp, dword ptr [esp + 0x34]
    jne loc_00442284
    mov ecx, eax
    mov eax, dword ptr [esp + 0x38]
    sub ecx, edi
    mov dl, al
    xchg ah, al
    mov al, dl
    mov edx, eax
    shl eax, 0x10
    or eax, edx
    mov ebx, ecx
    and ebx, 3
    shr ecx, 2
    test ecx, ecx
    je loc_0044226f
    rep stosd dword ptr es:[edi], eax
loc_0044226f:
    test ebx, 3
    je loc_0044227b
    mov ecx, ebx
    rep stosb byte ptr es:[edi], al
loc_0044227b:
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    ret 0xc
loc_00442284:
    mov ebx, dword ptr [esp + 0x30]
    sub ebx, esi
    mov dword ptr [esp + 0x10], ebx
    sar ebx, 1
    add ebx, esi
    mov esi, dword ptr [esp + 0x34]
    mov dword ptr [esp + 4], ebx
    cmp ebp, esi
    jle loc_004422b7
    mov ebx, ebp
    sub ebx, esi
    mov dword ptr [esp + 0x14], ebx
    sar ebx, 1
    sub ebp, ebx
    mov esi, edx
    imul edx, ebp
    add edx, dword ptr [esp + 4]
    neg esi
    jmp loc_004422cc
loc_004422b7:
    mov ebx, esi
    sub ebx, ebp
    mov dword ptr [esp + 0x14], ebx
    sar ebx, 1
    add ebp, ebx
    mov esi, edx
    imul edx, ebp
    add edx, dword ptr [esp + 4]
loc_004422cc:
    add ecx, edx
    mov edx, ecx
    mov ebx, dword ptr [esp + 0x10]
    mov ebp, dword ptr [esp + 0x14]
    cmp ebx, ebp
    jle loc_00442329
    sar ebx, 1
    mov dword ptr [esp + 0x1c], ebx
    sub ebp, ebx
    mov ebx, dword ptr [esp + 0x10]
    sar ebx, 2
loc_004422eb:
    mov dword ptr [esp + 0x1c], ebx
    mov bl, byte ptr [esp + 0x38]
    mov byte ptr [edi], bl
    mov byte ptr [eax], bl
    mov byte ptr [ecx], bl
    mov byte ptr [edx], bl
    cmp dword ptr [esp + 0x1c], 0
    # je 0x442378
    .byte 0x0f,0x84
    .long loc_00442378 - . - 4
    test ebp, ebp
    jl loc_00442318
    mov ebx, dword ptr [esp + 0x10]
    add edi, esi
    add ecx, esi
    sub eax, esi
    sub edx, esi
    sub ebp, ebx
loc_00442318:
    mov ebx, dword ptr [esp + 0x14]
    inc edi
    inc ecx
    add ebp, ebx
    mov ebx, dword ptr [esp + 0x1c]
    dec eax
    dec ebx
    dec edx
    jmp loc_004422eb
loc_00442329:
    mov ebx, ebp
    sar ebx, 1
    mov ebp, dword ptr [esp + 0x10]
    mov dword ptr [esp + 0x18], ebx
    sub ebp, ebx
    mov ebx, dword ptr [esp + 0x14]
    sar ebx, 2
loc_0044233e:
    mov dword ptr [esp + 0x18], ebx
    mov bl, byte ptr [esp + 0x38]
    mov byte ptr [edi], bl
    mov byte ptr [eax], bl
    mov byte ptr [ecx], bl
    mov byte ptr [edx], bl
    cmp dword ptr [esp + 0x18], 0
    je loc_00442378
    test ebp, ebp
    jl loc_00442363
    mov ebx, dword ptr [esp + 0x14]
    inc edi
    inc ecx
    dec eax
    dec edx
    sub ebp, ebx
loc_00442363:
    mov ebx, dword ptr [esp + 0x10]
    add edi, esi
    add ecx, esi
    add ebp, ebx
    mov ebx, dword ptr [esp + 0x18]
    sub eax, esi
    dec ebx
    sub edx, esi
    jmp loc_0044233e
loc_00442378:
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    ret 0xc
    .byte 0x8d,0x40,0x00
sub_00442384:
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, eax
    mov edi, edx
    mov dword ptr [esp], ebx
    mov ebp, ecx
    mov edx, dword ptr [esp + 0x1c]
    push edx
    push ecx
    mov ebx, dword ptr [esp + 0x1c]
    push ebx
    mov edx, edi
    mov ebx, dword ptr [esp + 0xc]
    call sub_004421a0
    mov ecx, dword ptr [esp + 0x1c]
    push ecx
    mov eax, dword ptr [esp + 0x1c]
    mov edx, dword ptr [esp + 0x18]
    push eax
    mov ebx, dword ptr [esp + 8]
    mov ecx, eax
    push edx
    mov eax, esi
    mov edx, edi
    call sub_004421a0
    mov ebx, dword ptr [esp + 0x1c]
    push ebx
    mov ecx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [esp + 4]
    push ecx
    mov edx, edi
    mov ebx, eax
    push eax
    mov ecx, ebp
    mov eax, esi
    call sub_004421a0
    mov edx, dword ptr [esp + 0x1c]
    push edx
    mov ebx, dword ptr [esp + 0x1c]
    mov ecx, dword ptr [esp + 0x18]
    push ebx
    mov eax, esi
    mov edx, edi
    push ecx
    mov ebx, dword ptr [esp + 0x20]
    mov ecx, ebp
    call sub_004421a0
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret 0xc
    .byte 0x8b,0xc0
sub_0044240c:
    push esi
    push edi
    push ebp
    sub esp, 4
    mov edi, eax
    mov esi, edx
    mov dword ptr [esp], ebx
    mov ebp, ecx
    mov edx, dword ptr [esp + 0x1c]
    push edx
    push ecx
    mov ebx, dword ptr [esp + 0x1c]
    push ebx
    mov edx, esi
    mov ebx, dword ptr [esp + 0xc]
    call sub_004421a0
    mov ecx, dword ptr [esp + 0x20]
    push ecx
    mov eax, dword ptr [esp + 0x1c]
    mov edx, dword ptr [esp + 0x18]
    push eax
    mov ebx, dword ptr [esp + 8]
    mov ecx, eax
    push edx
    mov eax, edi
    mov edx, esi
    call sub_004421a0
    mov ebx, dword ptr [esp + 0x1c]
    push ebx
    mov ecx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [esp + 4]
    push ecx
    mov edx, esi
    mov ebx, eax
    push eax
    mov ecx, ebp
    mov eax, edi
    call sub_004421a0
    mov edx, dword ptr [esp + 0x20]
    push edx
    mov ebx, dword ptr [esp + 0x1c]
    mov ecx, dword ptr [esp + 0x18]
    push ebx
    mov eax, edi
    mov edx, esi
    push ecx
    mov ebx, dword ptr [esp + 0x20]
    mov ecx, ebp
    call sub_004421a0
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret 0x10
    .byte 0x8b,0xc0
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov edi, dword ptr [esp + 0x20]
    mov esi, eax
    mov dword ptr [esp + 0xc], edx
    mov dword ptr [esp + 4], ebx
    mov dword ptr [esp + 8], ecx
    lea ebp, [ecx + edi]
    imul ebp, dword ptr [esp + 0xc]
    add ebp, dword ptr [esp + 4]
    mov ecx, esi
    add ecx, ebp
    mov dword ptr [esp], ecx
    mov ebp, dword ptr [esp]
    mov cl, byte ptr [esp + 0x24]
    mov byte ptr [ebp], cl
    mov ebp, dword ptr [esp + 8]
    mov ecx, dword ptr [esp + 0xc]
    sub ebp, edi
    imul ebp, ecx
    mov ebx, 1
    mov ecx, dword ptr [esp + 4]
    mov eax, edi
    add ebp, ecx
    mov cl, byte ptr [esp + 0x24]
    sub ebx, edi
    mov byte ptr [esi + ebp], cl
    mov ebp, dword ptr [esp]
    xor edx, edx
    add ebx, ebx
    mov byte ptr [ebp], cl
    test edi, edi
    jl loc_004425c6
loc_004424fe:
    lea edi, [ebx*2]
    test ebx, ebx
    jge loc_00442522
    lea ebp, [eax*2]
    add edi, ebp
    dec edi
    test edi, edi
    jg loc_0044255e
    inc edx
    lea edi, [edx*2]
    inc edi
    jmp loc_00442573
loc_00442522:
    jle loc_0044255e
    lea ebp, [edx*2]
    sub edi, ebp
    dec edi
    test edi, edi
    jle loc_00442545
    dec eax
    mov ecx, 1
    lea edi, [eax*2]
    sub ecx, edi
    add ebx, ecx
    jmp loc_00442575
loc_00442545:
    inc edx
    dec eax
    lea ebp, [edx*2]
    lea edi, [eax*2]
    sub ebp, edi
    add ebp, 2
    add ebx, ebp
    jmp loc_00442575
loc_0044255e:
    inc edx
    dec eax
    lea edi, [edx*2]
    lea ebp, [eax*2]
    sub edi, ebp
    add edi, 2
loc_00442573:
    add ebx, edi
loc_00442575:
    mov edi, dword ptr [esp + 8]
    mov ebp, dword ptr [esp + 0xc]
    add edi, eax
    imul ebp, edi
    mov dword ptr [esp], ebp
    mov ebp, dword ptr [esp + 4]
    mov edi, dword ptr [esp]
    add ebp, edx
    add edi, ebp
    mov cl, byte ptr [esp + 0x24]
    mov byte ptr [edi + esi], cl
    mov edi, dword ptr [esp + 8]
    mov ecx, dword ptr [esp + 0xc]
    sub edi, eax
    imul edi, ecx
    add ebp, edi
    mov cl, byte ptr [esp + 0x24]
    mov byte ptr [esi + ebp], cl
    mov ebp, dword ptr [esp + 4]
    sub ebp, edx
    add edi, ebp
    mov byte ptr [edi + esi], cl
    add ebp, dword ptr [esp]
    mov byte ptr [esi + ebp], cl
    test eax, eax
    jge loc_004424fe
loc_004425c6:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    ret 8
    .byte 0x90
    push esi
    push edi
    push ebp
    sub esp, 0x44
    mov dword ptr [esp], eax
    mov dword ptr [esp + 0x20], edx
    mov dword ptr [esp + 0xc], ebx
    mov edx, dword ptr [esp + 0x5c]
    shl edx, 0x10
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, dword ptr [esp + 0x58]
    mov esi, dword ptr [esp + 0x20]
    shl edx, 0x10
    mov dword ptr [esp + 0x10], eax
    mov eax, edx
    sar edx, 0x1f
    idiv esi
    xor edi, edi
    mov dword ptr [esp + 0x1c], edi
    mov dword ptr [esp + 0x24], eax
    test ebx, ebx
    jle loc_00442736
    mov dword ptr [esp + 4], ecx
    imul ecx, edi
    mov eax, dword ptr [esp + 0x10]
    mov dword ptr [esp + 8], eax
    mov ebp, eax
    imul eax, edi
    add eax, ebp
    mov dword ptr [esp + 0x14], ecx
    mov dword ptr [esp + 0x18], eax
loc_00442635:
    mov eax, dword ptr [esp + 0x1c]
    imul eax, dword ptr [esp + 0x10]
    sar eax, 0x10
    mov dword ptr [esp + 0x30], eax
    mov eax, dword ptr [esp + 0x18]
    mov ecx, dword ptr [esp + 0x14]
    sar eax, 0x10
    mov edi, dword ptr [esp + 0x20]
    mov dword ptr [esp + 0x40], eax
    mov eax, dword ptr [esp + 0x24]
    xor ebx, ebx
    mov dword ptr [esp + 0x28], eax
    mov eax, dword ptr [esp]
    mov dword ptr [esp + 0x38], ebx
    add eax, ecx
    mov dword ptr [esp + 0x34], ebx
    mov dword ptr [esp + 0x2c], eax
    test edi, edi
    jle loc_00442705
loc_0044267b:
    mov ebp, dword ptr [esp + 0x38]
    mov ebx, dword ptr [esp + 0x28]
    mov ecx, dword ptr [esp + 0x2c]
    mov esi, dword ptr [esp + 0x30]
    mov edi, dword ptr [esp + 0x40]
    shr ebp, 0x10
    shr ebx, 0x10
    mov cl, byte ptr [ecx]
    cmp esi, edi
    jge loc_004426cf
    mov eax, dword ptr [esp + 0x60]
    mov edi, esi
    imul edi, eax
    mov edx, dword ptr [esp + 0x54]
    mov dword ptr [esp + 0x3c], eax
    add edi, edx
loc_004426ae:
    mov eax, ebp
    lea edx, [edi + ebp]
    cmp ebp, ebx
    jge loc_004426c0
loc_004426b7:
    inc edx
    inc eax
    mov byte ptr [edx - 1], cl
    cmp eax, ebx
    jl loc_004426b7
loc_004426c0:
    mov eax, dword ptr [esp + 0x3c]
    mov edx, dword ptr [esp + 0x40]
    inc esi
    add edi, eax
    cmp esi, edx
    jl loc_004426ae
loc_004426cf:
    mov eax, dword ptr [esp + 0x24]
    mov ebp, dword ptr [esp + 0x38]
    mov edx, dword ptr [esp + 0x28]
    mov ebx, dword ptr [esp + 0x2c]
    mov ecx, dword ptr [esp + 0x34]
    mov esi, dword ptr [esp + 0x20]
    inc ebx
    inc ecx
    add ebp, eax
    add edx, eax
    mov dword ptr [esp + 0x38], ebp
    mov dword ptr [esp + 0x28], edx
    mov dword ptr [esp + 0x2c], ebx
    mov dword ptr [esp + 0x34], ecx
    cmp ecx, esi
    jl loc_0044267b
loc_00442705:
    mov eax, dword ptr [esp + 4]
    mov edx, dword ptr [esp + 0x14]
    mov ebx, dword ptr [esp + 0x18]
    mov ecx, dword ptr [esp + 0x1c]
    mov esi, dword ptr [esp + 0xc]
    inc ecx
    add edx, eax
    mov eax, dword ptr [esp + 8]
    mov dword ptr [esp + 0x14], edx
    add ebx, eax
    mov dword ptr [esp + 0x1c], ecx
    mov dword ptr [esp + 0x18], ebx
    cmp ecx, esi
    jl loc_00442635
loc_00442736:
    add esp, 0x44
    pop ebp
    pop edi
    pop esi
    ret 0x10
    .byte 0x90,0x56,0x57,0x55,0x83,0xec,0x44,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x28,0x89
    .byte 0x5c,0x24,0x14,0x8b,0x54,0x24,0x5c,0xc1,0xe2,0x10,0x89,0xd0,0xc1,0xfa,0x1f,0xf7
    .byte 0xfb,0x8b,0x54,0x24,0x58,0x8b,0x74,0x24,0x28,0xc1,0xe2,0x10,0x89,0x44,0x24,0x18
    .byte 0x89,0xd0,0xc1,0xfa,0x1f,0xf7,0xfe,0x31,0xff,0x89,0x7c,0x24,0x24,0x89,0x44,0x24
    .byte 0x2c,0x85,0xdb,0x0f,0x8e,0x20,0x01,0x00,0x00,0x89,0x4c,0x24,0x10,0x6b,0xc1,0x00
    .byte 0x89,0x44,0x24,0x20,0x8b,0x44,0x24,0x18,0x89,0x44,0x24,0x0c,0x89,0xc5,0x0f,0xaf
    .byte 0xc7,0x01,0xe8,0x89,0x44,0x24,0x1c,0x8b,0x44,0x24,0x24,0x0f,0xaf,0x44,0x24,0x18
    .byte 0xc1,0xf8,0x10,0x89,0x04,0x24,0x8b,0x44,0x24,0x1c,0x8b,0x4c,0x24,0x20,0xc1,0xf8
    .byte 0x10,0x8b,0x7c,0x24,0x28,0x89,0x44,0x24,0x40,0x8b,0x44,0x24,0x2c,0x31,0xdb,0x89
    .byte 0x44,0x24,0x30,0x8b,0x44,0x24,0x08,0x89,0x5c,0x24,0x3c,0x01,0xc8,0x89,0x5c,0x24
    .byte 0x34,0x89,0x44,0x24,0x38,0x85,0xff,0x0f,0x8e,0x8b,0x00,0x00,0x00,0x8b,0x6c,0x24
    .byte 0x3c,0x8b,0x5c,0x24,0x30,0x8b,0x4c,0x24,0x38,0xc1,0xed,0x10,0x8a,0x09,0xc1,0xeb
    .byte 0x10,0x84,0xc9,0x74,0x3d,0x8b,0x3c,0x24,0x3b,0x7c,0x24,0x40,0x7d,0x34,0x8b,0x44
    .byte 0x24,0x60,0x89,0xfe,0x0f,0xaf,0xf0,0x8b,0x54,0x24,0x54,0x89,0x44,0x24,0x04,0x01
    .byte 0xd6,0x89,0xea,0x8d,0x04,0x2e,0x39,0xdd,0x7d,0x09,0x40,0x42,0x88,0x48,0xff,0x39
    .byte 0xda,0x7c,0xf7,0x8b,0x44,0x24,0x04,0x8b,0x54,0x24,0x40,0x47,0x01,0xc6,0x39,0xd7
    .byte 0x7c,0xdf,0x8b,0x44,0x24,0x2c,0x8b,0x6c,0x24,0x3c,0x8b,0x54,0x24,0x30,0x8b,0x5c
    .byte 0x24,0x38,0x8b,0x4c,0x24,0x34,0x8b,0x74,0x24,0x28,0x43,0x41,0x01,0xc5,0x01,0xc2
    .byte 0x89,0x6c,0x24,0x3c,0x89,0x54,0x24,0x30,0x89,0x5c,0x24,0x38,0x89,0x4c,0x24,0x34
    .byte 0x39,0xf1,0x0f,0x8c,0x75,0xff,0xff,0xff,0x8b,0x44,0x24,0x10,0x8b,0x54,0x24,0x20
    .byte 0x8b,0x5c,0x24,0x1c,0x8b,0x4c,0x24,0x24,0x8b,0x74,0x24,0x14,0x41,0x01,0xc2,0x8b
    .byte 0x44,0x24,0x0c,0x89,0x54,0x24,0x20,0x01,0xc3,0x89,0x4c,0x24,0x24,0x89,0x5c,0x24
    .byte 0x1c,0x39,0xf1,0x0f,0x8c,0xfe,0xfe,0xff,0xff,0x83,0xc4,0x44,0x5d,0x5f,0x5e,0xc2
    .byte 0x10,0x00,0x8d,0x40,0x00
sub_004428b4:
    push ebx
    push esi
    push edi
    push ebp
    mov edx, dword ptr [esp + 0x1c]
    push edx
    mov ebx, dword ptr [esp + 0x1c]
    push ebx
    mov ecx, dword ptr [esp + 0x28]
    push ecx
    mov esi, dword ptr [esp + 0x20]
    push esi
    mov edi, dword ptr [esp + 0x38]
    push edi
    mov ebp, dword ptr [esp + 0x38]
    push ebp
    call sub_0044adb0
    add esp, 0x18
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret
    .byte 0x90
sub_004428e4:
    push ebx
    push esi
    push edi
    push ebp
    mov edx, dword ptr [esp + 0x1c]
    push edx
    mov ebx, dword ptr [esp + 0x1c]
    push ebx
    mov ecx, dword ptr [esp + 0x28]
    push ecx
    mov esi, dword ptr [esp + 0x20]
    push esi
    mov edi, dword ptr [esp + 0x38]
    push edi
    mov ebp, dword ptr [esp + 0x38]
    push ebp
    call sub_0044aed5
    add esp, 0x18
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret
    .byte 0x90
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov edi, edx
    mov dword ptr [esp + 4], ebx
    mov ebx, dword ptr [esp + 0x20]
    mov edx, dword ptr [esp + 0x28]
    sub ecx, edi
    mov dword ptr [esp + 8], ecx
    mov ecx, dword ptr [esp + 0x2c]
    sub ecx, edi
    mov dword ptr [esp + 0xc], ecx
    mov ecx, dword ptr [esp + 0x24]
    sub ecx, edi
    mov dword ptr [esp], ecx
    mov ecx, dword ptr [esp + 4]
    xor ebp, ebp
    test ecx, ecx
    jbe loc_0044297c
loc_0044294b:
    xor esi, esi
    test edi, edi
    jbe loc_00442962
loc_00442951:
    cmp byte ptr [ebx], 0
    je loc_0044295a
    mov cl, byte ptr [eax]
    mov byte ptr [edx], cl
loc_0044295a:
    inc eax
    inc ebx
    inc esi
    inc edx
    cmp esi, edi
    jb loc_00442951
loc_00442962:
    mov esi, dword ptr [esp + 8]
    mov ecx, dword ptr [esp]
    inc ebp
    add eax, esi
    add ebx, ecx
    mov esi, dword ptr [esp + 0xc]
    mov ecx, dword ptr [esp + 4]
    add edx, esi
    cmp ebp, ecx
    jb loc_0044294b
loc_0044297c:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    ret 0x10
    .byte 0x8d,0x40,0x00
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov edi, edx
    mov dword ptr [esp + 4], ebx
    mov ebx, dword ptr [esp + 0x20]
    mov edx, dword ptr [esp + 0x28]
    sub ecx, edi
    mov dword ptr [esp + 8], ecx
    mov ecx, dword ptr [esp + 0x2c]
    sub ecx, edi
    mov dword ptr [esp + 0xc], ecx
    mov ecx, dword ptr [esp + 0x24]
    sub ecx, edi
    mov dword ptr [esp], ecx
    mov ecx, dword ptr [esp + 4]
    xor ebp, ebp
    test ecx, ecx
    jbe loc_004429f4
loc_004429bf:
    xor esi, esi
    test edi, edi
    jbe loc_004429da
loc_004429c5:
    cmp byte ptr [ebx], 0
    je loc_004429d2
    mov ch, byte ptr [eax]
    test ch, ch
    je loc_004429d2
    mov byte ptr [edx], ch
loc_004429d2:
    inc eax
    inc ebx
    inc esi
    inc edx
    cmp esi, edi
    jb loc_004429c5
loc_004429da:
    mov esi, dword ptr [esp + 8]
    mov ecx, dword ptr [esp]
    inc ebp
    add eax, esi
    add ebx, ecx
    mov esi, dword ptr [esp + 0xc]
    mov ecx, dword ptr [esp + 4]
    add edx, esi
    cmp ebp, ecx
    jb loc_004429bf
loc_004429f4:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    ret 0x10
    .byte 0x8d,0x40,0x00
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov esi, edx
    mov ebp, ebx
    mov edx, dword ptr [esp + 0x1c]
    xor edi, edi
    test ebx, ebx
    jbe loc_00442a52
    mov ebx, dword ptr [esp + 0x20]
    sub ebx, esi
    mov dword ptr [esp], ebx
    mov ebx, esi
    inc ecx
    dec ebx
    mov dword ptr [esp + 4], ecx
    mov dword ptr [esp + 8], ebx
loc_00442a29:
    add eax, dword ptr [esp + 8]
    xor ebx, ebx
    test esi, esi
    jbe loc_00442a42
loc_00442a33:
    mov cl, byte ptr [eax]
    dec eax
    test cl, cl
    je loc_00442a3c
    mov byte ptr [edx], cl
loc_00442a3c:
    inc ebx
    inc edx
    cmp ebx, esi
    jb loc_00442a33
loc_00442a42:
    mov ebx, dword ptr [esp + 4]
    mov ecx, dword ptr [esp]
    inc edi
    add eax, ebx
    add edx, ecx
    cmp edi, ebp
    jb loc_00442a29
loc_00442a52:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    ret 8
    .byte 0x90
sub_00442a5c:
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov esi, eax
    mov dword ptr [esp], edx
    mov dword ptr [esp + 8], ebx
    mov dword ptr [esp + 4], ecx
    xor ebp, ebp
    test ebx, ebx
    jbe loc_00442ab4
loc_00442a75:
    mov ecx, dword ptr [esp]
    mov eax, dword ptr [esp + 0x1c]
    mov edi, esi
    mov dl, al
    xchg ah, al
    mov al, dl
    mov edx, eax
    shl eax, 0x10
    or eax, edx
    mov ebx, ecx
    and ebx, 3
    shr ecx, 2
    test ecx, ecx
    je loc_00442a99
    rep stosd dword ptr es:[edi], eax
loc_00442a99:
    test ebx, 3
    je loc_00442aa5
    mov ecx, ebx
    rep stosb byte ptr es:[edi], al
loc_00442aa5:
    inc ebp
    mov ebx, dword ptr [esp + 4]
    mov ecx, dword ptr [esp + 8]
    add esi, ebx
    cmp ebp, ecx
    jb loc_00442a75
loc_00442ab4:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    ret 4
    .byte 0x8d,0x40,0x00
sub_00442ac0:
    push esi
    push edi
    push ebp
    sub esp, 0x28
    mov ebp, dword ptr [esp + 0x3c]
    mov dword ptr [esp + 0x10], eax
    mov dword ptr [esp + 0x18], edx
    mov dword ptr [esp + 8], ebx
    mov dword ptr [esp], ecx
    mov edx, dword ptr [esp + 0x38]
    mov dx, word ptr [edx]
    mov word ptr [esp + 0x20], dx
    mov edx, dword ptr [esp + 0x38]
    add edx, 2
    mov eax, ebp
    mov dword ptr [esp + 0x38], edx
    mov dx, word ptr [edx]
    mov esi, dword ptr [esp + 0x1e]
    mov word ptr [esp + 0x24], dx
    mov edx, ebp
    sar esi, 0x10
    sar edx, 0x1f
    idiv esi
    mov edi, dword ptr [esp + 0x22]
    mov eax, dword ptr [esp + 0x40]
    mov ebp, edx
    mov dword ptr [esp + 4], edx
    mov edx, eax
    sar edi, 0x10
    sar edx, 0x1f
    idiv edi
    imul esi, edx
    mov ecx, dword ptr [esp + 0x38]
    add ecx, 2
    mov dword ptr [esp + 0x38], ecx
    mov dword ptr [esp + 0x40], edx
    lea edx, [ecx + esi]
    xor esi, esi
    mov dword ptr [esp + 0x14], edx
    mov dword ptr [esp + 0xc], esi
    test ebx, ebx
    jle loc_00442c1c
loc_00442b47:
    xor ecx, ecx
    mov esi, dword ptr [esp + 0x18]
    mov dword ptr [esp + 0x1c], ecx
    test esi, esi
    jle loc_00442bc1
loc_00442b55:
    mov edx, dword ptr [esp + 0x1e]
    mov esi, dword ptr [esp + 0x18]
    mov ebx, dword ptr [esp + 0x1c]
    sar edx, 0x10
    sub esi, ebx
    sub edx, ebp
    cmp esi, edx
    jge loc_00442b6e
    mov edx, esi
loc_00442b6e:
    mov esi, dword ptr [esp + 0x14]
    mov edi, dword ptr [esp + 0x10]
    mov ecx, dword ptr [esp + 0x1c]
    add esi, ebp
    add edi, ecx
    mov ecx, edx
    push edi
    mov ebx, ecx
    and ebx, 3
    test ecx, 0xfffffffc
    je loc_00442b93
    shr ecx, 2
    rep movsd dword ptr es:[edi], dword ptr [esi]
loc_00442b93:
    test ebx, 7
    je loc_00442b9f
    mov ecx, ebx
    rep movsb byte ptr es:[edi], byte ptr [esi]
loc_00442b9f:
    pop edi
    mov esi, dword ptr [esp + 0x1e]
    add ebp, edx
    sar esi, 0x10
    cmp ebp, esi
    jne loc_00442baf
    xor ebp, esi
loc_00442baf:
    mov edi, dword ptr [esp + 0x1c]
    add edi, edx
    mov eax, dword ptr [esp + 0x18]
    mov dword ptr [esp + 0x1c], edi
    cmp edi, eax
    jl loc_00442b55
loc_00442bc1:
    mov edx, dword ptr [esp]
    mov ebx, dword ptr [esp + 0x10]
    mov ecx, dword ptr [esp + 0x40]
    mov ebp, dword ptr [esp + 4]
    inc ecx
    add ebx, edx
    mov edx, dword ptr [esp + 0x22]
    mov dword ptr [esp + 0x10], ebx
    sar edx, 0x10
    mov dword ptr [esp + 0x40], ecx
    cmp edx, ecx
    jne loc_00442bf6
    xor eax, eax
    mov edx, dword ptr [esp + 0x38]
    mov dword ptr [esp + 0x40], eax
    mov dword ptr [esp + 0x14], edx
    jmp loc_00442c07
loc_00442bf6:
    mov edx, dword ptr [esp + 0x1e]
    mov edi, dword ptr [esp + 0x14]
    sar edx, 0x10
    add edi, edx
    mov dword ptr [esp + 0x14], edi
loc_00442c07:
    mov eax, dword ptr [esp + 0xc]
    inc eax
    mov ebx, dword ptr [esp + 8]
    mov dword ptr [esp + 0xc], eax
    cmp eax, ebx
    jl loc_00442b47
loc_00442c1c:
    add esp, 0x28
    pop ebp
    pop edi
    pop esi
    ret 0xc
    .byte 0x8d,0x40,0x00
sub_00442c28:
    push esi
    push edi
    sub esp, 4
    mov esi, edx
    mov edi, ebx
    sub ecx, edx
    mov dword ptr [esp], ecx
    xor ecx, ecx
    test ebx, ebx
    jbe loc_00442c66
loc_00442c3c:
    xor ebx, ebx
    test esi, esi
    jbe loc_00442c5c
loc_00442c42:
    mov dl, byte ptr [eax]
    and edx, 0xff
    shl edx, 8
    inc eax
    mov dl, byte ptr [edx + d_00475423]
    inc ebx
    mov byte ptr [eax - 1], dl
    cmp ebx, esi
    jb loc_00442c42
loc_00442c5c:
    mov edx, dword ptr [esp]
    inc ecx
    add eax, edx
    cmp ecx, edi
    jb loc_00442c3c
loc_00442c66:
    add esp, 4
    pop edi
    pop esi
    ret
sub_00442c6c:
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, edx
    mov ebp, ebx
    mov edx, ecx
    mov ecx, dword ptr [esp + 0x14]
    sub edx, esi
    xor edi, edi
    mov dword ptr [esp], edx
    test ebx, ebx
    jbe loc_00442cb5
loc_00442c87:
    xor edx, edx
    test esi, esi
    jbe loc_00442cab
loc_00442c8d:
    xor ebx, ebx
    mov bl, byte ptr [eax]
    cmp ebx, ecx
    jne loc_00442c9d
    mov bl, byte ptr [esp + 0x18]
    mov byte ptr [eax], bl
    jmp loc_00442ca5
loc_00442c9d:
    cmp ebx, dword ptr [esp + 0x18]
    jne loc_00442ca5
    mov byte ptr [eax], cl
loc_00442ca5:
    inc edx
    inc eax
    cmp edx, esi
    jb loc_00442c8d
loc_00442cab:
    mov edx, dword ptr [esp]
    inc edi
    add eax, edx
    cmp edi, ebp
    jb loc_00442c87
loc_00442cb5:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret 8
    .byte 0x8b,0xc0
    push esi
    push edi
    push ebp
    sub esp, 0x14
    mov dword ptr [esp + 0x10], eax
    mov edi, edx
    mov ebp, ebx
    mov esi, ecx
    mov dh, byte ptr [esp + 0x24]
    mov ebx, ecx
    sub ebx, edi
    mov dword ptr [esp + 0xc], ebx
    xor ebx, ebx
    mov dword ptr [esp + 4], ebx
    mov ebx, ebp
    sub ebx, 2
    add eax, ecx
    mov dword ptr [esp], ebx
    test ebx, ebx
    jbe loc_00442d31
loc_00442cf0:
    mov dl, 1
    xor ebx, ebx
    test edi, edi
    jbe loc_00442d1b
loc_00442cf8:
    cmp byte ptr [eax], 0
    je loc_00442d08
    test dl, dl
    je loc_00442d08
    mov byte ptr [eax - 1], dh
    xor dl, dl
    jmp loc_00442d15
loc_00442d08:
    cmp byte ptr [eax], 0
    jne loc_00442d15
    test dl, dl
    jne loc_00442d15
    mov byte ptr [eax], dh
    mov dl, 1
loc_00442d15:
    inc ebx
    inc eax
    cmp ebx, edi
    jb loc_00442cf8
loc_00442d1b:
    mov ecx, dword ptr [esp + 4]
    mov ebx, dword ptr [esp + 0xc]
    inc ecx
    add eax, ebx
    mov dword ptr [esp + 4], ecx
    mov ebx, ecx
    cmp ebx, dword ptr [esp]
    jb loc_00442cf0
loc_00442d31:
    xor eax, eax
    mov dword ptr [esp + 8], eax
    test edi, edi
    jbe loc_00442d81
loc_00442d3b:
    mov eax, dword ptr [esp + 0x10]
    mov ebx, dword ptr [esp + 8]
    mov dl, 1
    add eax, ebx
    xor ebx, ebx
    test ebp, ebp
    jbe loc_00442d74
loc_00442d4d:
    cmp byte ptr [eax], 0
    je loc_00442d60
    test dl, dl
    je loc_00442d60
    mov ecx, eax
    sub ecx, esi
    mov byte ptr [ecx], dh
    xor dl, dl
    jmp loc_00442d6d
loc_00442d60:
    cmp byte ptr [eax], 0
    jne loc_00442d6d
    test dl, dl
    jne loc_00442d6d
    mov byte ptr [eax], dh
    mov dl, 1
loc_00442d6d:
    inc ebx
    add eax, esi
    cmp ebx, ebp
    jb loc_00442d4d
loc_00442d74:
    mov ebx, dword ptr [esp + 8]
    inc ebx
    mov dword ptr [esp + 8], ebx
    cmp edi, ebx
    ja loc_00442d3b
loc_00442d81:
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    ret 4
    .byte 0x00,0x00,0x00,0x00,0x00,0x00
sub_00442d90:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    cmp dword ptr [d_0045c4cc], 0
    jne loc_00442db3
    call sub_0044b040
    mov ecx, 1
    mov dword ptr [d_004a3c0c], eax
    mov dword ptr [d_0045c4cc], ecx
loc_00442db3:
    cmp dword ptr [d_004a3c0c], 0
    je loc_00442dc2
    mov dword ptr [d_0045c4c8], ebx
loc_00442dc2:
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ebx
    push edx
    mov ebx, 8
    mov edx, 0xc8
    mov eax, 0x140
    call sub_00442ecc
    pop edx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push edx
    mov ebx, 8
    mov edx, 0xf0
    mov eax, 0x140
    call sub_00442ecc
    pop edx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push edx
    mov ebx, 8
    mov edx, 0x190
    mov eax, 0x140
    call sub_00442ecc
    pop edx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    mov eax, 0xffffffff
    ret
    .byte 0x8b,0xc0
ptr_00442e24:
    push edx
    mov edx, 0x1e0
    mov eax, 0x280
    call sub_00442f68
    pop edx
    ret
    .byte 0x8b,0xc0
    push ebx
    push edx
    mov ebx, 0x10
    mov edx, 0x1e0
    mov eax, 0x280
    call sub_00442ecc
    pop edx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push edx
    mov edx, 0x190
    mov eax, 0x280
    call sub_00442f68
    pop edx
    ret
    .byte 0x8b,0xc0
    push edx
    mov edx, 0x258
    mov eax, 0x320
    call sub_00442f68
    pop edx
    ret
    .byte 0x8b,0xc0
    push edx
    mov edx, 0x300
    mov eax, 0x400
    call sub_00442f68
    pop edx
    ret
    .byte 0x8b,0xc0
    push edx
    mov edx, 0x400
    mov eax, 0x500
    call sub_00442f68
    pop edx
    ret
    .byte 0x8b,0xc0
    mov eax, edx
    mov edx, ebx
    test ecx, ecx
    jne loc_00442eb3
    mov ebx, 8
    jmp sub_00442ecc
loc_00442eb3:
    mov eax, 0xffffffff
sub_00442eb8:
    ret
    .byte 0x8d,0x40,0x00
    mov dword ptr [d_0045c4c4], eax
    ret
    .byte 0x8b,0xc0
    mov eax, dword ptr [d_0045c4c4]
    ret
    .byte 0x8b,0xc0
sub_00442ecc:
    push ecx
    push esi
    push edi
    push ebp
    mov ecx, eax
    mov esi, edx
    mov edi, ebx
    call sub_00442f78
    cmp eax, -1
    # je 0x442f5e
    .byte 0x0f,0x84
    .long loc_00442f5e - . - 4
    mov edx, esi
    mov eax, ecx
    call sub_00443038
    cmp eax, -1
    je loc_00442f5e
    mov eax, 1
    dec ecx
    xor edx, edx
    dec esi
    mov dword ptr [d_004a3be0], edx
    mov dword ptr [d_004a3be4], edx
    mov dword ptr [d_004a3be8], ecx
    mov dword ptr [d_004a3bec], esi
    call sub_00442d90
    cmp edi, 8
    jne loc_00442f36
    mov ebp, offset ptr_004438f0
    mov dword ptr [d_0049d7f8], edx
    mov dword ptr [d_0049d7fc], ebp
    mov dword ptr [d_004a3c08], ebp
    jmp loc_00442f57
loc_00442f36:
    mov ecx, offset ptr_00443ae4
    mov esi, offset sub_004439dc
    mov edi, offset ptr_00443b50
    mov dword ptr [d_004a3c08], ecx
    mov dword ptr [d_0049d7fc], esi
    mov dword ptr [d_0049d7f8], edi
loc_00442f57:
    xor eax, eax
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_00442f5e:
    mov eax, 0xffffffff
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00442f68:
    push ebx
    mov ebx, 8
    call sub_00442ecc
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_00442f78:
    push ebx
    push ecx
    mov edx, dword ptr [d_0045c4d0]
    test edx, edx
    jne loc_00442fe5
    push edx
    mov ebx, dword ptr [d_0045c4d4]
    push ebx
    push edx
    push edx
    push 1
    call dword ptr cs:[__imp__GetSystemMetrics]
    push eax
    push 0
    call dword ptr cs:[__imp__GetSystemMetrics]
    push eax
    push 0
    push 0
    push 0x90080000
    push offset d_004a3d10
    push offset d_0045ada0
    push 8
    call dword ptr cs:[__imp__CreateWindowExA]
    mov dword ptr [d_0045c4d0], eax
    test eax, eax
    jne loc_00442fcf
    mov eax, 0xffffffff
    pop ecx
    pop ebx
    ret
loc_00442fcf:
    push eax
    call dword ptr cs:[__imp__UpdateWindow]
    mov ecx, dword ptr [d_0045c4d0]
    push ecx
    call dword ptr cs:[__imp__SetFocus]
loc_00442fe5:
    xor eax, eax
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00442fec:
    push ebx
    push edx
    mov edx, eax
    xor ax, ax
    test eax, eax
    je loc_00442ffe
    mov edx, eax
    mov eax, 0x10
loc_00442ffe:
    mov ebx, edx
    and ebx, 0xff00ff00
    je loc_0044300c
    mov edx, ebx
    or al, 8
loc_0044300c:
    mov ebx, edx
    and ebx, 0xf0f0f0f0
    je loc_0044301a
    mov edx, ebx
    or al, 4
loc_0044301a:
    mov ebx, edx
    and ebx, 0xcccccccc
    je loc_00443028
    mov edx, ebx
    or al, 2
loc_00443028:
    test edx, 0xaaaaaaaa
    je loc_00443032
    or al, 1
loc_00443032:
    pop edx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_00443038:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x48c
    mov ebp, eax
    mov edi, edx
    mov esi, ebx
    mov edx, dword ptr [d_0045c4b0]
    test edx, edx
    je loc_0044307b
    call sub_0044372c
    mov ecx, eax
    call sub_0044324c
    mov edx, edi
    mov eax, ebp
    call sub_00443038
    mov edx, eax
    test eax, eax
    jne loc_00443074
    mov eax, ecx
    call sub_00443608
loc_00443074:
    mov eax, edx
    jmp loc_0044323e
loc_0044307b:
    push edx
    push offset d_0045c4b0
    push edx
    call sub_00457dea
    test eax, eax
    jne loc_00443239
    push 0x11
    mov ebx, dword ptr [d_0045c4d0]
    mov eax, dword ptr [d_0045c4b0]
    push ebx
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0x50]
    test eax, eax
    jne loc_00443239
    push esi
    push edi
    mov eax, dword ptr [d_0045c4b0]
    push ebp
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0x54]
    test eax, eax
    jne loc_00443239
    mov ecx, 0x6c
    lea edi, [esp + 0x400]
    mov ebp, 0x200
    mov dl, al
    xchg ah, al
    mov al, dl
    mov edx, eax
    shl eax, 0x10
    or eax, edx
    mov ebx, ecx
    and ebx, 3
    shr ecx, 2
    test ecx, ecx
    je loc_004430ed
    rep stosd dword ptr es:[edi], eax
loc_004430ed:
    test ebx, 3
    je loc_004430f9
    mov ecx, ebx
    rep stosb byte ptr es:[edi], al
loc_004430f9:
    mov ecx, 0x6c
    mov edi, 1
    push 0
    lea edx, [esp + 0x404]
    mov eax, dword ptr [d_0045c4b0]
    mov dword ptr [esp + 0x46c], ebp
    push offset d_0045c4b4
    mov dword ptr [esp + 0x408], ecx
    mov dword ptr [esp + 0x40c], edi
    push edx
    mov ecx, dword ptr [eax]
    push eax
    call dword ptr [ecx + 0x18]
    mov edx, dword ptr [d_0045c4b4]
    mov dword ptr [d_0045c4b8], edx
    test eax, eax
    jne loc_00443239
    xor edx, edx
loc_00443148:
    add edx, 4
    mov byte ptr [esp + edx - 4], al
    mov byte ptr [esp + edx - 3], al
    xor bl, bl
    mov byte ptr [esp + edx - 2], al
    inc eax
    mov byte ptr [esp + edx - 1], bl
    cmp eax, 0x100
    jl loc_00443148
    cmp esi, 8
    je loc_00443206
    mov esi, 0x20
    lea edx, [esp + 0x46c]
    mov eax, dword ptr [d_0045c4b4]
    push edx
    xor ecx, ecx
    mov dword ptr [esp + 0x470], esi
    push eax
    mov dword ptr [d_0045c4bc], ecx
    mov ecx, dword ptr [eax]
    call dword ptr [ecx + 0x54]
    test eax, eax
    jne loc_00443239
    mov eax, dword ptr [esp + 0x47c]
    mov dword ptr [d_004a3bf8], eax
    mov eax, dword ptr [esp + 0x480]
    mov dword ptr [d_004a3bf4], eax
    mov eax, dword ptr [esp + 0x484]
    mov dword ptr [d_004a3bf0], eax
    mov eax, dword ptr [esp + 0x47c]
    call sub_00442fec
    sub eax, 7
    mov dword ptr [d_004a3c00], eax
    mov eax, dword ptr [d_004a3bf4]
    call sub_00442fec
    sub eax, 7
    mov dword ptr [d_004a3c04], eax
    mov eax, dword ptr [d_004a3bf0]
    call sub_00442fec
    sub eax, 7
    mov dword ptr [d_004a3bfc], eax
    xor eax, eax
    add esp, 0x48c
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_00443206:
    push 0
    push offset d_0045c4bc
    lea edx, [esp + 8]
    push edx
    mov eax, dword ptr [d_0045c4b0]
    push 0x44
    mov ecx, dword ptr [eax]
    push eax
    call dword ptr [ecx + 0x14]
    test eax, eax
    jne loc_00443239
    mov ebx, dword ptr [d_0045c4bc]
    mov eax, dword ptr [d_0045c4b4]
    push ebx
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0x7c]
    test eax, eax
    je loc_0044323e
loc_00443239:
    mov eax, 0xffffffff
loc_0044323e:
    add esp, 0x48c
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
sub_0044324c:
    push ebx
    push ecx
    push edx
    push edi
    push ebp
    mov edx, dword ptr [d_0045c4b0]
    test edx, edx
    je loc_004432ab
    mov eax, edx
    push eax
    mov edx, dword ptr [edx]
    call dword ptr [edx + 0x4c]
    mov ebx, dword ptr [d_0045c4b4]
    test ebx, ebx
    je loc_00443281
    push ebx
    mov edx, dword ptr [ebx]
    call dword ptr [edx + 8]
    xor ecx, ecx
    mov dword ptr [d_0045c4b4], ecx
    mov dword ptr [d_0045c4b8], ecx
loc_00443281:
    mov edi, dword ptr [d_0045c4bc]
    test edi, edi
    je loc_00443299
    push edi
    mov edx, dword ptr [edi]
    xor ebp, ebp
    call dword ptr [edx + 8]
    mov dword ptr [d_0045c4bc], ebp
loc_00443299:
    mov eax, dword ptr [d_0045c4b0]
    push eax
    mov edx, dword ptr [eax]
    call dword ptr [edx + 8]
    xor eax, eax
    mov dword ptr [d_0045c4b0], eax
loc_004432ab:
    pop ebp
    pop edi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_004432b4:
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, eax
    mov al, cl
    mov ecx, dword ptr [d_0045c4bc]
    shl dl, 2
    shl al, 2
    shl bl, 2
    test ecx, ecx
    je loc_004432f5
    mov byte ptr [esp + 2], al
    mov byte ptr [esp + 3], 4
    mov eax, esp
    push eax
    push 1
    push esi
    mov byte ptr [esp + 0xc], dl
    mov byte ptr [esp + 0xd], bl
    push 0
    mov edx, dword ptr [ecx]
    push ecx
    call dword ptr [edx + 0x18]
    jmp loc_00443393
loc_004432f5:
    mov edi, dword ptr [d_004a3c00]
    test edi, edi
    jle loc_0044330f
    mov cl, byte ptr [d_004a3c00]
    and edx, 0xff
    shl edx, cl
    jmp loc_0044331b
loc_0044330f:
    mov ecx, edi
    neg ecx
    and edx, 0xff
    sar edx, cl
loc_0044331b:
    mov ecx, edx
    mov edx, dword ptr [d_004a3bf8]
    mov ebp, dword ptr [d_004a3c04]
    and edx, ecx
    test ebp, ebp
    jle loc_0044333f
    mov cl, byte ptr [d_004a3c04]
    and ebx, 0xff
    shl ebx, cl
    jmp loc_0044334b
loc_0044333f:
    mov ecx, ebp
    neg ecx
    and ebx, 0xff
    sar ebx, cl
loc_0044334b:
    mov ecx, ebx
    and ecx, dword ptr [d_004a3bf4]
    or edx, ecx
    mov ecx, dword ptr [d_004a3bfc]
    test ecx, ecx
    jle loc_0044336e
    mov cl, byte ptr [d_004a3bfc]
    and eax, 0xff
    shl eax, cl
    jmp loc_00443377
loc_0044336e:
    neg ecx
    and eax, 0xff
    sar eax, cl
loc_00443377:
    mov ecx, eax
    and ecx, dword ptr [d_004a3bf0]
    or ecx, edx
    mov eax, offset d_004a3be0
    mov word ptr [esi*2 + d_004a39e0], cx
    call sub_0043da90
loc_00443393:
    cmp dword ptr [d_0045c4c4], 0
    je loc_004433a2
    call dword ptr [d_0045c4c4]
loc_004433a2:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x8d,0x40,0x00
sub_004433ac:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x404
    mov edi, edx
    mov esi, ebx
    cmp dword ptr [d_0045c4bc], 0
    je loc_00443413
    test ebx, ebx
    jbe loc_004433fc
    lea ecx, [ebx*4]
    xor edx, edx
loc_004433d0:
    mov bl, byte ptr [eax]
    shl bl, 2
    mov byte ptr [esp + edx], bl
    mov bl, byte ptr [eax + 1]
    shl bl, 2
    mov byte ptr [esp + edx + 1], bl
    mov bl, byte ptr [eax + 2]
    add edx, 4
    shl bl, 2
    mov byte ptr [esp + edx - 2], bl
    mov bl, 4
    add eax, 3
    mov byte ptr [esp + edx - 1], bl
    cmp edx, ecx
    jl loc_004433d0
loc_004433fc:
    mov edx, esp
    push edx
    push esi
    push edi
    mov eax, dword ptr [d_0045c4bc]
    push 0
    mov ebx, dword ptr [eax]
    push eax
    call dword ptr [ebx + 0x18]
    jmp loc_004434d4
loc_00443413:
    lea esi, [ebx + edi]
    add edi, edi
    add esi, esi
    mov edx, edi
    mov dword ptr [esp + 0x400], esi
    cmp edi, esi
    jge loc_004434ca
    mov ebp, dword ptr [d_004a3c00]
loc_00443431:
    movzx edi, byte ptr [eax]
    movzx esi, byte ptr [eax + 1]
    inc eax
    xor ebx, ebx
    shl edi, 2
    shl esi, 2
    mov bl, byte ptr [eax + 1]
    inc eax
    shl ebx, 2
    inc eax
    test ebp, ebp
    jle loc_00443457
    mov cl, byte ptr [d_004a3c00]
    shl edi, cl
    jmp loc_0044345d
loc_00443457:
    mov ecx, ebp
    neg ecx
    shr edi, cl
loc_0044345d:
    mov ecx, edi
    mov edi, dword ptr [d_004a3bf8]
    and edi, ecx
    mov ecx, dword ptr [d_004a3c04]
    test ecx, ecx
    jle loc_0044347b
    mov cl, byte ptr [d_004a3c04]
    shl esi, cl
    jmp loc_0044347f
loc_0044347b:
    neg ecx
    shr esi, cl
loc_0044347f:
    mov ecx, esi
    and ecx, dword ptr [d_004a3bf4]
    mov esi, edi
    mov edi, dword ptr [d_004a3bfc]
    or esi, ecx
    test edi, edi
    jle loc_0044349f
    mov cl, byte ptr [d_004a3bfc]
    shl ebx, cl
    jmp loc_004434a5
loc_0044349f:
    mov ecx, edi
    neg ecx
    shr ebx, cl
loc_004434a5:
    mov ecx, ebx
    mov ebx, dword ptr [d_004a3bf0]
    and ebx, ecx
    add edx, 2
    or ebx, esi
    mov ecx, dword ptr [esp + 0x400]
    mov word ptr [edx + d_004a39de], bx
    cmp edx, ecx
    jl loc_00443431
loc_004434ca:
    mov eax, offset d_004a3be0
    call sub_0043da90
loc_004434d4:
    cmp dword ptr [d_0045c4c4], 0
    je loc_004434e3
    call dword ptr [d_0045c4c4]
loc_004434e3:
    add esp, 0x404
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8b,0xc0
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, edx
    mov edi, ecx
    mov edx, dword ptr [d_0045c4bc]
    test edx, edx
    je loc_0044353f
    mov ebp, esp
    push ebp
    push 1
    push eax
    push 0
    mov ecx, dword ptr [edx]
    push edx
    call dword ptr [ecx + 0x10]
    test eax, eax
    jne loc_004435fb
    mov al, byte ptr [esp]
    sar eax, 2
    mov byte ptr [esi], al
    xor eax, eax
    mov al, byte ptr [esp + 1]
    sar eax, 2
    mov byte ptr [ebx], al
    xor eax, eax
    mov al, byte ptr [esp + 2]
    sar eax, 2
    mov byte ptr [edi], al
    xor eax, eax
    jmp loc_00443600
loc_0044353f:
    mov ecx, dword ptr [d_004a3c00]
    mov ax, word ptr [eax*2 + d_004a39e0]
    test ecx, ecx
    jle loc_00443566
    mov ecx, dword ptr [d_004a3bf8]
    mov dx, ax
    and edx, ecx
    mov cl, byte ptr [d_004a3c00]
    shr edx, cl
    jmp loc_00443575
loc_00443566:
    mov ebp, dword ptr [d_004a3bf8]
    mov dx, ax
    neg ecx
    and edx, ebp
    shl edx, cl
loc_00443575:
    mov ecx, edx
    shr ecx, 2
    mov byte ptr [esi], cl
    mov esi, dword ptr [d_004a3c04]
    test esi, esi
    jle loc_0044359d
    xor edx, edx
    mov ecx, dword ptr [d_004a3bf4]
    mov dx, ax
    and edx, ecx
    mov cl, byte ptr [d_004a3c04]
    shr edx, cl
    jmp loc_004435b0
loc_0044359d:
    mov ebp, dword ptr [d_004a3bf4]
    xor edx, edx
    mov ecx, esi
    mov dx, ax
    neg ecx
    and edx, ebp
    shl edx, cl
loc_004435b0:
    mov ecx, edx
    shr ecx, 2
    mov esi, dword ptr [d_004a3bfc]
    mov byte ptr [ebx], cl
    test esi, esi
    jle loc_004435d8
    mov edx, dword ptr [d_004a3bf0]
    and eax, 0xffff
    mov cl, byte ptr [d_004a3bfc]
    and eax, edx
    shr eax, cl
    jmp loc_004435eb
loc_004435d8:
    mov ebp, dword ptr [d_004a3bf0]
    mov ecx, esi
    and eax, 0xffff
    neg ecx
    and eax, ebp
    shl eax, cl
loc_004435eb:
    mov ecx, eax
    shr ecx, 2
    xor eax, eax
    mov byte ptr [edi], cl
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret
loc_004435fb:
    mov eax, 0xffffffff
loc_00443600:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x90
sub_00443608:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x400
    mov edx, dword ptr [d_0045c4bc]
    test edx, edx
    je loc_0044366f
    xor ecx, ecx
    mov ebx, 4
loc_00443625:
    mov dl, byte ptr [eax]
    shl dl, 2
    mov byte ptr [esp + ecx], dl
    mov dl, byte ptr [eax + 1]
    shl dl, 2
    mov byte ptr [esp + ecx + 1], dl
    mov dl, byte ptr [eax + 2]
    add ecx, 4
    shl dl, 2
    mov byte ptr [esp + ecx - 1], bl
    add eax, 3
    mov byte ptr [esp + ecx - 2], dl
    cmp ecx, 0x400
    jne loc_00443625
    mov edx, esp
    push edx
    push 0x100
    push 0
    mov eax, dword ptr [d_0045c4bc]
    push 0
    mov ebx, dword ptr [eax]
    push eax
    call dword ptr [ebx + 0x18]
    jmp loc_0044370f
loc_0044366f:
    inc eax
    mov ecx, dword ptr [d_004a3c00]
    movzx esi, byte ptr [eax - 1]
    movzx edi, byte ptr [eax + 1]
    xor ebx, ebx
    shl esi, 2
    mov bl, byte ptr [eax]
    inc eax
    shl edi, 2
    shl ebx, 2
    inc eax
    test ecx, ecx
    jle loc_0044369b
    mov cl, byte ptr [d_004a3c00]
    shl esi, cl
    jmp loc_0044369f
loc_0044369b:
    neg ecx
    shr esi, cl
loc_0044369f:
    mov ebp, dword ptr [d_004a3bf8]
    mov ecx, dword ptr [d_004a3c04]
    and esi, ebp
    test ecx, ecx
    jle loc_004436bb
    mov cl, byte ptr [d_004a3c04]
    shl ebx, cl
    jmp loc_004436bf
loc_004436bb:
    neg ecx
    shr ebx, cl
loc_004436bf:
    mov ecx, ebx
    mov ebp, dword ptr [d_004a3bf4]
    mov ebx, esi
    and ecx, ebp
    or ebx, ecx
    mov ecx, dword ptr [d_004a3bfc]
    test ecx, ecx
    jle loc_004436e1
    mov cl, byte ptr [d_004a3bfc]
    shl edi, cl
    jmp loc_004436e5
loc_004436e1:
    neg ecx
    shr edi, cl
loc_004436e5:
    mov ecx, edi
    and ecx, dword ptr [d_004a3bf0]
    add edx, 2
    or ecx, ebx
    mov word ptr [edx + d_004a39de], cx
    cmp edx, 0x200
    jne loc_0044366f
    mov eax, offset d_004a3be0
    call sub_0043da90
loc_0044370f:
    cmp dword ptr [d_0045c4c4], 0
    je loc_0044371e
    call dword ptr [d_0045c4c4]
loc_0044371e:
    add esp, 0x400
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0044372c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x410
    mov edi, dword ptr [d_004a3bf8]
    mov edx, dword ptr [d_0045c4bc]
    test edx, edx
    je loc_004437b2
    mov eax, edx
    mov ebx, dword ptr [edx]
    mov edx, esp
    push edx
    push 0x100
    push 0
    push 0
    push eax
    call dword ptr [ebx + 0x10]
    test eax, eax
    jne loc_004438d2
    mov edi, dword ptr [d_004a3bf8]
    xor edx, edx
    xor ecx, ecx
loc_0044376e:
    xor eax, eax
    mov al, byte ptr [esp + ecx]
    sar eax, 2
    mov byte ptr [edx + d_004a3c10], al
    xor eax, eax
    mov al, byte ptr [esp + ecx + 1]
    sar eax, 2
    mov byte ptr [edx + d_004a3c11], al
    xor eax, eax
    mov al, byte ptr [esp + ecx + 2]
    add edx, 3
    sar eax, 2
    add ecx, 4
    mov byte ptr [edx + d_004a3c0f], al
    cmp ecx, 0x400
    jne loc_0044376e
    mov ecx, offset d_004a3c10
    jmp loc_004438da
loc_004437b2:
    mov eax, dword ptr [d_004a3c00]
    add eax, 2
    mov dword ptr [esp + 0x404], eax
    mov eax, dword ptr [d_004a3c04]
    add eax, 2
    mov dword ptr [esp + 0x408], eax
    mov eax, dword ptr [d_004a3bfc]
    add eax, 2
    xor ebx, ebx
    mov dword ptr [esp + 0x40c], eax
    mov eax, offset d_004a3c10
    mov ebp, dword ptr [esp + 0x40c]
loc_004437ed:
    mov ecx, dword ptr [esp + 0x404]
    mov dx, word ptr [ebx + d_004a39e0]
    test ecx, ecx
    jle loc_00443813
    xor ecx, ecx
    mov cx, dx
    mov esi, ecx
    mov cl, byte ptr [esp + 0x404]
    and esi, edi
    shr esi, cl
    jmp loc_00443827
loc_00443813:
    xor ecx, ecx
    mov cx, dx
    mov esi, ecx
    mov ecx, dword ptr [esp + 0x404]
    and esi, edi
    neg ecx
    shl esi, cl
loc_00443827:
    mov ecx, esi
    shr ecx, 2
    mov dword ptr [esp + 0x400], ecx
    inc eax
    mov cl, byte ptr [esp + 0x400]
    mov esi, dword ptr [esp + 0x408]
    mov byte ptr [eax - 1], cl
    test esi, esi
    jle loc_00443861
    xor ecx, ecx
    mov esi, dword ptr [d_004a3bf4]
    mov cx, dx
    and esi, ecx
    mov cl, byte ptr [esp + 0x408]
    shr esi, cl
    jmp loc_00443879
loc_00443861:
    xor ecx, ecx
    mov esi, dword ptr [d_004a3bf4]
    mov cx, dx
    and esi, ecx
    mov ecx, dword ptr [esp + 0x408]
    neg ecx
    shl esi, cl
loc_00443879:
    mov ecx, esi
    inc eax
    shr ecx, 2
    mov byte ptr [eax - 1], cl
    test ebp, ebp
    jle loc_0044389f
    mov esi, dword ptr [d_004a3bf0]
    and edx, 0xffff
    mov cl, byte ptr [esp + 0x40c]
    and edx, esi
    shr edx, cl
    jmp loc_004438b3
loc_0044389f:
    mov ecx, dword ptr [d_004a3bf0]
    and edx, 0xffff
    and edx, ecx
    mov ecx, ebp
    neg ecx
    shl edx, cl
loc_004438b3:
    mov ecx, edx
    inc eax
    shr ecx, 2
    add ebx, 2
    mov byte ptr [eax - 1], cl
    cmp ebx, 0x200
    jne loc_004437ed
    mov ecx, offset d_004a3c10
    jmp loc_004438da
loc_004438d2:
    mov edi, dword ptr [d_004a3bf8]
    xor ecx, ecx
loc_004438da:
    mov eax, ecx
    mov dword ptr [d_004a3bf8], edi
    add esp, 0x410
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
ptr_004438f0:
    push ebx
    push esi
    push edi
    push ebp
    sub esp, 0x6c
    mov esi, dword ptr [esp + 0x80]
    cmp dword ptr [d_0045c4e0], 0
    je loc_004439b2
    xor edi, edi
loc_0044390d:
    push edi
    push 1
    lea edx, [esp + 8]
    mov ebx, 0x6c
    push edx
    mov eax, dword ptr [d_0045c4b4]
    mov dword ptr [esp + 0xc], ebx
    push edi
    mov ebx, dword ptr [eax]
    push eax
    call dword ptr [ebx + 0x64]
    test eax, eax
    jne loc_00443998
    mov eax, dword ptr [esp + 0xa0]
    mov ecx, dword ptr [esp + 0x10]
    imul eax, ecx
    mov edi, dword ptr [esp + 0x24]
    mov edx, dword ptr [esp + 0x9c]
    add eax, edi
    mov ebp, dword ptr [esp + 0x84]
    add edx, eax
    mov eax, dword ptr [esp + 0x90]
    imul eax, ebp
    push ecx
    push edx
    mov ebx, dword ptr [esp + 0x94]
    push ebp
    mov ebp, dword ptr [esp + 0xa4]
    add eax, ebx
    push ebp
    add esi, eax
    mov eax, dword ptr [esp + 0xa4]
    push eax
    push esi
    call sub_004428b4
    add esp, 0x18
    mov ebx, dword ptr [esp + 0x24]
    mov eax, dword ptr [d_0045c4b4]
    push ebx
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0x80]
    jmp loc_004439b2
loc_00443998:
    cmp eax, 0x887601c2
    jne loc_004439b2
    mov eax, dword ptr [d_0045c4b8]
    push eax
    mov edx, dword ptr [eax]
    call dword ptr [edx + 0x6c]
    test eax, eax
    je loc_0044390d
loc_004439b2:
    add esp, 0x6c
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ecx
    test ebx, ebx
    je loc_004439d8
loc_004439c1:
    xor ecx, ecx
    mov cl, byte ptr [edx]
    add eax, 2
    mov cx, word ptr [ecx*2 + d_004a39e0]
    inc edx
    mov word ptr [eax - 2], cx
    dec ebx
    jne loc_004439c1
loc_004439d8:
    pop ecx
    ret
    .byte 0x8b,0xc0
sub_004439dc:
    push ebx
    push esi
    push edi
    push ebp
    sub esp, 0x6c
    mov esi, dword ptr [esp + 0x80]
    cmp dword ptr [d_0045c4e0], 0
    je loc_00443ada
    xor edi, edi
loc_004439f9:
    push edi
    push 1
    lea edx, [esp + 8]
    mov ebx, 0x6c
    push edx
    mov eax, dword ptr [d_0045c4b4]
    mov dword ptr [esp + 0xc], ebx
    push edi
    mov ebx, dword ptr [eax]
    push eax
    call dword ptr [ebx + 0x64]
    test eax, eax
    jbe loc_00443a2a
    cmp eax, 0x887601c2
    je loc_00443ac7
    jmp loc_00443ada
loc_00443a2a:
    mov eax, dword ptr [esp + 0xa0]
    imul eax, dword ptr [esp + 0x10]
    add eax, dword ptr [esp + 0x24]
    mov edi, dword ptr [esp + 0x9c]
    add edi, edi
    mov ebp, dword ptr [esp + 0x84]
    add edi, eax
    mov eax, dword ptr [esp + 0x90]
    imul eax, ebp
    add eax, dword ptr [esp + 0x8c]
    add esi, eax
    xor ebp, ebp
loc_00443a61:
    mov ebx, dword ptr [esp + 0x98]
    dec ebx
    mov dword ptr [esp + 0x98], ebx
    cmp ebx, -1
    je loc_00443aac
    mov eax, dword ptr [esp + 0x94]
    mov ebx, edi
    mov edx, esi
    cmp ebp, eax
    je loc_00443a9b
loc_00443a84:
    xor ecx, ecx
    mov cl, byte ptr [edx]
    add ebx, 2
    mov cx, word ptr [ecx*2 + d_004a39e0]
    inc edx
    mov word ptr [ebx - 2], cx
    dec eax
    jne loc_00443a84
loc_00443a9b:
    mov eax, dword ptr [esp + 0x84]
    mov edx, dword ptr [esp + 0x10]
    add esi, eax
    add edi, edx
    jmp loc_00443a61
loc_00443aac:
    mov esi, dword ptr [esp + 0x24]
    mov eax, dword ptr [d_0045c4b4]
    push esi
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0x80]
    add esp, 0x6c
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret
loc_00443ac7:
    mov eax, dword ptr [d_0045c4b8]
    push eax
    mov edx, dword ptr [eax]
    call dword ptr [edx + 0x6c]
    test eax, eax
    je loc_004439f9
loc_00443ada:
    add esp, 0x6c
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_00443ae4:
    push ebx
    push esi
    push edi
    push ebp
    mov edx, dword ptr [esp + 0x34]
    push edx
    mov ebx, dword ptr [esp + 0x34]
    push ebx
    mov ecx, dword ptr [esp + 0x34]
    push ecx
    mov esi, dword ptr [esp + 0x34]
    push esi
    mov edi, dword ptr [esp + 0x34]
    push edi
    mov ebp, dword ptr [esp + 0x34]
    push ebp
    mov eax, dword ptr [esp + 0x34]
    push eax
    mov edx, dword ptr [esp + 0x34]
    push edx
    mov ebx, dword ptr [esp + 0x34]
    push ebx
    call sub_004439dc
    add esp, 0x24
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret
    .byte 0x8b,0xc0
    sub esp, 4
    mov byte ptr [esp], cl
    test ebx, ebx
    je loc_00443b4b
loc_00443b2e:
    mov cl, byte ptr [edx]
    cmp cl, byte ptr [esp]
    je loc_00443b44
    xor ecx, ecx
    mov cl, byte ptr [edx]
    mov cx, word ptr [ecx*2 + d_004a39e0]
    mov word ptr [eax], cx
loc_00443b44:
    inc edx
    add eax, 2
    dec ebx
    jne loc_00443b2e
loc_00443b4b:
    add esp, 4
    ret
    .byte 0x90
ptr_00443b50:
    push ebx
    push esi
    push edi
    push ebp
    sub esp, 0x70
    mov esi, dword ptr [esp + 0x84]
    cmp dword ptr [d_0045c4e0], 0
    je loc_00443c60
    xor edi, edi
loc_00443b6d:
    push edi
    push 1
    lea edx, [esp + 8]
    mov ebx, 0x6c
    push edx
    mov eax, dword ptr [d_0045c4b4]
    mov dword ptr [esp + 0xc], ebx
    push edi
    mov ebx, dword ptr [eax]
    push eax
    call dword ptr [ebx + 0x64]
    test eax, eax
    jbe loc_00443b9e
    cmp eax, 0x887601c2
    je loc_00443c4d
    jmp loc_00443c60
loc_00443b9e:
    mov eax, dword ptr [esp + 0xa4]
    imul eax, dword ptr [esp + 0x10]
    add eax, dword ptr [esp + 0x24]
    mov edi, dword ptr [esp + 0xa0]
    add edi, edi
    mov ebp, dword ptr [esp + 0x88]
    add edi, eax
    mov eax, dword ptr [esp + 0x94]
    imul eax, ebp
    add eax, dword ptr [esp + 0x90]
    add esi, eax
    xor ebp, ebp
loc_00443bd5:
    mov ebx, dword ptr [esp + 0x9c]
    dec ebx
    mov dword ptr [esp + 0x9c], ebx
    cmp ebx, -1
    je loc_00443c32
    mov ebx, dword ptr [esp + 0x98]
    mov cl, byte ptr [esp + 0xa8]
    mov edx, edi
    mov eax, esi
    mov byte ptr [esp + 0x6c], cl
    cmp ebp, ebx
    je loc_00443c21
loc_00443c03:
    mov cl, byte ptr [eax]
    cmp cl, byte ptr [esp + 0x6c]
    je loc_00443c1a
    xor ecx, ecx
    mov cl, byte ptr [eax]
    mov cx, word ptr [ecx*2 + d_004a39e0]
    mov word ptr [edx], cx
loc_00443c1a:
    inc eax
    add edx, 2
    dec ebx
    jne loc_00443c03
loc_00443c21:
    mov eax, dword ptr [esp + 0x88]
    mov edx, dword ptr [esp + 0x10]
    add esi, eax
    add edi, edx
    jmp loc_00443bd5
loc_00443c32:
    mov esi, dword ptr [esp + 0x24]
    mov eax, dword ptr [d_0045c4b4]
    push esi
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0x80]
    add esp, 0x70
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret
loc_00443c4d:
    mov eax, dword ptr [d_0045c4b8]
    push eax
    mov edx, dword ptr [eax]
    call dword ptr [edx + 0x6c]
    test eax, eax
    je loc_00443b6d
loc_00443c60:
    add esp, 0x70
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
ptr_00443c70:
    push ebx
    push esi
    sub esp, 8
    mov esi, dword ptr [esp + 0x14]
    mov ebx, dword ptr [esp + 0x1c]
    push offset d_0045adac
    push 1
    push 0
    call dword ptr cs:[iat_004a726c]
    mov dword ptr [d_0045c4e4], eax
    call dword ptr cs:[__imp__GetLastError]
    test eax, eax
    jne loc_00443d4b
    push eax
    call dword ptr cs:[iat_004a7188]
    mov eax, esi
    call sub_00443d58
    test eax, eax
    je loc_00443d3d
    call sub_00443dc8
    test eax, eax
    # je 0x443d3d
    .byte 0x0f,0x84
    .long loc_00443d3d - . - 4
    mov eax, dword ptr [esp + 0x20]
    mov dword ptr [d_0045c4d4], esi
    mov dword ptr [d_0045c4d8], ebx
    mov dword ptr [d_0045c4dc], eax
    mov eax, esp
    mov edx, ebx
    call sub_0044b4a0
    mov eax, esp
    call sub_0044b4b4
    test eax, eax
    je loc_00443d3d
    mov edx, offset ptr_00443e34
    mov eax, 1
    call sub_0044b85c
    mov edx, offset ptr_00443e34
    mov eax, 3
    call sub_0044b85c
    mov edx, offset ptr_00443e34
    mov eax, 5
    mov ebx, 1
    call sub_0044b85c
    mov edx, dword ptr [esp + 4]
    mov eax, dword ptr [esp]
    mov dword ptr [d_0045c4e0], ebx
    call sub_0042be22
    mov eax, esp
    call sub_0044b688
    mov eax, ebx
    jmp loc_00443d4d
loc_00443d3d:
    mov edx, dword ptr [d_0045c4e4]
    push edx
    call dword ptr cs:[iat_004a7264]
loc_00443d4b:
    xor eax, eax
loc_00443d4d:
    add esp, 8
    pop esi
    pop ebx
    ret 0x10
    .byte 0x8d,0x40,0x00
sub_00443d58:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    sub esp, 0x28
    mov edx, 3
    mov ebx, offset ptr_00443e3c
    push 0x63
    mov dword ptr [esp + 0x14], eax
    xor ecx, ecx
    xor edi, edi
    mov dword ptr [esp + 4], edx
    mov dword ptr [esp + 8], ebx
    push eax
    mov dword ptr [esp + 0x10], ecx
    mov dword ptr [esp + 0x14], ecx
    call dword ptr cs:[__imp__LoadIconA]
    push 4
    mov dword ptr [esp + 0x18], eax
    mov dword ptr [esp + 0x1c], edi
    call dword ptr cs:[__imp__GetStockObject]
    mov dword ptr [esp + 0x1c], eax
    mov dword ptr [esp + 0x24], offset d_0045adb8
    mov eax, esp
    xor esi, esi
    push eax
    mov dword ptr [esp + 0x24], esi
    call dword ptr cs:[__imp__RegisterClassA]
    and eax, 0xffff
    add esp, 0x28
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00443dc8:
    push ebx
    push ecx
    push edx
    sub esp, 0x94
    mov eax, esp
    mov edx, 0x94
    push eax
    mov ebx, 1
    mov dword ptr [esp + 4], edx
    call dword ptr cs:[__imp__GetVersionExA]
    cmp eax, ebx
    jne loc_00443e25
    mov ecx, dword ptr [esp + 0x10]
    cmp ecx, ebx
    jb loc_00443dfe
    jbe loc_00443e0d
    cmp ecx, 2
    je loc_00443e04
    jmp loc_00443e0d
loc_00443dfe:
    test ecx, ecx
    jne loc_00443e0d
    jmp loc_00443e0b
loc_00443e04:
    cmp dword ptr [esp + 4], 4
    jae loc_00443e0d
loc_00443e0b:
    xor ebx, ebx
loc_00443e0d:
    test ebx, ebx
    jne loc_00443e25
    push 0x10
    push offset d_0045adc4
    push offset d_0045addc
    push ebx
    call dword ptr cs:[__imp__MessageBoxA]
loc_00443e25:
    mov eax, ebx
    add esp, 0x94
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
ptr_00443e34:
    # jmp 0x43c668
    .byte 0xe9
    .long sub_0043c668 - . - 4
    .byte 0x8d,0x40,0x00
ptr_00443e3c:
    push ebx
    push esi
    push edi
    push ebp
    sub esp, 0x20
    mov ebx, dword ptr [esp + 0x38]
    mov esi, dword ptr [esp + 0x3c]
    cmp ebx, 0x1c
    jb loc_00443e6e
    jbe loc_00443ead
    cmp ebx, 0x20
    jb loc_00443f46
    jbe loc_00443f1f
    cmp ebx, 0x112
    je loc_00443e87
    jmp loc_00443f46
loc_00443e6e:
    cmp ebx, 2
    jb loc_00443f46
    jbe loc_00443f3f
    cmp ebx, 0xf
    je loc_00443edb
    # --- patched: original code of 0x00443e82..0x00443e87 replaced (see hooks.s)
    jmp bm_wm_misc
loc_00443e87:
    mov eax, esi
    and eax, 0xfff0
    cmp eax, 0xf140
    jb loc_00443f46
    jbe loc_00443ea6
    cmp eax, 0xf170
    jne loc_00443f46
loc_00443ea6:
    xor eax, eax
    jmp loc_00443f59
loc_00443ead:
    # --- patched: original code of 0x00443ead..0x00443eb7 replaced (see hooks.s)
    call bm_activateapp
    test eax, eax
    je loc_00443ecd
    nop
    mov eax, 1
    call sub_0043b430
    mov eax, offset d_004a3be0
    call sub_0043da90
    jmp loc_00443ed4
loc_00443ecd:
    xor eax, eax
    call sub_0043b430
loc_00443ed4:
    xor eax, eax
    # jmp 0x443f59
    .byte 0xe9
    .long loc_00443f59 - . - 4
loc_00443edb:
    push 0
    lea eax, [esp + 4]
    push eax
    mov ecx, dword ptr [esp + 0x3c]
    push ecx
    call dword ptr cs:[__imp__GetUpdateRect]
    cmp eax, 1
    jne loc_00443f46
    mov eax, dword ptr [esp]
    mov dword ptr [esp + 0x10], eax
    mov eax, dword ptr [esp + 4]
    mov dword ptr [esp + 0x14], eax
    mov eax, dword ptr [esp + 8]
    dec eax
    mov dword ptr [esp + 0x18], eax
    mov eax, dword ptr [esp + 0xc]
    dec eax
    mov dword ptr [esp + 0x1c], eax
    lea eax, [esp + 0x10]
    call sub_0043da90
    jmp loc_00443f46
loc_00443f1f:
    cmp esi, dword ptr [d_0045c4d0]
    jne loc_00443f46
    push 0
    call dword ptr cs:[iat_004a7178]
    mov eax, 1
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret 0x10
loc_00443f3f:
    xor eax, eax
    call sub_0044c98b
loc_00443f46:
    mov edi, dword ptr [esp + 0x40]
    push edi
    push esi
    push ebx
    mov ebp, dword ptr [esp + 0x40]
    push ebp
    call dword ptr cs:[__imp__DefWindowProcA]
loc_00443f59:
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret 0x10
    .byte 0x00
sub_00443f64:
    mov al, 0xa
loc_00443f66:
    ftst
    push ebp
    mov ebp, esp
    sub esp, 0x10
    wait
    fnstsw word ptr [ebp - 0x10]
    wait
    mov ah, byte ptr [ebp - 0xf]
    sahf
    ja loc_00443f8b
    mov dword ptr [ebp - 8], eax
    fstp qword ptr [ebp - 0x10]
    mov dword ptr [ebp - 4], edx
    call sub_0044be4a
    mov al, 1
    jmp loc_00443fa3
loc_00443f8b:
    cmp al, 0xb
    jne loc_00443f93
    fldlg2
    jmp loc_00443f9d
loc_00443f93:
    cmp al, 9
    jne loc_00443f9b
    fld1
    jmp loc_00443f9d
loc_00443f9b:
    fldln2
loc_00443f9d:
    fxch st(1)
    fyl2x
    mov al, 0
loc_00443fa3:
    mov esp, ebp
    pop ebp
    ret
sub_00443fa7:
    mov al, 9
    jmp loc_00443f66
sub_00443fab:
    mov al, 0xb
    jmp loc_00443f66
sub_00443faf:
    fld qword ptr [esp + 4]
    call sub_00443f64
    ret 8
    fld qword ptr [esp + 4]
    call sub_00443fab
    ret 8
    fld qword ptr [esp + 4]
    call sub_00443fa7
    ret 8
    .byte 0x00
sub_00443fd4:
    push ebp
    mov ebp, esp
    ftst
    sub esp, 0x18
    wait
    fnstsw word ptr [ebp - 8]
    fst qword ptr [ebp - 0x18]
    mov ah, byte ptr [ebp - 7]
    sahf
    jne loc_00444003
    mov al, 0
loc_00443feb:
    fstp st(0)
    fstp qword ptr [ebp - 0x10]
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], edx
    call sub_0044be86
    sub esp, 8
    jmp loc_004440fc
loc_00444003:
    fld st(1)
    frndint
    fcomp st(2)
    wait
    fnstsw word ptr [ebp - 6]
    wait
    mov ah, byte ptr [ebp - 5]
    jae loc_0044404e
    mov al, 1
    sahf
    jne loc_00443feb
    mov ax, 2
    mov word ptr [ebp - 4], ax
    fild word ptr [ebp - 4]
    fld st(2)
    fprem
    wait
    fnstsw word ptr [ebp - 4]
    wait
    mov ah, byte ptr [ebp - 3]
    sahf
    mov ah, 0
    jp loc_00444045
    ftst
    wait
    fnstsw word ptr [ebp - 4]
    wait
    mov ah, byte ptr [ebp - 3]
    sahf
    mov ah, 0
    je loc_00444045
    mov ah, 1
loc_00444045:
    mov byte ptr [ebp - 7], ah
    fstp st(0)
    fstp st(0)
    jmp loc_00444056
loc_0044404e:
    sahf
    je loc_00444056
    jmp loc_004440dd
loc_00444056:
    fld st(1)
    fstp qword ptr [ebp - 0x10]
    wait
    mov ax, word ptr [ebp - 0xa]
    and ax, 0x7ff0
    sub ax, 0x3ff0
    cmp ax, 0x100
    jae loc_004440dd
    fld st(1)
    fistp dword ptr [ebp - 4]
    wait
    mov ax, word ptr [ebp - 2]
    or ax, ax
    jne loc_00444088
    mov ax, word ptr [ebp - 4]
    call sub_00444107
    jmp loc_004440b3
loc_00444088:
    inc ax
    jne loc_004440dd
    or ax, word ptr [ebp - 4]
    je loc_004440dd
    neg ax
    call sub_00444107
    fld1
    test byte ptr [d_0045c564], 1
    jne loc_004440a9
    fdivrp st(1)
    jmp loc_004440b3
loc_004440a9:
    mov eax, 0xf
    call sub_0044c027
loc_004440b3:
    fst qword ptr [ebp - 8]
    wait
    mov ax, word ptr [ebp - 8]
    or ax, word ptr [ebp - 6]
    or ax, word ptr [ebp - 4]
    jne loc_004440d9
    mov ax, word ptr [ebp - 2]
    shl ax, 1
    # cmp ax, 0xffe0
    .byte 0x66,0x3d,0xe0,0xff
    jne loc_004440d9
loc_004440d2:
    mov al, 2
    jmp loc_00443feb
loc_004440d9:
    fstp st(1)
    jmp loc_004440fc
loc_004440dd:
    fldln2
    fmul st(2)
    fxch st(1)
    fabs
    fyl2x
    mov al, 7
    call sub_0044436c
    cmp al, 0
    jne loc_004440d2
    mov ah, byte ptr [ebp - 7]
    sahf
    jae loc_004440fa
    fchs
loc_004440fa:
    fstp st(1)
loc_004440fc:
    fstp qword ptr [ebp - 8]
    fld qword ptr [ebp - 8]
    wait
    mov esp, ebp
    pop ebp
    ret
sub_00444107:
    shr ax, 1
    jbe loc_00444110
    fmul st(0)
    jmp sub_00444107
loc_00444110:
    jae loc_00444125
    fld st(0)
loc_00444114:
    je loc_00444121
    fmul st(0)
    shr ax, 1
    jae loc_0044411f
    fmul st(1), st(0)
loc_0044411f:
    jmp loc_00444114
loc_00444121:
    fstp st(0)
    jmp loc_00444129
loc_00444125:
    fstp st(0)
    fld1
loc_00444129:
    ret
sub_0044412a:
    fld qword ptr [esp + 0xc]
    fld qword ptr [esp + 4]
    call sub_00443fd4
    ret 0x10
sub_0044413a:
    push ecx
    push esi
    push edi
    mov ecx, ebx
    mov edi, edx
    mov esi, eax
    push es
    mov eax, ds
    mov es, eax
    xor eax, eax
    repe cmpsb byte ptr [esi], byte ptr es:[edi]
    je loc_00444153
    sbb eax, eax
    sbb eax, -1
loc_00444153:
    pop es
    pop edi
    pop esi
    pop ecx
    ret
sub_00444158:
    push ebx
    push ecx
    push esi
    push edi
    and byte ptr [edx + 0xc], 0xef
    cmp eax, dword ptr [edx + 4]
    jg loc_00444184
    mov ebx, dword ptr [edx + 8]
    mov ecx, dword ptr [edx]
    sub ebx, ecx
    cmp eax, ebx
    jl loc_00444184
    mov edi, dword ptr [edx + 4]
    lea esi, [ecx + eax]
    sub edi, eax
    mov dword ptr [edx], esi
    xor eax, eax
    mov dword ptr [edx + 4], edi
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_00444184:
    mov eax, dword ptr [edx + 8]
    mov dword ptr [edx + 4], 0
    mov dword ptr [edx], eax
    mov eax, 1
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0044419a:
    push ecx
    push esi
    push edi
    mov ecx, eax
    mov esi, edx
    mov eax, dword ptr [eax + 0x10]
    call dword ptr [d_0045c634]
    mov ah, byte ptr [ecx + 0xc]
    test ah, 6
    je loc_00444214
    test byte ptr [ecx + 0xd], 0x10
    je loc_004441d7
    mov eax, ecx
    call sub_0044c7d4
    test eax, eax
    je loc_004441eb
    test ebx, ebx
    jne loc_00444202
    test esi, esi
    jge loc_00444202
loc_004441cb:
    mov eax, 9
    call sub_0044c8c3
    jmp loc_00444202
loc_004441d7:
    cmp ebx, 1
    jne loc_004441df
    sub esi, dword ptr [ecx + 4]
loc_004441df:
    mov eax, dword ptr [ecx + 8]
    mov dword ptr [ecx + 4], 0
    mov dword ptr [ecx], eax
loc_004441eb:
    and byte ptr [ecx + 0xc], 0xeb
loc_004441ef:
    mov edx, esi
    mov eax, dword ptr [ecx + 0x10]
loc_004441f4:
    call sub_00452c00
    cmp eax, -1
    # jne 0x44427f
    .byte 0x0f,0x85
    .long loc_0044427f - . - 4
loc_00444202:
    mov eax, dword ptr [ecx + 0x10]
    call dword ptr [d_0045c638]
    mov eax, 0xffffffff
    pop edi
    pop esi
    pop ecx
    ret
loc_00444214:
    cmp ebx, 1
    jb loc_00444222
    jbe loc_00444228
    cmp ebx, 2
    je loc_00444261
    jmp loc_004441cb
loc_00444222:
    test ebx, ebx
    je loc_00444241
    jmp loc_004441cb
loc_00444228:
    mov edx, ecx
    mov eax, esi
    mov edi, dword ptr [ecx + 4]
    call sub_00444158
    test eax, eax
    je loc_0044427f
    mov edx, esi
    mov eax, dword ptr [ecx + 0x10]
    sub edx, edi
    jmp loc_004441f4
loc_00444241:
    mov eax, dword ptr [ecx + 0x10]
    call sub_00452bc3
    mov edx, dword ptr [ecx + 4]
    mov edi, esi
    sub eax, edx
    sub edi, eax
    mov edx, ecx
    mov eax, edi
    call sub_00444158
    test eax, eax
    je loc_0044427f
    jmp loc_004441ef
loc_00444261:
    mov dl, ah
    and dl, 0xef
    mov eax, dword ptr [ecx + 8]
    mov byte ptr [ecx + 0xc], dl
    mov dword ptr [ecx], eax
    mov edx, esi
    mov eax, dword ptr [ecx + 0x10]
    mov dword ptr [ecx + 4], 0
    jmp loc_004441f4
loc_0044427f:
    mov eax, dword ptr [ecx + 0x10]
    call dword ptr [d_0045c638]
    xor eax, eax
    pop edi
    pop esi
    pop ecx
    ret
sub_0044428e:
    push ebx
    push edx
    mov edx, eax
    mov eax, dword ptr [eax + 0x10]
    call sub_00452bc3
    mov ebx, eax
    cmp eax, -1
    je loc_004442dc
    mov eax, dword ptr [edx + 0x10]
    call dword ptr [d_0045c634]
    test byte ptr [edx + 0xc], 0x80
    je loc_004442bd
    test byte ptr [edx + 0xd], 0x10
    je loc_004442bd
    mov eax, edx
    call sub_00452943
loc_004442bd:
    cmp dword ptr [edx + 4], 0
    je loc_004442d1
    test byte ptr [edx + 0xd], 0x10
    je loc_004442ce
    add ebx, dword ptr [edx + 4]
    jmp loc_004442d1
loc_004442ce:
    sub ebx, dword ptr [edx + 4]
loc_004442d1:
    mov eax, dword ptr [edx + 0x10]
    call dword ptr [d_0045c638]
    mov eax, ebx
loc_004442dc:
    pop edx
    pop ebx
    ret
sub_004442df:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov ecx, eax
    call dword ptr [d_0045c634]
    mov ebx, 1
    mov eax, ecx
    xor edx, edx
    call sub_00452c00
    mov esi, eax
    cmp eax, -1
    jne loc_0044430d
    mov eax, ecx
    call dword ptr [d_0045c638]
    mov eax, esi
    jmp loc_00444332
loc_0044430d:
    mov ebx, 2
    mov eax, ecx
    xor edx, edx
    call sub_00452c00
    mov edi, eax
    mov edx, esi
    mov eax, ecx
    xor ebx, ebx
    call dword ptr [d_0045c638]
    mov eax, ecx
    call sub_00452c00
    mov eax, edi
loc_00444332:
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00444338:
    push ecx
loc_00444339:
    test ebx, ebx
    jne loc_00444341
loc_0044433d:
    xor eax, eax
    pop ecx
    ret
loc_00444341:
    mov cl, byte ptr [eax]
    mov ch, byte ptr [edx]
    cmp cl, ch
    je loc_00444357
    xor ebx, ebx
    xor eax, eax
    mov bl, cl
    mov al, ch
    sub ebx, eax
    mov eax, ebx
    pop ecx
    ret
loc_00444357:
    cmp byte ptr [eax], 0
    je loc_0044433d
    inc eax
    inc edx
    dec ebx
    jmp loc_00444339
    .byte 0x00
    push ebp
    mov ebp, esp
    sub esp, 0x10
    jmp loc_0044439b
sub_0044436a:
    mov al, 4
sub_0044436c:
    push ebp
    mov ebp, esp
    sub esp, 0x10
    fcom qword ptr [d_0045c4e8]
    wait
    fnstsw word ptr [ebp - 0x10]
    wait
    mov ah, byte ptr [ebp - 0xf]
    sahf
    jbe loc_0044439b
    cmp al, 7
    je loc_00444395
    fstp qword ptr [ebp - 0x10]
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], edx
    call sub_0044c8f6
loc_00444395:
    mov al, 1
    mov esp, ebp
    pop ebp
    ret
loc_0044439b:
    fcom qword ptr [d_0045c4f0]
    wait
    fnstsw word ptr [ebp - 0x10]
    wait
    mov ah, byte ptr [ebp - 0xf]
    sahf
    ja loc_004443b0
    fldz
    jmp loc_004443c4
loc_004443b0:
    fldl2e
    fmulp st(1)
    fld st(0)
    frndint
    fxch st(1)
    fsub st(1)
    f2xm1
    fld1
    faddp st(1)
    fscale
loc_004443c4:
    fstp st(1)
    mov al, 0
    mov esp, ebp
    pop ebp
    ret
ptr_004443cc:
    fld qword ptr [esp + 4]
    call sub_0044436a
    ret 8
sub_004443d8:
    jmp loc_0044c971
ptr_004443dd:
    push ebx
    push edx
    sub esp, 4
    mov ebx, dword ptr [d_004a3e90]
    cmp ebx, 0x21
    je loc_00444412
    mov dword ptr [d_004a3e90], 0x21
    mov edx, ebx
    shl edx, 2
loc_004443fc:
    test edx, edx
    je loc_00444412
    mov eax, dword ptr [edx + d_004a3e0c]
    sub edx, 4
    mov dword ptr [esp], eax
    dec ebx
    call dword ptr [esp]
    jmp loc_004443fc
loc_00444412:
    add esp, 4
    pop edx
    pop ebx
    ret
sub_00444418:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    mov edx, offset ptr_004443dd
    mov ecx, dword ptr [d_004a3e90]
    mov dword ptr [d_0045c678], edx
    cmp ecx, 0x20
    jge loc_0044444b
    mov eax, ecx
    xor eax, ecx
    lea edx, [ecx + 1]
    mov dword ptr [ecx*4 + d_004a3e10], ebx
    mov dword ptr [d_004a3e90], edx
    pop edx
    pop ecx
    pop ebx
    ret
loc_0044444b:
    mov eax, 0xffffffff
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    push ecx
    push edx
    push esi
    push edi
    mov esi, eax
    test eax, eax
    je loc_004444a8
    mov edi, eax
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov eax, ecx
    test ecx, ecx
    jne loc_00444481
    mov eax, 1
loc_00444481:
    inc eax
    call dword ptr [d_0045c4f8]
    mov edi, eax
    mov edx, eax
    push edi
loc_0044448d:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_004444a5
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044448d
loc_004444a5:
    pop edi
    mov eax, edx
loc_004444a8:
    pop edi
    pop esi
    pop edx
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
sub_004444b0:
    call dword ptr [d_0045c4f8]
    ret
    .byte 0x90
ptr_004444b8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov esi, eax
    test eax, eax
    # je 0x444541
    .byte 0x0f,0x84
    .long loc_00444541 - . - 4
    lea esi, [eax + 0xc]
    mov eax, esi
    call sub_004529cc
    mov edi, eax
    test eax, eax
    je loc_00444541
    push 0xcc
    mov ebx, 1
    mov ecx, esi
    mov edx, esi
    call sub_00442a5c
    mov edx, dword ptr [d_0045c504]
    lea eax, [edi + 4]
    mov dword ptr [edi], esi
    mov ebx, dword ptr [d_0045c508]
    mov dword ptr [eax], 0xfeedface
    lea eax, [edi + esi]
    inc edx
    sub eax, 4
    mov dword ptr [d_0045c504], edx
    add edi, 8
    mov dword ptr [eax], 0xbeefcafe
    cmp edx, ebx
    jle loc_00444521
    mov dword ptr [d_0045c508], edx
loc_00444521:
    mov ecx, dword ptr [d_0045c50c]
    add ecx, esi
    mov esi, dword ptr [d_0045c510]
    mov dword ptr [d_0045c50c], ecx
    cmp ecx, esi
    jbe loc_0044453f
    mov dword ptr [d_0045c510], ecx
loc_0044453f:
    mov eax, edi
loc_00444541:
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
ptr_00444548:
    call dword ptr [d_0045c4fc]
    ret
    .byte 0x90
ptr_00444550:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebx, eax
    mov ecx, edx
    xor esi, esi
    test eax, eax
    je loc_00444579
    lea ebx, [eax - 8]
    mov edx, dword ptr [d_0045c50c]
    mov esi, dword ptr [ebx]
    sub edx, esi
    mov eax, ebx
    mov dword ptr [d_0045c50c], edx
    call sub_0044470c
loc_00444579:
    test ecx, ecx
    je loc_00444580
    add ecx, 0xc
loc_00444580:
    mov edx, ecx
    mov eax, ebx
    call sub_00452abb
    test eax, eax
    jne loc_004445d1
    test ecx, ecx
    jne loc_00444599
    dec dword ptr [d_0045c504]
    jmp loc_004445cd
loc_00444599:
    test ebx, ebx
    je loc_004445cd
    push 0xca
    mov eax, dword ptr [d_0045c50c]
    push offset d_0045ae24
    add eax, esi
    push offset d_0045ae30
    mov dword ptr [d_0045c50c], eax
    call sub_0042c0c8
    add esp, 0xc
    push offset d_0045ae3c
    call sub_0042c0c8
    add esp, 4
loc_004445cd:
    xor eax, eax
    jmp loc_00444628
loc_004445d1:
    test ebx, ebx
    jne loc_004445f2
    mov ebx, dword ptr [d_0045c504]
    inc ebx
    mov esi, dword ptr [d_0045c508]
    mov dword ptr [d_0045c504], ebx
    cmp ebx, esi
    jle loc_004445f2
    mov dword ptr [d_0045c508], ebx
loc_004445f2:
    mov edi, dword ptr [d_0045c50c]
    add edi, ecx
    mov ebp, dword ptr [d_0045c510]
    mov dword ptr [d_0045c50c], edi
    cmp edi, ebp
    jbe loc_00444610
    mov dword ptr [d_0045c510], edi
loc_00444610:
    lea ebx, [eax + 4]
    mov dword ptr [eax], ecx
    mov dword ptr [ebx], 0xfeedface
    lea ebx, [eax + ecx - 4]
    add eax, 8
    mov dword ptr [ebx], 0xbeefcafe
loc_00444628:
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00444630:
    call dword ptr [d_0045c500]
    ret
    .byte 0x90
ptr_00444638:
    push ebx
    push ecx
    push edx
    push esi
    mov esi, eax
    test eax, eax
    je loc_0044467c
    lea esi, [eax - 8]
    mov eax, esi
    call sub_0044470c
    push 0xcc
    mov ebx, dword ptr [d_0045c50c]
    mov edx, dword ptr [esi]
    mov eax, esi
    sub ebx, edx
    mov ecx, edx
    mov dword ptr [d_0045c50c], ebx
    mov ebx, 1
    call sub_00442a5c
    mov eax, esi
    call sub_00452b35
    dec dword ptr [d_0045c504]
loc_0044467c:
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push ecx
    push esi
    push edi
    cmp dword ptr [d_0045c4f8], offset ptr_004444b8
    jne loc_004446ca
    mov ebx, dword ptr [d_0045c50c]
    push ebx
    mov ecx, dword ptr [d_0045c504]
    push ecx
    push offset d_0045ae50
    call sub_0042c0c8
    add esp, 0xc
    mov esi, dword ptr [d_0045c510]
    push esi
    mov edi, dword ptr [d_0045c508]
    push edi
    push offset d_0045ae88
    call sub_0042c0c8
    add esp, 0xc
loc_004446ca:
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
    cmp dword ptr [d_0045c468], 0
    jne loc_004446ea
    mov dword ptr [d_0045c4f8], eax
    mov dword ptr [d_0045c4fc], edx
    mov dword ptr [d_0045c500], ebx
loc_004446ea:
    ret
    .byte 0x90
    push ebx
    mov ebx, edx
    mov dword ptr [eax], edx
    lea edx, [eax + 4]
    mov dword ptr [edx], 0xfeedface
    lea edx, [eax + ebx - 4]
    add eax, 8
    mov dword ptr [edx], 0xbeefcafe
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0044470c:
    push ebx
    push ecx
    push edx
    push edi
    mov edx, eax
    mov ebx, eax
    mov ecx, dword ptr [eax + 4]
    add eax, 4
    cmp ecx, 0xfeedface
    je loc_0044472f
    push offset d_0045aec0
    call sub_0042c0c8
    add esp, 4
loc_0044472f:
    add edx, dword ptr [ebx]
    mov edi, dword ptr [edx - 4]
    sub edx, 4
    cmp edi, 0xbeefcafe
    je loc_0044474c
    push offset d_0045aed8
    call sub_0042c0c8
    add esp, 4
loc_0044474c:
    pop edi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_00444760:
    push ebx
    push ecx
    push edx
    push esi
    mov edx, dword ptr [d_0045c514]
    test edx, edx
    jne loc_004447cc
    push edx
    push offset d_0045c514
    push 0x300
    mov ebx, dword ptr [d_0045c4d4]
    push ebx
    call sub_00457de4
    test eax, eax
    jne loc_004447aa
    mov edx, 1
    call sub_00444a68
    cmp eax, edx
    je loc_00444799
    xor edx, edx
loc_00444799:
    call sub_00444b14
    cmp eax, 1
    je loc_004447a5
    xor edx, edx
loc_004447a5:
    cmp edx, 1
    je loc_004447ce
loc_004447aa:
    call sub_00444bd0
    call sub_00444ae8
    mov ecx, dword ptr [d_0045c514]
    test ecx, ecx
    je loc_004447cc
    push ecx
    mov edx, dword ptr [ecx]
    xor esi, esi
    call dword ptr [edx + 8]
    mov dword ptr [d_0045c514], esi
loc_004447cc:
    xor edx, edx
loc_004447ce:
    mov eax, edx
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_004447d8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov edx, dword ptr [d_0045c51c]
    test edx, edx
    je loc_00444803
    mov eax, edx
    push eax
    mov edx, dword ptr [edx]
    call dword ptr [edx + 0x20]
    mov eax, dword ptr [d_0045c51c]
    push eax
    mov edx, dword ptr [eax]
    xor ebx, ebx
    call dword ptr [edx + 8]
    mov dword ptr [d_0045c51c], ebx
loc_00444803:
    mov ecx, dword ptr [d_0045c518]
    test ecx, ecx
    je loc_00444826
    push ecx
    mov edx, dword ptr [ecx]
    call dword ptr [edx + 0x20]
    mov eax, dword ptr [d_0045c518]
    push eax
    mov edx, dword ptr [eax]
    xor esi, esi
    call dword ptr [edx + 8]
    mov dword ptr [d_0045c518], esi
loc_00444826:
    mov edi, dword ptr [d_0045c514]
    test edi, edi
    je loc_0044483e
    push edi
    mov edx, dword ptr [edi]
    xor ebp, ebp
    call dword ptr [edx + 8]
    mov dword ptr [d_0045c514], ebp
loc_0044483e:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_00444848:
    push ecx
    push edx
    mov edx, dword ptr [d_0045c518]
    test edx, edx
    je loc_0044486d
    mov eax, edx
    push eax
    mov edx, dword ptr [edx]
    call dword ptr [edx + 0x1c]
    test eax, eax
    je loc_00444865
    cmp eax, 1
    jne loc_0044486d
loc_00444865:
    mov eax, 1
    pop edx
    pop ecx
    ret
loc_0044486d:
    xor eax, eax
    pop edx
    pop ecx
    ret
    .byte 0x8b,0xc0
sub_00444874:
    push ecx
    push edx
    mov edx, dword ptr [d_0045c518]
    test edx, edx
    je loc_00444894
    mov eax, edx
    push eax
    mov edx, dword ptr [edx]
    call dword ptr [edx + 0x20]
    test eax, eax
    jne loc_00444894
    mov eax, 1
    pop edx
    pop ecx
    ret
loc_00444894:
    xor eax, eax
    pop edx
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
sub_0044489c:
    push ebx
    push ecx
    push edx
    sub esp, 0x10
    mov ebx, eax
    cmp dword ptr [d_0045c518], 0
    je loc_004448fe
    call sub_00444848
    cmp eax, 1
    jne loc_004448fe
    mov edx, esp
    push edx
    mov eax, dword ptr [d_0045c518]
    push 0x10
    mov ecx, dword ptr [eax]
    push eax
    call dword ptr [ecx + 0x24]
    test eax, eax
    jne loc_004448fe
    mov eax, dword ptr [esp]
    mov dword ptr [ebx], eax
    mov eax, dword ptr [esp + 4]
    mov dword ptr [ebx + 4], eax
    test byte ptr [esp + 0xc], 0x80
    setne al
    and eax, 0xff
    mov byte ptr [ebx + 8], al
    test byte ptr [esp + 0xd], 0x80
    setne al
    and eax, 0xff
    mov byte ptr [ebx + 9], al
    mov eax, 1
    jmp loc_00444900
loc_004448fe:
    xor eax, eax
loc_00444900:
    add esp, 0x10
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00444908:
    push ecx
    push edx
    mov edx, dword ptr [d_0045c51c]
    test edx, edx
    je loc_0044492d
    mov eax, edx
    push eax
    mov edx, dword ptr [edx]
    call dword ptr [edx + 0x1c]
    test eax, eax
    je loc_00444925
    cmp eax, 1
    jne loc_0044492d
loc_00444925:
    mov eax, 1
    pop edx
    pop ecx
    ret
loc_0044492d:
    xor eax, eax
    pop edx
    pop ecx
    ret
    .byte 0x8b,0xc0
sub_00444934:
    push ecx
    push edx
    mov edx, dword ptr [d_0045c51c]
    test edx, edx
    je loc_00444954
    mov eax, edx
    push eax
    mov edx, dword ptr [edx]
    call dword ptr [edx + 0x20]
    test eax, eax
    jne loc_00444954
    mov eax, 1
    pop edx
    pop ecx
    ret
loc_00444954:
    xor eax, eax
    pop edx
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
sub_0044495c:
    push ebx
    push ecx
    push edx
    sub esp, 4
    cmp dword ptr [d_0045c51c], 0
    je loc_004449a4
    call sub_00444908
    cmp eax, 1
    jne loc_004449a4
    push 0
    lea edx, [esp + 4]
    push edx
    mov ebx, 0xffffffff
    push 0
    mov eax, dword ptr [d_0045c51c]
    mov dword ptr [esp + 0xc], ebx
    push 0x10
    mov ebx, dword ptr [eax]
    push eax
    call dword ptr [ebx + 0x28]
    test eax, eax
    je loc_0044499d
    cmp eax, 1
    jne loc_004449a4
loc_0044499d:
    mov eax, 1
    jmp loc_004449a6
loc_004449a4:
    xor eax, eax
loc_004449a6:
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_004449b0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    sub esp, 4
    mov ebx, eax
    cmp dword ptr [d_0045c51c], 0
    je loc_00444a5a
    test eax, eax
    je loc_00444a5a
    call sub_00444908
    cmp eax, 1
    # jne 0x444a5a
    .byte 0x0f,0x85
    .long loc_00444a5a - . - 4
    mov eax, dword ptr [d_0045c520]
    cmp eax, dword ptr [d_0045c524]
    jl loc_00444a25
    push 0
    lea ecx, [esp + 4]
    push ecx
    mov esi, 0x20
    push offset d_004a3ea0
    mov eax, dword ptr [d_0045c51c]
    mov dword ptr [esp + 0xc], esi
    push 0x10
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0x28]
    test eax, eax
    je loc_00444a15
    cmp eax, 1
    jne loc_00444a25
loc_00444a15:
    xor edi, edi
    mov eax, dword ptr [esp]
    mov dword ptr [d_0045c520], edi
    mov dword ptr [d_0045c524], eax
loc_00444a25:
    mov eax, dword ptr [d_0045c520]
    cmp eax, dword ptr [d_0045c524]
    jge loc_00444a5a
    shl eax, 4
    add eax, offset d_004a3ea0
    mov dl, byte ptr [eax]
    mov byte ptr [ebx], dl
    inc dword ptr [d_0045c520]
    test byte ptr [eax + 4], 0x80
    setne al
    and eax, 0xff
    mov byte ptr [ebx + 1], al
    mov eax, 1
    jmp loc_00444a5c
loc_00444a5a:
    xor eax, eax
loc_00444a5c:
    add esp, 4
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_00444a68:
    push ebx
    push ecx
    push edx
    push esi
    push 0
    push offset d_0045c518
    mov eax, dword ptr [d_0045c514]
    push offset d_0045cfb0
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0xc]
    test eax, eax
    jne loc_00444abd
    push 5
    mov ebx, dword ptr [d_0045c4d0]
    mov eax, dword ptr [d_0045c518]
    push ebx
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0x34]
    test eax, eax
    jne loc_00444abd
    push offset ptr_00456b00
    mov eax, dword ptr [d_0045c518]
    push eax
    mov edx, dword ptr [eax]
    call dword ptr [edx + 0x2c]
    test eax, eax
    jne loc_00444abd
    mov eax, 1
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00444abd:
    mov ecx, dword ptr [d_0045c518]
    test ecx, ecx
    je loc_00444ae0
    push ecx
    mov edx, dword ptr [ecx]
    call dword ptr [edx + 0x20]
    mov eax, dword ptr [d_0045c518]
    push eax
    mov edx, dword ptr [eax]
    xor esi, esi
    call dword ptr [edx + 8]
    mov dword ptr [d_0045c518], esi
loc_00444ae0:
    xor eax, eax
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00444ae8:
    push ebx
    push ecx
    push edx
    mov edx, dword ptr [d_0045c518]
    test edx, edx
    je loc_00444b10
    mov eax, edx
    push eax
    mov edx, dword ptr [edx]
    call dword ptr [edx + 0x20]
    mov eax, dword ptr [d_0045c518]
    push eax
    mov edx, dword ptr [eax]
    xor ebx, ebx
    call dword ptr [edx + 8]
    mov dword ptr [d_0045c518], ebx
loc_00444b10:
    pop edx
    pop ecx
    pop ebx
    ret
sub_00444b14:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 0x14
    push 0
    push offset d_0045c51c
    mov eax, dword ptr [d_0045c514]
    push offset d_0045cfc0
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0xc]
    test eax, eax
    jne loc_00444ba0
    push 6
    mov ebx, dword ptr [d_0045c4d0]
    mov eax, dword ptr [d_0045c51c]
    push ebx
    mov edx, dword ptr [eax]
    push eax
    call dword ptr [edx + 0x34]
    test eax, eax
    jne loc_00444ba0
    push offset ptr_00457b20
    mov eax, dword ptr [d_0045c51c]
    push eax
    mov edx, dword ptr [eax]
    call dword ptr [edx + 0x2c]
    test eax, eax
    jne loc_00444ba0
    mov ecx, 0x14
    mov esi, 0x10
    mov edx, esp
    mov dword ptr [esp + 8], eax
    mov dword ptr [esp + 0xc], eax
    push edx
    mov eax, 0x20
    mov dword ptr [esp + 4], ecx
    push 1
    mov dword ptr [esp + 0x18], eax
    mov eax, dword ptr [d_0045c51c]
    mov dword ptr [esp + 0xc], esi
    push eax
    mov ebx, dword ptr [eax]
    call dword ptr [ebx + 0x18]
    test eax, eax
    jne loc_00444ba0
    mov eax, 1
    jmp loc_00444bc7
loc_00444ba0:
    mov edx, dword ptr [d_0045c51c]
    test edx, edx
    je loc_00444bc5
    mov eax, edx
    push eax
    mov edx, dword ptr [edx]
    call dword ptr [edx + 0x20]
    mov eax, dword ptr [d_0045c51c]
    push eax
    mov edx, dword ptr [eax]
    xor ebx, ebx
    call dword ptr [edx + 8]
    mov dword ptr [d_0045c51c], ebx
loc_00444bc5:
    xor eax, eax
loc_00444bc7:
    add esp, 0x14
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00444bd0:
    push ebx
    push ecx
    push edx
    mov edx, dword ptr [d_0045c51c]
    test edx, edx
    je loc_00444bf8
    mov eax, edx
    push eax
    mov edx, dword ptr [edx]
    call dword ptr [edx + 0x20]
    mov eax, dword ptr [d_0045c51c]
    push eax
    mov edx, dword ptr [eax]
    xor ebx, ebx
    call dword ptr [edx + 8]
    mov dword ptr [d_0045c51c], ebx
loc_00444bf8:
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00
    push ebx
    push edx
    push edi
    mov ebx, eax
    cmp dword ptr [d_0045c530], 2
    sete al
    and eax, 0xff
    je loc_00444d65
    test ebx, ebx
    je loc_00444d65
    cmp dword ptr [d_0045c528], 0
    jne loc_00444c4a
    mov eax, 0x18000
    call sub_004444b0
    mov dword ptr [d_0045c528], eax
    test eax, eax
    je loc_00444c4a
    call sub_00445228
    mov eax, 1
    jmp loc_00444c4c
loc_00444c4a:
    xor eax, eax
loc_00444c4c:
    cmp eax, 1
    jne loc_00444d65
    mov edx, offset d_0045aef0
    mov eax, ebx
    call sub_0043f134
    mov dword ptr [d_0045c54c], eax
    test eax, eax
    je loc_00444d45
    cmp dword ptr [d_0045c548], 0
    jne loc_00444c86
    mov eax, offset sub_00444e74
    call sub_00444418
    mov dword ptr [d_0045c548], eax
loc_00444c86:
    mov ebx, dword ptr [d_0045c52c]
    lea eax, [ebx*4]
    mov edx, dword ptr [d_0045c528]
    sub eax, ebx
    mov dword ptr [edx + eax*8], 1
    mov dword ptr [edx + eax*8 + 4], 0
    mov dword ptr [edx + eax*8 + 8], 0
    call sub_00433d90
    mov ebx, dword ptr [d_0045c52c]
    mov edx, eax
    lea eax, [ebx*4]
    sub eax, ebx
    lea ebx, [eax*8]
    mov eax, dword ptr [d_0045c528]
    mov dword ptr [ebx + eax + 0x14], edx
loc_00444cd8:
    call sub_004318c4
    test eax, eax
    je loc_00444ce8
    call sub_004313c8
    jmp loc_00444cd8
loc_00444ce8:
    mov ebx, dword ptr [d_0045c52c]
    lea eax, [ebx*4]
    sub eax, ebx
    mov edx, dword ptr [d_0045c528]
    shl eax, 3
    add eax, edx
    lea edx, [eax + 0x10]
    add eax, 0xc
    call sub_00431804
    mov eax, 1
    mov edx, dword ptr [d_0045c52c]
    xor ebx, ebx
    add edx, eax
    mov dword ptr [d_0045c538], eax
    mov dword ptr [d_0045c52c], edx
    call sub_0043acf8
    mov dword ptr [d_0045c544], eax
    call sub_00433c6c
    mov eax, 1
    mov dword ptr [d_0045c530], ebx
    pop edi
    pop edx
    pop ebx
    ret
loc_00444d45:
    cmp dword ptr [d_0045c528], 0
    je loc_00444d65
    call sub_00445228
    mov eax, dword ptr [d_0045c528]
    xor edi, edi
    call sub_00444630
    mov dword ptr [d_0045c528], edi
loc_00444d65:
    xor eax, eax
    pop edi
    pop edx
    pop ebx
    ret
    .byte 0x90
    push ecx
    push esi
    mov ecx, eax
    mov esi, edx
    cmp dword ptr [d_0045c530], 2
    sete al
    and eax, 0xff
    je loc_00444e6f
    test ecx, ecx
    je loc_00444e6f
    cmp dword ptr [d_0045c528], 0
    jne loc_00444db7
    mov eax, 0x18000
    call sub_004444b0
    mov dword ptr [d_0045c528], eax
    test eax, eax
    je loc_00444db7
    call sub_00445228
    mov eax, 1
    jmp loc_00444db9
loc_00444db7:
    xor eax, eax
loc_00444db9:
    cmp eax, 1
    jne loc_00444e6f
    mov edx, offset d_0045aef4
    mov eax, ecx
    call sub_0043f134
    mov dword ptr [d_0045c54c], eax
    test eax, eax
    # je 0x444e50
    .byte 0x0f,0x84
    .long loc_00444e50 - . - 4
    call sub_004452cc
    cmp eax, 1
    jne loc_00444e46
loc_00444de5:
    call sub_004318c4
    test eax, eax
    je loc_00444df5
    call sub_004313c8
    jmp loc_00444de5
loc_00444df5:
    call sub_00433c6c
    mov edx, 1
    mov dword ptr [d_0045c558], esi
    mov dword ptr [d_0045c554], ebx
    xor ecx, ecx
    mov dword ptr [d_0045c540], edx
    mov dword ptr [d_0045c53c], ecx
    mov dword ptr [d_0045c538], ecx
    mov dword ptr [d_0045c534], ecx
    call sub_0043acf8
    mov dword ptr [d_0045c544], eax
    mov dword ptr [d_0045c530], edx
    mov dword ptr [d_004a40a4], ecx
    mov dword ptr [d_004a40a8], ecx
    mov eax, edx
    pop esi
    pop ecx
    ret
loc_00444e46:
    mov eax, dword ptr [d_0045c54c]
    call sub_00441e50
loc_00444e50:
    cmp dword ptr [d_0045c528], 0
    je loc_00444e6f
    call sub_00445228
    mov eax, dword ptr [d_0045c528]
    call sub_00444630
    xor eax, eax
    mov dword ptr [d_0045c528], eax
loc_00444e6f:
    xor eax, eax
    pop esi
    pop ecx
    ret
sub_00444e74:
    push ebx
    push ecx
    push edx
    push ebp
    mov edx, 2
    mov eax, dword ptr [d_0045c530]
    mov dword ptr [d_0045c530], edx
    cmp eax, 1
    jb loc_00444e94
    jbe loc_00444ed3
    jmp loc_00444f22
loc_00444e94:
    test eax, eax
    jne loc_00444f22
    call sub_00445248
    mov eax, dword ptr [d_0045c54c]
    call sub_00441e50
    xor ebp, ebp
    mov eax, dword ptr [d_0045c528]
    mov dword ptr [d_0045c54c], ebp
    test eax, eax
    je loc_00444f22
    call sub_00445228
    mov eax, dword ptr [d_0045c528]
    call sub_00444630
    mov dword ptr [d_0045c528], ebp
    jmp loc_00444f22
loc_00444ed3:
    mov eax, dword ptr [d_0045c54c]
    call sub_00441e50
    xor ebx, ebx
    mov ecx, dword ptr [d_0045c528]
    mov dword ptr [d_0045c54c], ebx
    test ecx, ecx
    je loc_00444f04
    call sub_00445228
    mov eax, dword ptr [d_0045c528]
    call sub_00444630
    mov dword ptr [d_0045c528], ebx
loc_00444f04:
    mov eax, dword ptr [d_0045c55c]
    call sub_00433d18
    cmp dword ptr [d_0045c554], 0
    je loc_00444f22
    mov eax, dword ptr [d_0045c540]
    call dword ptr [d_0045c554]
loc_00444f22:
    call sub_00433c6c
    mov eax, 1
    pop ebp
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    mov eax, dword ptr [d_0045c530]
    ret
    .byte 0x8b,0xc0
ptr_00444f3c:
    .long loc_00445185
    .long ptr_004450d6
    .long ptr_00445162
    .long ptr_00445172
sub_00444f4c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov eax, dword ptr [d_0045c530]
    xor ebp, ebp
    cmp eax, 1
    jb loc_00444f65
    jbe loc_00444fad
    jmp loc_004451b0
loc_00444f65:
    test eax, eax
    jne loc_004451b0
    mov ebx, dword ptr [d_0045c538]
    inc ebx
    mov eax, dword ptr [d_0045c544]
    mov dword ptr [d_0045c538], ebx
    call sub_0043ad68
    mov ecx, dword ptr [d_0045c52c]
    mov dword ptr [d_0045c534], eax
    cmp ecx, 0xfff
    sete al
    and eax, 0xff
    je loc_004451b0
    call sub_00445248
    jmp loc_004451b0
loc_00444fad:
    mov eax, dword ptr [d_0045c52c]
    cmp eax, dword ptr [d_0045c550]
    jl loc_00444fd1
    call sub_004452cc
    test eax, eax
    jne loc_00444fd1
    call sub_00444e74
    mov eax, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_00444fd1:
    mov edx, dword ptr [d_0045c52c]
    lea eax, [edx*4]
    sub eax, edx
    lea edx, [eax*8]
    mov eax, dword ptr [d_0045c528]
    add eax, edx
    mov ebx, dword ptr [d_004a40a8]
    cmp ebx, dword ptr [eax + 8]
    jae loc_00445039
    mov ecx, dword ptr [d_004a40a4]
    mov edx, dword ptr [eax + 4]
    cmp edx, ecx
    jbe loc_00445039
    mov edi, dword ptr [d_004a40a8]
    mov ebx, edx
    mov edx, dword ptr [d_0045c538]
    sub ebx, ecx
    sub edx, edi
    imul ebx, edx
    mov esi, dword ptr [eax + 8]
    sub esi, edi
    mov edx, edi
    mov eax, ebx
    xor edx, edi
    div esi
    lea edx, [ecx + eax]
loc_0044502b:
    mov eax, dword ptr [d_0045c544]
    call sub_0043ad68
    cmp eax, edx
    jb loc_0044502b
loc_00445039:
    inc dword ptr [d_0045c538]
loc_0044503f:
    imul eax, dword ptr [d_0045c52c], 0x18
    mov edx, dword ptr [d_0045c528]
    add edx, eax
    mov eax, dword ptr [d_0045c538]
    cmp eax, dword ptr [edx + 8]
    jb loc_004451b0
    mov eax, dword ptr [d_0045c544]
    call sub_0043ad68
    imul ebx, dword ptr [d_0045c52c], 0x18
    mov edx, dword ptr [d_0045c528]
    add edx, ebx
    mov ebx, dword ptr [edx + 4]
    add ebx, 5
    mov dword ptr [d_0045c534], eax
    cmp eax, ebx
    ja loc_0044508e
    mov edx, dword ptr [edx + 4]
    sub edx, 5
    cmp eax, edx
    jae loc_004450b5
loc_0044508e:
    imul eax, dword ptr [d_0045c52c], 0x18
    mov edx, dword ptr [d_0045c528]
    add edx, eax
    mov eax, dword ptr [d_0045c534]
    mov edi, dword ptr [edx + 4]
    mov edx, dword ptr [d_0045c544]
    sub eax, edi
    add edx, eax
    mov dword ptr [d_0045c544], edx
loc_004450b5:
    imul edx, dword ptr [d_0045c52c], 0x18
    mov eax, dword ptr [d_0045c528]
    add eax, edx
    mov edx, dword ptr [eax]
    cmp edx, 3
    ja loc_00445185
    jmp dword ptr cs:[edx*4 + ptr_00444f3c]
ptr_004450d6:
    mov dword ptr [d_0045c530], 2
    call sub_00433d90
    mov esi, dword ptr [d_0045c52c]
    mov dword ptr [d_0045c55c], eax
    imul eax, esi, 0x18
    mov edx, dword ptr [d_0045c528]
    mov eax, dword ptr [edx + eax + 0x14]
    call sub_00433d18
loc_00445102:
    call sub_004318c4
    test eax, eax
    je loc_00445112
    call sub_004313c8
    jmp loc_00445102
loc_00445112:
    mov dword ptr [d_0045c530], 1
    call sub_00431360
    imul edx, dword ptr [d_0045c52c], 0x18
    mov eax, dword ptr [d_0045c528]
    add eax, edx
    mov edx, dword ptr [eax + 0x10]
    mov eax, dword ptr [eax + 0xc]
    call sub_00431828
    call sub_00431178
    call sub_00433c6c
    mov eax, dword ptr [d_0045c558]
    xor edx, edx
    mov dword ptr [d_0045c53c], eax
    call sub_0043acf8
    mov dword ptr [d_0045c544], eax
    mov dword ptr [d_0045c538], edx
    jmp loc_00445185
ptr_00445162:
    mov ax, word ptr [eax + 0xc]
    and eax, 0xffff
    call sub_00433e14
    jmp loc_00445185
ptr_00445172:
    mov ebx, dword ptr [eax + 0x14]
    mov edx, dword ptr [eax + 0x10]
    mov eax, dword ptr [eax + 0xc]
    mov ebp, 3
    call sub_004314c0
loc_00445185:
    mov ebx, dword ptr [d_0045c52c]
    imul eax, ebx, 0x18
    mov ecx, 6
    mov esi, dword ptr [d_0045c528]
    mov edi, offset d_004a40a0
    add esi, eax
    rep movsd dword ptr es:[edi], dword ptr [esi]
    lea ecx, [ebx + 1]
    mov dword ptr [d_0045c52c], ecx
    jmp loc_0044503f
loc_004451b0:
    mov eax, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push edx
    mov edx, dword ptr [d_0045c528]
    test edx, edx
    jne loc_004451e9
    mov eax, 0x18000
    call sub_004444b0
    mov dword ptr [d_0045c528], eax
    test eax, eax
    je loc_004451e9
    je loc_004451e2
    mov dword ptr [d_0045c52c], edx
loc_004451e2:
    mov eax, 1
    pop edx
    ret
loc_004451e9:
    xor eax, eax
    pop edx
    ret
    .byte 0x8d,0x40,0x00
    push ecx
    push edx
    push esi
    mov edx, dword ptr [d_0045c528]
    test edx, edx
    je loc_00445222
    je loc_00445207
    xor ecx, ecx
    mov dword ptr [d_0045c52c], ecx
loc_00445207:
    mov eax, dword ptr [d_0045c528]
    call sub_00444630
    xor esi, esi
    mov eax, 1
    mov dword ptr [d_0045c528], esi
    pop esi
    pop edx
    pop ecx
    ret
loc_00445222:
    xor eax, eax
    pop esi
    pop edx
    pop ecx
    ret
sub_00445228:
    push ebx
    cmp dword ptr [d_0045c528], 0
    je loc_00445241
    xor ebx, ebx
    mov eax, 1
    mov dword ptr [d_0045c52c], ebx
    pop ebx
    ret
loc_00445241:
    xor eax, eax
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_00445248:
    push ebx
    push ecx
    push edx
    push esi
    cmp dword ptr [d_0045c528], 0
    # je 0x4452c3
    .byte 0x0f,0x84
    .long loc_004452c3 - . - 4
    cmp dword ptr [d_0045c54c], 0
    je loc_004452c3
    mov ecx, dword ptr [d_0045c52c]
    xor ebx, ebx
    test ecx, ecx
    jle loc_00445294
    xor ecx, ecx
loc_00445270:
    mov eax, dword ptr [d_0045c528]
    mov edx, dword ptr [d_0045c54c]
    add eax, ecx
    call sub_00445358
    test eax, eax
    je loc_00445294
    mov esi, dword ptr [d_0045c52c]
    inc ebx
    add ecx, 0x18
    cmp ebx, esi
    jl loc_00445270
loc_00445294:
    cmp ebx, dword ptr [d_0045c52c]
    jne loc_004452c3
    cmp dword ptr [d_0045c528], 0
    je loc_004452b3
    xor eax, eax
    mov dword ptr [d_0045c52c], eax
    mov eax, 1
    jmp loc_004452b5
loc_004452b3:
    xor eax, eax
loc_004452b5:
    test eax, eax
    je loc_004452c3
    mov eax, 1
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_004452c3:
    xor eax, eax
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_004452cc:
    push ebx
    push ecx
    push edx
    push esi
    mov ecx, dword ptr [d_0045c550]
    cmp dword ptr [d_0045c54c], 0
    je loc_00445339
    cmp dword ptr [d_0045c528], 0
    je loc_004452f7
    xor esi, esi
    mov eax, 1
    mov dword ptr [d_0045c52c], esi
    jmp loc_004452f9
loc_004452f7:
    xor eax, eax
loc_004452f9:
    cmp eax, 1
    jne loc_00445339
    xor ecx, ecx
loc_00445300:
    imul ebx, ecx, 0x18
    mov eax, dword ptr [d_0045c528]
    mov edx, dword ptr [d_0045c54c]
    add eax, ebx
    mov dword ptr [d_0045c550], ecx
    call sub_0044543c
    mov ecx, dword ptr [d_0045c550]
    test eax, eax
    je loc_0044532e
    inc ecx
    cmp ecx, 0x1000
    jl loc_00445300
loc_0044532e:
    test ecx, ecx
    je loc_00445339
    mov eax, 1
    jmp loc_0044533b
loc_00445339:
    xor eax, eax
loc_0044533b:
    mov dword ptr [d_0045c550], ecx
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_00445348:
    .long loc_00445425
    .long ptr_004453ac
    .long ptr_004453df
    .long ptr_004453f3
sub_00445358:
    push ebx
    push ecx
    push esi
    mov ecx, eax
    mov ebx, edx
    mov edx, dword ptr [eax]
    mov eax, ebx
    xor esi, esi
    call sub_00440108
    cmp eax, -1
    je loc_00445425
    mov eax, ebx
    mov edx, dword ptr [ecx + 4]
    call sub_00440108
    cmp eax, -1
    je loc_00445425
    mov eax, ebx
    mov edx, dword ptr [ecx + 8]
    call sub_00440108
    cmp eax, -1
    je loc_00445425
    mov eax, dword ptr [ecx]
    cmp eax, 3
    # ja 0x445425
    .byte 0x0f,0x87
    .long loc_00445425 - . - 4
    jmp dword ptr cs:[eax*4 + ptr_00445348]
ptr_004453ac:
    mov eax, ebx
    mov edx, dword ptr [ecx + 0xc]
    call sub_00440108
    cmp eax, -1
    # je 0x445425
    .byte 0x0f,0x84
    .long loc_00445425 - . - 4
    mov eax, ebx
    mov edx, dword ptr [ecx + 0x10]
    call sub_00440108
    cmp eax, -1
    je loc_00445425
    mov eax, ebx
    mov edx, dword ptr [ecx + 0x14]
    call sub_00440108
    cmp eax, -1
    je loc_00445425
    jmp loc_00445420
ptr_004453df:
    xor edx, edx
    mov eax, ebx
    mov dx, word ptr [ecx + 0xc]
    call sub_0044008c
    cmp eax, -1
    je loc_00445425
    jmp loc_00445420
ptr_004453f3:
    mov eax, ebx
    mov edx, dword ptr [ecx + 0xc]
    call sub_00440108
    cmp eax, -1
    je loc_00445425
    mov eax, ebx
    mov edx, dword ptr [ecx + 0x10]
    call sub_00440108
    cmp eax, -1
    je loc_00445425
    mov eax, ebx
    mov edx, dword ptr [ecx + 0x14]
    call sub_00440108
    cmp eax, -1
    je loc_00445425
loc_00445420:
    mov esi, 1
loc_00445425:
    mov eax, esi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
ptr_0044542c:
    .long loc_00445506
    .long ptr_00445490
    .long ptr_004454c3
    .long ptr_004454d4
sub_0044543c:
    push ebx
    push ecx
    push esi
    mov ecx, eax
    mov ebx, edx
    mov edx, eax
    mov eax, ebx
    xor esi, esi
    call sub_0044000c
    cmp eax, -1
    je loc_00445506
    lea edx, [ecx + 4]
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    je loc_00445506
    lea edx, [ecx + 8]
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    je loc_00445506
    mov eax, dword ptr [ecx]
    cmp eax, 3
    # ja 0x445506
    .byte 0x0f,0x87
    .long loc_00445506 - . - 4
    jmp dword ptr cs:[eax*4 + ptr_0044542c]
ptr_00445490:
    lea edx, [ecx + 0xc]
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    # je 0x445506
    .byte 0x0f,0x84
    .long loc_00445506 - . - 4
    lea edx, [ecx + 0x10]
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    je loc_00445506
    lea edx, [ecx + 0x14]
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    je loc_00445506
    jmp loc_00445501
ptr_004454c3:
    lea edx, [ecx + 0xc]
    mov eax, ebx
    call sub_0043ffac
    cmp eax, -1
    je loc_00445506
    jmp loc_00445501
ptr_004454d4:
    lea edx, [ecx + 0xc]
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    je loc_00445506
    lea edx, [ecx + 0x10]
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    je loc_00445506
    lea edx, [ecx + 0x14]
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    je loc_00445506
loc_00445501:
    mov esi, 1
loc_00445506:
    mov eax, esi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0044550c:
    push ecx
    push esi
    push edi
    mov ecx, ebx
    cmp edx, eax
    je loc_00445555
    jae loc_0044553f
    lea edi, [edx + ebx]
    cmp edi, eax
    jbe loc_0044553f
    lea esi, [edi - 1]
    lea edi, [eax + ebx]
    mov edx, ds
    dec edi
    push es
    mov es, edx
    std
    dec esi
    dec edi
    shr ecx, 1
    rep movsw word ptr es:[edi], word ptr [esi]
    adc ecx, ecx
    inc esi
    inc edi
    # rep movsb byte ptr es:[edi], byte ptr [esi]
    .byte 0x66,0xf3,0xa4
    pop es
    cld
    pop edi
    pop esi
    pop ecx
    ret
loc_0044553f:
    mov esi, edx
    mov edi, eax
    mov edx, ds
    push es
    mov es, edx
    push ecx
    shr ecx, 2
    rep movsd dword ptr es:[edi], dword ptr [esi]
    pop ecx
    and ecx, 3
    rep movsb byte ptr es:[edi], byte ptr [esi]
    pop es
loc_00445555:
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_00445560:
    push edx
    cmp dword ptr [d_0045c560], 0
    je loc_00445581
loc_0044556a:
    mov eax, dword ptr [d_0045c560]
    mov edx, dword ptr [eax + 0x10]
    call sub_00444630
    mov dword ptr [d_0045c560], edx
    test edx, edx
    jne loc_0044556a
loc_00445581:
    pop edx
    ret
    .byte 0x90
sub_00445584:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x38
    mov ebx, eax
    mov edi, esp
    mov esi, edx
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov eax, dword ptr [esp + 8]
    mov ebp, dword ptr [esp]
    inc eax
    mov ecx, dword ptr [esp + 4]
    mov dword ptr [esp + 0x30], eax
    mov eax, dword ptr [esp + 0xc]
    dec ebp
    inc eax
    dec ecx
    mov dword ptr [esp + 0x34], eax
loc_004455b1:
    mov edx, dword ptr [ebx]
    test edx, edx
    je loc_00445703
    mov esi, dword ptr [esp + 8]
    cmp esi, dword ptr [edx]
    jl loc_004455dd
    mov edi, dword ptr [esp + 0xc]
    cmp edi, dword ptr [edx + 4]
    jl loc_004455dd
    mov esi, dword ptr [esp]
    cmp esi, dword ptr [edx + 8]
    jg loc_004455dd
    mov edi, dword ptr [esp + 4]
    cmp edi, dword ptr [edx + 0xc]
    jle loc_004455e2
loc_004455dd:
    lea ebx, [edx + 0x10]
    jmp loc_004455b1
loc_004455e2:
    lea edi, [esp + 0x20]
    mov esi, edx
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov eax, dword ptr [edx + 0x10]
    mov dword ptr [ebx], eax
    mov eax, dword ptr [d_0045c560]
    mov dword ptr [d_0045c560], edx
    mov dword ptr [edx + 0x10], eax
    mov eax, dword ptr [esp + 0x24]
    cmp eax, dword ptr [esp + 4]
    jge loc_00445642
    lea edi, [esp + 0x10]
    lea esi, [esp + 0x20]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    call sub_00445818
    mov dword ptr [esp + 0x1c], ecx
    test eax, eax
    je loc_00445703
    lea esi, [esp + 0x10]
    mov edi, eax
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov edx, dword ptr [ebx]
    mov dword ptr [eax + 0x10], edx
    mov dword ptr [ebx], eax
    lea ebx, [eax + 0x10]
    mov eax, dword ptr [esp + 4]
    mov dword ptr [esp + 0x24], eax
loc_00445642:
    mov eax, dword ptr [esp + 0x2c]
    cmp eax, dword ptr [esp + 0xc]
    jle loc_00445689
    lea edi, [esp + 0x10]
    lea esi, [esp + 0x20]
    mov eax, dword ptr [esp + 0x34]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov dword ptr [esp + 0x14], eax
    call sub_00445818
    test eax, eax
    je loc_00445703
    lea esi, [esp + 0x10]
    mov edi, eax
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov edx, dword ptr [ebx]
    mov dword ptr [eax + 0x10], edx
    mov dword ptr [ebx], eax
    lea ebx, [eax + 0x10]
    mov eax, dword ptr [esp + 0xc]
    mov dword ptr [esp + 0x2c], eax
loc_00445689:
    mov eax, dword ptr [esp + 0x20]
    cmp eax, dword ptr [esp]
    jge loc_004456bf
    lea edi, [esp + 0x10]
    lea esi, [esp + 0x20]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    call sub_00445818
    mov dword ptr [esp + 0x18], ebp
    test eax, eax
    je loc_00445703
    lea esi, [esp + 0x10]
    mov edi, eax
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov edx, dword ptr [ebx]
    mov dword ptr [eax + 0x10], edx
    mov dword ptr [ebx], eax
    lea ebx, [eax + 0x10]
loc_004456bf:
    mov eax, dword ptr [esp + 0x28]
    cmp eax, dword ptr [esp + 8]
    jle loc_004455b1
    lea edi, [esp + 0x10]
    lea esi, [esp + 0x20]
    mov eax, dword ptr [esp + 0x30]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov dword ptr [esp + 0x10], eax
    call sub_00445818
    test eax, eax
    je loc_00445703
    lea esi, [esp + 0x10]
    mov edi, eax
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov edx, dword ptr [ebx]
    mov dword ptr [eax + 0x10], edx
    mov dword ptr [ebx], eax
    lea ebx, [eax + 0x10]
    jmp loc_004455b1
loc_00445703:
    add esp, 0x38
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0044570c:
    push ebx
    push esi
    push edi
    sub esp, 0x54
    mov esi, eax
    mov eax, edx
    xor edx, edx
    lea ebx, [esp + 0x40]
    mov dword ptr [esp + 0x50], edx
    mov edx, esi
    call sub_004458c8
    test eax, eax
    jne loc_004457ec
    mov eax, dword ptr [esi]
    mov dword ptr [esp], eax
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esi + 8]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 0x44]
    dec eax
    mov dword ptr [esp + 0xc], eax
    mov eax, dword ptr [esi]
    mov dword ptr [esp + 0x10], eax
    mov eax, dword ptr [esp + 0x44]
    mov dword ptr [esp + 0x14], eax
    mov eax, dword ptr [esp + 0x40]
    dec eax
    mov dword ptr [esp + 0x18], eax
    mov eax, dword ptr [esp + 0x4c]
    mov dword ptr [esp + 0x1c], eax
    mov eax, dword ptr [esp + 0x48]
    inc eax
    mov dword ptr [esp + 0x20], eax
    mov eax, dword ptr [esp + 0x44]
    mov dword ptr [esp + 0x24], eax
    mov eax, dword ptr [esi + 8]
    mov dword ptr [esp + 0x28], eax
    mov eax, dword ptr [esp + 0x4c]
    mov dword ptr [esp + 0x2c], eax
    mov eax, dword ptr [esi]
    mov dword ptr [esp + 0x30], eax
    mov eax, dword ptr [esp + 0x4c]
    inc eax
    mov dword ptr [esp + 0x34], eax
    mov eax, dword ptr [esi + 8]
    mov dword ptr [esp + 0x38], eax
    lea ebx, [esp + 0x50]
    mov eax, dword ptr [esi + 0xc]
    xor edx, edx
    mov dword ptr [esp + 0x3c], eax
loc_004457ad:
    mov eax, dword ptr [esp + edx]
    cmp eax, dword ptr [esp + edx + 8]
    jg loc_004457e2
    mov eax, dword ptr [esp + edx + 4]
    cmp eax, dword ptr [esp + edx + 0xc]
    jg loc_004457e2
    call sub_00445818
    mov dword ptr [ebx], eax
    test eax, eax
    je loc_0044580e
    mov edi, eax
    lea esi, [esp + edx]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov eax, dword ptr [ebx]
    mov dword ptr [eax + 0x10], 0
    mov ebx, dword ptr [ebx]
    add ebx, 0x10
loc_004457e2:
    add edx, 0x10
    cmp edx, 0x40
    jl loc_004457ad
    jmp loc_0044580a
loc_004457ec:
    call sub_00445818
    mov dword ptr [esp + 0x50], eax
    test eax, eax
    je loc_0044580a
    mov edi, eax
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov eax, dword ptr [esp + 0x50]
    mov dword ptr [eax + 0x10], 0
loc_0044580a:
    mov eax, dword ptr [esp + 0x50]
loc_0044580e:
    add esp, 0x54
    pop edi
    pop esi
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_00445818:
    push ebx
    push edx
    mov edx, dword ptr [d_0045c560]
    test edx, edx
    jne loc_00445846
loc_00445824:
    mov eax, 0x14
    call sub_004444b0
    test eax, eax
    je loc_00445846
    mov ebx, dword ptr [d_0045c560]
    inc edx
    mov dword ptr [d_0045c560], eax
    mov dword ptr [eax + 0x10], ebx
    cmp edx, 0xa
    jl loc_00445824
loc_00445846:
    mov ebx, dword ptr [d_0045c560]
    test ebx, ebx
    jne loc_00445855
    xor eax, eax
    pop edx
    pop ebx
    ret
loc_00445855:
    mov edx, dword ptr [ebx + 0x10]
    mov eax, ebx
    mov dword ptr [d_0045c560], edx
    pop edx
    pop ebx
    ret
    .byte 0x90
sub_00445864:
    push edx
    mov edx, dword ptr [d_0045c560]
    mov dword ptr [d_0045c560], eax
    mov dword ptr [eax + 0x10], edx
    pop edx
    ret
    .byte 0x8d,0x40,0x00
    push ecx
    push esi
    push edi
    push ebp
    mov ecx, dword ptr [eax]
    mov esi, dword ptr [edx]
    cmp ecx, esi
    jge loc_00445888
    mov dword ptr [ebx], ecx
    jmp loc_0044588a
loc_00445888:
    mov dword ptr [ebx], esi
loc_0044588a:
    mov ecx, dword ptr [eax + 4]
    mov edi, dword ptr [edx + 4]
    cmp ecx, edi
    jge loc_00445899
    mov dword ptr [ebx + 4], ecx
    jmp loc_0044589c
loc_00445899:
    mov dword ptr [ebx + 4], edi
loc_0044589c:
    mov ecx, dword ptr [eax + 8]
    mov ebp, dword ptr [edx + 8]
    cmp ecx, ebp
    jle loc_004458ab
    mov dword ptr [ebx + 8], ecx
    jmp loc_004458ae
loc_004458ab:
    mov dword ptr [ebx + 8], ebp
loc_004458ae:
    mov ecx, dword ptr [eax + 0xc]
    mov esi, dword ptr [edx + 0xc]
    cmp ecx, esi
    jle loc_004458c0
    mov dword ptr [ebx + 0xc], ecx
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_004458c0:
    mov dword ptr [ebx + 0xc], esi
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_004458c8:
    push ecx
    push esi
    push edi
    push ebp
    mov edi, ebx
    mov esi, eax
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov ecx, dword ptr [eax]
    cmp ecx, dword ptr [edx + 8]
    jg loc_004458f4
    mov ecx, dword ptr [eax + 8]
    mov edi, dword ptr [edx]
    cmp ecx, edi
    jl loc_004458f4
    mov ecx, dword ptr [eax + 4]
    cmp ecx, dword ptr [edx + 0xc]
    jg loc_004458f4
    mov ecx, dword ptr [eax + 0xc]
    cmp ecx, dword ptr [edx + 4]
    jge loc_004458fe
loc_004458f4:
    mov eax, 0xffffffff
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_004458fe:
    cmp edi, dword ptr [eax]
    jle loc_00445904
    mov dword ptr [ebx], edi
loc_00445904:
    mov ecx, dword ptr [eax + 8]
    mov ebp, dword ptr [edx + 8]
    cmp ecx, ebp
    jle loc_00445911
    mov dword ptr [ebx + 8], ebp
loc_00445911:
    mov ecx, dword ptr [eax + 4]
    mov esi, dword ptr [edx + 4]
    cmp ecx, esi
    jge loc_0044591e
    mov dword ptr [ebx + 4], esi
loc_0044591e:
    mov eax, dword ptr [eax + 0xc]
    mov edi, dword ptr [edx + 0xc]
    cmp eax, edi
    jle loc_0044592b
    mov dword ptr [ebx + 0xc], edi
loc_0044592b:
    xor eax, eax
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x00,0x00
sub_00445934:
    push eax
    sub esp, 0x14
    fstp tbyte ptr [esp]
    mov eax, dword ptr [esp + 8]
    and eax, 0x7fff
    je loc_004459db
    cmp eax, 0x7fff
    je loc_004459db
    mov eax, dword ptr [esp + 4]
    add eax, eax
    jae loc_004459db
    fld tbyte ptr [esp]
    fabs
    fcomp dword ptr [d_0045ce8c]
    fnstsw ax
    sahf
    jae loc_004459db
    fld tbyte ptr [esp]
    fsincos
    fstp tbyte ptr [esp]
    fld tbyte ptr [esp]
    mov eax, dword ptr [esp + 4]
    add eax, eax
    xor eax, 0xe000000
    test eax, 0xe000000
    je loc_00445993
    fdivp st(1)
    fld1
    add esp, 0x14
    pop eax
    ret
loc_00445993:
    shr eax, 0x1c
    cmp byte ptr [eax + d_0045ce78], ah
    jne loc_004459a7
    fdivp st(1)
    fld1
    add esp, 0x14
    pop eax
    ret
loc_004459a7:
    wait
    wait
    fnstcw word ptr [esp + 0x10]
    mov eax, dword ptr [esp + 0x10]
    or eax, 0x33f
    mov dword ptr [esp + 0xc], eax
    fldcw word ptr [esp + 0xc]
    fmul dword ptr [d_0045ce88]
    fxch st(1)
    fmul dword ptr [d_0045ce88]
    fxch st(1)
    fldcw word ptr [esp + 0x10]
    fdivp st(1)
    fld1
    add esp, 0x14
    pop eax
    ret
loc_004459db:
    fld tbyte ptr [esp]
    fptan
    add esp, 0x14
    pop eax
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_004459f0:
    or ecx, ecx
    je loc_00445a20
    cmp byte ptr [eax], dl
loc_004459f6:
    test al, 3
    je loc_00445a03
    mov byte ptr [eax], dl
    inc eax
    ror edx, 8
    dec ecx
    jne loc_004459f6
loc_00445a03:
    push ecx
    shr ecx, 2
    call sub_00445a27
    pop ecx
    and ecx, 3
    je loc_00445a20
    mov byte ptr [eax], dl
    dec ecx
    je loc_00445a20
    mov byte ptr [eax + 1], dh
    dec ecx
    je loc_00445a20
    mov byte ptr [eax + 2], dl
loc_00445a20:
    ret
    .byte 0x90,0x90,0x90,0x90,0x90,0x90
sub_00445a27:
    or ecx, ecx
    je loc_00445a92
loc_00445a2b:
    test al, 0x1f
    je loc_00445a37
    mov dword ptr [eax], edx
    lea eax, [eax + 4]
    dec ecx
    jne loc_00445a2b
loc_00445a37:
    push ecx
    shr ecx, 2
    je loc_00445a77
    dec ecx
    je loc_00445a69
loc_00445a40:
    mov dword ptr [eax], edx
    mov dword ptr [eax + 4], edx
    dec ecx
    mov dword ptr [eax + 8], edx
    mov dword ptr [eax + 0xc], edx
    je loc_00445a66
    cmp byte ptr [eax + 0x20], dl
    mov dword ptr [eax + 0x10], edx
    mov dword ptr [eax + 0x14], edx
    dec ecx
    mov dword ptr [eax + 0x18], edx
    mov dword ptr [eax + 0x1c], edx
    lea eax, [eax + 0x20]
    jne loc_00445a40
    lea eax, [eax - 0x10]
loc_00445a66:
    lea eax, [eax + 0x10]
loc_00445a69:
    mov dword ptr [eax], edx
    mov dword ptr [eax + 4], edx
    mov dword ptr [eax + 8], edx
    mov dword ptr [eax + 0xc], edx
    lea eax, [eax + 0x10]
loc_00445a77:
    pop ecx
    and ecx, 3
    je loc_00445a92
    mov dword ptr [eax], edx
    lea eax, [eax + 4]
    dec ecx
    je loc_00445a92
    mov dword ptr [eax], edx
    lea eax, [eax + 4]
    dec ecx
    je loc_00445a92
    mov dword ptr [eax], edx
    lea eax, [eax + 4]
loc_00445a92:
    ret
ptr_00445a93:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    cmp dword ptr [d_004a44c8], 0
    je loc_00445aac
    mov eax, 3
    ret
loc_00445aac:
    mov eax, dword ptr [d_004a37cc]
    add eax, 0x24
    mov dword ptr [d_004a44b8], eax
    mov dword ptr [d_004a44c8], 1
    xor eax, eax
    ret
ptr_00445ac6:
    # push 8
    .byte 0x68,0x08,0x00,0x00,0x00
    call sub_00446641
    push ebx
    cmp dword ptr [d_004a44c8], 0
    jne loc_00445ae1
    mov eax, 0xe
    pop ebx
    ret
loc_00445ae1:
    cmp dword ptr [d_004a44c4], 0
    je loc_00445aef
    call sub_00445c4d
loc_00445aef:
    xor ebx, ebx
    mov dword ptr [d_004a44c8], ebx
    xor eax, eax
    pop ebx
    ret
ptr_00445afb:
    # push 0x1c
    .byte 0x68,0x1c,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    push esi
    push edi
    cmp dword ptr [d_004a44c8], 0
    jne loc_00445b1d
    mov eax, 0xe
    jmp loc_00445c47
loc_00445b1d:
    xor ecx, ecx
    mov dword ptr [d_004a44cc], ecx
    mov eax, dword ptr [d_004a44b8]
    cmp dword ptr [eax], 0
    jne loc_00445b35
    mov dword ptr [eax], 2
loc_00445b35:
    mov eax, dword ptr [d_004a44b8]
    mov esi, dword ptr [eax]
    cmp esi, 1
    jl loc_00445b7b
    cmp esi, 4
    jg loc_00445b7b
    cmp dword ptr [eax + 4], 0
    jne loc_00445b5d
    mov dx, word ptr [esi*2 + d_0045c566]
    and edx, 0xffff
    mov dword ptr [eax + 4], edx
loc_00445b5d:
    mov eax, dword ptr [d_004a44b8]
    cmp dword ptr [eax + 8], 0
    jne loc_00445b7b
    mov edx, dword ptr [eax]
    mov dx, word ptr [edx*2 + d_0045c56e]
    and edx, 0xffff
    mov dword ptr [eax + 8], edx
loc_00445b7b:
    mov eax, dword ptr [d_004a44b8]
    cmp dword ptr [eax + 0xc], 0
    jne loc_00445b8d
    mov dword ptr [eax + 0xc], 0x4b00
loc_00445b8d:
    push 1
    mov eax, dword ptr [d_004a44b8]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [eax]
    dec eax
    mov ecx, 8
    mov ebx, 0x4e
    call sub_0044d280
    mov dword ptr [d_004a44bc], eax
    mov ebx, dword ptr [eax + 0xc]
    test ebx, ebx
    je loc_00445bc1
    mov eax, ebx
    call sub_00445fa2
    jmp loc_00445c47
loc_00445bc1:
    mov ecx, eax
    mov edx, 1
    call dword ptr [ecx + 0x39]
    mov ecx, dword ptr [d_004a44bc]
    mov edx, 1
    mov eax, ecx
    call dword ptr [ecx + 0x31]
    call sub_0044608d
    test eax, eax
    jne loc_00445beb
    mov eax, 0xa
    jmp loc_00445c47
loc_00445beb:
    mov eax, dword ptr [d_004a44bc]
    call sub_0044d400
    mov eax, dword ptr [d_004a44bc]
    mov edx, offset d_0045c578
    call sub_0044dab8
    mov eax, dword ptr [d_004a44b8]
    mov esi, dword ptr [eax + 0x14]
    test esi, esi
    je loc_00445c1c
    mov edx, esi
    mov eax, dword ptr [d_004a44bc]
    call sub_0044dab8
loc_00445c1c:
    mov eax, dword ptr [d_004a44b8]
    mov edi, dword ptr [eax + 0x10]
    test edi, edi
    je loc_00445c36
    mov edx, edi
    mov eax, dword ptr [d_004a44bc]
    call sub_0044d6a8
    jmp loc_00445c45
loc_00445c36:
    mov eax, dword ptr [d_004a44bc]
    mov edx, offset d_0045aef8
    call sub_0044dab8
loc_00445c45:
    xor eax, eax
loc_00445c47:
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00445c4d:
    # push 0x1c
    .byte 0x68,0x1c,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    cmp dword ptr [d_004a44c8], 0
    jne loc_00445c6d
    mov eax, 0xe
    jmp loc_00445cd1
loc_00445c6d:
    mov ecx, dword ptr [d_004a44c4]
    test ecx, ecx
    je loc_00445c94
loc_00445c77:
    mov eax, dword ptr [d_004a44bc]
    call sub_0044de50
    test eax, eax
    je loc_00445c77
    mov ecx, dword ptr [d_004a44bc]
    xor edx, edx
    mov eax, ecx
    call dword ptr [ecx + 0x39]
    jmp loc_00445cae
loc_00445c94:
    mov eax, dword ptr [d_004a44bc]
    mov ebx, 0xfffffffe
    mov edx, offset d_0045aefb
    call sub_0044db94
    mov dword ptr [d_004a44cc], ecx
loc_00445cae:
    mov esi, dword ptr [d_004a44bc]
    test esi, esi
    je loc_00445cc7
    mov ecx, esi
    mov eax, esi
    call dword ptr [ecx + 0x25]
    xor edi, edi
    mov dword ptr [d_004a44bc], edi
loc_00445cc7:
    xor ebp, ebp
    mov dword ptr [d_004a44c4], ebp
    xor eax, eax
loc_00445cd1:
    pop ebp
    jmp loc_00445c47
ptr_00445cd7:
    # push 0xc
    .byte 0x68,0x0c,0x00,0x00,0x00
    call sub_00446641
    push esi
    push edi
    mov edi, edx
    mov esi, ebx
    mov edx, dword ptr [ebx]
    test edx, edx
    jle loc_00445cf5
    cmp edx, 0x200
    jle loc_00445cfd
loc_00445cf5:
    mov eax, 6
    pop edi
    pop esi
    ret
loc_00445cfd:
    mov eax, dword ptr [d_004a44bc]
    call sub_0044ded0
    test eax, eax
    jne loc_00445d13
    mov eax, 7
    pop edi
    pop esi
    ret
loc_00445d13:
    mov byte ptr [d_004a44d0], 0xda
    mov dl, byte ptr [d_004a44db]
    xor eax, eax
    mov al, dl
    mov dword ptr [d_004a44d1], eax
    inc dl
    mov byte ptr [d_004a44db], dl
    mov ax, word ptr [ebx]
    mov word ptr [d_004a44d5], ax
    mov ebx, offset d_004a44d0
    xor edx, edx
    mov eax, 7
    call sub_0044def0
    mov word ptr [d_004a44d7], ax
    mov eax, dword ptr [esi]
    mov ebx, edi
    xor edx, edx
    call sub_0044def0
    mov word ptr [d_004a44d9], ax
    mov eax, dword ptr [d_004a44bc]
    mov ecx, 0x3e8
    mov ebx, 0xb
    mov edx, offset d_004a44d0
    call sub_0044df80
    test eax, eax
    je loc_00445d8f
loc_00445d7f:
    mov eax, dword ptr [d_004a44bc]
    mov eax, dword ptr [eax + 0xc]
    call sub_00445fa2
    pop edi
    pop esi
    ret
loc_00445d8f:
    mov ebx, dword ptr [esi]
    mov eax, dword ptr [d_004a44bc]
    mov ecx, 0x3e8
    mov edx, edi
    call sub_0044df80
    test eax, eax
    jne loc_00445d7f
    mov eax, dword ptr [d_004a44bc]
    mov eax, dword ptr [eax + 0x15]
    mov dword ptr [esi], eax
    xor eax, eax
    pop edi
    pop esi
    ret
ptr_00445db5:
    # push 0x20
    .byte 0x68,0x20,0x00,0x00,0x00
    call sub_00446641
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    push eax
    mov esi, edx
    mov edi, 0xb
    mov ebp, 1
    test eax, eax
    je loc_00445ddb
    test edx, edx
    jne loc_00445de5
loc_00445ddb:
    mov eax, 8
    jmp loc_00445f86
loc_00445de5:
    mov ebx, 0x400
    sub ebx, dword ptr [d_004a44c0]
    mov ecx, dword ptr [d_004a44bc]
    mov edx, offset d_004a40b8
    add edx, dword ptr [d_004a44c0]
    mov eax, ecx
    call dword ptr [ecx + 0x59]
    mov eax, dword ptr [d_004a44bc]
    mov eax, dword ptr [eax + 0x15]
    add dword ptr [d_004a44c0], eax
    xor ecx, ecx
    mov ebx, dword ptr [d_004a44c0]
loc_00445e1c:
    lea eax, [ecx + 4]
    cmp eax, ebx
    ja loc_00445e4a
    cmp byte ptr [ecx + d_004a40b8], 0xda
    jne loc_00445e47
    sub ebx, ecx
    mov edx, offset d_004a40b8
    add edx, ecx
    mov eax, offset d_004a40b8
    call sub_0044550c
    sub dword ptr [d_004a44c0], ecx
    jmp loc_00445e80
loc_00445e47:
    inc ecx
    jmp loc_00445e1c
loc_00445e4a:
    test ebp, ebp
    je loc_00445e80
    cmp ebx, 3
    jbe loc_00445e75
    lea edx, [ebx - 3]
    add edx, offset d_004a40b8
    mov ebx, 3
    mov eax, offset d_004a40b8
    call sub_0044550c
    mov dword ptr [d_004a44c0], 3
loc_00445e75:
    mov dword ptr [esi], 0
    jmp loc_00445f84
loc_00445e80:
    cmp edi, dword ptr [d_004a44c0]
    ja loc_00445f7e
    xor ecx, ecx
    mov cx, word ptr [d_004a40bf]
    mov ebx, offset d_004a40b8
    xor edx, edx
    mov eax, 7
    call sub_0044def0
    and eax, 0xffff
    cmp ecx, eax
    jne loc_00445f5a
    xor ecx, eax
    mov cx, word ptr [d_004a40bd]
    test ecx, ecx
    jne loc_00445ecd
    mov dword ptr [d_004a44c0], edi
loc_00445ec6:
    mov dword ptr [esi], ecx
    jmp loc_00445f84
loc_00445ecd:
    lea eax, [edi + ecx]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [d_004a44c0]
    cmp eax, dword ptr [esp + 8]
    jb loc_00445f7e
    xor eax, eax
    mov ax, word ptr [d_004a40c1]
    mov dword ptr [esp + 4], eax
    mov ebp, offset d_004a40b8
    add ebp, edi
    mov ebx, ebp
    xor edx, edx
    mov eax, ecx
    call sub_0044def0
    and eax, 0xffff
    cmp eax, dword ptr [esp + 4]
    jne loc_00445f3b
    mov ebx, ecx
    mov edx, ebp
    mov eax, dword ptr [esp]
    call sub_00451dc4
    mov ebx, dword ptr [d_004a44c0]
    sub ebx, edi
    sub ebx, ecx
    lea edx, [ecx + ebp]
    mov eax, offset d_004a40b8
    call sub_0044550c
    mov eax, dword ptr [esp + 8]
    sub dword ptr [d_004a44c0], eax
    jmp loc_00445ec6
loc_00445f3b:
    mov ebx, dword ptr [d_004a44c0]
    sub ebx, edi
    mov edx, ebp
    mov eax, offset d_004a40b8
    call sub_0044550c
    sub dword ptr [d_004a44c0], edi
    jmp loc_00445e75
loc_00445f5a:
    mov ebx, dword ptr [d_004a44c0]
    sub ebx, 4
    mov edx, offset d_004a40bc
    mov eax, offset d_004a40b8
    call sub_0044550c
    sub dword ptr [d_004a44c0], 4
    jmp loc_00445e75
loc_00445f7e:
    mov dword ptr [esi], 0
loc_00445f84:
    xor eax, eax
loc_00445f86:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
ptr_00445f8e:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    mov eax, dword ptr [d_004a44bc]
    call sub_0044e020
sub_00445fa2:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    cmp eax, -7
    jl loc_004460e8
    jle loc_0044610e
    cmp eax, -3
    jl loc_004460d9
    jle loc_00446114
    cmp eax, -2
    jle loc_0044610e
    test eax, eax
    # je 0x445fe0
    .byte 0x0f,0x84
    .long loc_00445fe0 - . - 4
loc_00445fdb:
    mov eax, 0x11
loc_00445fe0:
    ret
ptr_00445fe1:
    # push 0x64
    .byte 0x68,0x64,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    sub esp, 0x54
    cmp dword ptr [d_004a44c4], 0
    je loc_00446018
    mov eax, dword ptr [d_004a44bc]
    call sub_0044dea4
    test eax, eax
    jle loc_0044600f
    mov eax, 1
    jmp loc_00446011
loc_0044600f:
    xor eax, eax
loc_00446011:
    mov dword ptr [d_004a44c4], eax
    jmp loc_00446086
loc_00446018:
    mov eax, dword ptr [d_004a44bc]
    mov ecx, 0x50
    mov ebx, esp
    mov edx, 0x1f4
    call sub_0044dd54
    test eax, eax
    je loc_00446086
    mov ebx, 7
    mov edx, offset d_0045aefc
    mov eax, esp
    call sub_004528c8
    test eax, eax
    jne loc_0044605b
    mov ebx, 1
    mov dword ptr [d_004a44c4], ebx
    mov dword ptr [d_004a44cc], eax
    mov eax, ebx
    jmp loc_00446086
loc_0044605b:
    mov ebx, 4
    mov edx, offset d_0045af04
    mov eax, esp
    call sub_004528c8
    test eax, eax
    jne loc_00446084
    mov eax, dword ptr [d_004a44bc]
    call sub_0044d8c4
    mov dword ptr [d_004a44cc], 1
loc_00446084:
    xor eax, eax
loc_00446086:
    add esp, 0x54
    pop edx
    pop ecx
    pop ebx
    ret
sub_0044608d:
    # push 0xc
    .byte 0x68,0x0c,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push edx
    xor edx, edx
    mov eax, 0x1388
    call sub_0044da88
    mov eax, dword ptr [d_004a44bc]
    mov ebx, 0xfffffffe
    mov edx, offset d_0045aef8
    call sub_0044db94
    mov eax, dword ptr [d_004a44bc]
    mov edx, offset d_0045aef8
    call sub_0044dab8
    test eax, eax
    je loc_004460d1
    xor eax, eax
    pop edx
    pop ebx
    ret
loc_004460d1:
    mov eax, 1
    pop edx
    pop ebx
    ret
loc_004460d9:
    cmp eax, -6
    jle loc_00446126
    cmp eax, -5
    je loc_00446120
    jmp loc_00445fdb
loc_004460e8:
    cmp eax, -0x26
    jl loc_00446104
    jle loc_0044610e
    cmp eax, -0x19
    jl loc_00445fdb
    jle loc_0044610e
    cmp eax, -0xe
    je loc_0044611a
    jmp loc_00445fdb
loc_00446104:
    cmp eax, -0x27
    je loc_00446114
    jmp loc_00445fdb
loc_0044610e:
    mov eax, 8
    ret
loc_00446114:
    mov eax, 4
    ret
loc_0044611a:
    mov eax, 0xa
    ret
loc_00446120:
    mov eax, 0xc
    ret
loc_00446126:
    mov eax, 0xe
    ret
ptr_0044612c:
    # push 8
    .byte 0x68,0x08,0x00,0x00,0x00
    call sub_00446641
    push edx
    mov edx, dword ptr [d_004a48e8]
    test edx, edx
    je loc_00446148
    mov eax, 3
    pop edx
    ret
loc_00446148:
    xor ah, ah
    mov byte ptr [d_004a48fb], ah
    mov dword ptr [d_004a48e4], edx
    mov eax, dword ptr [d_004a37cc]
    add eax, 0x24
    mov dword ptr [d_004a48dc], eax
    mov dword ptr [d_004a48e8], 1
    xor eax, eax
    pop edx
    ret
ptr_00446171:
    # push 0x14
    .byte 0x68,0x14,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    cmp dword ptr [d_004a48e8], 0
    jne loc_00446190
    mov eax, 0xe
    pop edx
    pop ecx
    pop ebx
    ret
loc_00446190:
    mov eax, dword ptr [d_004a48dc]
    cmp dword ptr [eax], 0
    jne loc_004461a0
    mov dword ptr [eax], 2
loc_004461a0:
    mov eax, dword ptr [d_004a48dc]
    mov ebx, dword ptr [eax]
    cmp ebx, 1
    jl loc_004461de
    cmp ebx, 4
    jg loc_004461de
    cmp dword ptr [eax + 4], 0
    jne loc_004461c4
    xor edx, edx
    mov dx, word ptr [ebx*2 + d_0045c57e]
    mov dword ptr [eax + 4], edx
loc_004461c4:
    mov eax, dword ptr [d_004a48dc]
    cmp dword ptr [eax + 8], 0
    jne loc_004461de
    mov ecx, dword ptr [eax]
    xor edx, edx
    mov dx, word ptr [ecx*2 + d_0045c586]
    mov dword ptr [eax + 8], edx
loc_004461de:
    mov eax, dword ptr [d_004a48dc]
    cmp dword ptr [eax + 0xc], 0
    jne loc_004461f0
    mov dword ptr [eax + 0xc], 0x4b00
loc_004461f0:
    push 1
    mov eax, dword ptr [d_004a48dc]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [eax]
    dec eax
    mov ecx, 8
    mov ebx, 0x4e
    call sub_0044d280
    mov dword ptr [d_004a48e0], eax
    mov ecx, dword ptr [eax + 0xc]
    test ecx, ecx
    je loc_00446223
    mov eax, ecx
    call sub_004465aa
    pop edx
    pop ecx
    pop ebx
    ret
loc_00446223:
    mov ecx, eax
    mov edx, 1
    call dword ptr [ecx + 0x39]
    mov ecx, dword ptr [d_004a48e0]
    mov edx, 1
    mov eax, ecx
    call dword ptr [ecx + 0x31]
    mov dword ptr [d_004a48ec], 1
loc_00446247:
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
sub_0044624d:
    # push 0x10
    .byte 0x68,0x10,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push edx
    cmp dword ptr [d_004a48ec], 0
    je loc_00446284
loc_00446263:
    mov eax, dword ptr [d_004a48e0]
    call sub_0044de50
    test eax, eax
    je loc_00446263
    mov edx, dword ptr [d_004a48e0]
    mov eax, edx
    call dword ptr [edx + 0x25]
    xor ecx, ecx
    mov dword ptr [d_004a48e0], ecx
loc_00446284:
    xor ebx, ebx
    mov dword ptr [d_004a48ec], ebx
    jmp loc_00446247
ptr_0044628e:
    # push 0xc
    .byte 0x68,0x0c,0x00,0x00,0x00
    call sub_00446641
    push esi
    push edi
    mov edi, edx
    mov esi, ebx
    mov edx, dword ptr [ebx]
    test edx, edx
    jle loc_004462ac
    cmp edx, 0x200
    jle loc_004462b4
loc_004462ac:
    mov eax, 6
    pop edi
    pop esi
    ret
loc_004462b4:
    mov eax, dword ptr [d_004a48e0]
    call sub_0044ded0
    test eax, eax
    jne loc_004462ca
    mov eax, 7
    pop edi
    pop esi
    ret
loc_004462ca:
    mov byte ptr [d_004a48f0], 0xda
    mov dl, byte ptr [d_004a48fb]
    xor eax, eax
    mov al, dl
    mov dword ptr [d_004a48f1], eax
    inc dl
    mov byte ptr [d_004a48fb], dl
    mov ax, word ptr [ebx]
    mov word ptr [d_004a48f5], ax
    mov ebx, offset d_004a48f0
    xor edx, edx
    mov eax, 7
    call sub_00446619
    mov word ptr [d_004a48f7], ax
    mov eax, dword ptr [esi]
    mov ebx, edi
    xor edx, edx
    call sub_00446619
    mov word ptr [d_004a48f9], ax
    mov eax, dword ptr [d_004a48e0]
    mov ecx, 0x3e8
    mov ebx, 0xb
    mov edx, offset d_004a48f0
    call sub_0044df80
    test eax, eax
    je loc_00446346
loc_00446336:
    mov eax, dword ptr [d_004a48e0]
    mov eax, dword ptr [eax + 0xc]
    call sub_004465aa
    pop edi
    pop esi
    ret
loc_00446346:
    mov ebx, dword ptr [esi]
    mov eax, dword ptr [d_004a48e0]
    mov ecx, 0x3e8
    mov edx, edi
    call sub_0044df80
    test eax, eax
    jne loc_00446336
    mov eax, dword ptr [d_004a48e0]
    mov eax, dword ptr [eax + 0x15]
    mov dword ptr [esi], eax
    xor eax, eax
    pop edi
    pop esi
    ret
ptr_0044636c:
    # push 0x20
    .byte 0x68,0x20,0x00,0x00,0x00
    call sub_00446641
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    push eax
    mov esi, edx
    mov edi, 0xb
    mov ebp, 1
    test eax, eax
    je loc_00446392
    test edx, edx
    jne loc_0044639c
loc_00446392:
    mov eax, 8
    jmp loc_0044653d
loc_0044639c:
    mov ebx, 0x400
    sub ebx, dword ptr [d_004a48e4]
    mov ecx, dword ptr [d_004a48e0]
    mov edx, offset d_004a44dc
    add edx, dword ptr [d_004a48e4]
    mov eax, ecx
    call dword ptr [ecx + 0x59]
    mov eax, dword ptr [d_004a48e0]
    mov eax, dword ptr [eax + 0x15]
    add dword ptr [d_004a48e4], eax
    xor ecx, ecx
    mov ebx, dword ptr [d_004a48e4]
loc_004463d3:
    lea eax, [ecx + 4]
    cmp eax, ebx
    ja loc_00446401
    cmp byte ptr [ecx + d_004a44dc], 0xda
    jne loc_004463fe
    sub ebx, ecx
    mov edx, offset d_004a44dc
    add edx, ecx
    mov eax, offset d_004a44dc
    call sub_0044550c
    sub dword ptr [d_004a48e4], ecx
    jmp loc_00446437
loc_004463fe:
    inc ecx
    jmp loc_004463d3
loc_00446401:
    test ebp, ebp
    je loc_00446437
    cmp ebx, 3
    jbe loc_0044642c
    lea edx, [ebx - 3]
    add edx, offset d_004a44dc
    mov ebx, 3
    mov eax, offset d_004a44dc
    call sub_0044550c
    mov dword ptr [d_004a48e4], 3
loc_0044642c:
    mov dword ptr [esi], 0
    jmp loc_0044653b
loc_00446437:
    cmp edi, dword ptr [d_004a48e4]
    ja loc_00446535
    xor ecx, ecx
    mov cx, word ptr [d_004a44e3]
    mov ebx, offset d_004a44dc
    xor edx, edx
    mov eax, 7
    call sub_00446619
    and eax, 0xffff
    cmp ecx, eax
    jne loc_00446511
    xor ecx, eax
    mov cx, word ptr [d_004a44e1]
    test ecx, ecx
    jne loc_00446484
    mov dword ptr [d_004a48e4], edi
loc_0044647d:
    mov dword ptr [esi], ecx
    jmp loc_0044653b
loc_00446484:
    lea eax, [edi + ecx]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [d_004a48e4]
    cmp eax, dword ptr [esp + 8]
    jb loc_00446535
    xor eax, eax
    mov ax, word ptr [d_004a44e5]
    mov dword ptr [esp + 4], eax
    mov ebp, offset d_004a44dc
    add ebp, edi
    mov ebx, ebp
    xor edx, edx
    mov eax, ecx
    call sub_00446619
    and eax, 0xffff
    cmp eax, dword ptr [esp + 4]
    jne loc_004464f2
    mov ebx, ecx
    mov edx, ebp
    mov eax, dword ptr [esp]
    call sub_00451dc4
    mov ebx, dword ptr [d_004a48e4]
    sub ebx, edi
    sub ebx, ecx
    lea edx, [ecx + ebp]
    mov eax, offset d_004a44dc
    call sub_0044550c
    mov eax, dword ptr [esp + 8]
    sub dword ptr [d_004a48e4], eax
    jmp loc_0044647d
loc_004464f2:
    mov ebx, dword ptr [d_004a48e4]
    sub ebx, edi
    mov edx, ebp
    mov eax, offset d_004a44dc
    call sub_0044550c
    sub dword ptr [d_004a48e4], edi
    jmp loc_0044642c
loc_00446511:
    mov ebx, dword ptr [d_004a48e4]
    sub ebx, 4
    mov edx, offset d_004a44e0
    mov eax, offset d_004a44dc
    call sub_0044550c
    sub dword ptr [d_004a48e4], 4
    jmp loc_0044642c
loc_00446535:
    mov dword ptr [esi], 0
loc_0044653b:
    xor eax, eax
loc_0044653d:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
ptr_00446545:
    # push 8
    .byte 0x68,0x08,0x00,0x00,0x00
    call sub_00446641
    push ebx
    cmp dword ptr [d_004a48e8], 0
    jne loc_00446560
    mov eax, 0xe
    pop ebx
    ret
loc_00446560:
    cmp dword ptr [d_004a48ec], 0
    je loc_0044656e
    call sub_0044624d
loc_0044656e:
    xor ebx, ebx
    mov dword ptr [d_004a48e8], ebx
    xor eax, eax
    pop ebx
    ret
ptr_0044657a:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    cmp dword ptr [d_004a48ec], 0
    je loc_00446593
    mov eax, 1
    ret
loc_00446593:
    xor eax, eax
    ret
ptr_00446596:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    mov eax, dword ptr [d_004a48e0]
    call sub_0044e020
sub_004465aa:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    cmp eax, -7
    jl loc_004465d9
    jle loc_004465f5
    cmp eax, -3
    jl loc_004465cd
    jle loc_004465fb
    cmp eax, -2
    jle loc_004465f5
    test eax, eax
    je loc_00446618
    jmp loc_00446613
loc_004465cd:
    cmp eax, -6
    jle loc_0044660d
    cmp eax, -5
    je loc_00446607
    jmp loc_00446613
loc_004465d9:
    cmp eax, -0x26
    jl loc_004465ee
    jle loc_004465f5
    cmp eax, -0x19
    jl loc_00446613
    jle loc_004465f5
    cmp eax, -0xe
    je loc_00446601
    jmp loc_00446613
loc_004465ee:
    cmp eax, -0x27
    je loc_004465fb
    jmp loc_00446613
loc_004465f5:
    mov eax, 8
    ret
loc_004465fb:
    mov eax, 4
    ret
loc_00446601:
    mov eax, 0xa
    ret
loc_00446607:
    mov eax, 0xc
    ret
loc_0044660d:
    mov eax, 0xe
    ret
loc_00446613:
    mov eax, 0x11
loc_00446618:
    ret
sub_00446619:
    # push 0xc
    .byte 0x68,0x0c,0x00,0x00,0x00
    call sub_00446641
    push ecx
    push esi
    mov esi, eax
    mov ecx, edx
    mov eax, ebx
    xor edx, edx
loc_0044662d:
    cmp edx, esi
    jge loc_0044663b
    xor ebx, ebx
    mov bl, byte ptr [eax]
    inc eax
    add ecx, ebx
    inc edx
    jmp loc_0044662d
loc_0044663b:
    mov eax, ecx
    pop esi
    pop ecx
    ret
ptr_00446640:
    ret
sub_00446641:
    xchg dword ptr [esp + 4], eax
    call sub_00446651
    mov eax, dword ptr [esp + 4]
    ret 4
sub_00446651:
    push eax
    cmp eax, esp
    jae sub_00446670
    sub eax, esp
    neg eax
    push esi
    push eax
    call dword ptr [d_0045c630]
    mov esi, eax
    pop eax
    cmp eax, dword ptr [esi]
    pop esi
    jbe sub_00446670
    call sub_00446680
    ret
sub_00446670:
    pop eax
    mov eax, offset d_0045c590
    mov edx, 1
    call sub_0044e083
sub_00446680:
    push eax
    push ebx
    mov eax, dword ptr [esp + 0xc]
    mov ebx, 0xfffffffc
loc_0044668b:
    mov dword ptr [esp + ebx], ebx
    sub ebx, 0x1000
    sub eax, 0x1000
    jg loc_0044668b
    pop ebx
    pop eax
    ret 4
ptr_004466a0:
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    xor eax, eax
    ret
    # push 4
    .byte 0x68,0x04,0x00,0x00,0x00
    call sub_00446641
    mov dword ptr [d_0045c5a4], eax
    ret
sub_004466bd:
    # push 0xc
    .byte 0x68,0x0c,0x00,0x00,0x00
    call sub_00446641
    push ebx
    sub esp, 4
    cmp dword ptr [d_0045c5a4], 0
    jne loc_004466db
    xor eax, eax
    add esp, 4
    pop ebx
    ret
loc_004466db:
    lea eax, [esp + 0x10]
    mov dword ptr [esp], eax
    mov ecx, esp
    mov ebx, dword ptr [esp + 0xc]
    mov edx, 0x100
    mov eax, offset d_004a48fc
    call sub_0044e0bf
    mov edx, eax
    xor ecx, ecx
    mov dword ptr [esp], ecx
    mov eax, offset d_004a48fc
    call dword ptr [d_0045c5a4]
    mov eax, edx
    add esp, 4
    pop ebx
    ret
    # push 0x20
    .byte 0x68,0x20,0x00,0x00,0x00
    call sub_00446641
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov edi, eax
    mov esi, edx
    xor ebp, ebp
loc_00446725:
    test esi, esi
    je loc_004467c7
    push ebp
    push offset d_0045af0c
    call sub_004466bd
    add esp, 8
    xor ebx, ebx
loc_0044673d:
    cmp ebx, esi
    je loc_00446761
    cmp ebx, 0x10
    je loc_00446761
    lea eax, [edi + ebx]
    mov al, byte ptr [eax]
    and eax, 0xff
    push eax
    push offset d_0045af13
    call sub_004466bd
    add esp, 8
    inc ebx
    jmp loc_0044673d
loc_00446761:
    push offset d_0045af19
    call sub_004466bd
    add esp, 4
    xor ebx, ebx
loc_00446770:
    cmp ebx, esi
    je loc_004467af
    cmp ebx, 0x10
    je loc_004467af
    lea eax, [edi + ebx]
    mov dl, byte ptr [eax]
    cmp dl, 0xa
    je loc_00446788
    cmp dl, 0xd
    jne loc_00446797
loc_00446788:
    push offset d_0045af1d
    call sub_004466bd
    add esp, 4
    jmp loc_004467ac
loc_00446797:
    mov al, dl
    and eax, 0xff
    push eax
    push offset d_0045af1f
    call sub_004466bd
    add esp, 8
loc_004467ac:
    inc ebx
    jmp loc_00446770
loc_004467af:
    push offset d_0045af22
    call sub_004466bd
    add esp, 4
    add edi, ebx
    sub esi, ebx
    add ebp, ebx
    jmp loc_00446725
loc_004467c7:
    push offset d_0045af22
    call sub_004466bd
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
ptr_004467da:
    push ebx
    push edx
    mov ebx, dword ptr [eax + 8]
    xor edx, edx
    mov dl, byte ptr [ebx]
    test edx, edx
    je loc_004467f0
    inc ebx
    mov dword ptr [eax + 8], ebx
    mov eax, edx
    pop edx
    pop ebx
    ret
loc_004467f0:
    mov bl, byte ptr [eax + 0x10]
    or bl, 2
    mov edx, 0xffffffff
    mov byte ptr [eax + 0x10], bl
    mov eax, edx
    pop edx
    pop ebx
    ret
ptr_00446803:
    dec dword ptr [edx + 8]
    ret
    .byte 0x51,0x56,0x83,0xec,0x14,0xb9
    .long ptr_004467da
    .byte 0xbe
    .long ptr_00446803
    .byte 0x89,0x44,0x24,0x08,0x89,0xe0,0x89,0x0c,0x24,0x89,0x74,0x24,0x04,0xe8,0xf6,0x78
    .byte 0x00,0x00,0x83,0xc4,0x14,0x5e,0x59,0xc3,0x53,0x52,0x83,0xec,0x04,0x8d,0x44,0x24
    .byte 0x18,0x89,0xe3,0x8b,0x54,0x24,0x14,0x89,0x04,0x24,0x8b,0x44,0x24,0x10,0xe8,0xbe
    .byte 0xff,0xff,0xff,0x83,0xc4,0x04,0x5a,0x5b,0xc3
sub_0044684f:
    push ebx
    push ecx
    push edx
    mov ecx, eax
    mov edx, eax
loc_00446856:
    mov al, byte ptr [edx]
    test al, al
    je loc_0044686e
    sub al, 0x61
    xor ebx, ebx
    mov bl, al
    cmp ebx, 0x19
    jg loc_0044686b
    add al, 0x41
    mov byte ptr [edx], al
loc_0044686b:
    inc edx
    jmp loc_00446856
loc_0044686e:
    mov eax, ecx
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_00446880:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x14
    mov dword ptr [esp], eax
    mov esi, edx
    mov edi, ebx
    mov ebx, 0xfee
    mov eax, offset d_004a4e0c
    mov dword ptr [esp + 4], edx
    mov edx, 0x20
    call sub_00451940
    mov edx, 0xfee
    mov ebx, offset d_004a49fc
    mov dword ptr [d_004a4e00], edi
    mov dword ptr [d_004a4e04], edx
    mov dword ptr [d_004a4e08], ebx
    mov dword ptr [d_004a4dfc], ebx
loc_004468c8:
    mov ebx, dword ptr [d_004a4e08]
    mov ebp, dword ptr [d_004a4dfc]
    sub ebx, ebp
    cmp edi, 0x10
    jbe loc_00446f30
    cmp dword ptr [d_004a4e00], 0
    jbe loc_0044698f
    cmp ebx, 0x11
    jge loc_0044698f
    cmp ebp, dword ptr [d_004a4e08]
    je loc_0044692f
    mov eax, offset d_004a49fc
    mov edx, ebp
    call sub_0044550c
    mov eax, dword ptr [d_004a4e08]
    mov ebp, dword ptr [d_004a4dfc]
    mov edx, offset d_004a49fc
    sub eax, ebp
    add edx, eax
    mov eax, offset d_004a49fc
    mov dword ptr [d_004a4e08], edx
    mov dword ptr [d_004a4dfc], eax
    jmp loc_00446940
loc_0044692f:
    mov ebx, offset d_004a49fc
    mov dword ptr [d_004a4e08], ebx
    mov dword ptr [d_004a4dfc], ebx
loc_00446940:
    mov ebx, dword ptr [d_004a4e08]
    mov eax, 0x400
    sub ebx, offset d_004a49fc
    mov ecx, dword ptr [esp]
    sub eax, ebx
    mov edx, dword ptr [d_004a4e00]
    mov ebx, eax
    cmp eax, edx
    jbe loc_00446964
    mov ebx, edx
loc_00446964:
    mov edx, 1
    mov eax, dword ptr [d_004a4e08]
    call sub_00451b5f
    mov ebx, dword ptr [d_004a4e08]
    mov ecx, dword ptr [d_004a4e00]
    add ebx, eax
    sub ecx, eax
    mov dword ptr [d_004a4e08], ebx
    mov dword ptr [d_004a4e00], ecx
loc_0044698f:
    mov eax, dword ptr [d_004a4dfc]
    dec edi
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esp + 8], dl
    mov dword ptr [d_004a4dfc], eax
    test dl, 1
    je loc_004469d9
    inc esi
    mov dl, byte ptr [eax]
    inc eax
    dec edi
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    mov dword ptr [d_004a4dfc], eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
    jmp loc_00446a45
loc_004469d9:
    inc eax
    sub edi, 2
    mov bh, byte ptr [eax]
    xor ch, ch
    mov dword ptr [d_004a4dfc], eax
    mov dl, bh
    mov cl, byte ptr [eax - 1]
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00446a3d
loc_00446a05:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_00446a3d:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00446a05
loc_00446a45:
    test byte ptr [esp + 8], 2
    je loc_00446a84
    mov eax, dword ptr [d_004a4dfc]
    inc esi
    mov dl, byte ptr [eax]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    dec edi
    inc edx
    mov bl, byte ptr [esi - 1]
    inc eax
    mov byte ptr [edx + d_004a4e0b], bl
    mov ebx, edx
    mov dword ptr [d_004a4e04], edx
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], eax
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00446af9
loc_00446a84:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00446af1
loc_00446ab5:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_00446af1:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00446ab5
loc_00446af9:
    test byte ptr [esp + 8], 4
    je loc_00446b36
    mov eax, dword ptr [d_004a4dfc]
    dec edi
    inc esi
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    mov dword ptr [d_004a4dfc], eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov eax, edx
    mov dword ptr [d_004a4e04], edx
    and eax, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    jmp loc_00446ba7
loc_00446b36:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00446b9f
loc_00446b67:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_00446b9f:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00446b67
loc_00446ba7:
    test byte ptr [esp + 8], 8
    je loc_00446be6
    mov eax, dword ptr [d_004a4dfc]
    inc esi
    mov dl, byte ptr [eax]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    dec edi
    inc edx
    mov bl, byte ptr [esi - 1]
    inc eax
    mov byte ptr [edx + d_004a4e0b], bl
    mov ebx, edx
    mov dword ptr [d_004a4e04], edx
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], eax
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00446c5b
loc_00446be6:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00446c53
loc_00446c17:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_00446c53:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00446c17
loc_00446c5b:
    test byte ptr [esp + 8], 0x10
    je loc_00446c98
    mov eax, dword ptr [d_004a4dfc]
    dec edi
    inc esi
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    mov dword ptr [d_004a4dfc], eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov eax, edx
    mov dword ptr [d_004a4e04], edx
    and eax, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    jmp loc_00446d09
loc_00446c98:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00446d01
loc_00446cc9:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_00446d01:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00446cc9
loc_00446d09:
    test byte ptr [esp + 8], 0x20
    je loc_00446d48
    mov edx, dword ptr [d_004a4dfc]
    inc esi
    mov al, byte ptr [edx]
    mov byte ptr [esi - 1], al
    mov eax, dword ptr [d_004a4e04]
    dec edi
    inc eax
    mov bl, byte ptr [esi - 1]
    inc edx
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], edx
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00446dbd
loc_00446d48:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00446db5
loc_00446d79:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_00446db5:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00446d79
loc_00446dbd:
    test byte ptr [esp + 8], 0x40
    je loc_00446df8
    mov edx, dword ptr [d_004a4dfc]
    inc esi
    mov al, byte ptr [edx]
    mov byte ptr [esi - 1], al
    mov eax, dword ptr [d_004a4e04]
    dec edi
    inc eax
    mov bl, byte ptr [esi - 1]
    inc edx
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    mov dword ptr [d_004a4dfc], edx
    mov dword ptr [d_004a4e04], eax
    jmp loc_00446e69
loc_00446df8:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00446e61
loc_00446e29:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_00446e61:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00446e29
loc_00446e69:
    test byte ptr [esp + 8], 0x80
    je loc_00446eab
    mov edx, dword ptr [d_004a4dfc]
    inc esi
    mov al, byte ptr [edx]
    mov byte ptr [esi - 1], al
    mov eax, dword ptr [d_004a4e04]
    dec edi
    inc eax
    mov bl, byte ptr [esi - 1]
    inc edx
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], edx
    mov dword ptr [d_004a4e04], ebx
    jmp loc_004468c8
loc_00446eab:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jge loc_004468c8
loc_00446ee6:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jge loc_004468c8
    jmp loc_00446ee6
loc_00446f30:
    test edi, edi
    je loc_00447b7e
    cmp dword ptr [d_004a4e00], 0
    jbe loc_00446fe8
    cmp ebx, 0x11
    jge loc_00446fe8
    cmp ebp, dword ptr [d_004a4e08]
    je loc_00446f88
    mov eax, offset d_004a49fc
    mov edx, ebp
    call sub_0044550c
    mov eax, dword ptr [d_004a4e08]
    mov ebp, dword ptr [d_004a4dfc]
    mov edx, offset d_004a49fc
    sub eax, ebp
    add edx, eax
    mov eax, offset d_004a49fc
    mov dword ptr [d_004a4e08], edx
    mov dword ptr [d_004a4dfc], eax
    jmp loc_00446f99
loc_00446f88:
    mov ebx, offset d_004a49fc
    mov dword ptr [d_004a4e08], ebx
    mov dword ptr [d_004a4dfc], ebx
loc_00446f99:
    mov ebx, dword ptr [d_004a4e08]
    mov eax, 0x400
    sub ebx, offset d_004a49fc
    mov ecx, dword ptr [esp]
    sub eax, ebx
    mov edx, dword ptr [d_004a4e00]
    mov ebx, eax
    cmp eax, edx
    jbe loc_00446fbd
    mov ebx, edx
loc_00446fbd:
    mov edx, 1
    mov eax, dword ptr [d_004a4e08]
    call sub_00451b5f
    mov ebx, dword ptr [d_004a4e08]
    mov ecx, dword ptr [d_004a4e00]
    add ebx, eax
    sub ecx, eax
    mov dword ptr [d_004a4e08], ebx
    mov dword ptr [d_004a4e00], ecx
loc_00446fe8:
    mov eax, dword ptr [d_004a4dfc]
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esp + 0x10], dl
    mov dword ptr [d_004a4dfc], eax
    dec edi
    je loc_00447b7e
    test dl, 1
    je loc_00447038
    inc esi
    mov dl, byte ptr [eax]
    inc eax
    dec edi
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    mov dword ptr [d_004a4dfc], eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
    jmp loc_004470a4
loc_00447038:
    inc eax
    sub edi, 2
    mov bh, byte ptr [eax]
    xor ch, ch
    mov dword ptr [d_004a4dfc], eax
    mov dl, bh
    mov cl, byte ptr [eax - 1]
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_0044709c
loc_00447064:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_0044709c:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00447064
loc_004470a4:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0x10], 2
    je loc_004470eb
    mov eax, dword ptr [d_004a4dfc]
    inc esi
    mov dl, byte ptr [eax]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    dec edi
    inc edx
    mov bl, byte ptr [esi - 1]
    inc eax
    mov byte ptr [edx + d_004a4e0b], bl
    mov ebx, edx
    mov dword ptr [d_004a4e04], edx
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], eax
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00447160
loc_004470eb:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00447158
loc_0044711c:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_00447158:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_0044711c
loc_00447160:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0x10], 4
    je loc_004471a5
    mov eax, dword ptr [d_004a4dfc]
    dec edi
    inc esi
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    mov dword ptr [d_004a4dfc], eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov eax, edx
    mov dword ptr [d_004a4e04], edx
    and eax, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    jmp loc_00447216
loc_004471a5:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_0044720e
loc_004471d6:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_0044720e:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_004471d6
loc_00447216:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0x10], 8
    je loc_0044725d
    mov eax, dword ptr [d_004a4dfc]
    inc esi
    mov dl, byte ptr [eax]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    dec edi
    inc edx
    mov bl, byte ptr [esi - 1]
    inc eax
    mov byte ptr [edx + d_004a4e0b], bl
    mov ebx, edx
    mov dword ptr [d_004a4e04], edx
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], eax
    mov dword ptr [d_004a4e04], ebx
    jmp loc_004472d2
loc_0044725d:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_004472ca
loc_0044728e:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_004472ca:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_0044728e
loc_004472d2:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0x10], 0x10
    je loc_00447317
    mov eax, dword ptr [d_004a4dfc]
    dec edi
    inc esi
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    mov dword ptr [d_004a4dfc], eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov eax, edx
    mov dword ptr [d_004a4e04], edx
    and eax, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    jmp loc_00447388
loc_00447317:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00447380
loc_00447348:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_00447380:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00447348
loc_00447388:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0x10], 0x20
    je loc_004473cf
    mov eax, dword ptr [d_004a4dfc]
    inc esi
    mov dl, byte ptr [eax]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    dec edi
    inc edx
    mov bl, byte ptr [esi - 1]
    inc eax
    mov byte ptr [edx + d_004a4e0b], bl
    mov ebx, edx
    mov dword ptr [d_004a4e04], edx
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], eax
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00447444
loc_004473cf:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_0044743c
loc_00447400:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_0044743c:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00447400
loc_00447444:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0x10], 0x40
    je loc_00447489
    mov eax, dword ptr [d_004a4dfc]
    dec edi
    inc esi
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    mov dword ptr [d_004a4dfc], eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov eax, edx
    mov dword ptr [d_004a4e04], edx
    and eax, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    jmp loc_004474fa
loc_00447489:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_004474f2
loc_004474ba:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_004474f2:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_004474ba
loc_004474fa:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0x10], 0x80
    je loc_00447541
    mov edx, dword ptr [d_004a4dfc]
    inc esi
    mov al, byte ptr [edx]
    mov byte ptr [esi - 1], al
    mov eax, dword ptr [d_004a4e04]
    dec edi
    inc eax
    mov bl, byte ptr [esi - 1]
    inc edx
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], edx
    mov dword ptr [d_004a4e04], ebx
    jmp loc_004475b6
loc_00447541:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_004475ae
loc_00447572:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_004475ae:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00447572
loc_004475b6:
    test edi, edi
    je loc_00447b7e
    mov eax, dword ptr [d_004a4dfc]
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esp + 0xc], dl
    mov dword ptr [d_004a4dfc], eax
    dec edi
    je loc_00447b7e
    test dl, 1
    je loc_0044760c
    inc esi
    mov dl, byte ptr [eax]
    inc eax
    dec edi
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    mov dword ptr [d_004a4dfc], eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov eax, edx
    mov dword ptr [d_004a4e04], edx
    and eax, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    jmp loc_00447678
loc_0044760c:
    inc eax
    sub edi, 2
    mov bh, byte ptr [eax]
    xor ch, ch
    mov dword ptr [d_004a4dfc], eax
    mov dl, bh
    mov cl, byte ptr [eax - 1]
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00447670
loc_00447638:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_00447670:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00447638
loc_00447678:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0xc], 2
    je loc_004476bf
    mov edx, dword ptr [d_004a4dfc]
    inc esi
    mov al, byte ptr [edx]
    mov byte ptr [esi - 1], al
    mov eax, dword ptr [d_004a4e04]
    dec edi
    inc eax
    mov bl, byte ptr [esi - 1]
    inc edx
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], edx
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00447734
loc_004476bf:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_0044772c
loc_004476f0:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_0044772c:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_004476f0
loc_00447734:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0xc], 4
    je loc_00447779
    mov eax, dword ptr [d_004a4dfc]
    dec edi
    inc esi
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    mov dword ptr [d_004a4dfc], eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov eax, edx
    mov dword ptr [d_004a4e04], edx
    and eax, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    jmp loc_004477ea
loc_00447779:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_004477e2
loc_004477aa:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_004477e2:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_004477aa
loc_004477ea:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0xc], 8
    je loc_00447831
    mov eax, dword ptr [d_004a4dfc]
    inc esi
    mov dl, byte ptr [eax]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    dec edi
    inc edx
    mov bl, byte ptr [esi - 1]
    inc eax
    mov byte ptr [edx + d_004a4e0b], bl
    mov ebx, edx
    mov dword ptr [d_004a4e04], edx
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], eax
    mov dword ptr [d_004a4e04], ebx
    jmp loc_004478a6
loc_00447831:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_0044789e
loc_00447862:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_0044789e:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00447862
loc_004478a6:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0xc], 0x10
    je loc_004478e9
    mov edx, dword ptr [d_004a4dfc]
    inc esi
    mov al, byte ptr [edx]
    mov byte ptr [esi - 1], al
    mov eax, dword ptr [d_004a4e04]
    dec edi
    inc eax
    mov bl, byte ptr [esi - 1]
    inc edx
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    mov dword ptr [d_004a4dfc], edx
    mov dword ptr [d_004a4e04], eax
    jmp loc_0044795a
loc_004478e9:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00447952
loc_0044791a:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_00447952:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_0044791a
loc_0044795a:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0xc], 0x20
    je loc_004479a1
    mov eax, dword ptr [d_004a4dfc]
    inc esi
    mov dl, byte ptr [eax]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    dec edi
    inc edx
    mov bl, byte ptr [esi - 1]
    inc eax
    mov byte ptr [edx + d_004a4e0b], bl
    mov ebx, edx
    mov dword ptr [d_004a4e04], edx
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], eax
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00447a16
loc_004479a1:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00447a0e
loc_004479d2:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, 0xfff
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_00447a0e:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_004479d2
loc_00447a16:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0xc], 0x40
    je loc_00447a59
    mov edx, dword ptr [d_004a4dfc]
    inc esi
    mov al, byte ptr [edx]
    mov byte ptr [esi - 1], al
    mov eax, dword ptr [d_004a4e04]
    dec edi
    inc eax
    mov bl, byte ptr [esi - 1]
    inc edx
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    mov dword ptr [d_004a4dfc], edx
    mov dword ptr [d_004a4e04], eax
    jmp loc_00447aca
loc_00447a59:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    sub edi, 2
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00447ac2
loc_00447a8a:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, 0xfff
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi], dl
    mov edx, dword ptr [d_004a4e04]
    inc edx
    mov bl, byte ptr [esi]
    inc esi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    and edx, 0xfff
    inc eax
    mov dword ptr [d_004a4e04], edx
loc_00447ac2:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00447a8a
loc_00447aca:
    test edi, edi
    je loc_00447b7e
    test byte ptr [esp + 0xc], 0x80
    je loc_00447b0f
    mov edx, dword ptr [d_004a4dfc]
    mov al, byte ptr [edx]
    mov byte ptr [esi], al
    mov eax, dword ptr [d_004a4e04]
    inc esi
    inc eax
    mov bl, byte ptr [esi - 1]
    inc edx
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    mov dword ptr [d_004a4dfc], edx
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00447b7e
loc_00447b0f:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov edi, 0xfff
    xor ch, ch
    mov bh, byte ptr [eax]
    mov cl, byte ptr [eax - 1]
    mov dl, bh
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    inc eax
    and bh, 0xf
    mov dword ptr [d_004a4dfc], eax
    xor dh, dh
    add bh, 3
    shl edx, 4
    xor eax, eax
    or ecx, edx
    jmp loc_00447b76
loc_00447b42:
    xor edx, edx
    mov dx, cx
    add edx, eax
    and edx, edi
    inc esi
    mov dl, byte ptr [edx + d_004a4e0c]
    mov byte ptr [esi - 1], dl
    mov edx, dword ptr [d_004a4e04]
    inc eax
    inc edx
    mov bl, byte ptr [esi - 1]
    mov ebp, edx
    mov dword ptr [d_004a4e04], edx
    and ebp, edi
    mov byte ptr [edx + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], ebp
loc_00447b76:
    xor edx, edx
    mov dl, bh
    cmp eax, edx
    jl loc_00447b42
loc_00447b7e:
    mov eax, dword ptr [esp + 4]
    sub esi, eax
    mov eax, esi
    add esp, 0x14
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
    sub esp, 0xa0
    mov ebp, eax
    mov esi, edx
    mov edi, ebx
    mov ebx, 0xfee
    mov edx, 0x20
    mov eax, offset d_004a4e0c
    call sub_00451940
    mov edx, 0xfee
    mov ebx, offset d_004a49fc
    mov dword ptr [d_004a4e00], edi
    mov dword ptr [d_004a4e04], edx
    mov dword ptr [d_004a4e08], ebx
    mov dword ptr [d_004a4dfc], ebx
loc_00447bd6:
    mov eax, dword ptr [d_004a4e08]
    mov edx, dword ptr [d_004a4dfc]
    sub eax, edx
    cmp edi, 0x10
    jbe loc_00448775
    cmp dword ptr [d_004a4e00], 0
    jbe loc_00447c99
    cmp eax, 0x11
    jge loc_00447c99
    cmp edx, dword ptr [d_004a4e08]
    je loc_00447c3d
    mov ebx, eax
    mov eax, offset d_004a49fc
    call sub_0044550c
    mov eax, dword ptr [d_004a4e08]
    mov ebx, dword ptr [d_004a4dfc]
    mov edx, offset d_004a49fc
    sub eax, ebx
    mov ecx, offset d_004a49fc
    add edx, eax
    mov dword ptr [d_004a4dfc], ecx
    mov dword ptr [d_004a4e08], edx
    jmp loc_00447c4c
loc_00447c3d:
    mov eax, offset d_004a49fc
    mov dword ptr [d_004a4e08], eax
    mov dword ptr [d_004a4dfc], eax
loc_00447c4c:
    mov ebx, dword ptr [d_004a4e08]
    mov eax, 0x400
    sub ebx, offset d_004a49fc
    sub eax, ebx
    mov ebx, eax
    mov eax, dword ptr [d_004a4e00]
    mov ecx, ebp
    cmp ebx, eax
    jbe loc_00447c6e
    mov ebx, eax
loc_00447c6e:
    mov edx, 1
    mov eax, dword ptr [d_004a4e08]
    call sub_00451b5f
    mov edx, dword ptr [d_004a4e08]
    mov ebx, dword ptr [d_004a4e00]
    add edx, eax
    sub ebx, eax
    mov dword ptr [d_004a4e08], edx
    mov dword ptr [d_004a4e00], ebx
loc_00447c99:
    mov eax, dword ptr [d_004a4dfc]
    dec edi
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esp + 0x64], dl
    mov dword ptr [d_004a4dfc], eax
    test dl, 1
    # je 0x447d2d
    .byte 0x0f,0x84
    .long loc_00447d2d - . - 4
    mov bl, byte ptr [eax]
    inc eax
    mov bh, byte ptr [esi + 0xd]
    mov dword ptr [d_004a4dfc], eax
    test bh, 4
    jne loc_00447ccf
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00447cdc
loc_00447ccf:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00447d08
loc_00447cdc:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00447cf3
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00447d08
loc_00447cf3:
    mov cl, byte ptr [esi + 0xd]
    mov eax, dword ptr [esi + 4]
    mov edx, dword ptr [esi]
    or cl, 0x10
    inc eax
    mov byte ptr [esi + 0xd], cl
    inc edx
    mov dword ptr [esi + 4], eax
    mov dword ptr [esi], edx
loc_00447d08:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00447e0c
loc_00447d2d:
    inc eax
    xor dh, dh
    mov dl, byte ptr [eax - 1]
    sub edi, 2
    mov dword ptr [esp + 0x50], edx
    mov dl, byte ptr [eax]
    xor ebx, ebx
    mov byte ptr [esp + 0x90], dl
    and dl, 0xf0
    mov ecx, dword ptr [esp + 0x50]
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ecx, edx
    mov dl, byte ptr [esp + 0x90]
    inc eax
    and dl, 0xf
    mov dword ptr [d_004a4dfc], eax
    add dl, 3
    mov dword ptr [esp + 0x50], ecx
    mov byte ptr [esp + 0x90], dl
    jmp loc_00447dfb
loc_00447d79:
    xor eax, eax
    mov ax, word ptr [esp + 0x50]
    lea ecx, [eax + ebx]
    and ecx, 0xfff
    mov dl, byte ptr [esi + 0xd]
    mov cl, byte ptr [ecx + d_004a4e0c]
    test dl, 4
    jne loc_00447da2
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00447daf
loc_00447da2:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00447ddb
loc_00447daf:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00447dc6
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00447ddb
loc_00447dc6:
    mov dh, byte ptr [esi + 0xd]
    or dh, 0x10
    mov eax, dword ptr [esi + 4]
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov edx, dword ptr [esi]
    mov dword ptr [esi + 4], eax
    inc edx
    mov dword ptr [esi], edx
loc_00447ddb:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, 0xfff
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_00447dfb:
    xor eax, eax
    mov al, byte ptr [esp + 0x90]
    cmp ebx, eax
    jl loc_00447d79
loc_00447e0c:
    test byte ptr [esp + 0x64], 2
    # je 0x447e95
    .byte 0x0f,0x84
    .long loc_00447e95 - . - 4
    mov eax, dword ptr [d_004a4dfc]
    mov bl, byte ptr [eax]
    inc eax
    mov bh, byte ptr [esi + 0xd]
    mov dword ptr [d_004a4dfc], eax
    test bh, 4
    jne loc_00447e37
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00447e44
loc_00447e37:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00447e70
loc_00447e44:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00447e5b
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00447e70
loc_00447e5b:
    mov cl, byte ptr [esi + 0xd]
    or cl, 0x10
    mov eax, dword ptr [esi]
    mov byte ptr [esi + 0xd], cl
    inc eax
    mov ecx, dword ptr [esi + 4]
    mov dword ptr [esi], eax
    inc ecx
    mov dword ptr [esi + 4], ecx
loc_00447e70:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    dec edi
    mov edx, eax
    mov dword ptr [d_004a4e04], eax
    and edx, 0xfff
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    jmp loc_00447f76
loc_00447e95:
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax]
    xor ebx, ebx
    mov dword ptr [esp + 0x40], edx
    mov dl, byte ptr [eax + 1]
    inc eax
    mov byte ptr [esp + 0x98], dl
    and dl, 0xf0
    mov ecx, dword ptr [esp + 0x40]
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ecx, edx
    mov dl, byte ptr [esp + 0x98]
    inc eax
    and dl, 0xf
    mov dword ptr [d_004a4dfc], eax
    add dl, 3
    mov dword ptr [esp + 0x40], ecx
    mov byte ptr [esp + 0x98], dl
    # jmp 0x447f65
    .byte 0xe9
    .long loc_00447f65 - . - 4
loc_00447ee6:
    xor eax, eax
    mov ax, word ptr [esp + 0x40]
    lea ecx, [eax + ebx]
    and ecx, 0xfff
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00447f0d
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00447f1a
loc_00447f0d:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00447f45
loc_00447f1a:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00447f31
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00447f45
loc_00447f31:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00447f45:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, 0xfff
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_00447f65:
    xor eax, eax
    mov al, byte ptr [esp + 0x98]
    cmp ebx, eax
    jl loc_00447ee6
loc_00447f76:
    test byte ptr [esp + 0x64], 4
    # je 0x448000
    .byte 0x0f,0x84
    .long loc_00448000 - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_00447fa2
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00447faf
loc_00447fa2:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00447fdb
loc_00447faf:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00447fc6
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00447fdb
loc_00447fc6:
    mov dh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov eax, dword ptr [esi]
    or dh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], eax
loc_00447fdb:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    dec edi
    mov edx, eax
    mov dword ptr [d_004a4e04], eax
    and edx, 0xfff
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    jmp loc_004480c4
loc_00448000:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax - 1]
    mov ch, byte ptr [eax]
    mov dword ptr [esp + 0x34], edx
    mov dword ptr [d_004a4dfc], eax
    mov ebx, dword ptr [esp + 0x34]
    mov dl, ch
    inc eax
    and dl, 0xf0
    and ch, 0xf
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ebx, edx
    add ch, 3
    mov dword ptr [esp + 0x34], ebx
    xor ebx, ebx
    # jmp 0x4480b8
    .byte 0xe9
    .long loc_004480b8 - . - 4
loc_0044803e:
    xor eax, eax
    mov ax, word ptr [esp + 0x34]
    add eax, ebx
    and eax, 0xfff
    mov cl, byte ptr [eax + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00448063
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448070
loc_00448063:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_0044809c
loc_00448070:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00448087
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_0044809c
loc_00448087:
    mov ah, byte ptr [esi + 0xd]
    or ah, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], ah
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_0044809c:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    inc ebx
    mov dword ptr [d_004a4e04], eax
loc_004480b8:
    xor eax, eax
    mov al, ch
    cmp ebx, eax
    jl loc_0044803e
loc_004480c4:
    test byte ptr [esp + 0x64], 8
    # je 0x44814e
    .byte 0x0f,0x84
    .long loc_0044814e - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dh, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dh, 4
    jne loc_004480f0
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004480fd
loc_004480f0:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00448129
loc_004480fd:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00448114
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448129
loc_00448114:
    mov bh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov eax, dword ptr [esi]
    or bh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], bh
    inc eax
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], eax
loc_00448129:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    dec edi
    mov edx, eax
    mov dword ptr [d_004a4e04], eax
    and edx, 0xfff
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    jmp loc_00448223
loc_0044814e:
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax]
    xor ebx, ebx
    mov dword ptr [esp + 0x20], edx
    mov dl, byte ptr [eax + 1]
    inc eax
    mov byte ptr [esp + 0x6c], dl
    and dl, 0xf0
    mov ecx, dword ptr [esp + 0x20]
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ecx, edx
    mov dl, byte ptr [esp + 0x6c]
    inc eax
    and dl, 0xf
    mov dword ptr [d_004a4dfc], eax
    add dl, 3
    mov dword ptr [esp + 0x20], ecx
    mov byte ptr [esp + 0x6c], dl
    # jmp 0x448215
    .byte 0xe9
    .long loc_00448215 - . - 4
loc_00448196:
    xor eax, eax
    mov ax, word ptr [esp + 0x20]
    lea ecx, [eax + ebx]
    and ecx, 0xfff
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_004481bd
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004481ca
loc_004481bd:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_004481f5
loc_004481ca:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_004481e1
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_004481f5
loc_004481e1:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_004481f5:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, 0xfff
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_00448215:
    xor eax, eax
    mov al, byte ptr [esp + 0x6c]
    cmp ebx, eax
    jl loc_00448196
loc_00448223:
    test byte ptr [esp + 0x64], 0x10
    # je 0x4482ad
    .byte 0x0f,0x84
    .long loc_004482ad - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_0044824f
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_0044825c
loc_0044824f:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00448288
loc_0044825c:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00448273
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448288
loc_00448273:
    mov dh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov eax, dword ptr [esi]
    or dh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], eax
loc_00448288:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    dec edi
    mov edx, eax
    mov dword ptr [d_004a4e04], eax
    and edx, 0xfff
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    jmp loc_00448371
loc_004482ad:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax - 1]
    mov ch, byte ptr [eax]
    mov dword ptr [esp + 0x10], edx
    mov dword ptr [d_004a4dfc], eax
    mov ebx, dword ptr [esp + 0x10]
    mov dl, ch
    inc eax
    and dl, 0xf0
    and ch, 0xf
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ebx, edx
    add ch, 3
    mov dword ptr [esp + 0x10], ebx
    xor ebx, ebx
    # jmp 0x448365
    .byte 0xe9
    .long loc_00448365 - . - 4
loc_004482eb:
    xor eax, eax
    mov ax, word ptr [esp + 0x10]
    add eax, ebx
    and eax, 0xfff
    mov cl, byte ptr [eax + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00448310
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_0044831d
loc_00448310:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00448349
loc_0044831d:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00448334
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448349
loc_00448334:
    mov ah, byte ptr [esi + 0xd]
    or ah, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], ah
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00448349:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    inc ebx
    mov dword ptr [d_004a4e04], eax
loc_00448365:
    xor eax, eax
    mov al, ch
    cmp ebx, eax
    jl loc_004482eb
loc_00448371:
    test byte ptr [esp + 0x64], 0x20
    # je 0x4483fb
    .byte 0x0f,0x84
    .long loc_004483fb - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dh, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dh, 4
    jne loc_0044839d
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004483aa
loc_0044839d:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_004483d6
loc_004483aa:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_004483c1
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_004483d6
loc_004483c1:
    mov bh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov eax, dword ptr [esi]
    or bh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], bh
    inc eax
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], eax
loc_004483d6:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    dec edi
    mov edx, eax
    mov dword ptr [d_004a4e04], eax
    and edx, 0xfff
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    jmp loc_004484dc
loc_004483fb:
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax]
    xor ebx, ebx
    mov dword ptr [esp + 0x44], edx
    mov dl, byte ptr [eax + 1]
    inc eax
    mov byte ptr [esp + 0x8c], dl
    and dl, 0xf0
    mov ecx, dword ptr [esp + 0x44]
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ecx, edx
    mov dl, byte ptr [esp + 0x8c]
    inc eax
    and dl, 0xf
    mov dword ptr [d_004a4dfc], eax
    add dl, 3
    mov dword ptr [esp + 0x44], ecx
    mov byte ptr [esp + 0x8c], dl
    # jmp 0x4484cb
    .byte 0xe9
    .long loc_004484cb - . - 4
loc_0044844c:
    xor eax, eax
    mov ax, word ptr [esp + 0x44]
    lea ecx, [eax + ebx]
    and ecx, 0xfff
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00448473
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448480
loc_00448473:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_004484ab
loc_00448480:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00448497
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_004484ab
loc_00448497:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_004484ab:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, 0xfff
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_004484cb:
    xor eax, eax
    mov al, byte ptr [esp + 0x8c]
    cmp ebx, eax
    jl loc_0044844c
loc_004484dc:
    test byte ptr [esp + 0x64], 0x40
    # je 0x448566
    .byte 0x0f,0x84
    .long loc_00448566 - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_00448508
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448515
loc_00448508:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00448541
loc_00448515:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_0044852c
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448541
loc_0044852c:
    mov dh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov eax, dword ptr [esi]
    or dh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], eax
loc_00448541:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    dec edi
    mov edx, eax
    mov dword ptr [d_004a4e04], eax
    and edx, 0xfff
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    jmp loc_0044862a
loc_00448566:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax - 1]
    mov ch, byte ptr [eax]
    mov dword ptr [esp + 0x3c], edx
    mov dword ptr [d_004a4dfc], eax
    mov ebx, dword ptr [esp + 0x3c]
    mov dl, ch
    inc eax
    and dl, 0xf0
    and ch, 0xf
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ebx, edx
    add ch, 3
    mov dword ptr [esp + 0x3c], ebx
    xor ebx, ebx
    # jmp 0x44861e
    .byte 0xe9
    .long loc_0044861e - . - 4
loc_004485a4:
    xor eax, eax
    mov ax, word ptr [esp + 0x3c]
    add eax, ebx
    and eax, 0xfff
    mov cl, byte ptr [eax + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_004485c9
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004485d6
loc_004485c9:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00448602
loc_004485d6:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_004485ed
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448602
loc_004485ed:
    mov ah, byte ptr [esi + 0xd]
    or ah, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], ah
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00448602:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    inc ebx
    mov dword ptr [d_004a4e04], eax
loc_0044861e:
    xor eax, eax
    mov al, ch
    cmp ebx, eax
    jl loc_004485a4
loc_0044862a:
    test byte ptr [esp + 0x64], 0x80
    # je 0x4486b4
    .byte 0x0f,0x84
    .long loc_004486b4 - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dh, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dh, 4
    jne loc_00448656
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448663
loc_00448656:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_0044868f
loc_00448663:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_0044867a
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_0044868f
loc_0044867a:
    mov bh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov eax, dword ptr [esi]
    or bh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], bh
    inc eax
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], eax
loc_0044868f:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    dec edi
    mov edx, eax
    mov dword ptr [d_004a4e04], eax
    and edx, 0xfff
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    jmp loc_00447bd6
loc_004486b4:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax - 1]
    mov ch, byte ptr [eax]
    mov dword ptr [esp + 0x4c], edx
    mov dword ptr [d_004a4dfc], eax
    mov ebx, dword ptr [esp + 0x4c]
    mov dl, ch
    inc eax
    and dl, 0xf0
    and ch, 0xf
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ebx, edx
    add ch, 3
    mov dword ptr [esp + 0x4c], ebx
    xor ebx, ebx
    jmp loc_00448737
loc_004486ef:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00448706
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_0044871b
loc_00448706:
    mov ah, byte ptr [esi + 0xd]
    or ah, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], ah
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_0044871b:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    inc ebx
    mov dword ptr [d_004a4e04], eax
loc_00448737:
    xor eax, eax
    mov al, ch
    cmp ebx, eax
    jge loc_00447bd6
    xor eax, eax
    mov ax, word ptr [esp + 0x4c]
    add eax, ebx
    and eax, 0xfff
    mov cl, byte ptr [eax + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00448768
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004486ef
loc_00448768:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_0044871b
loc_00448775:
    test edi, edi
    je loc_00449e1e
    cmp dword ptr [d_004a4e00], 0
    jbe loc_0044882b
    cmp eax, 0x11
    jge loc_0044882b
    cmp edx, dword ptr [d_004a4e08]
    je loc_004487ce
    mov ebx, eax
    mov eax, offset d_004a49fc
    call sub_0044550c
    mov eax, dword ptr [d_004a4e08]
    mov ebx, dword ptr [d_004a4dfc]
    mov edx, offset d_004a49fc
    sub eax, ebx
    mov ecx, offset d_004a49fc
    add edx, eax
    mov dword ptr [d_004a4dfc], ecx
    mov dword ptr [d_004a4e08], edx
    jmp loc_004487dd
loc_004487ce:
    mov eax, offset d_004a49fc
    mov dword ptr [d_004a4e08], eax
    mov dword ptr [d_004a4dfc], eax
loc_004487dd:
    mov ebx, dword ptr [d_004a4e08]
    mov eax, 0x400
    sub ebx, offset d_004a49fc
    mov ecx, ebp
    sub eax, ebx
    mov ebp, dword ptr [d_004a4e00]
    mov ebx, eax
    cmp eax, ebp
    jbe loc_00448800
    mov ebx, ebp
loc_00448800:
    mov edx, 1
    mov eax, dword ptr [d_004a4e08]
    call sub_00451b5f
    mov edx, dword ptr [d_004a4e08]
    mov ebx, dword ptr [d_004a4e00]
    add edx, eax
    sub ebx, eax
    mov dword ptr [d_004a4e08], edx
    mov dword ptr [d_004a4e00], ebx
loc_0044882b:
    mov eax, dword ptr [d_004a4dfc]
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esp + 0x74], dl
    mov dword ptr [d_004a4dfc], eax
    dec edi
    je loc_00449e1e
    test dl, 1
    # je 0x4488c6
    .byte 0x0f,0x84
    .long loc_004488c6 - . - 4
    inc eax
    mov bl, byte ptr [eax - 1]
    mov dl, byte ptr [esi + 0xd]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_00448868
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448875
loc_00448868:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_004488a1
loc_00448875:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_0044888c
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_004488a1
loc_0044888c:
    mov dh, byte ptr [esi + 0xd]
    mov ebp, dword ptr [esi + 4]
    mov eax, dword ptr [esi]
    or dh, 0x10
    inc ebp
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov dword ptr [esi + 4], ebp
    mov dword ptr [esi], eax
loc_004488a1:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    dec edi
    mov edx, eax
    mov dword ptr [d_004a4e04], eax
    and edx, 0xfff
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    jmp loc_0044899f
loc_004488c6:
    inc eax
    xor dh, dh
    mov ebp, 0xfff
    mov dl, byte ptr [eax - 1]
    sub edi, 2
    mov dword ptr [esp + 4], edx
    mov dl, byte ptr [eax]
    mov dword ptr [d_004a4dfc], eax
    mov byte ptr [esp + 0x80], dl
    and dl, 0xf0
    mov ebx, dword ptr [esp + 4]
    shl edx, 4
    inc eax
    or ebx, edx
    mov dl, byte ptr [esp + 0x80]
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf
    mov dword ptr [esp + 4], ebx
    add dl, 3
    xor ebx, ebx
    mov byte ptr [esp + 0x80], dl
    # jmp 0x44898e
    .byte 0xe9
    .long loc_0044898e - . - 4
loc_00448917:
    xor eax, eax
    mov ax, word ptr [esp + 4]
    lea ecx, [eax + ebx]
    and ecx, ebp
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_0044893a
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448947
loc_0044893a:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00448972
loc_00448947:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_0044895e
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448972
loc_0044895e:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00448972:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, ebp
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_0044898e:
    xor eax, eax
    mov al, byte ptr [esp + 0x80]
    cmp ebx, eax
    jl loc_00448917
loc_0044899f:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x74], 2
    # je 0x448a31
    .byte 0x0f,0x84
    .long loc_00448a31 - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_004489d3
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004489e0
loc_004489d3:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00448a0c
loc_004489e0:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_004489f7
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448a0c
loc_004489f7:
    mov dh, byte ptr [esi + 0xd]
    or dh, 0x10
    mov eax, dword ptr [esi + 4]
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov edx, dword ptr [esi]
    mov dword ptr [esi + 4], eax
    inc edx
    mov dword ptr [esi], edx
loc_00448a0c:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00448af0
loc_00448a31:
    mov eax, dword ptr [d_004a4dfc]
    mov ebp, 0xfff
    inc eax
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax - 1]
    mov ch, byte ptr [eax]
    mov dword ptr [esp + 0xc], edx
    mov dword ptr [d_004a4dfc], eax
    mov ebx, dword ptr [esp + 0xc]
    mov dl, ch
    inc eax
    and dl, 0xf0
    and ch, 0xf
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ebx, edx
    add ch, 3
    mov dword ptr [esp + 0xc], ebx
    xor ebx, ebx
    # jmp 0x448ae8
    .byte 0xe9
    .long loc_00448ae8 - . - 4
loc_00448a74:
    xor eax, eax
    mov ax, word ptr [esp + 0xc]
    add eax, ebx
    and eax, ebp
    mov cl, byte ptr [eax + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00448a96
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448aa3
loc_00448a96:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00448acf
loc_00448aa3:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00448aba
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448acf
loc_00448aba:
    mov ah, byte ptr [esi + 0xd]
    or ah, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], ah
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00448acf:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov dword ptr [d_004a4e04], eax
    and eax, ebp
    inc ebx
    mov dword ptr [d_004a4e04], eax
loc_00448ae8:
    xor eax, eax
    mov al, ch
    cmp ebx, eax
    jl loc_00448a74
loc_00448af0:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x74], 4
    # je 0x448b7e
    .byte 0x0f,0x84
    .long loc_00448b7e - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dh, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dh, 4
    jne loc_00448b24
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448b31
loc_00448b24:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00448b5d
loc_00448b31:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00448b48
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448b5d
loc_00448b48:
    mov bh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov ebp, dword ptr [esi]
    or bh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], bh
    inc ebp
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], ebp
loc_00448b5d:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], eax
    jmp loc_00448c5c
loc_00448b7e:
    mov ebp, 0xfff
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax]
    xor ebx, ebx
    mov dword ptr [esp + 0x28], edx
    mov dl, byte ptr [eax + 1]
    inc eax
    mov byte ptr [esp + 0x88], dl
    and dl, 0xf0
    mov ecx, dword ptr [esp + 0x28]
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ecx, edx
    mov dl, byte ptr [esp + 0x88]
    inc eax
    and dl, 0xf
    mov dword ptr [d_004a4dfc], eax
    add dl, 3
    mov dword ptr [esp + 0x28], ecx
    mov byte ptr [esp + 0x88], dl
    # jmp 0x448c4b
    .byte 0xe9
    .long loc_00448c4b - . - 4
loc_00448bd4:
    xor eax, eax
    mov ax, word ptr [esp + 0x28]
    lea ecx, [eax + ebx]
    and ecx, ebp
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00448bf7
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448c04
loc_00448bf7:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00448c2f
loc_00448c04:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00448c1b
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448c2f
loc_00448c1b:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00448c2f:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, ebp
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_00448c4b:
    xor eax, eax
    mov al, byte ptr [esp + 0x88]
    cmp ebx, eax
    jl loc_00448bd4
loc_00448c5c:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x74], 8
    # je 0x448cee
    .byte 0x0f,0x84
    .long loc_00448cee - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_00448c90
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448c9d
loc_00448c90:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00448cc9
loc_00448c9d:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00448cb4
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448cc9
loc_00448cb4:
    mov dh, byte ptr [esi + 0xd]
    or dh, 0x10
    mov eax, dword ptr [esi + 4]
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov edx, dword ptr [esi]
    mov dword ptr [esi + 4], eax
    inc edx
    mov dword ptr [esi], edx
loc_00448cc9:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00448dbf
loc_00448cee:
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    mov ebp, 0xfff
    mov dl, byte ptr [eax]
    inc eax
    sub edi, 2
    mov dword ptr [esp + 0x1c], edx
    mov dl, byte ptr [eax]
    mov dword ptr [d_004a4dfc], eax
    mov byte ptr [esp + 0x5c], dl
    and dl, 0xf0
    mov ebx, dword ptr [esp + 0x1c]
    shl edx, 4
    inc eax
    or ebx, edx
    mov dl, byte ptr [esp + 0x5c]
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf
    mov dword ptr [esp + 0x1c], ebx
    add dl, 3
    xor ebx, ebx
    mov byte ptr [esp + 0x5c], dl
    # jmp 0x448db1
    .byte 0xe9
    .long loc_00448db1 - . - 4
loc_00448d3a:
    xor eax, eax
    mov ax, word ptr [esp + 0x1c]
    lea ecx, [eax + ebx]
    and ecx, ebp
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00448d5d
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448d6a
loc_00448d5d:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00448d95
loc_00448d6a:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00448d81
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448d95
loc_00448d81:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00448d95:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, ebp
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_00448db1:
    xor eax, eax
    mov al, byte ptr [esp + 0x5c]
    cmp ebx, eax
    jl loc_00448d3a
loc_00448dbf:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x74], 0x10
    # je 0x448e51
    .byte 0x0f,0x84
    .long loc_00448e51 - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_00448df3
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448e00
loc_00448df3:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00448e2c
loc_00448e00:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00448e17
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448e2c
loc_00448e17:
    mov dh, byte ptr [esi + 0xd]
    or dh, 0x10
    mov eax, dword ptr [esi + 4]
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov edx, dword ptr [esi]
    mov dword ptr [esi + 4], eax
    inc edx
    mov dword ptr [esi], edx
loc_00448e2c:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00448f10
loc_00448e51:
    mov eax, dword ptr [d_004a4dfc]
    mov ebp, 0xfff
    inc eax
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax - 1]
    mov ch, byte ptr [eax]
    mov dword ptr [esp + 0x38], edx
    mov dword ptr [d_004a4dfc], eax
    mov ebx, dword ptr [esp + 0x38]
    mov dl, ch
    inc eax
    and dl, 0xf0
    and ch, 0xf
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ebx, edx
    add ch, 3
    mov dword ptr [esp + 0x38], ebx
    xor ebx, ebx
    # jmp 0x448f08
    .byte 0xe9
    .long loc_00448f08 - . - 4
loc_00448e94:
    xor eax, eax
    mov ax, word ptr [esp + 0x38]
    add eax, ebx
    and eax, ebp
    mov cl, byte ptr [eax + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00448eb6
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448ec3
loc_00448eb6:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00448eef
loc_00448ec3:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00448eda
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448eef
loc_00448eda:
    mov ah, byte ptr [esi + 0xd]
    or ah, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], ah
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00448eef:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov dword ptr [d_004a4e04], eax
    and eax, ebp
    inc ebx
    mov dword ptr [d_004a4e04], eax
loc_00448f08:
    xor eax, eax
    mov al, ch
    cmp ebx, eax
    jl loc_00448e94
loc_00448f10:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x74], 0x20
    # je 0x448f9e
    .byte 0x0f,0x84
    .long loc_00448f9e - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dh, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dh, 4
    jne loc_00448f44
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00448f51
loc_00448f44:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00448f7d
loc_00448f51:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00448f68
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00448f7d
loc_00448f68:
    mov bh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov ebp, dword ptr [esi]
    or bh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], bh
    inc ebp
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], ebp
loc_00448f7d:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], eax
    jmp loc_0044905d
loc_00448f9e:
    mov eax, dword ptr [d_004a4dfc]
    mov ebp, 0xfff
    inc eax
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax - 1]
    mov ch, byte ptr [eax]
    mov dword ptr [esp + 0x2c], edx
    mov dword ptr [d_004a4dfc], eax
    mov ebx, dword ptr [esp + 0x2c]
    mov dl, ch
    inc eax
    and dl, 0xf0
    and ch, 0xf
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ebx, edx
    add ch, 3
    mov dword ptr [esp + 0x2c], ebx
    xor ebx, ebx
    # jmp 0x449055
    .byte 0xe9
    .long loc_00449055 - . - 4
loc_00448fe1:
    xor eax, eax
    mov ax, word ptr [esp + 0x2c]
    add eax, ebx
    and eax, ebp
    mov cl, byte ptr [eax + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00449003
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00449010
loc_00449003:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_0044903c
loc_00449010:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00449027
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_0044903c
loc_00449027:
    mov ah, byte ptr [esi + 0xd]
    or ah, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], ah
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_0044903c:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov dword ptr [d_004a4e04], eax
    and eax, ebp
    inc ebx
    mov dword ptr [d_004a4e04], eax
loc_00449055:
    xor eax, eax
    mov al, ch
    cmp ebx, eax
    jl loc_00448fe1
loc_0044905d:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x74], 0x40
    # je 0x4490eb
    .byte 0x0f,0x84
    .long loc_004490eb - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dh, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dh, 4
    jne loc_00449091
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_0044909e
loc_00449091:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_004490ca
loc_0044909e:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_004490b5
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_004490ca
loc_004490b5:
    mov bh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov ebp, dword ptr [esi]
    or bh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], bh
    inc ebp
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], ebp
loc_004490ca:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], eax
    jmp loc_004491c9
loc_004490eb:
    mov ebp, 0xfff
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax]
    xor ebx, ebx
    mov dword ptr [esp + 0x30], edx
    mov dl, byte ptr [eax + 1]
    inc eax
    mov byte ptr [esp + 0x84], dl
    and dl, 0xf0
    mov ecx, dword ptr [esp + 0x30]
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ecx, edx
    mov dl, byte ptr [esp + 0x84]
    inc eax
    and dl, 0xf
    mov dword ptr [d_004a4dfc], eax
    add dl, 3
    mov dword ptr [esp + 0x30], ecx
    mov byte ptr [esp + 0x84], dl
    # jmp 0x4491b8
    .byte 0xe9
    .long loc_004491b8 - . - 4
loc_00449141:
    xor eax, eax
    mov ax, word ptr [esp + 0x30]
    lea ecx, [eax + ebx]
    and ecx, ebp
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00449164
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00449171
loc_00449164:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_0044919c
loc_00449171:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00449188
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_0044919c
loc_00449188:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_0044919c:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, ebp
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_004491b8:
    xor eax, eax
    mov al, byte ptr [esp + 0x84]
    cmp ebx, eax
    jl loc_00449141
loc_004491c9:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x74], 0x80
    # je 0x44925b
    .byte 0x0f,0x84
    .long loc_0044925b - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_004491fd
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_0044920a
loc_004491fd:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00449236
loc_0044920a:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00449221
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449236
loc_00449221:
    mov dh, byte ptr [esi + 0xd]
    or dh, 0x10
    mov eax, dword ptr [esi + 4]
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov edx, dword ptr [esi]
    mov dword ptr [esi + 4], eax
    inc edx
    mov dword ptr [esi], edx
loc_00449236:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], ebx
    jmp loc_0044932c
loc_0044925b:
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    mov ebp, 0xfff
    mov dl, byte ptr [eax]
    inc eax
    sub edi, 2
    mov dword ptr [esp + 0x18], edx
    mov dl, byte ptr [eax]
    mov dword ptr [d_004a4dfc], eax
    mov byte ptr [esp + 0x70], dl
    and dl, 0xf0
    mov ebx, dword ptr [esp + 0x18]
    shl edx, 4
    inc eax
    or ebx, edx
    mov dl, byte ptr [esp + 0x70]
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf
    mov dword ptr [esp + 0x18], ebx
    add dl, 3
    xor ebx, ebx
    mov byte ptr [esp + 0x70], dl
    # jmp 0x44931e
    .byte 0xe9
    .long loc_0044931e - . - 4
loc_004492a7:
    xor eax, eax
    mov ax, word ptr [esp + 0x18]
    lea ecx, [eax + ebx]
    and ecx, ebp
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_004492ca
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004492d7
loc_004492ca:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00449302
loc_004492d7:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_004492ee
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449302
loc_004492ee:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00449302:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, ebp
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_0044931e:
    xor eax, eax
    mov al, byte ptr [esp + 0x70]
    cmp ebx, eax
    jl loc_004492a7
loc_0044932c:
    test edi, edi
    je loc_00449e1e
    mov eax, dword ptr [d_004a4dfc]
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [esp + 0x60], dl
    mov dword ptr [d_004a4dfc], eax
    dec edi
    je loc_00449e1e
    test dl, 1
    # je 0x4493cf
    .byte 0x0f,0x84
    .long loc_004493cf - . - 4
    inc eax
    mov bl, byte ptr [eax - 1]
    mov dl, byte ptr [esi + 0xd]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_00449371
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_0044937e
loc_00449371:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_004493aa
loc_0044937e:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00449395
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_004493aa
loc_00449395:
    mov dh, byte ptr [esi + 0xd]
    or dh, 0x10
    mov eax, dword ptr [esi + 4]
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov edx, dword ptr [esi]
    mov dword ptr [esi + 4], eax
    inc edx
    mov dword ptr [esi], edx
loc_004493aa:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00449489
loc_004493cf:
    mov ebp, 0xfff
    inc eax
    sub edi, 2
    xor dh, dh
    mov ch, byte ptr [eax]
    mov dl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    mov dword ptr [esp + 8], edx
    inc eax
    mov dl, ch
    mov ebx, dword ptr [esp + 8]
    and dl, 0xf0
    mov dword ptr [d_004a4dfc], eax
    shl edx, 4
    and ch, 0xf
    or ebx, edx
    add ch, 3
    mov dword ptr [esp + 8], ebx
    xor ebx, ebx
    # jmp 0x449481
    .byte 0xe9
    .long loc_00449481 - . - 4
loc_0044940d:
    xor eax, eax
    mov ax, word ptr [esp + 8]
    add eax, ebx
    and eax, ebp
    mov cl, byte ptr [eax + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_0044942f
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_0044943c
loc_0044942f:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00449468
loc_0044943c:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00449453
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449468
loc_00449453:
    mov ah, byte ptr [esi + 0xd]
    or ah, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], ah
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00449468:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov dword ptr [d_004a4e04], eax
    and eax, ebp
    inc ebx
    mov dword ptr [d_004a4e04], eax
loc_00449481:
    xor eax, eax
    mov al, ch
    cmp ebx, eax
    jl loc_0044940d
loc_00449489:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x60], 2
    # je 0x449517
    .byte 0x0f,0x84
    .long loc_00449517 - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dh, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dh, 4
    jne loc_004494bd
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004494ca
loc_004494bd:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_004494f6
loc_004494ca:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_004494e1
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_004494f6
loc_004494e1:
    mov bh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov ebp, dword ptr [esi]
    or bh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], bh
    inc ebp
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], ebp
loc_004494f6:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], eax
    jmp loc_004495e9
loc_00449517:
    mov ebp, 0xfff
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax]
    xor ebx, ebx
    mov dword ptr [esp + 0x14], edx
    mov dl, byte ptr [eax + 1]
    inc eax
    mov byte ptr [esp + 0x7c], dl
    and dl, 0xf0
    mov ecx, dword ptr [esp + 0x14]
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ecx, edx
    mov dl, byte ptr [esp + 0x7c]
    inc eax
    and dl, 0xf
    mov dword ptr [d_004a4dfc], eax
    add dl, 3
    mov dword ptr [esp + 0x14], ecx
    mov byte ptr [esp + 0x7c], dl
    # jmp 0x4495db
    .byte 0xe9
    .long loc_004495db - . - 4
loc_00449564:
    xor eax, eax
    mov ax, word ptr [esp + 0x14]
    lea ecx, [eax + ebx]
    and ecx, ebp
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00449587
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00449594
loc_00449587:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_004495bf
loc_00449594:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_004495ab
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_004495bf
loc_004495ab:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_004495bf:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, ebp
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_004495db:
    xor eax, eax
    mov al, byte ptr [esp + 0x7c]
    cmp ebx, eax
    jl loc_00449564
loc_004495e9:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x60], 4
    # je 0x44967b
    .byte 0x0f,0x84
    .long loc_0044967b - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_0044961d
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_0044962a
loc_0044961d:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00449656
loc_0044962a:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00449641
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449656
loc_00449641:
    mov dh, byte ptr [esi + 0xd]
    or dh, 0x10
    mov eax, dword ptr [esi + 4]
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov edx, dword ptr [esi]
    mov dword ptr [esi + 4], eax
    inc edx
    mov dword ptr [esi], edx
loc_00449656:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], ebx
    jmp loc_0044974c
loc_0044967b:
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    mov ebp, 0xfff
    mov dl, byte ptr [eax]
    inc eax
    sub edi, 2
    mov dword ptr [esp + 0x58], edx
    mov dl, byte ptr [eax]
    mov dword ptr [d_004a4dfc], eax
    mov byte ptr [esp + 0x78], dl
    and dl, 0xf0
    mov ebx, dword ptr [esp + 0x58]
    shl edx, 4
    inc eax
    or ebx, edx
    mov dl, byte ptr [esp + 0x78]
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf
    mov dword ptr [esp + 0x58], ebx
    add dl, 3
    xor ebx, ebx
    mov byte ptr [esp + 0x78], dl
    # jmp 0x44973e
    .byte 0xe9
    .long loc_0044973e - . - 4
loc_004496c7:
    xor eax, eax
    mov ax, word ptr [esp + 0x58]
    lea ecx, [eax + ebx]
    and ecx, ebp
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_004496ea
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004496f7
loc_004496ea:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00449722
loc_004496f7:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_0044970e
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449722
loc_0044970e:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00449722:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, ebp
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_0044973e:
    xor eax, eax
    mov al, byte ptr [esp + 0x78]
    cmp ebx, eax
    jl loc_004496c7
loc_0044974c:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x60], 8
    # je 0x4497de
    .byte 0x0f,0x84
    .long loc_004497de - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_00449780
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_0044978d
loc_00449780:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_004497b9
loc_0044978d:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_004497a4
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_004497b9
loc_004497a4:
    mov dh, byte ptr [esi + 0xd]
    or dh, 0x10
    mov eax, dword ptr [esi + 4]
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov edx, dword ptr [esi]
    mov dword ptr [esi + 4], eax
    inc edx
    mov dword ptr [esi], edx
loc_004497b9:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], ebx
    jmp loc_004498b0
loc_004497de:
    mov ebp, 0xfff
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax]
    xor ebx, ebx
    mov dword ptr [esp + 0x54], edx
    mov dl, byte ptr [eax + 1]
    inc eax
    mov byte ptr [esp + 0x68], dl
    and dl, 0xf0
    mov ecx, dword ptr [esp + 0x54]
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ecx, edx
    mov dl, byte ptr [esp + 0x68]
    inc eax
    and dl, 0xf
    mov dword ptr [d_004a4dfc], eax
    add dl, 3
    mov dword ptr [esp + 0x54], ecx
    mov byte ptr [esp + 0x68], dl
    # jmp 0x4498a2
    .byte 0xe9
    .long loc_004498a2 - . - 4
loc_0044982b:
    xor eax, eax
    mov ax, word ptr [esp + 0x54]
    lea ecx, [eax + ebx]
    and ecx, ebp
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_0044984e
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_0044985b
loc_0044984e:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00449886
loc_0044985b:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00449872
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449886
loc_00449872:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00449886:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, ebp
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_004498a2:
    xor eax, eax
    mov al, byte ptr [esp + 0x68]
    cmp ebx, eax
    jl loc_0044982b
loc_004498b0:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x60], 0x10
    # je 0x449942
    .byte 0x0f,0x84
    .long loc_00449942 - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_004498e4
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004498f1
loc_004498e4:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_0044991d
loc_004498f1:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00449908
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_0044991d
loc_00449908:
    mov dh, byte ptr [esi + 0xd]
    or dh, 0x10
    mov eax, dword ptr [esi + 4]
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov edx, dword ptr [esi]
    mov dword ptr [esi + 4], eax
    inc edx
    mov dword ptr [esi], edx
loc_0044991d:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00449a01
loc_00449942:
    mov eax, dword ptr [d_004a4dfc]
    mov ebp, 0xfff
    inc eax
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax - 1]
    mov ch, byte ptr [eax]
    mov dword ptr [esp + 0x48], edx
    mov dword ptr [d_004a4dfc], eax
    mov ebx, dword ptr [esp + 0x48]
    mov dl, ch
    inc eax
    and dl, 0xf0
    and ch, 0xf
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ebx, edx
    add ch, 3
    mov dword ptr [esp + 0x48], ebx
    xor ebx, ebx
    # jmp 0x4499f9
    .byte 0xe9
    .long loc_004499f9 - . - 4
loc_00449985:
    xor eax, eax
    mov ax, word ptr [esp + 0x48]
    add eax, ebx
    and eax, ebp
    mov cl, byte ptr [eax + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_004499a7
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_004499b4
loc_004499a7:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_004499e0
loc_004499b4:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_004499cb
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_004499e0
loc_004499cb:
    mov ah, byte ptr [esi + 0xd]
    or ah, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], ah
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_004499e0:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov dword ptr [d_004a4e04], eax
    and eax, ebp
    inc ebx
    mov dword ptr [d_004a4e04], eax
loc_004499f9:
    xor eax, eax
    mov al, ch
    cmp ebx, eax
    jl loc_00449985
loc_00449a01:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x60], 0x20
    # je 0x449a8f
    .byte 0x0f,0x84
    .long loc_00449a8f - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dh, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dh, 4
    jne loc_00449a35
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00449a42
loc_00449a35:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00449a6e
loc_00449a42:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00449a59
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449a6e
loc_00449a59:
    mov bh, byte ptr [esi + 0xd]
    mov ecx, dword ptr [esi + 4]
    mov ebp, dword ptr [esi]
    or bh, 0x10
    inc ecx
    mov byte ptr [esi + 0xd], bh
    inc ebp
    mov dword ptr [esi + 4], ecx
    mov dword ptr [esi], ebp
loc_00449a6e:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], eax
    and eax, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], eax
    jmp loc_00449b6c
loc_00449a8f:
    mov ebp, 0xfff
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    sub edi, 2
    mov dl, byte ptr [eax]
    xor ebx, ebx
    mov dword ptr [esp + 0x24], edx
    mov dl, byte ptr [eax + 1]
    inc eax
    mov byte ptr [esp + 0x94], dl
    and dl, 0xf0
    mov ecx, dword ptr [esp + 0x24]
    shl edx, 4
    mov dword ptr [d_004a4dfc], eax
    or ecx, edx
    mov dl, byte ptr [esp + 0x94]
    inc eax
    and dl, 0xf
    mov dword ptr [d_004a4dfc], eax
    add dl, 3
    mov dword ptr [esp + 0x24], ecx
    mov byte ptr [esp + 0x94], dl
    # jmp 0x449b5b
    .byte 0xe9
    .long loc_00449b5b - . - 4
loc_00449ae5:
    xor ecx, ecx
    mov cx, word ptr [esp + 0x24]
    add ecx, ebx
    and ecx, ebp
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00449b07
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00449b14
loc_00449b07:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00449b3f
loc_00449b14:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00449b2b
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449b3f
loc_00449b2b:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00449b3f:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, ebp
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_00449b5b:
    xor eax, eax
    mov al, byte ptr [esp + 0x94]
    cmp ebx, eax
    jl loc_00449ae5
loc_00449b6c:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x60], 0x40
    # je 0x449bfe
    .byte 0x0f,0x84
    .long loc_00449bfe - . - 4
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_00449ba0
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00449bad
loc_00449ba0:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00449bd9
loc_00449bad:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00449bc4
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449bd9
loc_00449bc4:
    mov dh, byte ptr [esi + 0xd]
    or dh, 0x10
    mov eax, dword ptr [esi + 4]
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov edx, dword ptr [esi]
    mov dword ptr [esi + 4], eax
    inc edx
    mov dword ptr [esi], edx
loc_00449bd9:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], bl
    mov ebx, eax
    mov dword ptr [d_004a4e04], eax
    and ebx, 0xfff
    dec edi
    mov dword ptr [d_004a4e04], ebx
    jmp loc_00449cd7
loc_00449bfe:
    mov eax, dword ptr [d_004a4dfc]
    xor dh, dh
    mov ebp, 0xfff
    mov dl, byte ptr [eax]
    inc eax
    sub edi, 2
    mov dword ptr [esp], edx
    mov dl, byte ptr [eax]
    mov dword ptr [d_004a4dfc], eax
    mov byte ptr [esp + 0x9c], dl
    and dl, 0xf0
    mov ebx, dword ptr [esp]
    shl edx, 4
    inc eax
    or ebx, edx
    mov dl, byte ptr [esp + 0x9c]
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf
    mov dword ptr [esp], ebx
    add dl, 3
    xor ebx, ebx
    mov byte ptr [esp + 0x9c], dl
    # jmp 0x449cc6
    .byte 0xe9
    .long loc_00449cc6 - . - 4
loc_00449c50:
    xor eax, eax
    mov ax, word ptr [esp]
    lea ecx, [eax + ebx]
    and ecx, ebp
    mov cl, byte ptr [ecx + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00449c72
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00449c7f
loc_00449c72:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00449caa
loc_00449c7f:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00449c96
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449caa
loc_00449c96:
    mov al, byte ptr [esi + 0xd]
    or al, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], al
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00449caa:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov ecx, eax
    mov dword ptr [d_004a4e04], eax
    and ecx, ebp
    inc ebx
    mov dword ptr [d_004a4e04], ecx
loc_00449cc6:
    xor eax, eax
    mov al, byte ptr [esp + 0x9c]
    cmp ebx, eax
    jl loc_00449c50
loc_00449cd7:
    test edi, edi
    je loc_00449e1e
    test byte ptr [esp + 0x60], 0x80
    je loc_00449d6e
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov dl, byte ptr [esi + 0xd]
    mov bl, byte ptr [eax - 1]
    mov dword ptr [d_004a4dfc], eax
    test dl, 4
    jne loc_00449d0b
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00449d18
loc_00449d0b:
    xor eax, eax
    mov edx, esi
    mov al, bl
    call sub_004527e3
    jmp loc_00449d44
loc_00449d18:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], bl
    cmp bl, 0xa
    jne loc_00449d2f
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449d44
loc_00449d2f:
    mov dh, byte ptr [esi + 0xd]
    mov ebp, dword ptr [esi + 4]
    mov eax, dword ptr [esi]
    or dh, 0x10
    inc ebp
    mov byte ptr [esi + 0xd], dh
    inc eax
    mov dword ptr [esi + 4], ebp
    mov dword ptr [esi], eax
loc_00449d44:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov edx, eax
    mov dword ptr [d_004a4e04], eax
    and edx, 0xfff
    mov byte ptr [eax + d_004a4e0b], bl
    mov dword ptr [d_004a4e04], edx
    add esp, 0xa0
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_00449d6e:
    mov eax, dword ptr [d_004a4dfc]
    inc eax
    mov ebp, 0xfff
    xor ebx, ebx
    mov ch, byte ptr [eax]
    movzx di, byte ptr [eax - 1]
    mov dl, ch
    mov dword ptr [d_004a4dfc], eax
    and dl, 0xf0
    and ch, 0xf
    inc eax
    xor dh, dh
    mov dword ptr [d_004a4dfc], eax
    shl edx, 4
    add ch, 3
    or edi, edx
    # jmp 0x449e16
    .byte 0xe9
    .long loc_00449e16 - . - 4
loc_00449da4:
    xor eax, eax
    mov ax, di
    add eax, ebx
    and eax, ebp
    mov cl, byte ptr [eax + d_004a4e0c]
    test byte ptr [esi + 0xd], 4
    jne loc_00449dc4
    mov eax, dword ptr [esi + 0x14]
    sub eax, dword ptr [esi + 4]
    cmp eax, 1
    ja loc_00449dd1
loc_00449dc4:
    xor eax, eax
    mov edx, esi
    mov al, cl
    call sub_004527e3
    jmp loc_00449dfd
loc_00449dd1:
    mov eax, dword ptr [esi]
    mov byte ptr [eax], cl
    cmp cl, 0xa
    jne loc_00449de8
    mov eax, 0xa
    mov edx, esi
    call sub_004527e3
    jmp loc_00449dfd
loc_00449de8:
    mov ah, byte ptr [esi + 0xd]
    or ah, 0x10
    mov edx, dword ptr [esi]
    mov byte ptr [esi + 0xd], ah
    inc edx
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esi], edx
    inc eax
    mov dword ptr [esi + 4], eax
loc_00449dfd:
    mov eax, dword ptr [d_004a4e04]
    inc eax
    mov byte ptr [eax + d_004a4e0b], cl
    mov dword ptr [d_004a4e04], eax
    and eax, ebp
    inc ebx
    mov dword ptr [d_004a4e04], eax
loc_00449e16:
    xor eax, eax
    mov al, ch
    cmp ebx, eax
    jl loc_00449da4
loc_00449e1e:
    add esp, 0xa0
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00449e29:
    push ebx
    push esi
    push ebp
    mov ebx, eax
    cmp eax, -1
    je loc_00449ec0
    mov eax, dword ptr [edx + 0x10]
    call dword ptr [d_0045c634]
    test byte ptr [edx + 0xd], 0x10
    je loc_00449e58
loc_00449e46:
    mov eax, dword ptr [edx + 0x10]
    call dword ptr [d_0045c638]
    mov eax, 0xffffffff
    pop ebp
    pop esi
    pop ebx
    ret
loc_00449e58:
    test byte ptr [edx + 0xc], 1
    je loc_00449e46
    cmp dword ptr [edx + 8], 0
    jne loc_00449e6b
    mov eax, edx
    call sub_0044ed40
loc_00449e6b:
    mov esi, dword ptr [edx + 4]
    test esi, esi
    jne loc_00449e8a
    mov eax, dword ptr [edx + 8]
    add eax, dword ptr [edx + 0x14]
    dec eax
    mov dword ptr [edx], eax
    or byte ptr [edx + 0xc], 4
    mov eax, dword ptr [edx]
    mov dword ptr [edx + 4], 1
    jmp loc_00449ead
loc_00449e8a:
    mov eax, dword ptr [edx]
    cmp eax, dword ptr [edx + 8]
    je loc_00449e46
    mov eax, dword ptr [edx]
    lea ebp, [esi + 1]
    dec eax
    mov dword ptr [edx + 4], ebp
    mov dword ptr [edx], eax
    mov al, byte ptr [eax]
    and eax, 0xff
    cmp eax, ebx
    je loc_00449eab
    or byte ptr [edx + 0xc], 4
loc_00449eab:
    mov eax, dword ptr [edx]
loc_00449ead:
    mov byte ptr [eax], bl
    and byte ptr [edx + 0xc], 0xef
    mov eax, dword ptr [edx + 0x10]
    call dword ptr [d_0045c638]
    xor eax, eax
    mov al, bl
loc_00449ec0:
    pop ebp
    pop esi
    pop ebx
    ret
sub_00449ec4:
    jmp sub_0044edc8
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00
ptr_00449ed0:
    # jmp 0x4529cc
    .byte 0xe9
    .long sub_004529cc - . - 4
    .byte 0x8d,0x40,0x00
ptr_00449ed8:
    # jmp 0x452abb
    .byte 0xe9
    .long sub_00452abb - . - 4
    .byte 0x8d,0x40,0x00
ptr_00449ee0:
    # jmp 0x452b35
    .byte 0xe9
    .long sub_00452b35 - . - 4
    .byte 0x8d,0x40,0x00
sub_00449ee8:
    push esi
    push edi
    push ebp
    mov ebp, eax
    mov eax, edx
    mov dword ptr [ebp + 8], eax
    xor edx, edx
    mov dword ptr [ebp + 0xc], ebx
    mov dword ptr [ebp + 4], edx
    test ecx, ecx
    je loc_00449f0a
    mov esi, ecx
    lea edi, [ebp + 0x10]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    jmp loc_00449f16
loc_00449f0a:
    mov dword ptr [ebp + 0x10], edx
    mov dword ptr [ebp + 0x14], edx
    mov dword ptr [ebp + 0x18], edx
    mov dword ptr [ebp + 0x1c], edx
loc_00449f16:
    mov ebx, dword ptr [ebp + 8]
    test ebx, ebx
    je loc_00449f34
    shl eax, 3
    call dword ptr [d_0045c5a8]
    mov dword ptr [ebp + 0x24], eax
    test eax, eax
    jne loc_00449f37
    mov edx, 0xffffffff
    jmp loc_00449f37
loc_00449f34:
    mov dword ptr [ebp + 0x24], ebx
loc_00449f37:
    cmp edx, -1
    je loc_00449f43
    mov dword ptr [ebp], 0xfebafeba
loc_00449f43:
    mov eax, edx
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x8d,0x40,0x00
sub_00449f4c:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    cmp dword ptr [eax], 0xfebafeba
    jne loc_00449f7e
    cmp ecx, dword ptr [eax + 4]
    jl loc_00449f7e
    lea edx, [ecx*8]
    mov eax, dword ptr [eax + 0x24]
    call dword ptr [d_0045c5ac]
    test eax, eax
    je loc_00449f7e
    mov dword ptr [ebx + 0x24], eax
    mov dword ptr [ebx + 8], ecx
    xor eax, eax
    pop ecx
    pop ebx
    ret
loc_00449f7e:
    mov eax, 0xffffffff
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_00449f88:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ecx, eax
    cmp dword ptr [eax], 0xfebafeba
    jne loc_00449ff6
    mov ebx, dword ptr [eax + 4]
    xor edx, edx
    test ebx, ebx
    jle loc_00449fd5
    xor ebx, ebx
loc_00449fa3:
    mov eax, dword ptr [ecx + 0x24]
    add eax, ebx
    mov ebp, dword ptr [eax]
    test ebp, ebp
    je loc_00449fb6
    mov eax, ebp
    call dword ptr [d_0045c5b0]
loc_00449fb6:
    mov eax, dword ptr [ecx + 0x24]
    add eax, ebx
    mov esi, dword ptr [eax + 4]
    test esi, esi
    je loc_00449fca
    mov eax, esi
    call dword ptr [d_0045c5b0]
loc_00449fca:
    inc edx
    mov esi, dword ptr [ecx + 4]
    add ebx, 8
    cmp edx, esi
    jl loc_00449fa3
loc_00449fd5:
    mov edi, dword ptr [ecx + 0x24]
    test edi, edi
    je loc_00449fe4
    mov eax, edi
    call dword ptr [d_0045c5b0]
loc_00449fe4:
    mov ebx, 0x28
    mov eax, ecx
    xor edx, edx
    call sub_00451940
    xor eax, eax
    jmp loc_00449ffb
loc_00449ff6:
    mov eax, 0xffffffff
loc_00449ffb:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0044a004:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov ebp, eax
    mov edi, edx
    mov dword ptr [esp], ebx
    cmp dword ptr [eax], 0xfebafeba
    # jne 0x44a079
    .byte 0x0f,0x85
    .long loc_0044a079 - . - 4
    mov ebx, dword ptr [eax + 4]
    test ebx, ebx
    jne loc_0044a02c
    mov eax, dword ptr [esp]
    mov dword ptr [eax], ebx
    jmp loc_0044a079
loc_0044a02c:
    dec ebx
    xor esi, esi
    test ebx, ebx
    jl loc_0044a05b
loc_0044a033:
    lea ecx, [ebx + esi]
    mov edx, dword ptr [ebp + 0x24]
    sar ecx, 1
    mov eax, edi
    mov edx, dword ptr [edx + ecx*8]
    call sub_00451df7
    mov dword ptr [esp + 4], eax
    test eax, eax
    je loc_0044a05b
    jge loc_0044a054
    lea ebx, [ecx - 1]
    jmp loc_0044a057
loc_0044a054:
    lea esi, [ecx + 1]
loc_0044a057:
    cmp ebx, esi
    jge loc_0044a033
loc_0044a05b:
    mov esi, dword ptr [esp + 4]
    test esi, esi
    jne loc_0044a06c
    mov eax, dword ptr [esp]
    mov dword ptr [eax], ecx
    xor eax, eax
    jmp loc_0044a07e
loc_0044a06c:
    jge loc_0044a073
    mov eax, dword ptr [esp]
    jmp loc_0044a077
loc_0044a073:
    mov eax, dword ptr [esp]
    inc ecx
loc_0044a077:
    mov dword ptr [eax], ecx
loc_0044a079:
    mov eax, 0xffffffff
loc_0044a07e:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8b,0xc0
sub_0044a088:
    push ebx
    sub esp, 4
    cmp dword ptr [eax], 0xfebafeba
    jne loc_0044a0a7
    mov ebx, esp
    call sub_0044a004
    test eax, eax
    jne loc_0044a0a7
    mov eax, dword ptr [esp]
    add esp, 4
    pop ebx
    ret
loc_0044a0a7:
    mov eax, 0xffffffff
    add esp, 4
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0044a0b4:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov ebp, eax
    mov esi, edx
    mov dword ptr [esp + 8], ebx
    cmp dword ptr [eax], 0xfebafeba
    jne loc_0044a206
    mov ebx, esp
    mov edx, esi
    call sub_0044a004
    test eax, eax
    je loc_0044a206
    mov eax, dword ptr [ebp + 4]
    mov ebx, dword ptr [ebp + 8]
    cmp eax, ebx
    jne loc_0044a0ff
    lea edx, [ebx + 1]
    mov eax, ebp
    add edx, edx
    call sub_00449f4c
    cmp eax, -1
    je loc_0044a20b
loc_0044a0ff:
    mov edi, esi
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    lea eax, [ecx + 1]
    call dword ptr [d_0045c5a8]
    mov edx, eax
    mov dword ptr [esp + 4], eax
    test eax, eax
    je loc_0044a206
    mov edi, eax
    mov ecx, dword ptr [esp + 8]
    push edi
loc_0044a129:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044a141
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044a129
loc_0044a141:
    pop edi
    test ecx, ecx
    je loc_0044a14d
    mov esi, dword ptr [ebp + 0xc]
    test esi, esi
    jne loc_0044a155
loc_0044a14d:
    xor edi, edi
    mov dword ptr [esp + 0xc], edi
    jmp loc_0044a172
loc_0044a155:
    mov eax, esi
    call dword ptr [d_0045c5a8]
    mov dword ptr [esp + 0xc], eax
    test eax, eax
    jne loc_0044a172
    mov eax, edx
    call dword ptr [d_0045c5b0]
    jmp loc_0044a206
loc_0044a172:
    mov eax, dword ptr [esp + 0xc]
    test eax, eax
    je loc_0044a199
    mov edx, dword ptr [ebp + 0xc]
    test edx, edx
    je loc_0044a199
    mov esi, dword ptr [esp + 8]
    mov ecx, edx
    mov edi, eax
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
loc_0044a199:
    mov ebx, dword ptr [esp]
    mov edx, dword ptr [ebp + 4]
    cmp edx, ebx
    jle loc_0044a1d2
    lea ebx, [edx*8]
loc_0044a1aa:
    mov edi, dword ptr [ebp + 0x24]
    add edi, ebx
    mov ecx, 8
    lea esi, [edi - 8]
    dec edx
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
    mov ecx, dword ptr [esp]
    sub ebx, 8
    cmp edx, ecx
    jg loc_0044a1aa
loc_0044a1d2:
    mov eax, dword ptr [esp]
    mov edx, dword ptr [ebp + 0x24]
    shl eax, 3
    add eax, edx
    mov edx, dword ptr [esp + 4]
    mov dword ptr [eax], edx
    mov edx, dword ptr [esp]
    mov eax, dword ptr [ebp + 0x24]
    shl edx, 3
    add eax, edx
    mov edx, dword ptr [esp + 0xc]
    mov dword ptr [eax + 4], edx
    mov esi, dword ptr [ebp + 4]
    inc esi
    xor eax, eax
    mov dword ptr [ebp + 4], esi
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0044a206:
    mov eax, 0xffffffff
loc_0044a20b:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ebp, eax
    cmp dword ptr [eax], 0xfebafeba
    # jne 0x44a2a0
    .byte 0x0f,0x85
    .long loc_0044a2a0 - . - 4
    mov ebx, esp
    call sub_0044a004
    cmp eax, -1
    je loc_0044a2a0
    mov eax, dword ptr [esp]
    mov edx, dword ptr [ebp + 0x24]
    mov eax, dword ptr [edx + eax*8]
    call dword ptr [d_0045c5b0]
    mov eax, dword ptr [esp]
    mov edx, dword ptr [ebp + 0x24]
    shl eax, 3
    add eax, edx
    mov ecx, dword ptr [eax + 4]
    test ecx, ecx
    je loc_0044a25f
    mov eax, ecx
    call dword ptr [d_0045c5b0]
loc_0044a25f:
    mov esi, dword ptr [ebp + 4]
    dec esi
    mov dword ptr [ebp + 4], esi
    mov ebx, dword ptr [esp]
    cmp ebx, esi
    jge loc_0044a29c
    lea edx, [ebx*8]
loc_0044a274:
    mov edi, dword ptr [ebp + 0x24]
    add edi, edx
    mov ecx, 8
    lea esi, [edi + 8]
    inc ebx
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
    mov eax, dword ptr [ebp + 4]
    add edx, 8
    cmp ebx, eax
    jl loc_0044a274
loc_0044a29c:
    xor eax, eax
    jmp loc_0044a2a5
loc_0044a2a0:
    mov eax, 0xffffffff
loc_0044a2a5:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, eax
    mov edi, edx
    cmp dword ptr [edx], 0xfebafeba
    jne loc_0044a303
    lea ecx, [edi + 0x10]
    mov ebx, dword ptr [edi + 0xc]
    mov edx, dword ptr [edi + 8]
    call sub_00449ee8
    test eax, eax
    jne loc_0044a2ff
    mov ebx, dword ptr [edi + 4]
    xor ecx, ecx
    test ebx, ebx
    jle loc_0044a2ff
    xor esi, esi
loc_0044a2de:
    mov edx, dword ptr [edi + 0x24]
    mov eax, ebp
    mov ebx, dword ptr [edx + esi + 4]
    mov edx, dword ptr [edx + esi]
    call sub_0044a0b4
    cmp eax, -1
    je loc_0044a308
    inc ecx
    mov eax, dword ptr [edi + 4]
    add esi, 8
    cmp ecx, eax
    jl loc_0044a2de
loc_0044a2ff:
    xor eax, eax
    jmp loc_0044a308
loc_0044a303:
    mov eax, 0xffffffff
loc_0044a308:
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ebp, eax
    mov esi, edx
    mov dword ptr [esp], ebx
    cmp dword ptr [eax], 0xfebafeba
    # jne 0x44a3ac
    .byte 0x0f,0x85
    .long loc_0044a3ac - . - 4
    cmp ebx, -1
    jne loc_0044a33a
    mov ebx, esp
    mov edx, esi
    call sub_0044a004
    jmp loc_0044a340
loc_0044a33a:
    lea ecx, [ebx + 1]
    mov dword ptr [esp], ecx
loc_0044a340:
    mov eax, dword ptr [esp]
    cmp eax, dword ptr [ebp + 4]
    # jge 0x44a3ac
    .byte 0x0f,0x8d
    .long loc_0044a3ac - . - 4
    mov edi, esi
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov eax, dword ptr [esp]
    mov ebx, dword ptr [ebp + 0x24]
    mov edx, esi
    mov ebp, dword ptr [ebx + eax*8]
    mov ebx, ecx
    mov eax, ebp
    mov edi, ecx
    call sub_004528c8
    test eax, eax
    jne loc_0044a3ac
    add ecx, ebp
    mov ah, byte ptr [ecx]
    test ah, ah
    je loc_0044a3a7
    cmp ah, 0x20
    jne loc_0044a385
    cmp byte ptr [ecx + 1], 0x28
    je loc_0044a3a7
loc_0044a385:
    lea eax, [edi + ebp]
    cmp byte ptr [eax], 0x20
    jne loc_0044a393
    cmp byte ptr [eax + 1], 0x5b
    je loc_0044a3a7
loc_0044a393:
    add ebp, edi
    cmp byte ptr [ebp], 0x2f
    jne loc_0044a3ac
    cmp byte ptr [ebp + 1], 0x54
    jne loc_0044a3ac
    cmp byte ptr [ebp + 2], 0x4c
    jne loc_0044a3ac
loc_0044a3a7:
    mov eax, dword ptr [esp]
    jmp loc_0044a3b1
loc_0044a3ac:
    mov eax, 0xffffffff
loc_0044a3b1:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
sub_0044a3bc:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    call sub_0045266a
    mov edx, eax
    cmp eax, -1
    je loc_0044a417
    mov eax, ebx
    call sub_0045266a
    cmp eax, -1
    je loc_0044a417
    shl edx, 8
    and eax, 0xff
    or edx, eax
    mov eax, ebx
    call sub_0045266a
    cmp eax, -1
    je loc_0044a417
    shl edx, 8
    and eax, 0xff
    or edx, eax
    mov eax, ebx
    call sub_0045266a
    cmp eax, -1
    je loc_0044a417
    shl edx, 8
    and eax, 0xff
    or edx, eax
    xor eax, eax
    mov dword ptr [ecx], edx
    pop ecx
    pop ebx
    ret
loc_0044a417:
    mov eax, 0xffffffff
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0044a420:
    push ebx
    push ecx
    sub esp, 4
    mov ebx, eax
    mov ecx, edx
    mov edx, esp
    call sub_0044a3bc
    test eax, eax
    jne loc_0044a477
    mov eax, dword ptr [esp]
    mov edx, esp
    mov dword ptr [ecx + 4], eax
    mov eax, ebx
    call sub_0044a3bc
    test eax, eax
    jne loc_0044a477
    mov eax, dword ptr [esp]
    mov edx, esp
    mov dword ptr [ecx + 8], eax
    mov eax, ebx
    call sub_0044a3bc
    test eax, eax
    jne loc_0044a477
    mov eax, dword ptr [esp]
    mov edx, esp
    mov dword ptr [ecx + 0xc], eax
    mov eax, ebx
    call sub_0044a3bc
    test eax, eax
    jne loc_0044a477
    mov eax, dword ptr [esp]
    mov dword ptr [ecx + 0x24], eax
    xor eax, eax
    jmp loc_0044a47c
loc_0044a477:
    mov eax, 0xffffffff
loc_0044a47c:
    add esp, 4
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0044a484:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov edi, eax
    mov esi, edx
    mov dword ptr [esp], ebx
    cmp dword ptr [edx], 0xfebafeba
    jne loc_0044a60a
    mov ebx, dword ptr [esi + 4]
    xor ebp, ebp
    test ebx, ebx
    jle loc_0044a4db
    xor edx, edx
loc_0044a4a9:
    mov eax, dword ptr [esi + 0x24]
    add eax, edx
    mov ecx, dword ptr [eax]
    test ecx, ecx
    je loc_0044a4bc
    mov eax, ecx
    call dword ptr [d_0045c5b0]
loc_0044a4bc:
    mov eax, dword ptr [esi + 0x24]
    add eax, edx
    mov ebx, dword ptr [eax + 4]
    test ebx, ebx
    je loc_0044a4d0
    mov eax, ebx
    call dword ptr [d_0045c5b0]
loc_0044a4d0:
    inc ebp
    mov ecx, dword ptr [esi + 4]
    add edx, 8
    cmp ebp, ecx
    jl loc_0044a4a9
loc_0044a4db:
    mov ebp, dword ptr [esi + 0x24]
    test ebp, ebp
    je loc_0044a4ea
    mov eax, ebp
    call dword ptr [d_0045c5b0]
loc_0044a4ea:
    mov edx, esi
    mov eax, edi
    call sub_0044a420
    test eax, eax
    jne loc_0044a60a
    mov dword ptr [esi + 0x24], eax
    mov eax, dword ptr [esi + 8]
    test eax, eax
    jle loc_0044a606
    shl eax, 3
    call dword ptr [d_0045c5a8]
    mov dword ptr [esi + 0x24], eax
    test eax, eax
    je loc_0044a60a
    mov ebx, dword ptr [esi + 4]
    xor eax, eax
    test ebx, ebx
    jle loc_0044a548
    xor edx, edx
loc_0044a528:
    mov ebx, dword ptr [esi + 0x24]
    mov dword ptr [edx + ebx], 0
    mov ebx, dword ptr [esi + 0x24]
    mov dword ptr [edx + ebx + 4], 0
    inc eax
    mov ecx, dword ptr [esi + 4]
    add edx, 8
    cmp eax, ecx
    jl loc_0044a528
loc_0044a548:
    xor ebp, ebp
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esp + 4], ebp
    test eax, eax
    jle loc_0044a606
loc_0044a559:
    mov eax, edi
    call sub_0045266a
    cmp eax, -1
    je loc_0044a60f
    lea edx, [eax + 1]
    mov eax, edx
    call dword ptr [d_0045c5a8]
    mov ebx, dword ptr [esi + 0x24]
    mov dword ptr [ebx + ebp], eax
    mov eax, dword ptr [esi + 0x24]
    add eax, ebp
    mov ecx, dword ptr [eax]
    test ecx, ecx
    # je 0x44a60a
    .byte 0x0f,0x84
    .long loc_0044a60a - . - 4
    mov eax, ecx
    mov ebx, edi
    call sub_004515ff
    test eax, eax
    # je 0x44a60a
    .byte 0x0f,0x84
    .long loc_0044a60a - . - 4
    mov eax, dword ptr [esi + 0xc]
    test eax, eax
    jbe loc_0044a5ef
    call dword ptr [d_0045c5a8]
    mov edx, eax
    mov eax, dword ptr [esi + 0x24]
    mov dword ptr [eax + ebp + 4], edx
    mov eax, edx
    test eax, eax
    je loc_0044a60a
    cmp dword ptr [esi + 0x10], 0
    je loc_0044a5d4
    mov eax, dword ptr [esi + 0x24]
    mov ecx, dword ptr [esp]
    mov ebx, dword ptr [esi + 0xc]
    mov edx, dword ptr [eax + ebp + 4]
    mov eax, edi
    call dword ptr [esi + 0x10]
    test eax, eax
    je loc_0044a5ef
    jmp loc_0044a60a
loc_0044a5d4:
    mov ebx, 1
    mov eax, dword ptr [esi + 0x24]
    mov ecx, edi
    mov edx, dword ptr [esi + 0xc]
    mov eax, dword ptr [eax + ebp + 4]
    call sub_00451b5f
    cmp eax, 1
    jne loc_0044a60a
loc_0044a5ef:
    mov edx, dword ptr [esp + 4]
    add ebp, 8
    inc edx
    mov ebx, dword ptr [esi + 4]
    mov dword ptr [esp + 4], edx
    cmp edx, ebx
    jl loc_0044a559
loc_0044a606:
    xor eax, eax
    jmp loc_0044a60f
loc_0044a60a:
    mov eax, 0xffffffff
loc_0044a60f:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
sub_0044a618:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    mov eax, edx
    sar eax, 0x18
    and eax, 0xff
    and eax, 0xff
    mov edx, ebx
    call sub_004527e3
    cmp eax, -1
    je loc_0044a684
    mov eax, ecx
    sar eax, 0x10
    and eax, 0xff
    and eax, 0xff
    mov edx, ebx
    call sub_004527e3
    cmp eax, -1
    je loc_0044a684
    mov eax, ecx
    sar eax, 8
    and eax, 0xff
    and eax, 0xff
    mov edx, ebx
    call sub_004527e3
    cmp eax, -1
    je loc_0044a684
    xor eax, eax
    mov edx, ebx
    mov al, cl
    call sub_004527e3
    cmp eax, -1
    je loc_0044a684
    xor eax, eax
    pop ecx
    pop ebx
    ret
loc_0044a684:
    mov eax, 0xffffffff
    pop ecx
    pop ebx
    ret
sub_0044a68c:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    mov edx, dword ptr [edx + 4]
    call sub_0044a618
    test eax, eax
    jne loc_0044a6c8
    mov eax, ebx
    mov edx, dword ptr [ecx + 8]
    call sub_0044a618
    test eax, eax
    jne loc_0044a6c8
    mov eax, ebx
    mov edx, dword ptr [ecx + 0xc]
    call sub_0044a618
    test eax, eax
    jne loc_0044a6c8
    mov eax, ebx
    mov edx, dword ptr [ecx + 0x24]
    call sub_0044a618
    test eax, eax
    je loc_0044a6cd
loc_0044a6c8:
    mov eax, 0xffffffff
loc_0044a6cd:
    pop ecx
    pop ebx
    ret
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov ebp, eax
    mov esi, edx
    mov dword ptr [esp], ebx
    cmp dword ptr [edx], 0xfebafeba
    jne loc_0044a7b6
    mov edx, esi
    call sub_0044a68c
    test eax, eax
    jne loc_0044a7b6
    mov ecx, dword ptr [esi + 4]
    mov dword ptr [esp + 4], eax
    test ecx, ecx
    jle loc_0044a7b2
    mov dword ptr [esp + 8], eax
loc_0044a70c:
    mov ecx, dword ptr [esp + 8]
    mov edi, dword ptr [esi + 0x24]
    add edi, ecx
    mov edi, dword ptr [edi]
    mov edx, ebp
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov eax, ecx
    call sub_004527e3
    cmp eax, -1
    je loc_0044a7bb
    mov edi, dword ptr [esp + 8]
    mov eax, dword ptr [esi + 0x24]
    add eax, edi
    mov edx, ebp
    mov eax, dword ptr [eax]
    call sub_00451e74
    cmp eax, -1
    # je 0x44a7bb
    .byte 0x0f,0x84
    .long loc_0044a7bb - . - 4
    cmp dword ptr [esi + 0x14], 0
    je loc_0044a773
    mov ecx, dword ptr [esi + 0xc]
    test ecx, ecx
    jbe loc_0044a793
    mov eax, dword ptr [esi + 0x24]
    add eax, edi
    mov ebx, ecx
    mov ecx, dword ptr [esp]
    mov edx, dword ptr [eax + 4]
    mov eax, ebp
    call dword ptr [esi + 0x14]
    test eax, eax
    je loc_0044a793
    jmp loc_0044a7b6
loc_0044a773:
    mov edx, dword ptr [esi + 0xc]
    test edx, edx
    jbe loc_0044a793
    mov eax, dword ptr [esi + 0x24]
    add eax, edi
    mov ebx, 1
    mov ecx, ebp
    mov eax, dword ptr [eax + 4]
    call sub_00451958
    cmp eax, 1
    jne loc_0044a7b6
loc_0044a793:
    mov edi, dword ptr [esp + 8]
    mov eax, dword ptr [esp + 4]
    mov edx, dword ptr [esi + 4]
    add edi, 8
    inc eax
    mov dword ptr [esp + 8], edi
    mov dword ptr [esp + 4], eax
    cmp eax, edx
    jl loc_0044a70c
loc_0044a7b2:
    xor eax, eax
    jmp loc_0044a7bb
loc_0044a7b6:
    mov eax, 0xffffffff
loc_0044a7bb:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
    test eax, eax
    je loc_0044a7d7
    test edx, edx
    je loc_0044a7d7
    test ebx, ebx
    je loc_0044a7d7
    mov dword ptr [d_0045c5a8], eax
    jmp loc_0044a7ec
loc_0044a7d7:
    mov edx, offset ptr_00449ed0
    mov ebx, offset ptr_00449ee0
    mov dword ptr [d_0045c5a8], edx
    mov edx, offset ptr_00449ed8
loc_0044a7ec:
    mov dword ptr [d_0045c5b0], ebx
    mov dword ptr [d_0045c5ac], edx
    ret
    .byte 0x8d,0x40,0x00
sub_0044a7fc:
    push ebx
    push ecx
    sub esp, 4
    mov ebx, eax
    mov ecx, edx
    mov edx, esp
    call sub_0044000c
    cmp eax, -1
    je loc_0044a857
    mov eax, dword ptr [esp]
    mov edx, esp
    mov dword ptr [ecx + 4], eax
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    je loc_0044a857
    mov eax, dword ptr [esp]
    mov edx, esp
    mov dword ptr [ecx + 8], eax
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    je loc_0044a857
    mov eax, dword ptr [esp]
    mov edx, esp
    mov dword ptr [ecx + 0xc], eax
    mov eax, ebx
    call sub_0044000c
    cmp eax, -1
    je loc_0044a857
    mov eax, dword ptr [esp]
    mov dword ptr [ecx + 0x24], eax
    xor eax, eax
    jmp loc_0044a85c
loc_0044a857:
    mov eax, 0xffffffff
loc_0044a85c:
    add esp, 4
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov edi, eax
    mov esi, edx
    mov dword ptr [esp], ebx
    cmp dword ptr [edx], 0xfebafeba
    jne loc_0044a9ea
    mov ebx, dword ptr [esi + 4]
    xor ebp, ebp
    test ebx, ebx
    jle loc_0044a8bb
    xor edx, edx
loc_0044a889:
    mov eax, dword ptr [esi + 0x24]
    add eax, edx
    mov ecx, dword ptr [eax]
    test ecx, ecx
    je loc_0044a89c
    mov eax, ecx
    call dword ptr [d_0045c5b0]
loc_0044a89c:
    mov eax, dword ptr [esi + 0x24]
    add eax, edx
    mov ebx, dword ptr [eax + 4]
    test ebx, ebx
    je loc_0044a8b0
    mov eax, ebx
    call dword ptr [d_0045c5b0]
loc_0044a8b0:
    inc ebp
    mov ecx, dword ptr [esi + 4]
    add edx, 8
    cmp ebp, ecx
    jl loc_0044a889
loc_0044a8bb:
    mov ebp, dword ptr [esi + 0x24]
    test ebp, ebp
    je loc_0044a8ca
    mov eax, ebp
    call dword ptr [d_0045c5b0]
loc_0044a8ca:
    mov edx, esi
    mov eax, edi
    call sub_0044a7fc
    test eax, eax
    jne loc_0044a9ea
    mov dword ptr [esi + 0x24], eax
    mov eax, dword ptr [esi + 8]
    test eax, eax
    jle loc_0044a9e6
    shl eax, 3
    call dword ptr [d_0045c5a8]
    mov dword ptr [esi + 0x24], eax
    test eax, eax
    je loc_0044a9ea
    mov ebx, dword ptr [esi + 4]
    xor eax, eax
    test ebx, ebx
    jle loc_0044a928
    xor edx, edx
loc_0044a908:
    mov ebx, dword ptr [esi + 0x24]
    mov dword ptr [edx + ebx], 0
    mov ebx, dword ptr [esi + 0x24]
    mov dword ptr [edx + ebx + 4], 0
    inc eax
    mov ecx, dword ptr [esi + 4]
    add edx, 8
    cmp eax, ecx
    jl loc_0044a908
loc_0044a928:
    xor ebp, ebp
    mov eax, dword ptr [esi + 4]
    mov dword ptr [esp + 4], ebp
    test eax, eax
    jle loc_0044a9e6
loc_0044a939:
    mov eax, edi
    call sub_0043fa10
    cmp eax, -1
    je loc_0044a9ef
    lea edx, [eax + 1]
    mov eax, edx
    call dword ptr [d_0045c5a8]
    mov ebx, dword ptr [esi + 0x24]
    mov dword ptr [ebx + ebp], eax
    mov eax, dword ptr [esi + 0x24]
    add eax, ebp
    mov ecx, dword ptr [eax]
    test ecx, ecx
    # je 0x44a9ea
    .byte 0x0f,0x84
    .long loc_0044a9ea - . - 4
    mov eax, ecx
    mov ebx, edi
    call sub_0043fc90
    test eax, eax
    # je 0x44a9ea
    .byte 0x0f,0x84
    .long loc_0044a9ea - . - 4
    mov eax, dword ptr [esi + 0xc]
    test eax, eax
    jbe loc_0044a9cf
    call dword ptr [d_0045c5a8]
    mov edx, eax
    mov eax, dword ptr [esi + 0x24]
    mov dword ptr [eax + ebp + 4], edx
    mov eax, edx
    test eax, eax
    je loc_0044a9ea
    cmp dword ptr [esi + 0x18], 0
    je loc_0044a9b4
    mov eax, dword ptr [esi + 0x24]
    mov ecx, dword ptr [esp]
    mov ebx, dword ptr [esi + 0xc]
    mov edx, dword ptr [eax + ebp + 4]
    mov eax, edi
    call dword ptr [esi + 0x18]
    test eax, eax
    je loc_0044a9cf
    jmp loc_0044a9ea
loc_0044a9b4:
    mov ebx, 1
    mov eax, dword ptr [esi + 0x24]
    mov ecx, edi
    mov edx, dword ptr [esi + 0xc]
    mov eax, dword ptr [eax + ebp + 4]
    call sub_0043f4c0
    cmp eax, 1
    jne loc_0044a9ea
loc_0044a9cf:
    mov edx, dword ptr [esp + 4]
    add ebp, 8
    inc edx
    mov ebx, dword ptr [esi + 4]
    mov dword ptr [esp + 4], edx
    cmp edx, ebx
    jl loc_0044a939
loc_0044a9e6:
    xor eax, eax
    jmp loc_0044a9ef
loc_0044a9ea:
    mov eax, 0xffffffff
loc_0044a9ef:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
sub_0044a9f8:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    mov edx, dword ptr [edx + 4]
    call sub_00440108
    cmp eax, -1
    je loc_0044aa3d
    mov eax, ebx
    mov edx, dword ptr [ecx + 8]
    call sub_00440108
    cmp eax, -1
    je loc_0044aa3d
    mov eax, ebx
    mov edx, dword ptr [ecx + 0xc]
    call sub_00440108
    cmp eax, -1
    je loc_0044aa3d
    mov eax, ebx
    mov edx, dword ptr [ecx + 0x24]
    call sub_00440108
    cmp eax, -1
    je loc_0044aa3d
    xor eax, eax
    pop ecx
    pop ebx
    ret
loc_0044aa3d:
    mov eax, 0xffffffff
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov ebp, eax
    mov esi, edx
    mov dword ptr [esp], ebx
    cmp dword ptr [edx], 0xfebafeba
    jne loc_0044ab2e
    mov edx, esi
    call sub_0044a9f8
    test eax, eax
    jne loc_0044ab2e
    mov ecx, dword ptr [esi + 4]
    mov dword ptr [esp + 4], eax
    test ecx, ecx
    jle loc_0044ab2a
    mov dword ptr [esp + 8], eax
loc_0044aa84:
    mov ecx, dword ptr [esp + 8]
    mov edi, dword ptr [esi + 0x24]
    add edi, ecx
    mov edi, dword ptr [edi]
    mov edx, ebp
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov eax, ecx
    call sub_0043ff68
    cmp eax, -1
    je loc_0044ab33
    mov edi, dword ptr [esp + 8]
    mov eax, dword ptr [esi + 0x24]
    add eax, edi
    mov edx, ebp
    mov eax, dword ptr [eax]
    call sub_0043ff80
    cmp eax, -1
    # je 0x44ab33
    .byte 0x0f,0x84
    .long loc_0044ab33 - . - 4
    cmp dword ptr [esi + 0x1c], 0
    je loc_0044aaeb
    mov ecx, dword ptr [esi + 0xc]
    test ecx, ecx
    jbe loc_0044ab0b
    mov eax, dword ptr [esi + 0x24]
    add eax, edi
    mov ebx, ecx
    mov ecx, dword ptr [esp]
    mov edx, dword ptr [eax + 4]
    mov eax, ebp
    call dword ptr [esi + 0x1c]
    test eax, eax
    je loc_0044ab0b
    jmp loc_0044ab2e
loc_0044aaeb:
    mov edx, dword ptr [esi + 0xc]
    test edx, edx
    jbe loc_0044ab0b
    mov eax, dword ptr [esi + 0x24]
    add eax, edi
    mov ebx, 1
    mov ecx, ebp
    mov eax, dword ptr [eax + 4]
    call sub_0043ff50
    cmp eax, 1
    jne loc_0044ab2e
loc_0044ab0b:
    mov edi, dword ptr [esp + 8]
    mov eax, dword ptr [esp + 4]
    mov edx, dword ptr [esi + 4]
    add edi, 8
    inc eax
    mov dword ptr [esp + 8], edi
    mov dword ptr [esp + 4], eax
    cmp eax, edx
    jl loc_0044aa84
loc_0044ab2a:
    xor eax, eax
    jmp loc_0044ab33
loc_0044ab2e:
    mov eax, 0xffffffff
loc_0044ab33:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0044ab3b:
    cmp byte ptr [eax], 0
    je loc_0044ab65
loc_0044ab40:
    cmp byte ptr [eax + 1], 0
    je loc_0044ab49
    inc eax
    jmp loc_0044ab40
loc_0044ab49:
    mov al, byte ptr [eax]
    and eax, 0xff
    cmp eax, 0x5c
    je loc_0044ab5f
    cmp eax, 0x2f
    je loc_0044ab5f
    cmp eax, 0x2e
    jne loc_0044ab65
loc_0044ab5f:
    mov eax, 1
    ret
loc_0044ab65:
    xor eax, eax
    ret
sub_0044ab68:
    push ecx
    push esi
    push edi
    sub esp, 0x140
    mov edi, edx
    mov esi, ebx
    mov edx, esp
    push edx
    push eax
    call sub_00457dde
    mov ecx, eax
    cmp eax, -1
    jne loc_0044ab8e
    call sub_0044eeb5
loc_0044ab8a:
    xor eax, eax
    jmp loc_0044abbe
loc_0044ab8e:
    mov ebx, esp
    mov edx, edi
    call sub_0044ef49
    test eax, eax
    jne loc_0044aba7
    mov eax, 2
    call sub_0044ee64
    jmp loc_0044ab8a
loc_0044aba7:
    mov edx, esp
    mov dword ptr [esi], ecx
    mov eax, esi
    mov dword ptr [esi + 4], edi
    call sub_0044ef0e
    mov eax, esi
    mov byte ptr [esi + 0x120], 1
loc_0044abbe:
    add esp, 0x140
    pop edi
    pop esi
    pop ecx
    ret
sub_0044abc8:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x10c
    mov ecx, eax
    mov ebp, edx
    mov eax, 0x121
    call sub_004529cc
    mov esi, eax
    mov edi, eax
    mov dword ptr [eax], 0
    mov byte ptr [eax + 0x15], 0x10
    mov eax, ecx
    call sub_0044ab3b
    test eax, eax
    jne loc_0044ac15
    mov ebx, esi
    mov eax, ecx
    call sub_0044ab68
    test eax, eax
    jne loc_0044ac19
    mov eax, esi
loc_0044ac09:
    call sub_00452b35
    xor eax, eax
    # jmp 0x44ac8f
    .byte 0xe9
    .long loc_0044ac8f - . - 4
loc_0044ac15:
    mov byte ptr [esi + 0x15], 0x10
loc_0044ac19:
    mov al, byte ptr [edi + 0x15]
    and al, 0x10
    and eax, 0xff
    # je 0x44ac8d
    .byte 0x0f,0x84
    .long loc_0044ac8d - . - 4
    xor eax, eax
loc_0044ac2b:
    mov dl, byte ptr [ecx]
    mov byte ptr [esp + eax], dl
    test dl, dl
    jne loc_0044ac76
    test eax, eax
    je loc_0044ac4e
    xor edx, edx
    mov dl, byte ptr [esp + eax - 1]
    cmp edx, 0x5c
    je loc_0044ac4e
    cmp edx, 0x2f
    je loc_0044ac4e
    inc eax
    mov byte ptr [esp + eax - 1], 0x5c
loc_0044ac4e:
    mov edx, dword ptr [d_0045af24]
    mov dword ptr [esp + eax], edx
    mov edx, dword ptr [edi]
    test edx, edx
    je loc_0044ac63
    push edx
    call sub_00457dd8
loc_0044ac63:
    mov eax, esp
    mov ebx, edi
    mov edx, ebp
    call sub_0044ab68
    test eax, eax
    jne loc_0044ac8d
    mov eax, edi
    jmp loc_0044ac09
loc_0044ac76:
    xor edx, edx
    mov dl, byte ptr [ecx]
    cmp edx, 0x2a
    je loc_0044ac8d
    cmp edx, 0x3f
    je loc_0044ac8d
    inc eax
    inc ecx
    cmp eax, 0x104
    jl loc_0044ac2b
loc_0044ac8d:
    mov eax, edi
loc_0044ac8f:
    add esp, 0x10c
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0044ac9b:
    push edx
    mov edx, 0xfffffff7
    call sub_0044abc8
    pop edx
    ret
sub_0044aca8:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 0x140
    mov esi, eax
    test eax, eax
    je loc_0044ad10
    cmp byte ptr [eax + 0x120], 0
    je loc_0044accc
    mov eax, esi
    mov byte ptr [esi + 0x120], 0
    jmp loc_0044ad10
loc_0044accc:
    mov eax, esp
    push eax
    mov edx, dword ptr [esi]
    push edx
    call sub_00457dd2
    test eax, eax
    jne loc_0044acee
    call sub_00457dcc
    cmp eax, 0x12
    je loc_0044acea
loc_0044ace5:
    call sub_0044ee64
loc_0044acea:
    xor eax, eax
    jmp loc_0044ad10
loc_0044acee:
    mov ebx, esp
    mov edx, dword ptr [esi + 4]
    mov eax, dword ptr [esi]
    call sub_0044ef49
    test eax, eax
    jne loc_0044ad05
    mov eax, 0x12
    jmp loc_0044ace5
loc_0044ad05:
    mov edx, esp
    mov eax, esi
    call sub_0044ef0e
    mov eax, esi
loc_0044ad10:
    add esp, 0x140
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0044ad1b:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    test eax, eax
    je loc_0044ad31
    xor eax, eax
    mov al, byte ptr [ebx + 0x120]
    cmp eax, 1
    jle loc_0044ad3f
loc_0044ad31:
    mov eax, 6
    call sub_0044ee64
    pop edx
    pop ecx
    pop ebx
    ret
loc_0044ad3f:
    mov edx, dword ptr [ebx]
    push edx
    call sub_00457dd8
    test eax, eax
    jne loc_0044ad54
    call sub_0044eeb5
    pop edx
    pop ecx
    pop ebx
    ret
loc_0044ad54:
    mov eax, ebx
    mov byte ptr [ebx + 0x120], 2
    call sub_00452b35
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
sub_0044ad68:
    push ecx
    push edx
    push esi
    push edi
    mov esi, eax
    mov edi, eax
    push es
    mov eax, ds
    mov es, eax
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    pop es
    inc ecx
    mov eax, ecx
    call sub_004529cc
    mov edx, eax
    test eax, eax
    je loc_0044ada6
    mov edi, eax
    push es
    mov eax, ds
    mov es, eax
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
    pop es
loc_0044ada6:
    mov eax, edx
    pop edi
    pop esi
    pop edx
    pop ecx
    ret
    .byte 0x00,0x00,0x00
sub_0044adb0:
    push ebp
    # mov ebp, esp
    .byte 0x8b,0xec
    add esp, -0x14
    push eax
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov ecx, dword ptr [ebp + 0x18]
    mov edi, dword ptr [ebp + 8]
    lea eax, [edi + 7]
    and eax, 0xfffffff8
    # sub eax, edi
    .byte 0x2b,0xc7
    # cmp eax, ecx
    .byte 0x3b,0xc1
    jle loc_0044add0
    # mov eax, ecx
    .byte 0x8b,0xc1
loc_0044add0:
    # sub ecx, eax
    .byte 0x2b,0xc8
    mov dword ptr [ebp - 0xc], eax
    # mov eax, ecx
    .byte 0x8b,0xc1
    shr eax, 3
    mov dword ptr [ebp - 0x10], eax
    shl eax, 3
    # sub ecx, eax
    .byte 0x2b,0xc8
    mov dword ptr [ebp - 0x14], ecx
    mov esi, dword ptr [ebp + 0x10]
    mov ecx, dword ptr [ebp + 0x18]
    mov eax, dword ptr [ebp + 0x14]
    mov ebx, dword ptr [ebp + 0xc]
    # sub eax, ecx
    .byte 0x2b,0xc1
    # sub ebx, ecx
    .byte 0x2b,0xd9
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 8], ebx
    mov edx, dword ptr [ebp + 0x1c]
    dec edx
    jns loc_0044ae09
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    leave
    ret
loc_0044ae09:
    cmp dword ptr [d_0045c4c8], 0
    je loc_0044aea3
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
loc_0044ae20:
    # sub eax, eax
    .byte 0x2b,0xc0
    mov ecx, dword ptr [ebp - 0xc]
    rcr ecx, 1
    jae loc_0044ae2f
    mov al, byte ptr [esi]
    inc esi
    mov byte ptr [edi], al
    inc edi
loc_0044ae2f:
    rcr ecx, 1
    jae loc_0044ae3f
    mov ax, word ptr [esi]
    mov word ptr [edi], ax
    lea esi, [esi + 2]
    lea edi, [edi + 2]
loc_0044ae3f:
    rcr ecx, 1
    jae loc_0044ae4d
    mov eax, dword ptr [esi]
    lea esi, [esi + 4]
    mov dword ptr [edi], eax
    lea edi, [edi + 4]
loc_0044ae4d:
    mov ecx, dword ptr [ebp - 0x10]
    dec ecx
    js loc_0044ae63
loc_0044ae53:
    movq mm0, qword ptr [esi]
    lea esi, [esi + 8]
    lea edi, [edi + 8]
    movq qword ptr [edi - 8], mm0
    dec ecx
    jns loc_0044ae53
loc_0044ae63:
    # sub eax, eax
    .byte 0x2b,0xc0
    mov ecx, dword ptr [ebp - 0x14]
    rcr ecx, 1
    jae loc_0044ae72
    mov al, byte ptr [esi]
    inc esi
    mov byte ptr [edi], al
    inc edi
loc_0044ae72:
    rcr ecx, 1
    jae loc_0044ae82
    mov ax, word ptr [esi]
    mov word ptr [edi], ax
    lea esi, [esi + 2]
    lea edi, [edi + 2]
loc_0044ae82:
    rcr ecx, 1
    jae loc_0044ae90
    mov eax, dword ptr [esi]
    lea esi, [esi + 4]
    mov dword ptr [edi], eax
    lea edi, [edi + 4]
loc_0044ae90:
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    dec edx
    jns loc_0044ae20
    emms
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    leave
    ret
loc_0044aea3:
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
loc_0044aeb0:
    mov ecx, dword ptr [ebp - 0xc]
    rep movsb byte ptr es:[edi], byte ptr [esi]
    mov ecx, dword ptr [ebp - 0x10]
    rep movsd dword ptr es:[edi], dword ptr [esi]
    mov ecx, dword ptr [ebp - 0x10]
    rep movsd dword ptr es:[edi], dword ptr [esi]
    mov ecx, dword ptr [ebp - 0x14]
    rep movsb byte ptr es:[edi], byte ptr [esi]
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    dec edx
    jns loc_0044aeb0
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    leave
    ret
sub_0044aed5:
    push ebp
    # mov ebp, esp
    .byte 0x8b,0xec
    add esp, -0xc
    push eax
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov ecx, dword ptr [ebp + 0x18]
    # or ecx, ecx
    .byte 0x0b,0xc9
    je loc_0044b02f
    mov edx, dword ptr [ebp + 0x1c]
    mov ah, 0
    mov esi, dword ptr [ebp + 0x10]
    mov edi, dword ptr [ebp + 8]
    sub dword ptr [ebp + 0xc], ecx
    sub dword ptr [ebp + 0x14], ecx
    # mov ebx, ecx
    .byte 0x8b,0xd9
    cmp dword ptr [d_0045c4c8], 0
    je loc_0044afa8
    lea eax, [edi + 7]
    and eax, 0xfffffff8
    # sub eax, edi
    .byte 0x2b,0xc7
    # cmp eax, ecx
    .byte 0x3b,0xc1
    jle loc_0044af1a
    # mov eax, ecx
    .byte 0x8b,0xc1
loc_0044af1a:
    # sub ecx, eax
    .byte 0x2b,0xc8
    mov dword ptr [ebp - 4], eax
    # mov eax, ecx
    .byte 0x8b,0xc1
    shr eax, 3
    mov dword ptr [ebp - 8], eax
    shl eax, 3
    # sub ecx, eax
    .byte 0x2b,0xc8
    mov dword ptr [ebp - 0xc], ecx
    dec edx
    jns loc_0044af3a
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    leave
    ret
loc_0044af3a:
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
loc_0044af40:
    mov ecx, dword ptr [ebp - 4]
    dec ecx
    js loc_0044af53
loc_0044af46:
    mov al, byte ptr [esi]
    inc esi
    cmp al, 0
    je loc_0044af4f
    mov byte ptr [edi], al
loc_0044af4f:
    inc edi
    dec ecx
    jns loc_0044af46
loc_0044af53:
    mov ecx, dword ptr [ebp - 8]
    dec ecx
    js loc_0044af81
    pxor mm3, mm3
loc_0044af5c:
    movq mm0, qword ptr [esi]
    movq mm1, qword ptr [edi]
    movq mm2, mm0
    pcmpeqb mm2, mm3
    lea esi, [esi + 8]
    movq mm4, mm2
    pandn mm2, mm0
    pand mm4, mm1
    lea edi, [edi + 8]
    por mm2, mm4
    dec ecx
    movq qword ptr [edi - 8], mm2
    jns loc_0044af5c
loc_0044af81:
    mov ecx, dword ptr [ebp - 0xc]
    dec ecx
    js loc_0044af94
loc_0044af87:
    mov al, byte ptr [esi]
    inc esi
    cmp al, 0
    je loc_0044af90
    mov byte ptr [edi], al
loc_0044af90:
    inc edi
    dec ecx
    jns loc_0044af87
loc_0044af94:
    add esi, dword ptr [ebp + 0x14]
    add edi, dword ptr [ebp + 0xc]
    dec edx
    jns loc_0044af40
    emms
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    leave
    ret
    .byte 0x90
loc_0044afa8:
    # mov ecx, ebx
    .byte 0x8b,0xcb
    shr ecx, 2
    je loc_0044b00c
    nop
loc_0044afb0:
    mov al, byte ptr [esi]
    cmp al, ah
    jne loc_0044afde
loc_0044afb6:
    mov al, byte ptr [esi + 1]
    cmp al, ah
    jne loc_0044afe7
loc_0044afbd:
    mov al, byte ptr [esi + 2]
    cmp al, ah
    jne loc_0044aff1
loc_0044afc4:
    mov al, byte ptr [esi + 3]
    cmp al, ah
    jne loc_0044affb
loc_0044afcb:
    add edi, 4
    add esi, 4
    dec ecx
    jne loc_0044afb0
    je loc_0044b00c
    # mov eax, eax
    .byte 0x8b,0xc0
loc_0044afd8:
    mov al, byte ptr [esi]
    cmp al, ah
    je loc_0044afb6
loc_0044afde:
    mov byte ptr [edi], al
    mov al, byte ptr [esi + 1]
    cmp al, ah
    je loc_0044afbd
loc_0044afe7:
    mov byte ptr [edi + 1], al
    mov al, byte ptr [esi + 2]
    cmp al, ah
    je loc_0044afc4
loc_0044aff1:
    mov byte ptr [edi + 2], al
    mov al, byte ptr [esi + 3]
    cmp al, ah
    je loc_0044afcb
loc_0044affb:
    mov byte ptr [edi + 3], al
    add edi, 4
    add esi, 4
    dec ecx
    jne loc_0044afd8
    je loc_0044b00c
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
loc_0044b00c:
    # mov ecx, ebx
    .byte 0x8b,0xcb
    and ecx, 3
    jne loc_0044b01e
loc_0044b013:
    add esi, dword ptr [ebp + 0x14]
    add edi, dword ptr [ebp + 0xc]
    dec edx
    jne loc_0044afa8
    je loc_0044b02f
loc_0044b01e:
    inc ecx
loc_0044b01f:
    dec ecx
    je loc_0044b013
    mov al, byte ptr [esi]
    inc esi
    inc edi
    cmp al, ah
    je loc_0044b01f
    mov byte ptr [edi - 1], al
    jmp loc_0044b01f
loc_0044b02f:
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    leave
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_0044b040:
    push ecx
    push edx
    pushfd
    pop eax
    # mov ecx, eax
    .byte 0x8b,0xc8
    xor eax, 0x40000
    push eax
    popfd
    pushfd
    pop eax
    # xor eax, ecx
    .byte 0x33,0xc1
    je loc_0044b07b
    push ecx
    popfd
    # mov eax, ecx
    .byte 0x8b,0xc1
    xor eax, 0x200000
    push eax
    popfd
    pushfd
    pop eax
    # xor eax, ecx
    .byte 0x33,0xc1
    je loc_0044b07b
    mov eax, 1
    cpuid
    test edx, 0x800000
    je loc_0044b07b
    mov eax, 1
    pop edx
    pop ecx
    ret
loc_0044b07b:
    # xor eax, eax
    .byte 0x33,0xc0
    pop edx
    pop ecx
    ret
    push ebp
    # mov ebp, esp
    .byte 0x8b,0xec
    add esp, -0x1c
    push eax
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp + 0x18]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp + 0xc]
    sub eax, dword ptr [ebp + 0x18]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp + 0xc]
    # xor ecx, ecx
    .byte 0x33,0xc9
    # xor ebx, ebx
    .byte 0x33,0xdb
    and eax, 7
    # sub ebx, eax
    .byte 0x2b,0xd8
    # adc ecx, ecx
    .byte 0x13,0xc9
    shl ecx, 1
    mov dword ptr [ebp - 0x18], ecx
    mov eax, dword ptr [ebp + 0x1c]
    mov edi, dword ptr [ebp + 8]
ptr_0044b0b7:
    push eax
    lea ecx, [edi + 7]
    and ecx, 0xfffffff8
    # sub ecx, edi
    .byte 0x2b,0xcf
    cmp ecx, dword ptr [ebp + 0x18]
    jle loc_0044b0c8
    mov ecx, dword ptr [ebp + 0x18]
loc_0044b0c8:
    mov ebx, dword ptr [ebp + 0x18]
    # sub ebx, ecx
    .byte 0x2b,0xd9
    # mov edx, ebx
    .byte 0x8b,0xd3
    shr ebx, 3
    lea eax, [ebx*8]
    # sub edx, eax
    .byte 0x2b,0xd0
    push esi
    # xor esi, esi
    .byte 0x33,0xf6
    mov eax, dword ptr [ebp - 0x18]
    # cmp esi, ecx
    .byte 0x3b,0xf1
    adc eax, 0
    shl eax, 1
    # cmp esi, ebx
    .byte 0x3b,0xf3
    adc eax, 0
    shl eax, 1
    # cmp esi, edx
    .byte 0x3b,0xf2
    adc eax, 0
    pop esi
    lea eax, [eax*4 + ptr_0044b418]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0x1c], eax
    pop eax
    mov esi, dword ptr [ebp + 0x10]
    jmp dword ptr [ebp - 0x1c]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x8b,0xc0
ptr_0044b110:
    mov edx, dword ptr [edx*4 + ptr_0044b478]
    mov dword ptr [ebp - 0x14], edx
    jmp edx
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
ptr_0044b120:
    mov edx, dword ptr [edx*4 + ptr_0044b478]
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 0x14], offset loc_0044b310
    jmp loc_0044b310
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
ptr_0044b140:
    mov dword ptr [ebp - 0xc], offset ptr_0044b330
    mov ecx, dword ptr [ecx*4 + ptr_0044b458]
    mov dword ptr [ebp - 0x14], ecx
    jmp ecx
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
ptr_0044b160:
    mov edx, dword ptr [edx*4 + ptr_0044b478]
    mov dword ptr [ebp - 0xc], edx
    mov ecx, dword ptr [ecx*4 + ptr_0044b458]
    mov dword ptr [ebp - 0x14], ecx
    jmp ecx
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
ptr_0044b180:
    mov dword ptr [ebp - 0xc], offset loc_0044b310
    mov dword ptr [ebp - 0x10], offset ptr_0044b330
    mov ecx, dword ptr [ecx*4 + ptr_0044b458]
    mov dword ptr [ebp - 0x14], ecx
    jmp ecx
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
ptr_0044b1a0:
    mov dword ptr [ebp - 0xc], offset loc_0044b310
    mov edx, dword ptr [edx*4 + ptr_0044b478]
    mov dword ptr [ebp - 0x10], edx
    mov ecx, dword ptr [ecx*4 + ptr_0044b458]
    mov dword ptr [ebp - 0x14], ecx
    jmp ecx
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
ptr_0044b1c0:
    mov edx, dword ptr [edx*4 + ptr_0044b478]
    mov dword ptr [ebp - 0x14], offset ptr_0044b0b7
    jmp edx
ptr_0044b1d0:
    mov dword ptr [ebp - 0x10], offset ptr_0044b330
    mov dword ptr [ebp - 0x14], offset ptr_0044b0b7
    jmp loc_0044b310
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
ptr_0044b1f0:
    mov edx, dword ptr [edx*4 + ptr_0044b478]
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 0x14], offset ptr_0044b0b7
    jmp loc_0044b310
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
ptr_0044b210:
    mov dword ptr [ebp - 0xc], offset ptr_0044b330
    mov dword ptr [ebp - 0x14], offset ptr_0044b0b7
    mov ecx, dword ptr [ecx*4 + ptr_0044b458]
    jmp ecx
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
ptr_0044b230:
    mov edx, dword ptr [edx*4 + ptr_0044b478]
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 0x14], offset ptr_0044b0b7
    mov ecx, dword ptr [ecx*4 + ptr_0044b458]
    jmp ecx
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
ptr_0044b250:
    mov dword ptr [ebp - 0xc], offset loc_0044b310
    mov dword ptr [ebp - 0x10], offset ptr_0044b330
    mov ecx, dword ptr [ecx*4 + ptr_0044b458]
    mov dword ptr [ebp - 0x14], offset ptr_0044b0b7
    jmp ecx
    .byte 0x8b,0xc0
ptr_0044b270:
    mov dword ptr [ebp - 0xc], offset loc_0044b310
    mov edx, dword ptr [edx*4 + ptr_0044b478]
    mov dword ptr [ebp - 0x10], edx
    mov ecx, dword ptr [ecx*4 + ptr_0044b458]
    mov dword ptr [ebp - 0x14], offset ptr_0044b0b7
    jmp ecx
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
ptr_0044b2a0:
    movsb byte ptr es:[edi], byte ptr [esi]
    jmp dword ptr [ebp - 0xc]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
ptr_0044b2b0:
    movsw word ptr es:[edi], word ptr [esi]
    jmp dword ptr [ebp - 0xc]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x8b,0xc0
ptr_0044b2c0:
    movsb byte ptr es:[edi], byte ptr [esi]
    movsw word ptr es:[edi], word ptr [esi]
    jmp dword ptr [ebp - 0xc]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
ptr_0044b2d0:
    movsd dword ptr es:[edi], dword ptr [esi]
    jmp dword ptr [ebp - 0xc]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
ptr_0044b2e0:
    movsb byte ptr es:[edi], byte ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    jmp dword ptr [ebp - 0xc]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x8b,0xc0
ptr_0044b2f0:
    movsw word ptr es:[edi], word ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    jmp dword ptr [ebp - 0xc]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
ptr_0044b300:
    movsb byte ptr es:[edi], byte ptr [esi]
    movsw word ptr es:[edi], word ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    jmp dword ptr [ebp - 0xc]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
loc_0044b310:
    # mov ecx, ebx
    .byte 0x8b,0xcb
loc_0044b312:
    movq mm0, qword ptr [esi]
    movq qword ptr [edi], mm0
    add edi, 8
    add esi, 8
    dec ecx
    jne loc_0044b312
    jmp dword ptr [ebp - 0x10]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
ptr_0044b330:
    dec eax
    je loc_0044b40c
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    jmp dword ptr [ebp - 0x14]
ptr_0044b340:
    movsb byte ptr es:[edi], byte ptr [esi]
    dec eax
    je loc_0044b40c
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    jmp dword ptr [ebp - 0x14]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
ptr_0044b360:
    movsw word ptr es:[edi], word ptr [esi]
    dec eax
    je loc_0044b40c
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    jmp dword ptr [ebp - 0x14]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x8b,0xc0
ptr_0044b380:
    movsw word ptr es:[edi], word ptr [esi]
    movsb byte ptr es:[edi], byte ptr [esi]
    dec eax
    # je 0x44b40c
    .byte 0x0f,0x84
    .long loc_0044b40c - . - 4
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    jmp dword ptr [ebp - 0x14]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    nop
ptr_0044b3a0:
    movsd dword ptr es:[edi], dword ptr [esi]
    dec eax
    # je 0x44b40c
    .byte 0x0f,0x84
    .long loc_0044b40c - . - 4
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    jmp dword ptr [ebp - 0x14]
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
    # mov eax, eax
    .byte 0x2e,0x8b,0xc0
ptr_0044b3c0:
    movsd dword ptr es:[edi], dword ptr [esi]
    movsb byte ptr es:[edi], byte ptr [esi]
    dec eax
    je loc_0044b40c
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    jmp dword ptr [ebp - 0x14]
    .byte 0x8b,0xc0
ptr_0044b3d0:
    movsd dword ptr es:[edi], dword ptr [esi]
    movsw word ptr es:[edi], word ptr [esi]
    dec eax
    je loc_0044b40c
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    jmp dword ptr [ebp - 0x14]
    .byte 0x90
ptr_0044b3e0:
    movsd dword ptr es:[edi], dword ptr [esi]
    movsw word ptr es:[edi], word ptr [esi]
    movsb byte ptr es:[edi], byte ptr [esi]
    dec eax
    je loc_0044b40c
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    jmp dword ptr [ebp - 0x14]
loc_0044b3f0:
    # mov ecx, ebx
    .byte 0x8b,0xcb
loc_0044b3f2:
    movq mm0, qword ptr [esi]
    movq qword ptr [edi], mm0
    add esi, 8
    add edi, 8
    dec ecx
    jne loc_0044b3f2
    dec eax
    je loc_0044b40c
    add esi, dword ptr [ebp - 4]
    add edi, dword ptr [ebp - 8]
    jmp loc_0044b3f0
loc_0044b40c:
    emms
    # xor eax, eax
    .byte 0x33,0xc0
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    leave
    ret
ptr_0044b418:
    .byte 0x00,0x00,0x00,0x00
    .long ptr_0044b110
    .long loc_0044b3f0
    .long ptr_0044b120
    .long ptr_0044b140
    .long ptr_0044b160
    .long ptr_0044b180
    .long ptr_0044b1a0
    .byte 0x00,0x00,0x00,0x00
    .long ptr_0044b1c0
    .long ptr_0044b1d0
    .long ptr_0044b1f0
    .long ptr_0044b210
    .long ptr_0044b230
    .long ptr_0044b250
    .long ptr_0044b270
ptr_0044b458:
    .byte 0x00,0x00,0x00,0x00
    .long ptr_0044b2a0
    .long ptr_0044b2b0
    .long ptr_0044b2c0
    .long ptr_0044b2d0
    .long ptr_0044b2e0
    .long ptr_0044b2f0
    .long ptr_0044b300
ptr_0044b478:
    .byte 0x00,0x00,0x00,0x00
    .long ptr_0044b340
    .long ptr_0044b360
    .long ptr_0044b380
    .long ptr_0044b3a0
    .long ptr_0044b3c0
    .long ptr_0044b3d0
    .long ptr_0044b3e0
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_0044b4a0:
    test eax, eax
    je loc_0044b4b1
    mov dword ptr [eax], 0
    mov dword ptr [eax + 4], 0
loc_0044b4b1:
    ret
    .byte 0x8b,0xc0
sub_0044b4b4:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x104
    mov ebp, eax
    mov ebx, edx
    mov dword ptr [eax], 1
    mov eax, 4
    call sub_004529cc
    mov dword ptr [ebp + 4], eax
    test eax, eax
    jne loc_0044b4e8
    mov eax, ebp
    call sub_0044b688
    xor eax, eax
    jmp loc_0044b679
loc_0044b4e8:
    push 0x100
    lea eax, [esp + 4]
    push eax
    push 0
    call dword ptr cs:[__imp__GetModuleFileNameA]
    test eax, eax
    jne loc_0044b514
    mov eax, ebp
    call sub_0044b688
    xor eax, eax
    add esp, 0x104
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044b514:
    inc eax
    call sub_004529cc
    mov edx, dword ptr [ebp + 4]
    mov dword ptr [edx], eax
    mov edi, dword ptr [ebp + 4]
    mov ecx, dword ptr [edi]
    test ecx, ecx
    jne loc_0044b53d
    mov eax, ebp
    call sub_0044b688
    xor eax, eax
    add esp, 0x104
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044b53d:
    mov esi, esp
    mov edi, ecx
    push edi
loc_0044b542:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044b55a
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044b542
loc_0044b55a:
    pop edi
    mov dword ptr [esp + 0x100], ebx
    mov dl, byte ptr [ebx]
    xor eax, eax
    test dl, dl
    je loc_0044b674
loc_0044b56e:
    mov edx, dword ptr [esp + 0x100]
    mov dl, byte ptr [edx]
    inc dl
    and edx, 0xff
    test byte ptr [edx + d_0045b608], 2
    je loc_0044b58f
    xor eax, eax
    jmp loc_0044b65b
loc_0044b58f:
    test eax, eax
    jne loc_0044b65b
    mov edi, dword ptr [ebp]
    inc edi
    mov eax, dword ptr [ebp + 4]
    mov dword ptr [ebp], edi
    lea edx, [edi*4]
    call sub_00452abb
    mov dword ptr [ebp + 4], eax
    test eax, eax
    jne loc_0044b5c9
    mov eax, ebp
    call sub_0044b688
    xor eax, eax
    add esp, 0x104
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044b5c9:
    mov eax, dword ptr [esp + 0x100]
    mov cl, byte ptr [eax]
    xor edx, edx
    test cl, cl
    je loc_0044b5f4
loc_0044b5d8:
    mov bl, byte ptr [eax]
    inc bl
    and ebx, 0xff
    test byte ptr [ebx + d_0045b608], 2
    jne loc_0044b5f4
    mov ch, byte ptr [eax + 1]
    inc eax
    inc edx
    test ch, ch
    jne loc_0044b5d8
loc_0044b5f4:
    lea eax, [edx + 1]
    call sub_004529cc
    mov ebx, dword ptr [ebp]
    mov edi, dword ptr [ebp + 4]
    mov dword ptr [edi + ebx*4 - 4], eax
    mov eax, dword ptr [ebp]
    mov edi, dword ptr [ebp + 4]
    shl eax, 2
    add edi, eax
    mov ebx, dword ptr [edi - 4]
    test ebx, ebx
    jne loc_0044b62d
    mov eax, ebp
    call sub_0044b688
    xor eax, eax
    add esp, 0x104
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044b62d:
    mov esi, dword ptr [esp + 0x100]
    mov edi, ebx
    mov ecx, edx
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
    mov eax, dword ptr [ebp]
    mov ebx, dword ptr [ebp + 4]
    mov eax, dword ptr [ebx + eax*4 - 4]
    mov byte ptr [edx + eax], 0
    mov eax, 1
loc_0044b65b:
    mov esi, dword ptr [esp + 0x100]
    inc esi
    mov bl, byte ptr [esi]
    mov dword ptr [esp + 0x100], esi
    test bl, bl
    jne loc_0044b56e
loc_0044b674:
    mov eax, 1
loc_0044b679:
    add esp, 0x104
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0044b688:
    push ebx
    push ecx
    push edx
    push esi
    mov edx, eax
    cmp dword ptr [eax + 4], 0
    je loc_0044b6c0
loc_0044b694:
    mov ecx, dword ptr [edx]
    test ecx, ecx
    je loc_0044b6b8
    lea ebx, [ecx*4]
    mov eax, dword ptr [edx + 4]
    add eax, ebx
    mov esi, dword ptr [eax - 4]
    test esi, esi
    je loc_0044b6b4
    mov eax, esi
    call sub_00452b35
loc_0044b6b4:
    dec dword ptr [edx]
    jmp loc_0044b694
loc_0044b6b8:
    mov eax, dword ptr [edx + 4]
    call sub_00452b35
loc_0044b6c0:
    mov dword ptr [edx], 0
    mov dword ptr [edx + 4], 0
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    call sub_0044b688
    xor eax, eax
    ret
ptr_0044b6dc:
    mov eax, dword ptr [esp + 4]
    test eax, eax
    jbe loc_0044b6ee
    cmp eax, 1
    je loc_0044b70c
    xor eax, eax
    ret 4
loc_0044b6ee:
    call dword ptr [d_0045c630]
    mov edx, dword ptr [eax + 0x78]
    test edx, edx
    jne loc_0044b700
loc_0044b6fb:
    xor eax, eax
    ret 4
loc_0044b700:
    mov eax, 4
loc_0044b705:
    call sub_0044b7dc
    jmp loc_0044b723
loc_0044b70c:
    call dword ptr [d_0045c630]
    mov edx, dword ptr [eax + 0x90]
    test edx, edx
    je loc_0044b6fb
    mov eax, 7
    jmp loc_0044b705
loc_0044b723:
    cmp edx, 2
    je loc_0044b6fb
    cmp edx, 3
    je loc_0044b6fb
    mov eax, 1
    ret 4
sub_0044b735:
    call dword ptr [d_0045c630]
    cmp dword ptr [eax + 0x78], 2
    je loc_0044b74d
    call dword ptr [d_0045c630]
    cmp dword ptr [eax + 0x78], 3
    jne loc_0044b76b
loc_0044b74d:
    call dword ptr [d_0045c630]
    cmp dword ptr [eax + 0x90], 2
    je loc_0044b771
    call dword ptr [d_0045c630]
    cmp dword ptr [eax + 0x90], 3
    je loc_0044b771
loc_0044b76b:
    mov eax, 1
    ret
loc_0044b771:
    xor eax, eax
    ret
sub_0044b774:
    push ecx
    push edx
    cmp byte ptr [d_0045c628], 0
    jne loc_0044b796
    push 1
    push offset ptr_0044b6dc
    call sub_00457dc6
    test eax, eax
    je loc_0044b796
    mov byte ptr [d_0045c628], 1
loc_0044b796:
    xor eax, eax
    mov al, byte ptr [d_0045c628]
    pop edx
    pop ecx
    ret
sub_0044b7a0:
    push ecx
    push edx
    cmp byte ptr [d_0045c628], 0
    je loc_0044b7c3
    push 0
    push offset ptr_0044b6dc
    call sub_00457dc6
    test eax, eax
    je loc_0044b7c3
    xor dl, dl
    mov byte ptr [d_0045c628], dl
loc_0044b7c3:
    xor eax, eax
    mov al, byte ptr [d_0045c628]
    test eax, eax
    sete al
    and eax, 0xff
    pop edx
    pop ecx
    ret
ptr_0044b7d7:
    mov eax, 1
sub_0044b7dc:
    push ebx
    push ecx
    push edx
    sub esp, 4
    mov edx, eax
    mov ebx, edx
    call dword ptr [d_0045c630]
    mov eax, dword ptr [eax + ebx*8 + 0x58]
    mov dword ptr [esp], eax
    cmp edx, 2
    jb loc_0044b8e3
    jbe loc_0044b8ed
    cmp edx, 0xc
    jbe loc_0044b903
loc_0044b80b:
    mov eax, 0xffffffff
    jmp loc_0044b93a
sub_0044b815:
    push edx
    sub esp, 4
    mov edx, eax
    call dword ptr [d_0045c630]
    mov eax, dword ptr [eax + 0x68]
    mov dword ptr [esp], eax
    cmp eax, 1
    je loc_0044b852
    cmp eax, 2
    je loc_0044b852
    cmp eax, 3
    je loc_0044b852
    call dword ptr [d_0045c630]
    mov dword ptr [eax + 0x68], 2
    mov eax, 2
    call dword ptr [esp]
    xor eax, eax
    add esp, 4
    pop edx
    ret
loc_0044b852:
    mov eax, 0xffffffff
    add esp, 4
    pop edx
    ret
sub_0044b85c:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    cmp eax, 1
    jl loc_0044b86c
    cmp eax, 0xc
    jle loc_0044b87e
loc_0044b86c:
    mov eax, 9
    call sub_0044c8c3
    mov eax, 3
    pop ecx
    pop ebx
    ret
loc_0044b87e:
    mov dword ptr [d_0045c8a8], offset ptr_0044b7d7
    cmp ecx, 2
    je loc_0044b8b2
    cmp ecx, 3
    je loc_0044b8b2
    mov edx, ebx
    call dword ptr [d_0045c630]
    cmp dword ptr [eax + edx*8 + 0x5c], 0
    je loc_0044b8b2
    cmp ebx, 2
    jne loc_0044b8b2
    mov edx, 0x9f
    xor eax, eax
    call sub_0044ef8f
loc_0044b8b2:
    call dword ptr [d_0045c630]
    mov edx, dword ptr [eax + ebx*8 + 0x58]
    call dword ptr [d_0045c630]
    mov dword ptr [eax + ebx*8 + 0x58], ecx
    call sub_0044b735
    test eax, eax
    je loc_0044b8d9
    call sub_0044b774
    mov eax, edx
    pop ecx
    pop ebx
    ret
loc_0044b8d9:
    call sub_0044b7a0
    mov eax, edx
    pop ecx
    pop ebx
    ret
loc_0044b8e3:
    cmp edx, 1
    je loc_0044b8f9
    jmp loc_0044b80b
loc_0044b8ed:
    mov eax, 0x8c
    call sub_0044b815
    jmp loc_0044b938
loc_0044b8f9:
    cmp eax, 2
    jne loc_0044b903
    call sub_0044ef7d
loc_0044b903:
    mov ecx, dword ptr [esp]
    cmp ecx, 1
    je loc_0044b92a
    cmp ecx, 2
    je loc_0044b92a
    cmp ecx, 3
    je loc_0044b92a
    mov ebx, edx
    call dword ptr [d_0045c630]
    mov dword ptr [eax + ebx*8 + 0x58], 2
    mov eax, edx
    call dword ptr [esp]
loc_0044b92a:
    call sub_0044b735
    test eax, eax
    jne loc_0044b938
    call sub_0044b7a0
loc_0044b938:
    xor eax, eax
loc_0044b93a:
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0044b941:
    push edx
    push esi
    push edi
    push es
    mov edx, 8
loc_0044b94a:
    call dword ptr [d_0045c630]
    lea esi, [eax + edx]
    mov eax, ds
    mov es, eax
    lea edi, [esi + 0x58]
    lea esi, [edx + d_0045c5c0]
    add edx, 8
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    cmp edx, 0x68
    jne loc_0044b94a
    pop es
    pop edi
    pop esi
    pop edx
ptr_0044b96e:
    ret
    .byte 0x90
ptr_0044b970:
    .long ptr_0044b9e0
    .long ptr_0044baa8
    .long ptr_0044b9ea
    .long ptr_0044b9f4
    .long ptr_0044baaf
    .long ptr_0044bab6
    .long ptr_0044baca
ptr_0044b98c:
    push ebx
    push esi
    push edi
    push es
    push ebp
    sub esp, 0x220
    mov ebx, dword ptr [esp + 0x238]
    mov esi, dword ptr [esp + 0x240]
    cmp dword ptr [esp + 0x23c], 0
    je loc_0044bd2c
    mov ah, byte ptr [ebx + 4]
    test ah, 1
    jne loc_0044bd2c
    test ah, 6
    jne loc_0044bd2c
    mov eax, dword ptr [ebx]
    add eax, 0x3fffff73
    cmp eax, 6
    ja loc_0044bad1
    jmp dword ptr cs:[eax*4 + ptr_0044b970]
ptr_0044b9e0:
    mov eax, 0x82
    jmp loc_0044bad6
ptr_0044b9ea:
    mov eax, 0x86
    jmp loc_0044bad6
ptr_0044b9f4:
    mov edx, dword ptr [esi + 0x28]
    xor ecx, ecx
    mov cx, word ptr [edx]
    mov eax, 0x81
    cmp ecx, 0xfad9
    jne loc_0044ba13
    mov eax, 0x88
    jmp loc_0044bad6
loc_0044ba13:
    cmp ecx, 0xf1d9
    jne loc_0044ba25
    mov eax, 0x8e
    jmp loc_0044bad6
loc_0044ba25:
    jne loc_0044ba31
    mov eax, 0x8f
    jmp loc_0044bad6
loc_0044ba31:
    xor ecx, ecx
    mov cl, byte ptr [edx]
    cmp ecx, 0xdb
    je loc_0044ba45
    cmp ecx, 0xdf
    jne loc_0044ba5b
loc_0044ba45:
    mov cl, byte ptr [edx + 1]
    and cl, 0x30
    and ecx, 0xff
    cmp ecx, 0x10
    jne loc_0044ba5b
    mov eax, 0x8d
loc_0044ba5b:
    mov cl, byte ptr [edx]
    and cl, 1
    and ecx, 0xff
    # jne 0x44bad6
    .byte 0x0f,0x85
    .long loc_0044bad6 - . - 4
    mov dl, byte ptr [edx + 1]
    and dl, 0x30
    and edx, 0xff
    cmp edx, 0x30
    jne loc_0044bad6
    mov ecx, dword ptr [esi + 0x20]
    and ecx, 0xffff
    mov edx, dword ptr [esi + 0x24]
    shl ecx, 2
    and edx, 0xffff
    shr cx, 0xd
    and ecx, 0xffff
    add ecx, ecx
    shr edx, cl
    and edx, 1
    cmp edx, 1
    jne loc_0044bad6
ptr_0044baa8:
    mov eax, 0x83
    jmp loc_0044bad6
ptr_0044baaf:
    mov eax, 0x84
    jmp loc_0044bad6
ptr_0044bab6:
    test byte ptr [esi + 0x21], 2
    je loc_0044bac3
    mov eax, 0x8a
    jmp loc_0044bad6
loc_0044bac3:
    mov eax, 0x8b
    jmp loc_0044bad6
ptr_0044baca:
    mov eax, 0x85
    jmp loc_0044bad6
loc_0044bad1:
    mov eax, 0xffffffff
loc_0044bad6:
    cmp eax, -1
    je loc_0044bb17
    mov byte ptr [d_004a5e20], 1
    call sub_0044b815
    test eax, eax
    jne loc_0044bb0d
    cmp byte ptr [d_004a5e20], 0
    je loc_0044bb0d
    call sub_0044f01c
    mov dx, word ptr [esi + 0x20]
    xor dl, dl
    and dh, 0x7f
    xor eax, eax
    mov word ptr [esi + 0x20], dx
    jmp loc_0044bd31
loc_0044bb0d:
    call sub_0044f01c
    jmp loc_0044bd2c
loc_0044bb17:
    mov ecx, 1
    mov edx, 8
loc_0044bb21:
    call dword ptr [d_0045c630]
    mov esi, dword ptr [ebx]
    cmp esi, dword ptr [edx + eax + 0x5c]
    jne loc_0044bb78
    call dword ptr [d_0045c630]
    cmp dword ptr [edx + eax + 0x58], 1
    je loc_0044bb81
    call dword ptr [d_0045c630]
    cmp dword ptr [edx + eax + 0x58], 2
    je loc_0044bb81
    call dword ptr [d_0045c630]
    cmp dword ptr [edx + eax + 0x58], 3
    je loc_0044bb81
    mov byte ptr [d_004a5e20], 1
    mov eax, ecx
    call sub_0044b7dc
    cmp byte ptr [d_004a5e20], 0
    je loc_0044bd2c
    xor eax, eax
    jmp loc_0044bd31
loc_0044bb78:
    add edx, 8
    inc ecx
    cmp edx, 0x60
    jle loc_0044bb21
loc_0044bb81:
    mov eax, dword ptr [ebx]
    cmp eax, 0xc0000094
    jb loc_0044bbad
    # jbe 0x44bc0b
    .byte 0x0f,0x86
    .long loc_0044bc0b - . - 4
    cmp eax, 0xc0000096
    # jb 0x44bc21
    .byte 0x0f,0x82
    .long loc_0044bc21 - . - 4
    jbe loc_0044bbf5
    cmp eax, 0xc00000fd
    # je 0x44bc16
    .byte 0x0f,0x84
    .long loc_0044bc16 - . - 4
    # jmp 0x44bc21
    .byte 0xe9
    .long loc_0044bc21 - . - 4
loc_0044bbad:
    cmp eax, 0xc0000005
    # jb 0x44bc21
    .byte 0x0f,0x82
    .long loc_0044bc21 - . - 4
    jbe loc_0044bbc3
    cmp eax, 0xc000001d
    je loc_0044bc00
    jmp loc_0044bc21
loc_0044bbc3:
    cmp dword ptr [ebx + 0x14], 0
    jne loc_0044bbd0
    mov eax, offset d_0045af28
    jmp loc_0044bbd5
loc_0044bbd0:
    mov eax, offset d_0045af32
loc_0044bbd5:
    push eax
    mov edi, dword ptr [ebx + 0x18]
    push edi
    mov ebp, dword ptr [ebx + 0xc]
    push ebp
    push offset d_0045af3a
    lea eax, [esp + 0x128]
    push eax
    call sub_00457dc0
    add esp, 0x14
    jmp loc_0044bc3a
loc_0044bbf5:
    mov eax, dword ptr [ebx + 0xc]
    push eax
    push offset d_0045af89
    jmp loc_0044bc2a
loc_0044bc00:
    mov ecx, dword ptr [ebx + 0xc]
    push ecx
    push offset d_0045afc1
    jmp loc_0044bc2a
loc_0044bc0b:
    mov edx, dword ptr [ebx + 0xc]
    push edx
    push offset d_0045aff6
    jmp loc_0044bc2a
loc_0044bc16:
    mov ebp, dword ptr [ebx + 0xc]
    push ebp
    push offset d_0045b031
    jmp loc_0044bc2a
loc_0044bc21:
    mov eax, dword ptr [ebx + 0xc]
    push eax
    push offset d_0045b063
loc_0044bc2a:
    lea eax, [esp + 0x120]
    push eax
    call sub_00457dc0
    add esp, 0xc
loc_0044bc3a:
    call sub_00457dba
    xor ebx, ebx
    test eax, eax
    jne loc_0044bc53
    call sub_0044f110
    cmp eax, -1
    jne loc_0044bcf1
loc_0044bc53:
    push offset d_0045b0aa
    call sub_00457db4
    mov ebx, eax
    test eax, eax
    je loc_0044bcf1
    push offset d_0045b0b5
    push eax
    call sub_00457dae
    mov dword ptr [esp + 0x218], eax
    test eax, eax
    je loc_0044bcef
    mov edi, esp
    mov eax, ds
    push 0x104
    mov es, eax
    lea eax, [esp + 0x17]
    mov esi, offset d_0045b0c3
    push eax
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    push 0
    mov esi, offset d_0045b0d7
    lea edi, [esp + 0x124]
    call sub_00457da8
    push es
    push ds
    pop es
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044bcb6:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044bcce
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044bcb6
loc_0044bcce:
    pop edi
    pop es
    push 0
    push 0x2010
    lea eax, [esp + 8]
    push eax
    lea eax, [esp + 0x124]
    push eax
    push 0
    call dword ptr [esp + 0x22c]
    jmp loc_0044bcf1
loc_0044bcef:
    xor ebx, ebx
loc_0044bcf1:
    test ebx, ebx
    jne loc_0044bd2c
    push ebx
    lea eax, [esp + 0x220]
    push eax
    lea edi, [esp + 0x120]
    push es
    mov eax, ds
    mov es, eax
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    pop es
    push ecx
    lea eax, [esp + 0x124]
    push eax
    mov eax, dword ptr [d_004a5e64]
    mov edx, dword ptr [eax + 8]
    push edx
    call sub_00457da2
loc_0044bd2c:
    mov eax, 1
loc_0044bd31:
    add esp, 0x220
    pop ebp
    pop es
    pop edi
    pop esi
    pop ebx
    ret 0x10
sub_0044bd3f:
    push edx
    mov edx, eax
    call dword ptr [d_0045c630]
    mov dword ptr [eax + 0x54], edx
    xor eax, eax
    mov eax, dword ptr fs:[eax]
    mov edx, eax
    call dword ptr [d_0045c630]
    mov eax, dword ptr [eax + 0x54]
    mov dword ptr [eax], edx
    call dword ptr [d_0045c630]
    mov eax, dword ptr [eax + 0x54]
    xor edx, edx
    mov dword ptr [eax + 4], offset ptr_0044b98c
    call dword ptr [d_0045c630]
    mov eax, dword ptr [eax + 0x54]
    mov dword ptr fs:[edx], eax
    pop edx
    ret
sub_0044bd7d:
    push edx
    call dword ptr [d_0045c630]
    mov eax, dword ptr [eax + 0x54]
    test eax, eax
    je loc_0044bd92
    mov eax, dword ptr [eax]
    xor edx, edx
    mov dword ptr fs:[edx], eax
loc_0044bd92:
    call dword ptr [d_0045c630]
    mov dword ptr [eax + 0x54], 0
    call sub_0044b735
    test eax, eax
    je loc_0044bdca
    call sub_0044b7a0
    call dword ptr [d_0045c630]
    mov dword ptr [eax + 0x78], 2
    call dword ptr [d_0045c630]
    mov dword ptr [eax + 0x90], 2
loc_0044bdca:
    pop edx
    ret
sub_0044bdcc:
    mov dword ptr [d_004a5e68], offset ptr_00443c70
    jmp loc_0044f2ea
    .long ptr_00401003
    .byte 0x57,0x41,0x54,0x43,0x4f,0x4d,0x20,0x43,0x2f,0x43,0x2b,0x2b,0x33,0x32,0x20,0x52
    .byte 0x75,0x6e,0x2d,0x54,0x69,0x6d,0x65,0x20,0x73,0x79,0x73,0x74,0x65,0x6d,0x2e,0x20
    .byte 0x28,0x63,0x29,0x20,0x43,0x6f,0x70,0x79,0x72,0x69,0x67,0x68,0x74,0x20,0x62,0x79
    .byte 0x20,0x57,0x41,0x54,0x43,0x4f,0x4d,0x20,0x49,0x6e,0x74,0x65,0x72,0x6e,0x61,0x74
    .byte 0x69,0x6f,0x6e,0x61,0x6c,0x20,0x43,0x6f,0x72,0x70,0x2e,0x20,0x31,0x39,0x38,0x38
    .byte 0x2d,0x31,0x39,0x39,0x35,0x2e,0x20,0x41,0x6c,0x6c,0x20,0x72,0x69,0x67,0x68,0x74
    .byte 0x73,0x20,0x72,0x65,0x73,0x65,0x72,0x76,0x65,0x64,0x2e
sub_0044be4a:
    .byte 0x55,0x89,0xe5,0x50,0x53,0x52,0x8b,0x45,0x10,0x83,0xe0,0x1f,0x83,0xf8,0x08,0x74
    .byte 0x18,0x8b,0x55,0x0c,0x8b,0x5d,0x08,0xf7,0xc2,0xff,0xff,0xff,0x7f,0x75,0x0a,0x85
    .byte 0xdb,0x75,0x06,0x66,0x0d,0x80,0x10,0xeb,0x04,0x66,0x0d,0x40,0x10,0x8d,0x55,0x08
    .byte 0xe8,0x5d,0x35,0x00,0x00,0x5a,0x5b,0x58,0x5d,0xc2,0x0c,0x00
sub_0044be86:
    push ebp
    mov ebp, esp
    push eax
    push ebx
    push ecx
    push edx
    sub esp, 8
    xor eax, eax
    mov al, byte ptr [ebp + 0x18]
    cmp eax, 1
    jg loc_0044bec9
    test al, al
    jne loc_0044bec2
    fldz
    fcomp qword ptr [ebp + 0x10]
    fnstsw ax
    sahf
    jae loc_0044beb2
    xor ecx, ecx
    mov dword ptr [ebp - 0x18], ecx
    mov dword ptr [ebp - 0x14], ecx
    jmp loc_0044bf01
loc_0044beb2:
    jbe loc_0044bebb
    mov eax, 0x8047
    jmp loc_0044bef3
loc_0044bebb:
    mov eax, 0x4047
    jmp loc_0044bef3
loc_0044bec2:
    mov eax, 0x2047
    jmp loc_0044bef3
loc_0044bec9:
    fldz
    fcomp qword ptr [ebp + 0x10]
    fnstsw ax
    sahf
    jb loc_0044bedd
    xor edx, edx
    mov dword ptr [ebp - 0x18], edx
    mov dword ptr [ebp - 0x14], edx
    jmp loc_0044bf01
loc_0044bedd:
    fldz
    fcomp qword ptr [ebp + 8]
    fnstsw ax
    sahf
    jae loc_0044beee
    mov eax, 0x8107
    jmp loc_0044bef3
loc_0044beee:
    mov eax, 0x1107
loc_0044bef3:
    lea ebx, [ebp + 0x10]
    lea edx, [ebp + 8]
    call sub_0044f3e6
    fstp qword ptr [ebp - 0x18]
loc_0044bf01:
    fld qword ptr [ebp - 0x18]
    lea esp, [ebp - 0x10]
    pop edx
    pop ecx
    pop ebx
    pop eax
    pop ebp
    ret 0x14
    .byte 0x00
sub_0044bf10:
    fld tbyte ptr [esp + 0x10]
    fld tbyte ptr [esp + 4]
loc_0044bf18:
    mov eax, dword ptr [esp + 8]
    add eax, eax
    jae loc_0044bfaa
    xor eax, 0xe000000
    test eax, 0xe000000
    je loc_0044bf33
    fdivp st(1)
    ret
loc_0044bf33:
    shr eax, 0x1c
    cmp byte ptr [eax + d_0045ce90], 0
    jne loc_0044bf42
    fdivp st(1)
    ret
loc_0044bf42:
    mov eax, dword ptr [esp + 0xc]
    and eax, 0x7fff
    je loc_0044bfb4
    cmp eax, 0x7fff
    je loc_0044bfb4
    fnstcw word ptr [esp + 0x1c]
    mov eax, dword ptr [esp + 0x1c]
    or eax, 0x33f
    and eax, 0xf3ff
    mov dword ptr [esp + 0x20], eax
    fldcw word ptr [esp + 0x20]
    mov eax, dword ptr [esp + 0x18]
    and eax, 0x7fff
    cmp eax, 1
    je loc_0044bf93
    fmul dword ptr [d_0045cea0]
    fxch st(1)
    fmul dword ptr [d_0045cea0]
    fxch st(1)
    fldcw word ptr [esp + 0x1c]
    fdivp st(1)
    ret
loc_0044bf93:
    fmul dword ptr [d_0045cea4]
    fxch st(1)
    fmul dword ptr [d_0045cea4]
    fxch st(1)
    fldcw word ptr [esp + 0x1c]
    fdivp st(1)
    ret
loc_0044bfaa:
    mov eax, dword ptr [esp + 4]
    or eax, dword ptr [esp + 8]
    jne loc_0044bfb7
loc_0044bfb4:
    fdivp st(1)
    ret
loc_0044bfb7:
    mov eax, dword ptr [esp + 0xc]
    and eax, 0x7fff
    jne loc_0044bfb4
    fnstcw word ptr [esp + 0x1c]
    mov eax, dword ptr [esp + 0x1c]
    or eax, 0x33f
    and eax, 0xf3ff
    mov dword ptr [esp + 0x20], eax
    fldcw word ptr [esp + 0x20]
    mov eax, dword ptr [esp + 0x18]
    and eax, 0x7fff
    je loc_0044bff8
    cmp eax, 0x7fff
    je loc_0044c020
    mov eax, dword ptr [esp + 0x14]
    add eax, eax
    jae loc_0044c020
    jmp loc_0044c000
loc_0044bff8:
    mov eax, dword ptr [esp + 0x14]
    add eax, eax
    jb loc_0044c020
loc_0044c000:
    fxch st(1)
    fstp st(0)
    fld st(0)
    fmul dword ptr [d_0045cea8]
    fstp tbyte ptr [esp + 4]
    fld tbyte ptr [esp + 0x10]
    fxch st(1)
    wait
    fldcw word ptr [esp + 0x1c]
    jmp loc_0044bf18
loc_0044c020:
    fldcw word ptr [esp + 0x1c]
    fdivp st(1)
    ret
sub_0044c027:
    sub esp, 0x2c
    jmp dword ptr [eax*4 + d_0045ceac]
ptr_0044c031:
    fdiv st(0)
    add esp, 0x2c
    ret
ptr_0044c037:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c03c:
    fdivr st(0)
    add esp, 0x2c
    ret
ptr_0044c042:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c047:
    fdiv st(0)
    add esp, 0x2c
    ret
ptr_0044c04d:
    fdivp st(0)
    add esp, 0x2c
    ret
ptr_0044c053:
    fdivr st(0)
    add esp, 0x2c
    ret
ptr_0044c059:
    fdivrp st(0)
    add esp, 0x2c
    ret
ptr_0044c05f:
    fstp tbyte ptr [esp + 0xc]
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fld tbyte ptr [esp + 0x20]
    fxch st(1)
    add esp, 0x2c
    ret
ptr_0044c07b:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c080:
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fld tbyte ptr [esp + 0xc]
    fxch st(1)
    add esp, 0x2c
    ret
ptr_0044c096:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c09b:
    fxch st(1)
    fstp tbyte ptr [esp + 0xc]
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fld tbyte ptr [esp + 0x20]
    add esp, 0x2c
    ret
ptr_0044c0b7:
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    add esp, 0x2c
    ret
ptr_0044c0c7:
    fstp tbyte ptr [esp + 0xc]
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fld tbyte ptr [esp + 0xc]
    add esp, 0x2c
    ret
ptr_0044c0db:
    fstp tbyte ptr [esp + 0xc]
    fstp tbyte ptr [esp]
    call sub_0044bf10
    add esp, 0x2c
    ret
ptr_0044c0eb:
    fstp tbyte ptr [esp + 0xc]
    fxch st(1)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(1)
    fld tbyte ptr [esp + 0x20]
    fxch st(2)
    add esp, 0x2c
    ret
ptr_0044c10b:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c110:
    fstp tbyte ptr [esp]
    fxch st(1)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(1)
    fld tbyte ptr [esp + 0xc]
    fxch st(2)
    add esp, 0x2c
    ret
ptr_0044c12a:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c12f:
    fxch st(2)
    fstp tbyte ptr [esp + 0xc]
    fxch st(1)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(1)
    fld tbyte ptr [esp + 0x20]
    add esp, 0x2c
    ret
ptr_0044c14f:
    fstp tbyte ptr [esp]
    fxch st(1)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(1)
    add esp, 0x2c
    ret
ptr_0044c163:
    fstp tbyte ptr [esp + 0xc]
    fxch st(1)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(1)
    fld tbyte ptr [esp + 0xc]
    add esp, 0x2c
    ret
ptr_0044c17b:
    fstp tbyte ptr [esp + 0xc]
    fxch st(1)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(1)
    add esp, 0x2c
    ret
ptr_0044c18f:
    fstp tbyte ptr [esp + 0xc]
    fxch st(2)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(2)
    fld tbyte ptr [esp + 0x20]
    fxch st(3)
    add esp, 0x2c
    ret
ptr_0044c1af:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c1b4:
    fstp tbyte ptr [esp]
    fxch st(2)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(2)
    fld tbyte ptr [esp + 0xc]
    fxch st(3)
    add esp, 0x2c
    ret
ptr_0044c1ce:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c1d3:
    fxch st(3)
    fstp tbyte ptr [esp + 0xc]
    fxch st(2)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(2)
    fld tbyte ptr [esp + 0x20]
    add esp, 0x2c
    ret
ptr_0044c1f3:
    fstp tbyte ptr [esp]
    fxch st(2)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(2)
    add esp, 0x2c
    ret
ptr_0044c207:
    fstp tbyte ptr [esp + 0xc]
    fxch st(2)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(2)
    fld tbyte ptr [esp + 0xc]
    add esp, 0x2c
    ret
ptr_0044c21f:
    fstp tbyte ptr [esp + 0xc]
    fxch st(2)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(2)
    add esp, 0x2c
    ret
ptr_0044c233:
    fstp tbyte ptr [esp + 0xc]
    fxch st(3)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(3)
    fld tbyte ptr [esp + 0x20]
    fxch st(4)
    add esp, 0x2c
    ret
ptr_0044c253:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c258:
    fstp tbyte ptr [esp]
    fxch st(3)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(3)
    fld tbyte ptr [esp + 0xc]
    fxch st(4)
    add esp, 0x2c
    ret
ptr_0044c272:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c277:
    fxch st(4)
    fstp tbyte ptr [esp + 0xc]
    fxch st(3)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(3)
    fld tbyte ptr [esp + 0x20]
    add esp, 0x2c
    ret
ptr_0044c297:
    fstp tbyte ptr [esp]
    fxch st(3)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(3)
    add esp, 0x2c
    ret
ptr_0044c2ab:
    fstp tbyte ptr [esp + 0xc]
    fxch st(3)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(3)
    fld tbyte ptr [esp + 0xc]
    add esp, 0x2c
    ret
ptr_0044c2c3:
    fstp tbyte ptr [esp + 0xc]
    fxch st(3)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(3)
    add esp, 0x2c
    ret
ptr_0044c2d7:
    fstp tbyte ptr [esp + 0xc]
    fxch st(4)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(4)
    fld tbyte ptr [esp + 0x20]
    fxch st(5)
    add esp, 0x2c
    ret
ptr_0044c2f7:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c2fc:
    fstp tbyte ptr [esp]
    fxch st(4)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(4)
    fld tbyte ptr [esp + 0xc]
    fxch st(5)
    add esp, 0x2c
    ret
ptr_0044c316:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c31b:
    fxch st(5)
    fstp tbyte ptr [esp + 0xc]
    fxch st(4)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(4)
    fld tbyte ptr [esp + 0x20]
    add esp, 0x2c
    ret
ptr_0044c33b:
    fstp tbyte ptr [esp]
    fxch st(4)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(4)
    add esp, 0x2c
    ret
ptr_0044c34f:
    fstp tbyte ptr [esp + 0xc]
    fxch st(4)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(4)
    fld tbyte ptr [esp + 0xc]
    add esp, 0x2c
    ret
ptr_0044c367:
    fstp tbyte ptr [esp + 0xc]
    fxch st(4)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(4)
    add esp, 0x2c
    ret
ptr_0044c37b:
    fstp tbyte ptr [esp + 0xc]
    fxch st(5)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(5)
    fld tbyte ptr [esp + 0x20]
    fxch st(6)
    add esp, 0x2c
    ret
ptr_0044c39b:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c3a0:
    fstp tbyte ptr [esp]
    fxch st(5)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(5)
    fld tbyte ptr [esp + 0xc]
    fxch st(6)
    add esp, 0x2c
    ret
ptr_0044c3ba:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c3bf:
    fxch st(6)
    fstp tbyte ptr [esp + 0xc]
    fxch st(5)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(5)
    fld tbyte ptr [esp + 0x20]
    add esp, 0x2c
    ret
ptr_0044c3df:
    fstp tbyte ptr [esp]
    fxch st(5)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(5)
    add esp, 0x2c
    ret
ptr_0044c3f3:
    fstp tbyte ptr [esp + 0xc]
    fxch st(5)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(5)
    fld tbyte ptr [esp + 0xc]
    add esp, 0x2c
    ret
ptr_0044c40b:
    fstp tbyte ptr [esp + 0xc]
    fxch st(5)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(5)
    add esp, 0x2c
    ret
ptr_0044c41f:
    fstp tbyte ptr [esp + 0xc]
    fxch st(6)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(6)
    fld tbyte ptr [esp + 0x20]
    fxch st(7)
    add esp, 0x2c
    ret
ptr_0044c43f:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c444:
    fstp tbyte ptr [esp]
    fxch st(6)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(6)
    fld tbyte ptr [esp + 0xc]
    fxch st(7)
    add esp, 0x2c
    ret
ptr_0044c45e:
    add esp, 0x2c
    .byte 0xcd,0x06
ptr_0044c463:
    fxch st(7)
    fstp tbyte ptr [esp + 0xc]
    fxch st(6)
    fld st(0)
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0x20]
    call sub_0044bf10
    fxch st(6)
    fld tbyte ptr [esp + 0x20]
    add esp, 0x2c
    ret
ptr_0044c483:
    fstp tbyte ptr [esp]
    fxch st(6)
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    fxch st(6)
    add esp, 0x2c
    ret
ptr_0044c497:
    fstp tbyte ptr [esp + 0xc]
    fxch st(6)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(6)
    fld tbyte ptr [esp + 0xc]
    add esp, 0x2c
    ret
ptr_0044c4af:
    fstp tbyte ptr [esp + 0xc]
    fxch st(6)
    fstp tbyte ptr [esp]
    call sub_0044bf10
    fxch st(6)
    add esp, 0x2c
    ret
sub_0044c4c3:
    sub esp, 0x2c
    fstp tbyte ptr [esp]
    fstp tbyte ptr [esp + 0xc]
    call sub_0044bf10
    add esp, 0x2c
    ret
sub_0044c4d6:
    sub esp, 0x2c
    fstp tbyte ptr [esp + 0xc]
    fstp tbyte ptr [esp]
    call sub_0044bf10
    add esp, 0x2c
    ret
    sub esp, 0x2c
    fstp tbyte ptr [esp + 0xc]
    fstp tbyte ptr [esp]
    call sub_0044bf10
    add esp, 0x2c
    ret
    push eax
    mov eax, dword ptr [esp + 8]
    and eax, 0x7f800000
    cmp eax, 0x7f800000
    je loc_0044c540
    fnstsw ax
    and eax, 0x3800
    je loc_0044c523
    fld dword ptr [esp + 8]
    call sub_0044c4c3
    pop eax
    ret 4
loc_0044c523:
    fxch st(1)
    sub esp, 0xc
    fstp tbyte ptr [esp]
    fld dword ptr [esp + 0x14]
    call sub_0044c4c3
    fld tbyte ptr [esp]
    fxch st(1)
    add esp, 0xc
    pop eax
    ret 4
loc_0044c540:
    fdiv dword ptr [esp + 8]
    pop eax
    ret 4
sub_0044c548:
    push eax
    mov eax, dword ptr [esp + 0xc]
    and eax, 0x7ff00000
    cmp eax, 0x7ff00000
    je loc_0044c58c
    fnstsw ax
    and eax, 0x3800
    je loc_0044c56f
    fld qword ptr [esp + 8]
    call sub_0044c4c3
    pop eax
    ret 8
loc_0044c56f:
    fxch st(1)
    sub esp, 0xc
    fstp tbyte ptr [esp]
    fld qword ptr [esp + 0x14]
    call sub_0044c4c3
    fld tbyte ptr [esp]
    fxch st(1)
    add esp, 0xc
    pop eax
    ret 8
loc_0044c58c:
    fdiv qword ptr [esp + 8]
    pop eax
    ret 8
    push eax
    mov eax, dword ptr [esp + 8]
    and eax, 0x7f800000
    cmp eax, 0x7f800000
    je loc_0044c5d8
    fnstsw ax
    and eax, 0x3800
    je loc_0044c5bb
    fld dword ptr [esp + 8]
    call sub_0044c4d6
    pop eax
    ret 4
loc_0044c5bb:
    fxch st(1)
    sub esp, 0xc
    fstp tbyte ptr [esp]
    fld dword ptr [esp + 0x14]
    call sub_0044c4d6
    fld tbyte ptr [esp]
    fxch st(1)
    add esp, 0xc
    pop eax
    ret 4
loc_0044c5d8:
    fdivr dword ptr [esp + 8]
    pop eax
    ret 4
    push eax
    mov eax, dword ptr [esp + 0xc]
    and eax, 0x7ff00000
    cmp eax, 0x7ff00000
    je loc_0044c624
    fnstsw ax
    and eax, 0x3800
    je loc_0044c607
    fld qword ptr [esp + 8]
    call sub_0044c4d6
    pop eax
    ret 8
loc_0044c607:
    fxch st(1)
    sub esp, 0xc
    fstp tbyte ptr [esp]
    fld qword ptr [esp + 0x14]
    call sub_0044c4d6
    fld tbyte ptr [esp]
    fxch st(1)
    add esp, 0xc
    pop eax
    ret 8
loc_0044c624:
    fdivr qword ptr [esp + 8]
    pop eax
    ret 8
    call dword ptr [d_0045c630]
    add eax, 0xda
    ret
ptr_0044c638:
    mov eax, dword ptr [d_004a5e28]
ptr_0044c63d:
    ret
ptr_0044c63e:
    jmp sub_0044f160
ptr_0044c643:
    jmp sub_0044f275
sub_0044c648:
    push ecx
    push esi
    sub esp, 0x104
    mov esi, eax
    mov eax, edx
    mov dword ptr [d_004a5e24], esi
    call sub_0044f61c
    mov dword ptr [d_004a5e28], eax
    test eax, eax
    jne loc_0044c67a
    test esi, esi
    je loc_0044c673
    xor edx, edx
    jmp loc_0044c764
loc_0044c673:
    push 1
    call sub_00457d9c
loc_0044c67a:
    call sub_0044f2a1
    call sub_00457d96
    push 0x104
    mov dword ptr [d_0045c959], eax
    lea eax, [esp + 4]
    push eax
    push 0
    call sub_00457da8
    mov eax, esp
    call sub_0044ad68
    mov dword ptr [d_0045c92c], eax
    call sub_00457d90
    xor ecx, ecx
    call sub_0044ad68
    mov cl, byte ptr [eax]
    mov edx, eax
    cmp ecx, 0x22
    jne loc_0044c6d1
loc_0044c6bb:
    inc eax
    xor edx, edx
    mov dl, byte ptr [eax]
    cmp edx, 0x22
    je loc_0044c6c9
    test dl, dl
    jne loc_0044c6bb
loc_0044c6c9:
    cmp byte ptr [eax], 0
    je loc_0044c6f4
loc_0044c6ce:
    inc eax
    jmp loc_0044c6f4
loc_0044c6d1:
    mov dl, byte ptr [eax]
    inc dl
    and edx, 0xff
    mov dl, byte ptr [edx + d_0045b608]
    and dl, 2
    and edx, 0xff
    jne loc_0044c6f4
    cmp byte ptr [eax], 0
    je loc_0044c6f4
    inc eax
    jmp loc_0044c6d1
loc_0044c6f4:
    mov dl, byte ptr [eax]
    inc dl
    and edx, 0xff
    mov dl, byte ptr [edx + d_0045b608]
    and dl, 2
    and edx, 0xff
    jne loc_0044c6ce
    mov dword ptr [d_0045c928], eax
    test esi, esi
    je loc_0044c734
    push 0x104
    lea eax, [esp + 4]
    push eax
    push ebx
    call sub_00457da8
    mov eax, esp
    call sub_0044ad68
    mov dword ptr [d_0045c930], eax
loc_0044c734:
    call sub_00457d8a
    mov ebx, eax
    shr eax, 0x10
    xor edx, edx
    and eax, 0xffff
    mov dx, ax
    mov word ptr [d_0045c961], bx
    sar edx, 8
    and al, 0xf
    mov byte ptr [d_0045c95f], dl
    mov byte ptr [d_0045c960], al
    mov edx, 1
loc_0044c764:
    mov eax, edx
    add esp, 0x104
    pop esi
    pop ecx
    ret
sub_0044c76f:
    push ebx
    push ecx
    push esi
    push edi
    mov esi, eax
    mov edi, edx
    push 0
    call sub_00457d84
    mov ebx, eax
    mov edx, edi
    xor eax, eax
    call sub_0044c648
    mov eax, esi
    call sub_0044bd3f
    call dword ptr [d_0045c670]
    mov eax, dword ptr fs:[8]
    mov esi, eax
    call dword ptr [d_0045c630]
    mov dword ptr [eax], esi
    mov eax, 0xff
    call sub_0044f8f0
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044c7b5:
    mov ebx, eax
    call sub_0044bd7d
    mov edx, 0xff
    xor eax, eax
    call sub_0044f93b
    call dword ptr [d_0045c66c]
    push ebx
    call sub_00457d9c
sub_0044c7d4:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ecx, eax
    mov eax, dword ptr [eax + 0x10]
    call dword ptr [d_0045c634]
    mov ah, byte ptr [ecx + 0xd]
    xor ebp, ebp
    test ah, 0x10
    # je 0x44c868
    .byte 0x0f,0x84
    .long loc_0044c868 - . - 4
    mov bh, ah
    and bh, 0xef
    mov al, byte ptr [ecx + 0xc]
    mov byte ptr [ecx + 0xd], bh
    test al, 2
    je loc_0044c8a0
    mov ebx, dword ptr [ecx + 8]
    test ebx, ebx
    je loc_0044c8a0
    mov edi, ebx
    mov esi, dword ptr [ecx + 4]
loc_0044c816:
    test esi, esi
    # je 0x44c8a0
    .byte 0x0f,0x84
    .long loc_0044c8a0 - . - 4
    test ebp, ebp
    # jne 0x44c8a0
    .byte 0x0f,0x85
    .long loc_0044c8a0 - . - 4
    mov ebx, esi
    mov edx, edi
    mov eax, dword ptr [ecx + 0x10]
    call sub_0044f98a
    mov edx, eax
    cmp eax, -1
    jne loc_0044c846
    mov bl, byte ptr [ecx + 0xc]
    or bl, 0x20
    mov ebp, eax
    mov byte ptr [ecx + 0xc], bl
    jmp loc_0044c862
loc_0044c846:
    test eax, eax
    jne loc_0044c862
    mov eax, 0xc
    call sub_0044c8c3
    mov ah, byte ptr [ecx + 0xc]
    or ah, 0x20
    mov ebp, 0xffffffff
    mov byte ptr [ecx + 0xc], ah
loc_0044c862:
    add edi, edx
    sub esi, edx
    jmp loc_0044c816
loc_0044c868:
    cmp dword ptr [ecx + 8], 0
    je loc_0044c8a0
    and byte ptr [ecx + 0xc], 0xef
    test byte ptr [ecx + 0xd], 0x20
    jne loc_0044c8a0
    mov eax, dword ptr [ecx + 4]
    test eax, eax
    je loc_0044c890
    mov edx, eax
    mov ebx, 1
    neg edx
    mov eax, dword ptr [ecx + 0x10]
    call sub_00452c00
loc_0044c890:
    cmp eax, -1
    jne loc_0044c8a0
    mov bl, byte ptr [ecx + 0xc]
    or bl, 0x20
    mov ebp, eax
    mov byte ptr [ecx + 0xc], bl
loc_0044c8a0:
    mov eax, dword ptr [ecx + 8]
    mov dword ptr [ecx], eax
    mov eax, dword ptr [ecx + 0x10]
    mov dword ptr [ecx + 4], 0
    call dword ptr [d_0045c638]
    mov eax, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0044c8be:
    mov eax, 0xd
sub_0044c8c3:
    push edx
    mov edx, eax
    call dword ptr [d_0045c630]
    mov dword ptr [eax + 4], edx
    pop edx
    ret
sub_0044c8d1:
    mov eax, 0xe
    jmp sub_0044c8c3
    mov eax, 9
    call sub_0044c8c3
    mov eax, 0xffffffff
    ret
sub_0044c8e8:
    push edx
    mov edx, eax
    call dword ptr [d_0045c630]
    mov dword ptr [eax + 8], edx
    pop edx
    ret
sub_0044c8f6:
    push ebp
    mov ebp, esp
    push eax
    push ebx
    push edx
    sub esp, 8
    mov dl, byte ptr [ebp + 0x10]
    cmp dl, 1
    jb loc_0044c938
    cmp dl, 3
    jbe loc_0044c913
    cmp dl, 4
    je loc_0044c924
    jmp loc_0044c938
loc_0044c913:
    mov al, dl
    or al, 0x40
    and eax, 0xff
    lea edx, [ebp + 8]
    or ah, 0x20
    jmp loc_0044c95c
loc_0044c924:
    fldz
    fcomp qword ptr [ebp + 8]
    fnstsw ax
    sahf
    jbe loc_0044c938
    xor edx, edx
    mov dword ptr [ebp - 0x14], edx
    mov dword ptr [ebp - 0x10], edx
    jmp loc_0044c964
loc_0044c938:
    and edx, 0xff
    mov ebx, edx
    or bh, 0x81
    cmp edx, 6
    jne loc_0044c957
    fldz
    fcomp qword ptr [ebp + 8]
    fnstsw ax
    sahf
    jbe loc_0044c957
    or dh, 0x11
    mov ebx, edx
loc_0044c957:
    lea edx, [ebp + 8]
    mov eax, ebx
loc_0044c95c:
    call sub_0044f3dc
    fstp qword ptr [ebp - 0x14]
loc_0044c964:
    fld qword ptr [ebp - 0x14]
    lea esp, [ebp - 0xc]
    pop edx
    pop ebx
    pop eax
    pop ebp
    ret 0xc
loc_0044c971:
    push ecx
    push edx
    push eax
    call sub_00457d7e
    test eax, eax
    jne loc_0044c985
    call sub_0044eeb5
    pop edx
    pop ecx
    ret
loc_0044c985:
    xor eax, eax
    pop edx
    pop ecx
    ret
ptr_0044c98a:
    ret
sub_0044c98b:
    push edx
    mov edx, eax
    call dword ptr [d_0045c678]
    call dword ptr [d_0045c67c]
    mov eax, edx
    call sub_0044c9a3
    pop edx
    ret
sub_0044c9a3:
    push edx
    mov edx, eax
    call dword ptr [d_0045c67c]
    call dword ptr [d_0045c680]
    cmp dword ptr [d_0045c9a8], 0
    je loc_0044c9c1
    call dword ptr [d_0045c9a8]
loc_0044c9c1:
    mov eax, edx
    jmp loc_0044c7b5
ptr_0044c9c8:
    sub esp, 0x10
    mov dword ptr [esp + 8], 0xc0000000
    mov dword ptr [esp + 0xc], 0x4150017e
    mov dword ptr [esp], 0x80000000
    mov dword ptr [esp + 4], 0x4147ffff
    xor eax, eax
    mov al, byte ptr [d_0045c9ad]
    cmp eax, 3
    jl loc_0044ca19
    fld qword ptr [esp + 8]
    fld st(0)
    fld qword ptr [esp]
    fxch st(1)
    fdiv st(1)
    fmulp st(1)
    fsubp st(1)
    fcomp qword ptr [d_0045b104]
    fnstsw ax
    sahf
    jbe loc_0044ca19
    or byte ptr [d_0045c564], 1
loc_0044ca19:
    add esp, 0x10
    ret
    .byte 0x00,0x00,0x00
sub_0044ca20:
    push ecx
    push edx
    call dword ptr cs:[__imp__GetLastError]
    cmp eax, -4
    jl loc_0044ca53
    jle loc_0044ca78
    cmp eax, -1
    jl loc_0044ca4c
    jle loc_0044ca68
    cmp eax, 2
    # jl 0x44ca98
    .byte 0x0f,0x8c
    .long loc_0044ca98 - . - 4
    cmp eax, 3
    jle loc_0044ca70
    cmp eax, 5
    je loc_0044ca80
    jmp loc_0044ca98
loc_0044ca4c:
    cmp eax, -2
    je loc_0044ca80
    jmp loc_0044ca98
loc_0044ca53:
    cmp eax, -0xb
    jl loc_0044ca61
    jle loc_0044ca90
    cmp eax, -0xa
    je loc_0044ca70
    jmp loc_0044ca98
loc_0044ca61:
    cmp eax, -0xc
    je loc_0044ca88
    jmp loc_0044ca98
loc_0044ca68:
    mov eax, 0xfffffffe
    pop edx
    pop ecx
    ret
loc_0044ca70:
    mov eax, 0xfffffff2
    pop edx
    pop ecx
    ret
loc_0044ca78:
    mov eax, 0xfffffffb
    pop edx
    pop ecx
    ret
loc_0044ca80:
    mov eax, 0xfffffffd
    pop edx
    pop ecx
    ret
loc_0044ca88:
    mov eax, 0xffffffe7
    pop edx
    pop ecx
    ret
loc_0044ca90:
    mov eax, 0xffffffe5
    pop edx
    pop ecx
    ret
loc_0044ca98:
    mov eax, 0xffffffff
    pop edx
    pop ecx
    ret
ptr_0044caa0:
    push ecx
    push edx
    sub esp, 4
    mov edx, esp
    mov eax, dword ptr [eax]
    push edx
    push dword ptr [eax + 0x48]
    call dword ptr cs:[__imp__GetCommModemStatus]
    mov eax, dword ptr [esp]
    and eax, 0xff
    add esp, 4
    pop edx
    pop ecx
    ret
    .byte 0x8b,0xc0
ptr_0044cac4:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 0x10
    mov ebx, eax
    mov esi, dword ptr [eax]
    mov eax, esp
    push eax
    lea eax, [esp + 0x10]
    push eax
    push dword ptr [esi + 0x48]
    call dword ptr cs:[__imp__ClearCommError]
    mov ebx, dword ptr [ebx]
    mov eax, dword ptr [esp + 0xc]
    or dword ptr [ebx + 0x24], eax
    mov eax, dword ptr [esi + 4]
    sub eax, dword ptr [esp + 8]
    add esp, 0x10
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
ptr_0044cafc:
    push ebx
    push ecx
    push edx
    sub esp, 0x10
    mov ebx, dword ptr [eax]
    mov eax, esp
    push eax
    lea eax, [esp + 0x10]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__ClearCommError]
    mov eax, dword ptr [esp + 0xc]
    or dword ptr [ebx + 0x24], eax
    mov eax, dword ptr [esp + 8]
    add esp, 0x10
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0044cb28:
    push ebx
    push ecx
    push edx
    sub esp, 0x10
    mov ebx, dword ptr [eax]
    mov eax, esp
    push eax
    lea eax, [esp + 0x10]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__ClearCommError]
    mov eax, dword ptr [esp + 0xc]
    or dword ptr [ebx + 0x24], eax
    mov eax, dword ptr [ebx]
    sub eax, dword ptr [esp + 4]
    add esp, 0x10
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_0044cb58:
    push ebx
    push ecx
    push edx
    sub esp, 0x10
    mov ebx, dword ptr [eax]
    mov eax, esp
    push eax
    lea eax, [esp + 0x10]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__ClearCommError]
    mov eax, dword ptr [esp + 0xc]
    or dword ptr [ebx + 0x24], eax
    mov eax, dword ptr [esp + 4]
    add esp, 0x10
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0044cb84:
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 4
    mov ebx, eax
    mov ecx, edx
    mov edx, dword ptr [eax]
    lea esi, [edx + 8]
    lea eax, [edx + 0x10]
    test ecx, ecx
    setne byte ptr [esp]
    movzx edi, byte ptr [esp]
    and edi, 1
    shl edi, 9
    and byte ptr [eax + 1], 0xfd
    or dword ptr [eax], edi
    lea eax, [esi + 8]
    test ecx, ecx
    setne cl
    movzx ecx, cl
    and ecx, 1
    and byte ptr [eax + 1], 0xfe
    shl ecx, 8
    push esi
    or dword ptr [eax], ecx
    push dword ptr [edx + 0x48]
    call dword ptr cs:[__imp__SetCommState]
    cmp eax, 1
    jne loc_0044cbd8
    xor eax, eax
    jmp loc_0044cbe0
loc_0044cbd8:
    call sub_0044ca20
    mov dword ptr [ebx + 0xc], eax
loc_0044cbe0:
    add esp, 4
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
ptr_0044cbe8:
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 4
    mov ebx, eax
    mov ecx, edx
    mov edx, dword ptr [eax]
    lea esi, [edx + 8]
    lea eax, [edx + 0x10]
    test ecx, ecx
    setne byte ptr [esp]
    movzx edi, byte ptr [esp]
    and edi, 1
    lea edi, [edi*4]
    and byte ptr [eax], 0xfb
    or dword ptr [eax], edi
    lea eax, [esi + 8]
    test ecx, ecx
    je loc_0044cc20
    mov ecx, 2
loc_0044cc20:
    and ecx, 3
    and byte ptr [eax + 1], 0xcf
    shl ecx, 0xc
    push esi
    or dword ptr [eax], ecx
    push dword ptr [edx + 0x48]
    call dword ptr cs:[__imp__SetCommState]
    cmp eax, 1
    jne loc_0044cc40
    xor eax, eax
    jmp loc_0044cc48
loc_0044cc40:
    call sub_0044ca20
    mov dword ptr [ebx + 0xc], eax
loc_0044cc48:
    add esp, 4
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
ptr_0044cc50:
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 4
    mov ebx, eax
    mov ecx, edx
    mov edx, dword ptr [eax]
    lea esi, [edx + 8]
    lea eax, [edx + 0x10]
    test ecx, ecx
    setne byte ptr [esp]
    movzx edi, byte ptr [esp]
    and edi, 1
    lea edi, [edi*8]
    and byte ptr [eax], 0xf7
    or dword ptr [eax], edi
    lea eax, [esi + 8]
    test ecx, ecx
    je loc_0044cc88
    mov ecx, 2
loc_0044cc88:
    and ecx, 3
    and byte ptr [eax], 0xcf
    shl ecx, 4
    push esi
    or dword ptr [eax], ecx
    push dword ptr [edx + 0x48]
    call dword ptr cs:[__imp__SetCommState]
    cmp eax, 1
    jne loc_0044cca7
    xor eax, eax
    jmp loc_0044ccaf
loc_0044cca7:
    call sub_0044ca20
    mov dword ptr [ebx + 0xc], eax
loc_0044ccaf:
    add esp, 4
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0044ccb8:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x18
    mov esi, eax
    mov dword ptr [esp + 0x14], edx
    mov ebp, ebx
    mov ebx, dword ptr [eax]
    mov eax, esp
    push eax
    lea eax, [esp + 0x14]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__ClearCommError]
    mov eax, dword ptr [esp + 0x10]
    mov edi, dword ptr [ebx + 4]
    or dword ptr [ebx + 0x24], eax
    sub edi, dword ptr [esp + 8]
    cmp ebp, edi
    jae loc_0044ccef
    mov edi, ebp
loc_0044ccef:
    lea eax, [ebx + 0x60]
    push eax
    lea eax, [esp + 0x10]
    push eax
    push edi
    push dword ptr [esp + 0x20]
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__WriteFile]
    mov edx, eax
    mov eax, dword ptr [esp + 0xc]
    mov dword ptr [esi + 0x15], eax
    test edx, edx
    jne loc_0044cd46
    call dword ptr cs:[__imp__GetLastError]
    mov dword ptr [esp + 0x10], eax
    cmp eax, 0x3e5
    je loc_0044cd43
    mov eax, esp
    push eax
    lea eax, [esp + 0x14]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__ClearCommError]
    mov ebx, dword ptr [esi]
    mov eax, dword ptr [esp + 0x10]
    or dword ptr [ebx + 0x24], eax
    jmp loc_0044cd46
loc_0044cd43:
    mov dword ptr [esi + 0x15], edi
loc_0044cd46:
    cmp ebp, dword ptr [esi + 0x15]
    jbe loc_0044cd57
    mov dword ptr [esi + 0xc], 0xfffffff7
    mov eax, dword ptr [esi + 0xc]
    jmp loc_0044cd59
loc_0044cd57:
    xor eax, eax
loc_0044cd59:
    add esp, 0x18
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
ptr_0044cd64:
    push ebx
    push ecx
    sub esp, 4
    mov ebx, edx
    mov edx, dword ptr [eax]
    lea eax, [edx + 8]
    mov dword ptr [esp], eax
    lea eax, [edx + 0x10]
    test ebx, ebx
    setne bl
    movzx ebx, bl
    and ebx, 3
    and byte ptr [eax], 0xcf
    shl ebx, 4
    push dword ptr [esp]
    or dword ptr [eax], ebx
    push dword ptr [edx + 0x48]
    call dword ptr cs:[__imp__SetCommState]
    xor eax, eax
    add esp, 4
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_0044cda0:
    push ebx
    push ecx
    sub esp, 4
    mov ebx, edx
    mov edx, dword ptr [eax]
    lea eax, [edx + 8]
    mov dword ptr [esp], eax
    lea eax, [edx + 0x10]
    test ebx, ebx
    setne bl
    movzx ebx, bl
    and ebx, 3
    and byte ptr [eax + 1], 0xcf
    shl ebx, 0xc
    push dword ptr [esp]
    or dword ptr [eax], ebx
    push dword ptr [edx + 0x48]
    call dword ptr cs:[__imp__SetCommState]
    xor eax, eax
    add esp, 4
    pop ecx
    pop ebx
    ret
    .byte 0x90
ptr_0044cddc:
    push ebx
    sub esp, 4
    mov dword ptr [esp], edx
    mov ebx, 1
    mov edx, esp
    call sub_0044ccb8
    add esp, 4
    pop ebx
    ret
sub_0044cdf4:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x14
    mov esi, eax
    mov ebp, edx
    mov edi, ebx
    mov ebx, dword ptr [eax]
    mov eax, esp
    push eax
    lea eax, [esp + 0x10]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__ClearCommError]
    cmp dword ptr [esp + 0xc], 0
    jbe loc_0044ce23
    mov eax, dword ptr [esp + 0xc]
    or dword ptr [ebx + 0x24], eax
loc_0044ce23:
    cmp dword ptr [esp + 4], 0
    jbe loc_0044cec1
    cmp edi, dword ptr [esp + 4]
    jbe loc_0044ce3a
    mov eax, dword ptr [esp + 4]
    jmp loc_0044ce3c
loc_0044ce3a:
    mov eax, edi
loc_0044ce3c:
    lea edx, [ebx + 0x60]
    push edx
    lea edx, [esp + 0x14]
    push edx
    push eax
    push ebp
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[iat_004a72ac]
    mov edx, eax
    mov eax, dword ptr [esp + 0x10]
    mov dword ptr [esi + 0x15], eax
    test edx, edx
    jne loc_0044ce8b
    call dword ptr cs:[__imp__GetLastError]
    mov dword ptr [esp + 0xc], eax
    cmp eax, 0x3e5
    je loc_0044ce8b
    mov eax, esp
    push eax
    lea eax, [esp + 0x10]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__ClearCommError]
    mov edx, dword ptr [esi]
    mov eax, dword ptr [esp + 0xc]
    or dword ptr [edx + 0x24], eax
loc_0044ce8b:
    cmp edi, dword ptr [esi + 0x15]
    jbe loc_0044ceb0
    push 1
    lea eax, [esp + 0x14]
    push eax
    lea eax, [ebx + 0x60]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__GetOverlappedResult]
    test eax, eax
    je loc_0044ceb4
    mov eax, dword ptr [esp + 0x10]
    mov dword ptr [esi + 0x15], eax
loc_0044ceb0:
    xor eax, eax
    jmp loc_0044cecd
loc_0044ceb4:
    mov eax, 0xfffffff8
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
loc_0044cec1:
    mov eax, 0xfffffff8
    mov dword ptr [esi + 0x15], 0
loc_0044cecd:
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
ptr_0044ced8:
    push ebx
    push edx
    sub esp, 4
    mov ebx, 1
    mov edx, esp
    call sub_0044cdf4
    test eax, eax
    jne loc_0044cef6
    movzx eax, byte ptr [esp]
    and eax, 0xff
loc_0044cef6:
    add esp, 4
    pop edx
    pop ebx
    ret
ptr_0044cefc:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    push 4
    mov eax, dword ptr [eax]
    push dword ptr [eax + 0x48]
    call dword ptr cs:[__imp__PurgeComm]
    cmp eax, 1
    jne loc_0044cf1a
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
loc_0044cf1a:
    call sub_0044ca20
    mov dword ptr [ebx + 0xc], eax
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 0x10
    mov esi, eax
    mov ebx, 1
    lea edx, [esp + 0xc]
    mov ecx, dword ptr [eax]
    call sub_0044cdf4
    test eax, eax
    jne loc_0044cf76
    mov eax, esp
    push eax
    lea eax, [esp + 8]
    push eax
    lea eax, [esp + 0x10]
    push eax
    push 1
    lea eax, [esp + 0x1c]
    push eax
    push dword ptr [ecx + 0x48]
    call dword ptr cs:[__imp__PeekNamedPipe]
    test eax, eax
    jne loc_0044cf71
    call sub_0044ca20
    mov dword ptr [esi + 0xc], eax
    jmp loc_0044cf76
loc_0044cf71:
    movzx eax, byte ptr [esp + 0xc]
loc_0044cf76:
    add esp, 0x10
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_0044cf80:
    mov eax, dword ptr [eax]
    mov dword ptr [eax + 0x24], 0
    xor eax, eax
    ret
ptr_0044cf8c:
    push ebx
    push ecx
    push edx
    sub esp, 0x10
    mov ebx, dword ptr [eax]
    mov eax, esp
    push eax
    lea eax, [esp + 0x10]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__ClearCommError]
    mov eax, dword ptr [esp + 0xc]
    or dword ptr [ebx + 0x24], eax
    xor eax, eax
    test byte ptr [ebx + 0x24], 0x10
    je loc_0044cfba
    mov eax, 0x10
loc_0044cfba:
    test byte ptr [ebx + 0x24], 8
    je loc_0044cfc2
    or al, 8
loc_0044cfc2:
    test byte ptr [ebx + 0x24], 2
    je loc_0044cfca
    or al, 2
loc_0044cfca:
    test byte ptr [ebx + 0x24], 4
    je loc_0044cfd2
    or al, 4
loc_0044cfd2:
    add esp, 0x10
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
ptr_0044cfdc:
    push ebx
    push ecx
    push esi
    push edi
    mov ebx, eax
    mov edi, edx
    mov esi, dword ptr [eax]
    push dword ptr [esi + 0x48]
    call dword ptr cs:[__imp__SetCommBreak]
    mov edx, edi
    mov eax, ebx
    call sub_0044fa54
    push dword ptr [esi + 0x48]
    call dword ptr cs:[__imp__ClearCommBreak]
    xor eax, eax
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0044d00c:
    push esi
    sub esp, 4
    mov esi, eax
    mov byte ptr [esp], bl
    mov ebx, dword ptr [eax]
    lea eax, [ebx + 8]
    cmp edx, 0xe100
    jle loc_0044d04a
    cmp edx, 0x1f400
    jne loc_0044d031
    mov edx, 0x1ff00
    jmp loc_0044d04a
loc_0044d031:
    cmp edx, 0x3e800
    je loc_0044d045
    mov dword ptr [esi + 0xc], 0xffffffe7
    jmp loc_0044d0f1
loc_0044d045:
    mov edx, 0x3ff00
loc_0044d04a:
    mov dword ptr [eax + 4], edx
    movzx edx, byte ptr [esp]
    and dl, 0xdf
    mov byte ptr [eax + 0x12], cl
    cmp edx, 0x4e
    jb loc_0044d06a
    jbe loc_0044d078
    cmp edx, 0x4f
    jbe loc_0044d07e
    cmp edx, 0x53
    je loc_0044d090
    jmp loc_0044d096
loc_0044d06a:
    cmp edx, 0x45
    jb loc_0044d096
    jbe loc_0044d084
    cmp edx, 0x4d
    je loc_0044d08a
    jmp loc_0044d096
loc_0044d078:
    mov byte ptr [eax + 0x13], 0
    jmp loc_0044d0a9
loc_0044d07e:
    mov byte ptr [eax + 0x13], 1
    jmp loc_0044d0a9
loc_0044d084:
    mov byte ptr [eax + 0x13], 2
    jmp loc_0044d0a9
loc_0044d08a:
    mov byte ptr [eax + 0x13], 3
    jmp loc_0044d0a9
loc_0044d090:
    mov byte ptr [eax + 0x13], 4
    jmp loc_0044d0a9
loc_0044d096:
    mov dword ptr [esi + 0xc], 0xffffffe6
    mov edx, dword ptr [esi + 0xc]
    mov eax, edx
    add esp, 4
    pop esi
    ret 4
loc_0044d0a9:
    cmp dword ptr [esp + 0xc], 1
    jb loc_0044d0c7
    jbe loc_0044d0bb
    cmp dword ptr [esp + 0xc], 2
    je loc_0044d0c1
    jmp loc_0044d0c7
loc_0044d0bb:
    mov byte ptr [eax + 0x14], 0
    jmp loc_0044d0da
loc_0044d0c1:
    mov byte ptr [eax + 0x14], 2
    jmp loc_0044d0da
loc_0044d0c7:
    mov dword ptr [esi + 0xc], 0xffffffe4
    mov edx, dword ptr [esi + 0xc]
    mov eax, edx
    add esp, 4
    pop esi
    ret 4
loc_0044d0da:
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__SetCommState]
    test eax, eax
    jge loc_0044d0f1
    call sub_0044ca20
    mov dword ptr [esi + 0xc], eax
loc_0044d0f1:
    mov edx, dword ptr [esi + 0xc]
    mov eax, edx
    add esp, 4
    pop esi
    ret 4
    .byte 0x8d,0x40,0x00
sub_0044d100:
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 0x28
    mov edi, eax
    inc edx
    mov ebx, dword ptr [eax]
    mov eax, dword ptr [d_0045c9b0]
    push edx
    mov dword ptr [ebx], eax
    mov eax, dword ptr [d_0045c9b4]
    push offset d_0045b10c
    mov dword ptr [ebx + 4], eax
    lea eax, [esp + 8]
    push eax
    mov dword ptr [ebx + 0x24], 0
    call dword ptr cs:[__imp__wsprintfA]
    add esp, 0xc
    push 0
    push 0x40000000
    push 3
    push 0
    push 0
    push 0xc0000000
    lea eax, [esp + 0x18]
    push eax
    lea esi, [ebx + 8]
    call dword ptr cs:[iat_004a7268]
    mov dword ptr [edi + 0xc], 0
    cmp eax, -1
    jne loc_0044d171
    call sub_0044ca20
    mov dword ptr [edi + 0xc], eax
    jmp loc_0044d226
loc_0044d171:
    push dword ptr [ebx + 4]
    push dword ptr [ebx]
    push eax
    mov dword ptr [ebx + 0x48], eax
    call dword ptr cs:[__imp__SetupComm]
    lea eax, [ebx + 0x28]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__GetCommMask]
    push 0
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__SetCommMask]
    push esi
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__GetCommState]
    mov byte ptr [esi + 0x15], 0x11
    mov byte ptr [esi + 0x16], 0x13
    or byte ptr [esi + 8], 1
    and word ptr [esi + 8], 0xf7fd
    mov eax, dword ptr [ebx]
    shr eax, 2
    mov word ptr [esi + 0xe], ax
    mov eax, dword ptr [ebx]
    mov byte ptr [esi + 0x18], 0
    shr eax, 2
    mov byte ptr [esi + 0x19], 0
    mov word ptr [esi + 0x10], ax
    lea eax, [ebx + 0x4c]
    and word ptr [esi + 8], 0xcfc3
    push eax
    or word ptr [esi + 8], 0x1010
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__GetCommTimeouts]
    mov dword ptr [esp + 0x14], 0xffffffff
    mov dword ptr [esp + 0x1c], 0
    lea eax, [esp + 0x14]
    mov dword ptr [esp + 0x18], 0
    push eax
    mov dword ptr [esp + 0x24], 0
    mov dword ptr [esp + 0x28], 0
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__SetCommTimeouts]
    mov eax, dword ptr [edi + 0xc]
loc_0044d226:
    add esp, 0x28
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_0044d230:
    push ebx
    push ecx
    push edx
    push esi
    mov ebx, eax
    push 6
    mov esi, dword ptr [eax]
    push dword ptr [esi + 0x48]
    call dword ptr cs:[__imp__EscapeCommFunction]
    push 4
    push dword ptr [esi + 0x48]
    call dword ptr cs:[__imp__EscapeCommFunction]
    push dword ptr [esi + 0x48]
    call dword ptr cs:[iat_004a7264]
    mov esi, eax
    mov eax, dword ptr [ebx]
    call sub_0044fad4
    mov eax, ebx
    call sub_0044fccc
    test esi, esi
    je loc_0044d275
    xor eax, eax
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0044d275:
    call sub_0044ca20
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0044d280:
    push esi
    push edi
    push ebp
    sub esp, 8
    mov edi, eax
    mov ebp, edx
    mov byte ptr [esp + 4], bl
    mov dword ptr [esp], ecx
    mov eax, 0x81
    call sub_0044fac4
    mov ebx, eax
    mov esi, eax
    test eax, eax
    jne loc_0044d2ad
    call sub_0044fd00
    jmp loc_0044d3cb
loc_0044d2ad:
    call sub_0044fbe4
    call dword ptr cs:[__imp__GetVersion]
    test eax, 0x80000000
    je loc_0044d2dc
    and eax, 0xff
    cmp eax, 3
    jne loc_0044d2dc
    mov eax, ebx
    mov dword ptr [ebx + 0xc], 0xffffffe8
    add esp, 8
    pop ebp
    pop edi
    pop esi
    ret 4
loc_0044d2dc:
    mov eax, 0x74
    call sub_0044fac4
    test eax, eax
    jne loc_0044d2ff
    mov eax, esi
    call sub_0044fccc
    call sub_0044fd00
    add esp, 8
    pop ebp
    pop edi
    pop esi
    ret 4
loc_0044d2ff:
    mov byte ptr [esi + 0x10], 0xf
    mov edx, edi
    mov dword ptr [esi], eax
    mov eax, esi
    mov dword ptr [esi + 8], edi
    call sub_0044d100
    test eax, eax
    jge loc_0044d320
    mov eax, esi
    add esp, 8
    pop ebp
    pop edi
    pop esi
    ret 4
loc_0044d320:
    push dword ptr [esp + 0x18]
    movzx ebx, byte ptr [esp + 8]
    mov ecx, dword ptr [esp + 4]
    mov edx, ebp
    mov eax, esi
    call sub_0044d00c
    mov dword ptr [esi + 0x29], offset sub_0044d00c
    mov dword ptr [esi + 0x21], offset ptr_0044cddc
    mov dword ptr [esi + 0x19], offset ptr_0044ced8
    mov dword ptr [esi + 0x59], offset sub_0044cdf4
    mov dword ptr [esi + 0x55], offset sub_0044ccb8
    mov dword ptr [esi + 0x3d], offset ptr_0044cda0
    mov dword ptr [esi + 0x39], offset ptr_0044cd64
    mov dword ptr [esi + 0x5d], offset ptr_0044fd40
    mov dword ptr [esi + 0x25], offset ptr_0044d230
    mov dword ptr [esi + 0x2d], offset ptr_0044cb84
    mov dword ptr [esi + 0x31], offset ptr_0044cbe8
    mov dword ptr [esi + 0x35], offset ptr_0044cc50
    mov dword ptr [esi + 0x41], offset ptr_0044cac4
    mov dword ptr [esi + 0x45], offset ptr_0044cafc
    mov dword ptr [esi + 0x49], offset ptr_0044cb28
    mov dword ptr [esi + 0x4d], offset ptr_0044cb58
    mov dword ptr [esi + 0x51], offset ptr_0044cefc
    mov dword ptr [esi + 0x61], offset ptr_0044cfdc
    mov dword ptr [esi + 0x65], offset ptr_0044caa0
    mov dword ptr [esi + 0x69], offset ptr_0044cf8c
    mov eax, esi
    mov dword ptr [esi + 0x6d], offset ptr_0044cf80
loc_0044d3cb:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    ret 4
    push ecx
    push edx
    sub esp, 4
    mov edx, esp
    mov eax, dword ptr [eax]
    push edx
    push dword ptr [eax + 0x48]
    call dword ptr cs:[__imp__GetCommMask]
    mov eax, dword ptr [esp]
    add esp, 4
    pop edx
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
    mov eax, dword ptr [eax]
    mov eax, dword ptr [eax + 0x48]
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00
sub_0044d400:
    push edx
    mov edx, offset d_0045b11c
    call sub_0044dab8
    test eax, eax
    jl loc_0044d411
    xor eax, eax
loc_0044d411:
    pop edx
    ret
    .byte 0x90
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov edi, eax
    mov ecx, edx
    mov eax, 0xc
    mov ebx, 0xa
    call sub_0044fac4
    mov ebp, eax
    mov edx, eax
    mov eax, ecx
    mov esi, ebp
    call sub_0045002a
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044d442:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d45a
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d442
loc_0044d45a:
    pop edi
    mov eax, ebp
    call sub_0044fad4
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0044d468:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov dword ptr [esp + 8], eax
    mov ecx, edx
    mov dword ptr [esp + 4], ebx
    mov eax, 0xc
    mov edx, dword ptr [d_0045b120]
    call sub_0044fac4
    mov ebp, eax
    mov dword ptr [eax], edx
    mov eax, 0xc
    mov ebx, 0xa
    call sub_0044fac4
    mov edi, ebp
    mov dword ptr [esp], eax
    mov edx, eax
    mov eax, ecx
    mov esi, dword ptr [esp]
    call sub_0045002a
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044d4b6:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d4ce
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d4b6
loc_0044d4ce:
    pop edi
    mov eax, dword ptr [esp]
    mov esi, offset d_0045b124
    call sub_0044fad4
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044d4e5:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d4fd
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d4e5
loc_0044d4fd:
    pop edi
    mov eax, 0xc
    mov ebx, 0xa
    call sub_0044fac4
    mov dword ptr [esp], eax
    mov edx, eax
    mov eax, dword ptr [esp + 4]
    mov esi, dword ptr [esp]
    call sub_0045002a
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044d527:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d53f
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d527
loc_0044d53f:
    pop edi
    mov eax, dword ptr [esp]
    call sub_0044fad4
    mov edx, ebp
    mov eax, dword ptr [esp + 8]
    call sub_0044dab8
    mov edx, eax
    mov eax, ebp
    call sub_0044fad4
    test edx, edx
    jl loc_0044d562
    xor edx, edx
loc_0044d562:
    mov eax, edx
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    push ebx
    mov ebx, edx
    xor edx, edx
    call sub_0044d468
    pop ebx
    ret
    push edx
    mov edx, 1
    call sub_0044dbc4
    pop edx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    movzx ebx, dl
    mov edx, 2
    call sub_0044d468
    pop ebx
    ret
    push ebx
    movzx ebx, dl
    mov edx, 3
    call sub_0044d468
    pop ebx
    ret
    push ebx
    movzx ebx, dl
    mov edx, 4
    call sub_0044d468
    pop ebx
    ret
    push ebx
    movzx ebx, dl
    mov edx, 5
    call sub_0044d468
    pop ebx
    ret
    push ebx
    mov ebx, edx
    mov edx, 6
    call sub_0044d468
    pop ebx
    ret
    .byte 0x90
    push ebx
    mov ebx, edx
    mov edx, 7
    call sub_0044d468
    pop ebx
    ret
    .byte 0x90
    push ebx
    mov ebx, edx
    mov edx, 8
    call sub_0044d468
    pop ebx
    ret
    .byte 0x90
    push ebx
    mov ebx, edx
    mov edx, 9
    call sub_0044d468
    pop ebx
    ret
    .byte 0x90
    push ebx
    mov ebx, edx
    mov edx, 0xa
    call sub_0044d468
    pop ebx
    ret
    .byte 0x90
    push ebx
    mov ebx, edx
    mov edx, 0xb
    call sub_0044d468
    pop ebx
    ret
    .byte 0x90
    push ebx
    mov ebx, edx
    mov edx, 0xc
    call sub_0044d468
    pop ebx
    ret
    .byte 0x90
    push edx
    mov edx, 0xd
    call sub_0044dbc4
    pop edx
    ret
    .byte 0x8d,0x40,0x00
    push edx
    mov edx, 0xe
    call sub_0044dbc4
    pop edx
    ret
    .byte 0x8d,0x40,0x00
    push edx
    mov edx, 0xf
    call sub_0044dbc4
    pop edx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    push edx
    mov ebx, 0xd
    mov edx, offset d_0045b128
    call sub_0044db94
    test eax, eax
    jl loc_0044d67f
    xor eax, eax
loc_0044d67f:
    pop edx
    pop ebx
    ret
    .byte 0x8b,0xc0
    test eax, eax
    jne loc_0044d68e
    mov eax, 0xfffffff9
    ret
loc_0044d68e:
    test edx, edx
    jl loc_0044d697
    cmp edx, 2
    jle loc_0044d6a2
loc_0044d697:
    mov dword ptr [eax + 0xc], 0xfffffff9
    mov eax, dword ptr [eax + 0xc]
    ret
loc_0044d6a2:
    mov dword ptr [eax + 0x11], edx
    xor eax, eax
    ret
sub_0044d6a8:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ebp, eax
    mov eax, 0x32
    call sub_0044fac4
    mov edi, eax
    mov dword ptr [esp], eax
    cmp dword ptr [ebp + 0x11], 1
    jne loc_0044d6d0
    mov esi, offset d_0045b12c
    movsd dword ptr es:[edi], dword ptr [esi]
    movsb byte ptr es:[edi], byte ptr [esi]
    jmp loc_0044d6e6
loc_0044d6d0:
    cmp dword ptr [ebp + 0x11], 0
    jne loc_0044d6df
    mov esi, offset d_0045b134
    movsd dword ptr es:[edi], dword ptr [esi]
    movsb byte ptr es:[edi], byte ptr [esi]
    jmp loc_0044d6e6
loc_0044d6df:
    mov eax, dword ptr [d_0045b13c]
    mov dword ptr [edi], eax
loc_0044d6e6:
    mov edi, dword ptr [esp]
    mov esi, edx
    mov ebx, 0xd
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044d6f9:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d711
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d6f9
loc_0044d711:
    pop edi
    mov edx, edi
    mov eax, ebp
    call sub_0044db94
    mov edi, eax
    mov eax, dword ptr [esp]
    call sub_0044fad4
    test edi, edi
    jl loc_0044d72b
    xor edi, edi
loc_0044d72b:
    mov eax, edi
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ebx
    push edx
    mov ebx, 0xffffffff
    mov edx, offset d_0045b140
    call sub_0044db94
    test eax, eax
    jl loc_0044d74f
    xor eax, eax
loc_0044d74f:
    pop edx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov dword ptr [esp], eax
    mov eax, 0x32
    call sub_0044fac4
    mov edi, eax
    mov ebp, eax
    mov eax, dword ptr [esp]
    cmp dword ptr [eax + 0x11], 1
    jne loc_0044d77f
    mov esi, offset d_0045b12c
    movsd dword ptr es:[edi], dword ptr [esi]
    movsb byte ptr es:[edi], byte ptr [esi]
    jmp loc_0044d795
loc_0044d77f:
    cmp dword ptr [eax + 0x11], 0
    jne loc_0044d78e
    mov esi, offset d_0045b134
    movsd dword ptr es:[edi], dword ptr [esi]
    movsb byte ptr es:[edi], byte ptr [esi]
    jmp loc_0044d795
loc_0044d78e:
    mov eax, dword ptr [d_0045b13c]
    mov dword ptr [edi], eax
loc_0044d795:
    mov esi, edx
    mov edi, ebp
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044d7a2:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d7ba
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d7a2
loc_0044d7ba:
    pop edi
    mov esi, offset d_0045b144
    mov ebx, 0xd
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044d7ce:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d7e6
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d7ce
loc_0044d7e6:
    pop edi
    mov edx, ebp
    mov eax, dword ptr [esp]
    call sub_0044db94
    mov edi, eax
    mov eax, ebp
    call sub_0044fad4
    test edi, edi
    jl loc_0044d800
    xor edi, edi
loc_0044d800:
    mov eax, edi
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov dword ptr [esp], eax
    mov eax, 0x32
    call sub_0044fac4
    mov edi, eax
    mov ebp, eax
    mov eax, dword ptr [esp]
    cmp dword ptr [eax + 0x11], 1
    jne loc_0044d837
    mov esi, offset d_0045b12c
    movsd dword ptr es:[edi], dword ptr [esi]
    movsb byte ptr es:[edi], byte ptr [esi]
    jmp loc_0044d84d
loc_0044d837:
    cmp dword ptr [eax + 0x11], 0
    jne loc_0044d846
    mov esi, offset d_0045b134
    movsd dword ptr es:[edi], dword ptr [esi]
    movsb byte ptr es:[edi], byte ptr [esi]
    jmp loc_0044d84d
loc_0044d846:
    mov eax, dword ptr [d_0045b13c]
    mov dword ptr [edi], eax
loc_0044d84d:
    mov esi, edx
    mov edi, ebp
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044d85a:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d872
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d85a
loc_0044d872:
    pop edi
    mov esi, offset d_0045b148
    mov ebx, 0xd
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044d886:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d89e
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d886
loc_0044d89e:
    pop edi
    mov edx, ebp
    mov eax, dword ptr [esp]
    call sub_0044db94
    mov edi, eax
    mov eax, ebp
    call sub_0044fad4
    test edi, edi
    jl loc_0044d8b8
    xor edi, edi
loc_0044d8b8:
    mov eax, edi
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0044d8c4:
    push ebx
    push edx
    mov ebx, 0xd
    mov edx, offset d_0045b14c
    call sub_0044db94
    test eax, eax
    jl loc_0044d8db
    xor eax, eax
loc_0044d8db:
    pop edx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0044d8e0:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov dword ptr [esp + 4], eax
    mov ecx, ebx
    mov eax, 0x28
    call sub_0044fac4
    mov esi, edx
    mov edi, eax
    mov ebp, eax
    push edi
loc_0044d8fe:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d916
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d8fe
loc_0044d916:
    pop edi
    mov eax, 0xc
    mov ebx, 0xa
    call sub_0044fac4
    mov dword ptr [esp], eax
    mov edx, eax
    mov eax, ecx
    mov esi, dword ptr [esp]
    call sub_0045002a
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044d93e:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044d956
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044d93e
loc_0044d956:
    pop edi
    mov eax, dword ptr [esp]
    call sub_0044fad4
    mov edx, ebp
    mov eax, dword ptr [esp + 4]
    call sub_0044dab8
    mov edx, eax
    mov eax, ebp
    call sub_0044fad4
    test edx, edx
    jl loc_0044d97b
    xor eax, eax
    jmp loc_0044d97d
loc_0044d97b:
    mov eax, edx
loc_0044d97d:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    test edx, edx
    jl loc_0044d992
    cmp edx, 1
    jle loc_0044d999
loc_0044d992:
    mov eax, 0xfffffff9
    pop ebx
    ret
loc_0044d999:
    mov ebx, edx
    mov edx, offset d_0045b150
    call sub_0044d8e0
    pop ebx
    ret
    .byte 0x90
    push ebx
    test edx, edx
    jl loc_0044d9b2
    cmp edx, 1
    jle loc_0044d9b9
loc_0044d9b2:
    mov eax, 0xfffffff9
    pop ebx
    ret
loc_0044d9b9:
    mov ebx, edx
    mov edx, offset d_0045b154
    call sub_0044d8e0
    pop ebx
    ret
    .byte 0x90
    push ebx
    test edx, edx
    jl loc_0044d9d2
    cmp edx, 1
    jle loc_0044d9d9
loc_0044d9d2:
    mov eax, 0xfffffff9
    pop ebx
    ret
loc_0044d9d9:
    mov ebx, edx
    mov edx, offset d_0045b158
    call sub_0044d8e0
    pop ebx
    ret
    .byte 0x90
    push ebx
    test edx, edx
    jl loc_0044d9f2
    cmp edx, 2
    jle loc_0044d9f9
loc_0044d9f2:
    mov eax, 0xfffffff9
    pop ebx
    ret
loc_0044d9f9:
    mov ebx, edx
    mov edx, offset d_0045b15c
    call sub_0044d8e0
    pop ebx
    ret
    .byte 0x90
    push ebx
    test edx, edx
    jl loc_0044da12
    cmp edx, 2
    jle loc_0044da19
loc_0044da12:
    mov eax, 0xfffffff9
    pop ebx
    ret
loc_0044da19:
    mov ebx, edx
    mov edx, offset d_0045b160
    call sub_0044d8e0
    pop ebx
    ret
    .byte 0x90
    push ebx
    test edx, edx
    jl loc_0044da32
    cmp edx, 1
    jle loc_0044da39
loc_0044da32:
    mov eax, 0xfffffff9
    pop ebx
    ret
loc_0044da39:
    mov ebx, edx
    mov edx, offset d_0045b164
    call sub_0044d8e0
    pop ebx
    ret
    .byte 0x90
    push ebx
    test edx, edx
    jl loc_0044da52
    cmp edx, 1
    jle loc_0044da59
loc_0044da52:
    mov eax, 0xfffffff9
    pop ebx
    ret
loc_0044da59:
    mov ebx, edx
    mov edx, offset d_0045b168
    call sub_0044d8e0
    pop ebx
    ret
    .byte 0x90
    push ebx
    test edx, edx
    jl loc_0044da72
    cmp edx, 1
    jle loc_0044da79
loc_0044da72:
    mov eax, 0xfffffff9
    pop ebx
    ret
loc_0044da79:
    mov ebx, edx
    mov edx, offset d_0045b16c
    call sub_0044d8e0
    pop ebx
    ret
    .byte 0x90
sub_0044da88:
    test edx, edx
    je loc_0044da92
    mov dword ptr [d_0045c688], edx
loc_0044da92:
    mov dword ptr [d_0045c684], eax
    neg dword ptr [d_0045c684]
    ret
    .byte 0x8b,0xc0
    mov dword ptr [d_0045c68c], eax
    ret
    .byte 0x8b,0xc0
    mov dword ptr [d_0045c690], eax
    ret
    .byte 0x8b,0xc0
    mov dword ptr [d_0045c684], eax
    ret
    .byte 0x8b,0xc0
sub_0044dab8:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, eax
    mov eax, 0x28
    mov ebx, 0xd
    call sub_0044fac4
    mov ecx, eax
    mov esi, eax
    mov eax, ebp
    call sub_0044db94
    mov edx, eax
    test eax, eax
    jge loc_0044dae6
    mov eax, ecx
    jmp loc_0044db86
loc_0044dae6:
    cmp dword ptr [d_0045c684], 0
    jne loc_0044dafe
    mov eax, ecx
    call sub_0044fad4
    mov eax, edx
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044dafe:
    jle loc_0044db1e
    mov edx, dword ptr [d_0045c684]
    mov eax, ebp
    call sub_0044fa54
    mov edx, eax
    mov eax, ecx
    call sub_0044fad4
    mov eax, edx
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044db1e:
    mov edi, dword ptr [d_0045c684]
    neg edi
    cmp dword ptr [d_0045c688], 0
    jne loc_0044db3e
    mov eax, ecx
    call sub_0044fad4
    mov eax, edx
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044db3e:
    mov ecx, 0x28
    mov ebx, esi
    mov edx, edi
    mov eax, ebp
    call sub_0044dd54
    mov edx, eax
    mov edi, eax
    test eax, eax
    jl loc_0044db84
    jne loc_0044db66
    mov eax, esi
    call sub_0044fad4
    mov eax, 0xffffffea
    jmp loc_0044db8d
loc_0044db66:
    mov eax, dword ptr [d_0045c688]
    mov edx, esi
    call sub_00451f10
    test eax, eax
    jne loc_0044db3e
    mov edx, 0x1f4
    mov eax, ebp
    call sub_0044fa54
    mov edx, eax
loc_0044db84:
    mov eax, esi
loc_0044db86:
    call sub_0044fad4
    mov eax, edx
loc_0044db8d:
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0044db94:
    push ecx
    mov ecx, eax
    call sub_00450050
    mov edx, eax
    cmp dword ptr [ecx + 0xc], 0
    jge loc_0044dba9
    mov eax, dword ptr [ecx + 0xc]
    pop ecx
    ret
loc_0044dba9:
    mov ebx, dword ptr [ecx + 0xc]
loc_0044dbac:
    mov eax, ecx
    call dword ptr [ecx + 0x45]
    test eax, eax
    jg loc_0044dbac
    cmp dword ptr [ecx + 0xc], -0x18
    jne loc_0044dbbe
    mov dword ptr [ecx + 0xc], ebx
loc_0044dbbe:
    mov eax, edx
    pop ecx
    ret
    .byte 0x8b,0xc0
sub_0044dbc4:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov dword ptr [esp + 8], eax
    mov ecx, edx
    mov eax, 0x28
    call sub_0044fac4
    mov ebp, eax
    mov edx, ebp
    mov eax, dword ptr [d_0045b120]
    mov ebx, 0xa
    mov dword ptr [edx], eax
    mov eax, 0xc
    mov edi, ebp
    call sub_0044fac4
    mov dword ptr [esp + 4], eax
    mov edx, eax
    mov eax, ecx
    mov esi, dword ptr [esp + 4]
    call sub_0045002a
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044dc12:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044dc2a
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044dc12
loc_0044dc2a:
    pop edi
    mov eax, dword ptr [esp + 4]
    mov esi, offset d_0045b170
    mov ebx, 0xd
    call sub_0044fad4
    push edi
    # sub ecx, ecx
    .byte 0x2b,0xc9
    dec ecx
    mov al, 0
    repne scasb al, byte ptr es:[edi]
    dec edi
loc_0044dc47:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0044dc5f
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0044dc47
loc_0044dc5f:
    pop edi
    mov edx, edi
    mov eax, dword ptr [esp + 8]
    call sub_0044db94
    mov edx, eax
    test eax, eax
    jge loc_0044dc7f
    mov eax, edi
    call sub_0044fad4
    mov eax, edx
    jmp loc_0044dd48
loc_0044dc7f:
    mov dword ptr [esp], 0x5dc
loc_0044dc86:
    mov ecx, 0x28
    mov edx, dword ptr [esp]
    mov eax, dword ptr [esp + 8]
    mov ebx, ebp
    call sub_0044dd54
    mov edx, eax
    mov dword ptr [esp], eax
    test eax, eax
    jge loc_0044dcb4
    mov eax, ebp
    call sub_0044fad4
    mov eax, edx
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044dcb4:
    jne loc_0044dccb
    mov eax, ebp
    call sub_0044fad4
    mov eax, 0xffffffe9
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044dccb:
    mov edx, ebp
    xor bl, bl
    xor esi, esi
    jmp loc_0044dcf3
loc_0044dcd3:
    mov cl, byte ptr [edx]
    inc cl
    movzx ecx, cl
    test byte ptr [ecx + d_0045b608], 0x20
    je loc_0044dd03
    mov al, bl
    mov bl, 0xa
    mul bl
    inc edx
    mov bl, al
    add bl, byte ptr [edx - 1]
    inc esi
    sub bl, 0x30
loc_0044dcf3:
    mov edi, ebp
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    cmp esi, ecx
    jl loc_0044dcd3
loc_0044dd03:
    test esi, esi
    jle loc_0044dc86
    mov edi, ebp
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    cmp esi, ecx
    jne loc_0044dc86
    mov edx, offset d_0045b174
    mov eax, dword ptr [esp + 8]
    call sub_0044dab8
    mov edx, eax
    mov eax, ebp
    call sub_0044fad4
    test edx, edx
    jge loc_0044dd45
    mov eax, edx
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0044dd45:
    movzx eax, bl
loc_0044dd48:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0044dd54:
    push esi
    push edi
    sub esp, 8
    mov esi, eax
    mov dword ptr [esp], ebx
    call sub_004500c0
    dec ecx
    add eax, edx
    xor ebx, ebx
    mov dword ptr [esp + 4], eax
    test ecx, ecx
    jg loc_0044dd7a
    mov eax, 0xfffffff9
    jmp loc_0044de09
loc_0044dd7a:
    mov eax, esi
    call dword ptr [d_0045c9c4]
    mov edi, eax
    test eax, eax
    # jl 0x44dde4
    .byte 0x0f,0x8c
    .long loc_0044dde4 - . - 4
    mov eax, esi
    call dword ptr [esi + 0x19]
    mov edx, eax
    test eax, eax
    jl loc_0044ddc2
    cmp dword ptr [d_0045c68c], 0
    je loc_0044dda9
    movzx eax, dl
    call dword ptr [d_0045c68c]
loc_0044dda9:
    cmp edx, 0xd
    je loc_0044dde4
    cmp edx, 0xa
    je loc_0044dd7a
    mov eax, ebx
    add eax, dword ptr [esp]
    dec ecx
    inc ebx
    mov byte ptr [eax], dl
    test ecx, ecx
    jle loc_0044dde4
    jmp loc_0044dd7a
loc_0044ddc2:
    cmp eax, -8
    jne loc_0044dde2
    mov eax, esi
    call dword ptr [d_0045c9c8]
    mov edi, eax
    test eax, eax
    jl loc_0044dde4
    call sub_004500c0
    cmp eax, dword ptr [esp + 4]
    jge loc_0044dde4
    jmp loc_0044dd7a
loc_0044dde2:
    mov edi, eax
loc_0044dde4:
    add ebx, dword ptr [esp]
    mov byte ptr [ebx], 0
    test edi, edi
    jge loc_0044ddf6
    mov eax, edi
    add esp, 8
    pop edi
    pop esi
    ret
loc_0044ddf6:
    mov edx, dword ptr [esp + 4]
    call sub_004500c0
    sub edx, eax
    mov eax, edx
    test edx, edx
    jge loc_0044de09
    xor eax, edx
loc_0044de09:
    add esp, 8
    pop edi
    pop esi
    ret
    .byte 0x90
    push ebx
    movzx ebx, dl
    mov edx, 5
    call sub_0044d468
    pop ebx
    ret
    push ebx
    movzx ebx, dl
    mov edx, 3
    call sub_0044d468
    pop ebx
    ret
    push ebx
    movzx ebx, dl
    mov edx, 2
    call sub_0044d468
    pop ebx
    ret
    push ebx
    movzx ebx, dl
    mov edx, 4
    call sub_0044d468
    pop ebx
    ret
sub_0044de50:
    push edx
    sub esp, 4
    mov edx, eax
    mov eax, dword ptr [eax + 0xc]
    mov dword ptr [esp], eax
    mov eax, edx
    call dword ptr [edx + 0x45]
    test eax, eax
    jge loc_0044de7a
    cmp eax, -0x18
    jne loc_0044de80
    mov eax, dword ptr [esp]
    mov dword ptr [edx + 0xc], eax
    mov eax, 1
    add esp, 4
    pop edx
    ret
loc_0044de7a:
    sete al
    movzx eax, al
loc_0044de80:
    add esp, 4
    pop edx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    push edx
    mov edx, eax
    call dword ptr [edx + 0x65]
    mov edx, eax
    test eax, eax
    jle loc_0044de9f
    and edx, 0x20
loc_0044de9f:
    mov eax, edx
    pop edx
    ret
    .byte 0x90
sub_0044dea4:
    push edx
    mov edx, eax
    call dword ptr [edx + 0x65]
    mov edx, eax
    test eax, eax
    jle loc_0044deb6
    and edx, 0x80
loc_0044deb6:
    mov eax, edx
    pop edx
    ret
    .byte 0x8b,0xc0
    push edx
    mov edx, eax
    call dword ptr [edx + 0x65]
    mov edx, eax
    test eax, eax
    jle loc_0044decb
    and edx, 0x40
loc_0044decb:
    mov eax, edx
    pop edx
    ret
    .byte 0x90
sub_0044ded0:
    push edx
    mov edx, eax
    call dword ptr [edx + 0x65]
    mov edx, eax
    test eax, eax
    jle loc_0044dedf
    and edx, 0x10
loc_0044dedf:
    mov eax, edx
    pop edx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_0044def0:
    push ecx
    push esi
    mov ecx, eax
    mov eax, ebx
loc_0044def6:
    dec ecx
    cmp ecx, -1
    je loc_0044df15
    movzx ebx, dx
    movzx esi, byte ptr [eax]
    sar ebx, 8
    xor ebx, esi
    shl edx, 8
    inc eax
    xor dx, word ptr [ebx*2 + d_0045c694]
    jmp loc_0044def6
loc_0044df15:
    mov eax, edx
    pop esi
    pop ecx
    ret
    .byte 0x8b,0xc0
    push ebx
    movzx ebx, ax
    movzx edx, dl
    sar ebx, 8
    xor edx, ebx
    shl eax, 8
    xor ax, word ptr [edx*2 + d_0045c694]
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    movzx ebx, ax
    movzx edx, dl
    sar ebx, 8
    xor edx, ebx
    shl eax, 8
    xor ax, word ptr [edx*2 + d_0045c694]
    movzx eax, ax
    pop ebx
    ret
    push ebx
    movzx ebx, ax
    movzx edx, dl
    sar ebx, 8
    xor edx, ebx
    and edx, 0xff
    shl eax, 8
    xor ax, word ptr [edx*2 + d_0045c694]
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_0044df80:
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov esi, eax
    mov ebp, edx
    mov edi, ebx
    mov dword ptr [esp + 8], ecx
    mov eax, dword ptr [eax + 0xc]
    mov edx, dword ptr [esp + 8]
    mov dword ptr [esp], eax
    call sub_004500c0
    add edx, eax
    xor ecx, ecx
    mov dword ptr [esp + 4], edx
loc_0044dfa7:
    mov ebx, edi
    mov edx, ebp
    mov eax, esi
    mov dword ptr [esi + 0xc], 0
    call dword ptr [esi + 0x55]
    mov edx, eax
    test eax, eax
    jl loc_0044dfc0
    mov eax, dword ptr [esp]
loc_0044dfc0:
    mov dword ptr [esi + 0xc], eax
    add ecx, dword ptr [esi + 0x15]
    sub edi, dword ptr [esi + 0x15]
    add ebp, dword ptr [esi + 0x15]
    mov dword ptr [esi + 0x15], ecx
    cmp edx, -9
    je loc_0044dfd9
    cmp edx, -0x24
    jne loc_0044dff0
loc_0044dfd9:
    cmp dword ptr [esp + 8], -1
    je loc_0044dff9
    call sub_004500c0
    cmp eax, dword ptr [esp + 4]
    jl loc_0044dff9
    mov eax, dword ptr [esi + 0xc]
    jmp loc_0044e015
loc_0044dff0:
    test edx, edx
    jge loc_0044dff9
    mov eax, dword ptr [esi + 0xc]
    jmp loc_0044e015
loc_0044dff9:
    test edi, edi
    jne loc_0044e006
    xor eax, eax
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    ret
loc_0044e006:
    mov eax, esi
    call dword ptr [d_0045c9c8]
    test eax, eax
    jge loc_0044dfa7
    mov dword ptr [esi + 0xc], eax
loc_0044e015:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x00,0x00,0x00,0x00
sub_0044e020:
    push ebx
    push ecx
    push edx
    sub esp, 0x40
    mov ecx, eax
loc_0044e028:
    mov ebx, 0x40
    mov edx, esp
    mov eax, ecx
    call dword ptr [ecx + 0x59]
    test eax, eax
    jge loc_0044e03d
    cmp eax, -8
    jne loc_0044e045
loc_0044e03d:
    cmp dword ptr [ecx + 0x15], 0
    jne loc_0044e028
    xor eax, eax
loc_0044e045:
    add esp, 0x40
    pop edx
    pop ecx
    pop ebx
    ret
sub_0044e04c:
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 4
    mov edi, eax
    mov esi, edx
    xor ebx, ebx
    jmp loc_0044e05c
loc_0044e05b:
    inc ebx
loc_0044e05c:
    mov edx, eax
    mov cl, byte ptr [edx]
    inc eax
    test cl, cl
    jne loc_0044e05b
    push 0
    lea eax, [esp + 4]
    push eax
    push ebx
    mov eax, dword ptr [d_004a5e64]
    push edi
    mov edx, dword ptr [eax + 8]
    push edx
    call sub_00457da2
    mov eax, esi
    jmp loc_0044c7b5
sub_0044e083:
    push ebx
    push ecx
    mov ebx, eax
    mov ecx, edx
    mov edx, ds
    call sub_00450122
    test eax, eax
    jne loc_0044e09d
    mov edx, ecx
    mov eax, ebx
    call sub_0044e04c
loc_0044e09d:
    pop ecx
    pop ebx
    ret
ptr_0044e0a0:
    push ebx
    push ecx
    push esi
    mov ecx, edx
    mov edx, dword ptr [eax]
    mov ebx, dword ptr [eax + 0x10]
    cmp ebx, dword ptr [edx + 4]
    jae loc_0044e0bb
    mov ebx, dword ptr [edx]
    lea esi, [ebx + 1]
    mov dword ptr [edx], esi
    mov byte ptr [ebx], cl
    inc dword ptr [eax + 0x10]
loc_0044e0bb:
    pop esi
    pop ecx
    pop ebx
    ret
sub_0044e0bf:
    push esi
    sub esp, 8
    mov esi, eax
    mov eax, edx
    mov edx, ebx
    mov ebx, ecx
    dec eax
    mov ecx, offset ptr_0044e0a0
    mov dword ptr [esp + 4], eax
    mov eax, esp
    mov dword ptr [esp], esi
    call sub_00450148
    mov byte ptr [esi + eax], 0
    add esp, 8
    pop esi
    ret
    push ebx
    push ecx
    push edx
    sub esp, 4
    lea eax, [esp + 0x20]
    mov ecx, esp
    mov ebx, dword ptr [esp + 0x1c]
    mov edx, dword ptr [esp + 0x18]
    mov dword ptr [esp], eax
    mov eax, dword ptr [esp + 0x14]
    call sub_0044e0bf
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
    push edx
    mov edx, eax
    call dword ptr [edx]
    pop edx
    ret
    push ebx
    mov ebx, edx
    call dword ptr [ebx + 4]
    pop ebx
    ret
    .byte 0x51,0x56,0x57,0x55,0x83,0xec,0x08,0x89,0xc6,0x89,0x14,0x24,0x89,0xdf,0x8a,0x60
    .byte 0x10,0x31,0xd2,0x31,0xed,0x80,0xe4,0xfd,0x89,0x54,0x24,0x04,0x88,0x66,0x10,0x8b
    .byte 0x1c,0x24,0x8d,0x4b,0x01,0x89,0x0c,0x24,0x8a,0x1b,0x81,0xe3,0xff,0x00,0x00,0x00
    .byte 0x0f,0x84,0xf1,0x01,0x00,0x00,0x88,0xd8,0xfe,0xc0,0x25,0xff,0x00,0x00,0x00,0x8a
    .byte 0x80
    .long d_0045b608
    .byte 0x24,0x02,0x25,0xff,0x00,0x00,0x00,0x74,0x0e,0x89,0xf0,0xe8,0xe7,0x02,0x00,0x00
    .byte 0x01,0xc5,0xe9,0x8b,0x01,0x00,0x00,0x83,0xfb,0x25,0x74,0x25,0x89,0xf0,0xe8,0x89
    .byte 0xff,0xff,0xff,0x39,0xd8,0x0f,0x84,0x76,0x01,0x00,0x00,0xf6,0x46,0x10,0x02,0x0f
    .byte 0x85,0xad,0x01,0x00,0x00,0x89,0xf2,0xe8,0x77,0xff,0xff,0xff,0xe9,0xa1,0x01,0x00
    .byte 0x00,0x89,0xf2,0x89,0xc8,0xe8,0xb8,0x01,0x00,0x00,0x31,0xdb,0x89,0x04,0x24,0x8a
    .byte 0x18,0x85,0xdb,0x74,0x04,0x40,0x89,0x04,0x24,0x83,0xfb,0x65,0x72,0x55,0x83,0xfb
    .byte 0x67,0x0f,0x86,0xd8,0x00,0x00,0x00,0x83,0xfb,0x70,0x72,0x2d,0x0f,0x86,0xc1,0x00
    .byte 0x00,0x00,0x83,0xfb,0x75,0x72,0x14,0x0f,0x86,0xa9,0x00,0x00,0x00,0x83,0xfb,0x78
    .byte 0x0f,0x84,0xad,0x00,0x00,0x00,0xe9,0x17,0x01,0x00,0x00,0x83,0xfb,0x73,0x0f,0x84
    .byte 0xb6,0x00,0x00,0x00,0xe9,0x09,0x01,0x00,0x00,0x83,0xfb,0x6e,0x72,0x0b,0x0f,0x86
    .byte 0xe1,0x00,0x00,0x00,0xe9,0x71,0x00,0x00,0x00,0x83,0xfb,0x69,0x74,0x5f,0xe9,0xef
    .byte 0x00,0x00,0x00,0x83,0xfb,0x58,0x72,0x21,0x0f,0x86,0x75,0x00,0x00,0x00,0x83,0xfb
    .byte 0x63,0x72,0x08,0x0f,0x86,0x99,0x00,0x00,0x00,0xeb,0x2d,0x83,0xfb,0x5b,0x0f,0x84
    .byte 0x81,0x00,0x00,0x00,0xe9,0xc9,0x00,0x00,0x00,0x83,0xfb,0x45,0x72,0x0c,0x76,0x5f
    .byte 0x83,0xfb,0x47,0x74,0x5a,0xe9,0xb8,0x00,0x00,0x00,0x83,0xfb,0x25,0x0f,0x84,0x9f
    .byte 0x00,0x00,0x00,0xe9,0xaa,0x00,0x00,0x00,0xb9,0x01,0x00,0x00,0x00,0xbb,0x0a,0x00
    .byte 0x00,0x00,0x89,0xfa,0x89,0xf0,0xe8,0x95,0x08,0x00,0x00,0xeb,0x5e,0xb9,0x01,0x00
    .byte 0x00,0x00,0x89,0xfa,0x89,0xf0,0x31,0xdb,0xeb,0xec,0xb9,0x01,0x00,0x00,0x00,0xbb
    .byte 0x08,0x00,0x00,0x00,0xeb,0xdc,0xbb,0x0a,0x00,0x00,0x00,0x89,0xfa,0x89,0xf0,0x31
    .byte 0xc9,0xeb,0xd3,0xb9,0x01,0x00,0x00,0x00,0xbb,0x10,0x00,0x00,0x00,0xeb,0xc3,0x89
    .byte 0xfa,0x89,0xf0,0xe8,0x41,0x05,0x00,0x00,0xeb,0x21,0x89,0xfa,0x89,0xf0,0xe8,0x78
    .byte 0x02,0x00,0x00,0xeb,0x16,0x89,0xe3,0x89,0xfa,0x89,0xf0,0xe8,0x2f,0x04,0x00,0x00
    .byte 0xeb,0x09,0x89,0xfa,0x89,0xf0,0xe8,0xcb,0x01,0x00,0x00,0x89,0xc3,0x85,0xdb,0x0f
    .byte 0x8e,0x6d,0x00,0x00,0x00,0x8a,0x56,0x10,0x01,0xdd,0xf6,0xc2,0x01,0x74,0x23,0xff
    .byte 0x44,0x24,0x04,0xeb,0x1d,0x89,0xeb,0x89,0xfa,0x89,0xf0,0xe8,0x5e,0x03,0x00,0x00
    .byte 0xeb,0x10,0x89,0xf0,0xe8,0x13,0xfe,0xff,0xff,0x39,0xd8,0x0f,0x85,0x8a,0xfe,0xff
    .byte 0xff,0x45,0xf6,0x46,0x10,0x02,0x0f,0x84,0x2e,0xfe,0xff,0xff,0x8b,0x04,0x24,0x8a
    .byte 0x00,0x25,0xff,0x00,0x00,0x00,0x83,0xf8,0x25,0x75,0x27,0xff,0x04,0x24,0x8b,0x04
    .byte 0x24,0x89,0xf2,0xe8,0x3a,0x00,0x00,0x00,0x89,0x04,0x24,0x8a,0x00,0x25,0xff,0x00
    .byte 0x00,0x00,0x83,0xf8,0x6e,0x75,0x0b,0x89,0xeb,0x89,0xfa,0x89,0xf0,0xe8,0x0c,0x03
    .byte 0x00,0x00,0x83,0x7c,0x24,0x04,0x00,0x75,0x0d,0xf6,0x46,0x10,0x02,0x74,0x07,0xb8
    .byte 0xff,0xff,0xff,0xff,0xeb,0x04,0x8b,0x44,0x24,0x04,0x83,0xc4,0x08,0x5d,0x5f,0x5e
    .byte 0x59,0xc3,0x53,0x51,0x56,0x83,0xec,0x04,0x89,0xd3,0x8a,0x52,0x10,0x80,0xca,0x01
    .byte 0x88,0x53,0x10,0x88,0xd6,0xc7,0x43,0x0c,0xff,0xff,0xff,0xff,0x80,0xe6,0x03,0x88
    .byte 0x73,0x10,0x31,0xd2,0x8a,0x10,0x83,0xfa,0x2a,0x75,0x0a,0x8a,0x4b,0x10,0x80,0xe1
    .byte 0xfe,0x40,0x88,0x4b,0x10,0x31,0xd2,0x8a,0x10,0x89,0x14,0x24,0x8a,0x14,0x24,0xfe
    .byte 0xc2,0x81,0xe2,0xff,0x00,0x00,0x00,0x8a,0x92
    .long d_0045b608
    .byte 0x80,0xe2,0x20,0x81,0xe2,0xff,0x00,0x00,0x00,0x74,0x2f,0x31,0xd2,0x6b,0xd2,0x0a
    .byte 0x8b,0x34,0x24,0x83,0xee,0x30,0x40,0x01,0xf2,0x0f,0xb6,0x30,0x89,0x34,0x24,0x8a
    .byte 0x0c,0x24,0xfe,0xc1,0x0f,0xb6,0xf1,0x8a,0x8e
    .long d_0045b608
    .byte 0x80,0xe1,0x20,0x0f,0xb6,0xf1,0x85,0xf6,0x75,0xd6,0x89,0x53,0x0c,0x31,0xd2,0x8a
    .byte 0x10,0x8d,0x70,0x01,0x83,0xfa,0x4e,0x75,0x08,0x80,0x4b,0x10,0x08,0x89,0xf0,0xeb
    .byte 0x10,0x83,0xfa,0x46,0x75,0x0b,0x8a,0x6b,0x10,0x80,0xcd,0x04,0x89,0xf0,0x88,0x6b
    .byte 0x10,0x8a,0x10,0x8d,0x70,0x01,0x80,0xfa,0x68,0x72,0x10,0x76,0x15,0x80,0xfa,0x6c
    .byte 0x72,0x34,0x76,0x1b,0x80,0xfa,0x77,0x74,0x16,0xeb,0x2b,0x80,0xfa,0x4c,0x74,0x1b
    .byte 0xeb,0x24,0x8a,0x73,0x10,0x80,0xce,0x10,0x89,0xf0,0x88,0x73,0x10,0xeb,0x17,0x8a
    .byte 0x53,0x10,0x80,0xca,0x20,0x40,0x88,0x53,0x10,0xeb,0x0b,0x8a,0x4b,0x10,0x80,0xc9
    .byte 0x40,0x89,0xf0,0x88,0x4b,0x10,0x83,0xc4,0x04,0x5e,0x59,0x5b,0xc3,0x53,0x52,0x56
    .byte 0x89,0xc3,0x31,0xf6,0x89,0xd8,0xe8,0xa7,0xfc,0xff,0xff,0x89,0xc2,0xfe,0xc2,0x81
    .byte 0xe2,0xff,0x00,0x00,0x00,0x8a,0x92
    .long d_0045b608
    .byte 0x80,0xe2,0x02,0x81,0xe2,0xff,0x00,0x00,0x00,0x74,0x03,0x46,0xeb,0xdb,0xf6,0x43
    .byte 0x10,0x02,0x75,0x07,0x89,0xda,0xe8,0x83,0xfc,0xff,0xff,0x89,0xf0,0x5e,0x5a,0x5b
    .byte 0xc3,0x53,0x51,0x56,0x57,0x06,0x83,0xec,0x04,0x89,0xc3,0xf6,0x40,0x10,0x01,0x74
    .byte 0x37,0x8a,0x4b,0x10,0xf6,0xc1,0x04,0x74,0x0c,0x8b,0x3a,0x83,0xc7,0x08,0x89,0x3a
    .byte 0xc4,0x4f,0xf8,0xeb,0x23,0xf6,0xc1,0x08,0x74,0x10,0x8b,0x32,0x83,0xc6,0x04,0x8c
    .byte 0xd8,0x89,0x32,0x8e,0xc0,0x8b,0x4e,0xfc,0xeb,0x0e,0x8b,0x0a,0x83,0xc1,0x04,0x8c
    .byte 0xd8,0x89,0x0a,0x8e,0xc0,0x8b,0x49,0xfc,0x8b,0x53,0x0c,0x31,0xf6,0x83,0xfa,0xff
    .byte 0x75,0x05,0xba,0x01,0x00,0x00,0x00,0x85,0xd2,0x7e,0x30,0x89,0xd8,0xe8,0x15,0xfc
    .byte 0xff,0xff,0x89,0x04,0x24,0x8a,0x43,0x10,0xa8,0x02,0x75,0x1f,0x46,0x4a,0xa8,0x01
    .byte 0x74,0xe5,0xa8,0x20,0x74,0x0c,0x8b,0x04,0x24,0x66,0x26,0x89,0x01,0x83,0xc1,0x02
    .byte 0xeb,0xd5,0x8a,0x04,0x24,0x26,0x88,0x01,0x41,0xeb,0xcc,0x89,0xf0,0x83,0xc4,0x04
    .byte 0x07,0x5f,0x5e,0x59,0x5b,0xc3,0x53,0x51,0x56,0x57,0x06,0x83,0xec,0x08,0x89,0xc3
    .byte 0xf6,0x40,0x10,0x20,0x74,0x07,0xc6,0x44,0x24,0x04,0x02,0xeb,0x09,0xf6,0x43,0x10
    .byte 0x10,0xc6,0x44,0x24,0x04,0x01,0x8a,0x43,0x10,0xa8,0x01,0x74,0x32,0xa8,0x04,0x74
    .byte 0x0c,0x8b,0x3a,0x83,0xc7,0x08,0x89,0x3a,0xc4,0x4f,0xf8,0xeb,0x22,0xa8,0x08,0x74
    .byte 0x10,0x8b,0x32,0x83,0xc6,0x04,0x8c,0xd8,0x89,0x32,0x8e,0xc0,0x8b,0x4e,0xfc,0xeb
    .byte 0x0e,0x8b,0x0a,0x83,0xc1,0x04,0x8c,0xd8,0x89,0x0a,0x8e,0xc0,0x8b,0x49,0xfc,0x31
    .byte 0xf6,0x89,0xd8,0xe8,0x7f,0xfb,0xff,0xff,0x89,0x04,0x24,0x8a,0x04,0x24,0xfe,0xc0
    .byte 0x25,0xff,0x00,0x00,0x00,0x8a,0x80
    .long d_0045b608
    .byte 0x24,0x02,0x25,0xff,0x00,0x00,0x00,0x74,0x03,0x46,0xeb,0xda,0xf6,0x43,0x10,0x02
    .byte 0x74,0x07,0x31,0xf6,0xe9,0x6a,0x00,0x00,0x00,0x8b,0x43,0x0c,0x8d,0x50,0xff,0x89
    .byte 0x53,0x0c,0x85,0xc0,0x74,0x53,0x8a,0x63,0x10,0x46,0xf6,0xc4,0x01,0x74,0x22,0x31
    .byte 0xc0,0x8a,0x44,0x24,0x04,0x83,0xf8,0x01,0x75,0x08,0x8a,0x04,0x24,0x26,0x88,0x01
    .byte 0xeb,0x07,0x8b,0x04,0x24,0x66,0x26,0x89,0x01,0x31,0xc0,0x8a,0x44,0x24,0x04,0x01
    .byte 0xc1,0x89,0xd8,0xe8,0x1f,0x07,0x00,0x00,0x89,0x04,0x24,0x83,0xf8,0xff,0x74,0x23
    .byte 0x8a,0x04,0x24,0xfe,0xc0,0x25,0xff,0x00,0x00,0x00,0x8a,0x80
    .long d_0045b608
    .byte 0x24,0x02,0x25,0xff,0x00,0x00,0x00,0x74,0xad,0x8b,0x04,0x24,0x89,0xda,0xe8,0xf0
    .byte 0xfa,0xff,0xff,0xf6,0x43,0x10,0x01,0x74,0x1b,0x85,0xf6,0x7e,0x17,0x31,0xc0,0x8a
    .byte 0x44,0x24,0x04,0x83,0xf8,0x01,0x75,0x06,0x26,0xc6,0x01,0x00,0xeb,0x06,0x66,0x26
    .byte 0xc7,0x01,0x00,0x00,0x89,0xf0,0x83,0xc4,0x08,0xe9,0xd7,0xfe,0xff,0xff,0x51,0x56
    .byte 0x57,0x06,0x8a,0x48,0x10,0xf6,0xc1,0x01,0x74,0x4d,0xf6,0xc1,0x04,0x74,0x0c,0x8b
    .byte 0x3a,0x83,0xc7,0x08,0x89,0x3a,0xc4,0x57,0xf8,0xeb,0x25,0xf6,0xc1,0x08,0x74,0x10
    .byte 0x8b,0x32,0x83,0xc6,0x04,0x8c,0xd9,0x89,0x32,0x8e,0xc1,0x8b,0x56,0xfc,0xeb,0x10
    .byte 0x8b,0x0a,0x83,0xc1,0x04,0x89,0x0a,0x89,0xca,0x8c,0xd9,0x8e,0xc1,0x8b,0x52,0xfc
    .byte 0x8a,0x68,0x10,0xf6,0xc5,0x10,0x74,0x09,0x66,0x26,0x89,0x1a,0x07,0x5f,0x5e,0x59
    .byte 0xc3,0xf6,0xc5,0x20,0x26,0x89,0x1a,0x07,0x5f,0x5e,0x59,0xc3,0x53,0x51,0x56,0x89
    .byte 0xc1,0x89,0xd6,0xbb,0x20,0x00,0x00,0x00,0x89,0xf0,0x31,0xd2,0xe8,0x7c,0x32,0x00
    .byte 0x00,0x31,0xc0,0x8a,0x01,0x41,0x85,0xc0,0x74,0x1f,0x89,0xc2,0x83,0xe0,0x07,0xc1
    .byte 0xfa,0x03,0x8a,0x80
    .long d_0045b5dc
    .byte 0x08,0x04,0x32,0x31,0xc0,0x8a,0x01,0x85,0xc0,0x74,0x06,0x41,0x83,0xf8,0x5d,0x75
    .byte 0xe1,0x89,0xc8,0x5e,0x59,0x5b,0xc3,0x51,0x56,0x57,0x06,0x55,0x83,0xec,0x2c,0x89
    .byte 0xc1,0x89,0xd7,0x8b,0x03,0x31,0xd2,0x8a,0x10,0x83,0xfa,0x5e,0x0f,0x94,0xc2,0x81
    .byte 0xe2,0xff,0x00,0x00,0x00,0x89,0x54,0x24,0x24,0x74,0x03,0x40,0x89,0x03,0x89,0xe2
    .byte 0x8b,0x03,0xe8,0x8d,0xff,0xff,0xff,0x89,0x03,0x8a,0x61,0x10,0xf6,0xc4,0x01,0x74
    .byte 0x34,0xf6,0xc4,0x04,0x74,0x0c,0x8b,0x37,0x83,0xc6,0x08,0x89,0x37,0xc4,0x76,0xf8
    .byte 0xeb,0x23,0xf6,0xc4,0x08,0x74,0x10,0x8b,0x1f,0x83,0xc3,0x04,0x8c,0xd8,0x89,0x1f
    .byte 0x8e,0xc0,0x8b,0x73,0xfc,0xeb,0x0e,0x8b,0x17,0x83,0xc2,0x04,0x8c,0xd8,0x89,0x17
    .byte 0x8e,0xc0,0x8b,0x72,0xfc,0x8b,0x51,0x0c,0x31,0xff,0x85,0xd2,0x76,0x6a,0x89,0xc8
    .byte 0xe8,0x9f,0xf9,0xff,0xff,0x8a,0x59,0x10,0x89,0x44,0x24,0x28,0xf6,0xc3,0x02,0x75
    .byte 0x57,0x89,0xc3,0xc1,0xfb,0x03,0x8a,0x1c,0x1c,0x81,0xe3,0xff,0x00,0x00,0x00,0x89
    .byte 0x5c,0x24,0x20,0x89,0xc3,0x83,0xe3,0x07,0x8a,0x9b
    .long d_0045b5dc
    .byte 0x8b,0x6c,0x24,0x20,0x81,0xe3,0xff,0x00,0x00,0x00,0x85,0xeb,0x0f,0x94,0xc3,0x8b
    .byte 0x6c,0x24,0x24,0x81,0xe3,0xff,0x00,0x00,0x00,0x39,0xeb,0x74,0x09,0x89,0xca,0xe8
    .byte 0x59,0xf9,0xff,0xff,0xeb,0x14,0x47,0x8a,0x79,0x10,0x4a,0xf6,0xc7,0x01,0x74,0x9c
    .byte 0x8a,0x44,0x24,0x28,0x26,0x88,0x06,0x46,0xeb,0x92,0xf6,0x41,0x10,0x01,0x74,0x08
    .byte 0x85,0xff,0x7e,0x04,0x26,0xc6,0x06,0x00,0x89,0xf8,0x83,0xc4,0x2c,0x5d,0x07,0x5f
    .byte 0x5e,0x59,0xc3,0x53,0x51,0x56,0x57,0x06,0x55,0x83,0xec,0x6c,0x89,0xc6,0x89,0x54
    .byte 0x24,0x5c,0x31,0xff,0x89,0xe3,0x89,0x7c,0x24,0x60,0x89,0xf0,0xe8,0x05,0xf9,0xff
    .byte 0xff,0x88,0xc2,0xfe,0xc2,0x0f,0xb6,0xea,0x8a,0x95
    .long d_0045b608
    .byte 0x89,0xc1,0x80,0xe2,0x02,0x81,0xe2,0xff,0x00,0x00,0x00,0x74,0x06,0xff,0x44,0x24
    .byte 0x60,0xeb,0xd9,0xf6,0x46,0x10,0x02,0x0f,0x85,0x09,0x02,0x00,0x00,0x8b,0x56,0x0c
    .byte 0x8d,0x6a,0xff,0x89,0x6e,0x0c,0x85,0xd2,0x0f,0x84,0xef,0x01,0x00,0x00,0x83,0xf8
    .byte 0x2b,0x74,0x05,0x83,0xf8,0x2d,0x75,0x1e,0x8b,0x6c,0x24,0x60,0x89,0xf0,0x88,0x0b
    .byte 0xe8,0xbe,0x04,0x00,0x00,0x43,0x45,0x89,0xc1,0x89,0x6c,0x24,0x60,0x83,0xf8,0xff
    .byte 0x0f,0x84,0xd0,0x01,0x00,0x00,0x88,0xc8,0xfe,0xc0,0x25,0xff,0x00,0x00,0x00,0x8a
    .byte 0x80
    .long d_0045b608
    .byte 0x24,0x20,0x25,0xff,0x00,0x00,0x00,0x75,0x09,0x83,0xf9,0x2e,0x0f,0x85,0xa6,0x01
    .byte 0x00,0x00,0x31,0xc0,0x89,0x44,0x24,0x68,0x88,0xc8,0x31,0xed,0xfe,0xc0,0x25,0xff
    .byte 0x00,0x00,0x00,0x8a,0x80
    .long d_0045b608
    .byte 0x24,0x20,0x25,0xff,0x00,0x00,0x00,0x74,0x48,0xbd,0x01,0x00,0x00,0x00,0x88,0x0b
    .byte 0x8a,0x76,0x10,0x43,0xf6,0xc6,0x10,0x74,0x0f,0x6b,0x44,0x24,0x6a,0x0a,0x01,0xc1
    .byte 0x83,0xe9,0x30,0x66,0x89,0x4c,0x24,0x6a,0x89,0xf0,0x47,0xe8,0x45,0x04,0x00,0x00
    .byte 0x89,0xc1,0x83,0xf8,0xff,0x0f,0x84,0x5d,0x01,0x00,0x00,0xfe,0xc0,0x25,0xff,0x00
    .byte 0x00,0x00,0x8a,0x80
    .long d_0045b608
    .byte 0x24,0x20,0x25,0xff,0x00,0x00,0x00,0x75,0xbd,0x83,0xf9,0x2e,0x0f,0x85,0xa7,0x00
    .byte 0x00,0x00,0x89,0xf0,0x88,0x0b,0xe8,0x12,0x04,0x00,0x00,0x43,0x89,0xc1,0x83,0xf8
    .byte 0xff,0x0f,0x84,0x29,0x01,0x00,0x00,0x85,0xed,0x75,0x1a,0xfe,0xc0,0x25,0xff,0x00
    .byte 0x00,0x00,0x8a,0x80
    .long d_0045b608
    .byte 0x24,0x20,0x25,0xff,0x00,0x00,0x00,0x0f,0x84,0x02,0x01,0x00,0x00,0x47,0x88,0xc8
    .byte 0xfe,0xc0,0x25,0xff,0x00,0x00,0x00,0x8a,0x80
    .long d_0045b608
    .byte 0x24,0x20,0x25,0xff,0x00,0x00,0x00,0x74,0x12,0x47,0x89,0xf0,0x88,0x0b,0xe8,0xc5
    .byte 0x03,0x00,0x00,0x43,0x89,0xc1,0x83,0xf8,0xff,0x75,0xd6,0xf6,0x46,0x10,0x10,0x74
    .byte 0x3a,0x31,0xd2,0x89,0xdd,0x89,0x54,0x24,0x58,0x4d,0x31,0xc0,0x8a,0x45,0x00,0x83
    .byte 0xf8,0x2e,0x74,0x1e,0x2c,0x30,0xc7,0x44,0x24,0x64,0x0a,0x00,0x00,0x00,0x88,0x44
    .byte 0x24,0x5a,0x31,0xd2,0x8b,0x44,0x24,0x58,0xf7,0x74,0x24,0x64,0x89,0x44,0x24,0x58
    .byte 0xeb,0xd7,0x8b,0x44,0x24,0x58,0x66,0x89,0x44,0x24,0x68,0x83,0xf9,0xff,0x0f,0x84
    .byte 0x97,0x00,0x00,0x00,0xf6,0x46,0x10,0x10,0x0f,0x85,0x84,0x00,0x00,0x00,0x83,0xf9
    .byte 0x65,0x74,0x09,0x83,0xf9,0x45,0x0f,0x85,0x76,0x00,0x00,0x00,0x47,0x89,0xf0,0x88
    .byte 0x0b,0xe8,0x52,0x03,0x00,0x00,0x43,0x89,0xc1,0x83,0xf8,0xff,0x0f,0x84,0x69,0x00
    .byte 0x00,0x00,0x83,0xf8,0x2b,0x74,0x05,0x83,0xf8,0x2d,0x75,0x12,0x47,0x89,0xf0,0x88
    .byte 0x0b,0xe8,0x32,0x03,0x00,0x00,0x43,0x89,0xc1,0x83,0xf8,0xff,0x74,0x4d,0x88,0xc8
    .byte 0xfe,0xc0,0x25,0xff,0x00,0x00,0x00,0x8a,0x80
    .long d_0045b608
    .byte 0x24,0x20,0x25,0xff,0x00,0x00,0x00,0x75,0x04,0x31,0xff,0xeb,0x28,0x47,0x89,0xf0
    .byte 0x88,0x0b,0xe8,0x04,0x03,0x00,0x00,0x43,0x89,0xc1,0x83,0xf8,0xff,0x74,0x1f,0xfe
    .byte 0xc0,0x25,0xff,0x00,0x00,0x00,0x8a,0x80
    .long d_0045b608
    .byte 0x24,0x20,0x25,0xff,0x00,0x00,0x00,0x75,0xd8,0x89,0xf2,0x89,0xc8,0xe8,0xd9,0xf6
    .byte 0xff,0xff,0x85,0xff,0x0f,0x8e,0xb3,0x00,0x00,0x00,0x8b,0x4c,0x24,0x60,0x8a,0x56
    .byte 0x10,0x01,0xcf,0xf6,0xc2,0x01,0x0f,0x84,0xa1,0x00,0x00,0x00,0xc6,0x03,0x00,0xf6
    .byte 0x46,0x10,0x10,0x74,0x10,0x31,0xc0,0x8a,0x04,0x24,0x83,0xf8,0x2d,0x75,0x12,0xf7
    .byte 0x5c,0x24,0x68,0xeb,0x0c,0x8d,0x54,0x24,0x50,0x89,0xe0,0xff,0x15
    .long d_0045c9d4
    .byte 0x8a,0x5e,0x10,0xf6,0xc3,0x04,0x74,0x10,0x8b,0x44,0x24,0x5c,0x8b,0x08,0x83,0xc1
    .byte 0x08,0x89,0x08,0xc4,0x59,0xf8,0xeb,0x2b,0xf6,0xc3,0x08,0x74,0x14,0x8b,0x44,0x24
    .byte 0x5c,0x8b,0x18,0x83,0xc3,0x04,0x89,0x18,0x8c,0xd8,0x8e,0xc0,0x8b,0x5b,0xfc,0xeb
    .byte 0x12,0x8b,0x44,0x24,0x5c,0x8b,0x10,0x83,0xc2,0x04,0x89,0x10,0x8c,0xd8,0x8e,0xc0
    .byte 0x8b,0x5a,0xfc,0x8a,0x4e,0x10,0xf6,0xc1,0x10,0x74,0x06,0x8b,0x44,0x24,0x68,0xeb
    .byte 0x28,0xf6,0xc1,0x20,0x75,0x05,0xf6,0xc1,0x40,0x74,0x11,0x8b,0x44,0x24,0x50,0x26
    .byte 0x89,0x03,0x8b,0x44,0x24,0x54,0x26,0x89,0x43,0x04,0xeb,0x10,0x8b,0x44,0x24,0x50
    .byte 0x8b,0x54,0x24,0x54,0xe8,0x43,0x22,0x00,0x00,0x26,0x89,0x03,0x89,0xf8,0x83,0xc4
    .byte 0x6c,0x5d,0xe9,0x25,0xfa,0xff,0xff,0x56,0x57,0x06,0x55,0x83,0xec,0x10,0x89,0xc6
    .byte 0x89,0x54,0x24,0x0c,0x89,0x4c,0x24,0x04,0x89,0xda,0x31,0xff,0x31,0xc9,0x89,0x3c
    .byte 0x24,0x89,0xf0,0xe8,0xeb,0xf5,0xff,0xff,0x89,0xc3,0xfe,0xc0,0x0f,0xb6,0xe8,0x8a
    .byte 0x85
    .long d_0045b608
    .byte 0x24,0x02,0x25,0xff,0x00,0x00,0x00,0x74,0x05,0xff,0x04,0x24,0xeb,0xde,0xf6,0x46
    .byte 0x10,0x02,0x0f,0x85,0x32,0x01,0x00,0x00,0x8b,0x46,0x0c,0x8d,0x68,0xff,0x89,0x6e
    .byte 0x0c,0x85,0xc0,0x0f,0x84,0x18,0x01,0x00,0x00,0xb8,0x2b,0x00,0x00,0x00,0x8b,0x6c
    .byte 0x24,0x04,0x89,0x44,0x24,0x08,0x85,0xed,0x74,0x23,0x83,0xfb,0x2b,0x74,0x05,0x83
    .byte 0xfb,0x2d,0x75,0x19,0xff,0x04,0x24,0x89,0xf0,0x89,0x5c,0x24,0x08,0xe8,0x97,0x01
    .byte 0x00,0x00,0x89,0xc3,0x83,0xf8,0xff,0x0f,0x84,0xed,0x00,0x00,0x00,0x85,0xd2,0x75
    .byte 0x58,0x83,0xfb,0x30,0x75,0x4c,0x89,0xf0,0xb9,0x01,0x00,0x00,0x00,0xe8,0x77,0x01
    .byte 0x00,0x00,0x89,0xc3,0x83,0xf8,0xff,0x0f,0x84,0xcd,0x00,0x00,0x00,0x83,0xf8,0x78
    .byte 0x74,0x05,0x83,0xf8,0x58,0x75,0x24,0x89,0xf0,0x8b,0x2c,0x24,0xe8,0x58,0x01,0x00
    .byte 0x00,0x31,0xc9,0x83,0xc5,0x02,0x89,0xc3,0x89,0x2c,0x24,0x83,0xf8,0xff,0x0f,0x84
    .byte 0xa6,0x00,0x00,0x00,0xba,0x10,0x00,0x00,0x00,0xeb,0x52,0xba,0x08,0x00,0x00,0x00
    .byte 0xeb,0x4b,0xba,0x0a,0x00,0x00,0x00,0xeb,0x44,0x83,0xfa,0x10,0x75,0x3f,0x83,0xfb
    .byte 0x30,0x75,0x3a,0x89,0xf0,0xb9,0x01,0x00,0x00,0x00,0xe8,0x1a,0x01,0x00,0x00,0x89
    .byte 0xc3,0x83,0xf8,0xff,0x0f,0x84,0x70,0x00,0x00,0x00,0x83,0xf8,0x78,0x74,0x05,0x83
    .byte 0xf8,0x58,0x75,0x19,0x89,0xf0,0x8b,0x1c,0x24,0xe8,0xfb,0x00,0x00,0x00,0x83,0xc3
    .byte 0x02,0x31,0xc9,0x89,0x1c,0x24,0x89,0xc3,0x83,0xf8,0xff,0x74,0x4d,0x89,0xd8,0xe8
    .byte 0xbe,0x00,0x00,0x00,0x39,0xd0,0x7d,0x0f,0x0f,0xaf,0xfa,0x01,0xc7,0x89,0xf0,0x41
    .byte 0xe8,0xd4,0x00,0x00,0x00,0xeb,0xdf,0x83,0xfb,0x3a,0x75,0x25,0xf6,0x46,0x10,0x80
    .byte 0x74,0x1f,0x89,0xf0,0x41,0xe8,0xbf,0x00,0x00,0x00,0x89,0xc3,0x83,0xf8,0xff,0x74
    .byte 0x19,0xe8,0x8c,0x00,0x00,0x00,0x39,0xd0,0x7d,0x07,0x0f,0xaf,0xfa,0x01,0xc7,0xeb
    .byte 0xe1,0x89,0xf2,0x89,0xd8,0xe8,0x9b,0xf4,0xff,0xff,0x83,0x7c,0x24,0x08,0x2d,0x75
    .byte 0x02,0xf7,0xdf,0x85,0xc9,0x7e,0x61,0x8b,0x14,0x24,0x8a,0x66,0x10,0x01,0xd1,0xf6
    .byte 0xc4,0x01,0x74,0x54,0xf6,0xc4,0x04,0x74,0x10,0x8b,0x44,0x24,0x0c,0x8b,0x10,0x83
    .byte 0xc2,0x08,0x89,0x10,0xc4,0x42,0xf8,0xeb,0x2b,0xf6,0xc4,0x08,0x74,0x14,0x8b,0x44
    .byte 0x24,0x0c,0x8b,0x28,0x83,0xc5,0x04,0x8c,0xda,0x89,0x28,0x8e,0xc2,0x8b,0x45,0xfc
    .byte 0xeb,0x12,0x8b,0x44,0x24,0x0c,0x8b,0x18,0x83,0xc3,0x04,0x8c,0xda,0x89,0x18,0x8e
    .byte 0xc2,0x8b,0x43,0xfc,0x8a,0x5e,0x10,0xf6,0xc3,0x10,0x74,0x06,0x66,0x26,0x89,0x38
    .byte 0xeb,0x06,0xf6,0xc3,0x20,0x26,0x89,0x38,0x89,0xc8,0x83,0xc4,0x10,0x5d,0x07,0x5f
    .byte 0x5e,0xc3,0x83,0xf8,0x30,0x7c,0x09,0x83,0xf8,0x39,0x7f,0x04,0x83,0xe8,0x30,0xc3
    .byte 0xe8,0xe3,0x30,0x00,0x00,0x83,0xf8,0x61,0x7c,0x09,0x83,0xf8,0x66,0x7f,0x04,0x83
    .byte 0xe8,0x57,0xc3,0xb8,0x10,0x00,0x00,0x00,0xc3,0x53,0x52,0x89,0xc2,0x8b,0x40,0x0c
    .byte 0x8d,0x58,0xff,0x89,0x5a,0x0c,0x85,0xc0,0x74,0x0d,0x89,0xd0,0xe8,0xdd,0xf3,0xff
    .byte 0xff,0xf6,0x42,0x10,0x02,0x74,0x05,0xb8,0xff,0xff,0xff,0xff,0x5a,0x5b,0xc3
sub_0044ed40:
    push ecx
    push edx
    mov edx, eax
    call sub_00450d84
    cmp dword ptr [edx + 0x14], 0
    jne loc_0044ed75
    mov ah, byte ptr [edx + 0xd]
    test ah, 2
    je loc_0044ed60
    mov dword ptr [edx + 0x14], 0x86
    jmp loc_0044ed75
loc_0044ed60:
    test ah, 4
    je loc_0044ed6e
    mov dword ptr [edx + 0x14], 1
    jmp loc_0044ed75
loc_0044ed6e:
    mov dword ptr [edx + 0x14], 0x1000
loc_0044ed75:
    mov eax, dword ptr [edx + 0x14]
    call sub_004529cc
    mov dword ptr [edx + 8], eax
    test eax, eax
    jne loc_0044eda4
    mov cl, byte ptr [edx + 0xd]
    mov dword ptr [edx + 0x14], 1
    and cl, 0xf8
    lea eax, [edx + 0x18]
    mov byte ptr [edx + 0xd], cl
    mov ch, cl
    mov dword ptr [edx + 8], eax
    or ch, 4
    mov byte ptr [edx + 0xd], ch
    jmp loc_0044eda8
loc_0044eda4:
    or byte ptr [edx + 0xc], 8
loc_0044eda8:
    mov eax, dword ptr [edx + 8]
    mov dword ptr [edx + 4], 0
    mov dword ptr [edx], eax
    pop edx
    pop ecx
    ret
ptr_0044edb7:
    push ebx
    mov ebx, eax
    mov eax, edx
    mov edx, dword ptr [ebx]
    call sub_004527e3
    inc dword ptr [ebx + 0x10]
    pop ebx
    ret
sub_0044edc8:
    push ecx
    push esi
    push edi
    push ebp
    mov esi, eax
    mov eax, dword ptr [eax + 0x10]
    call dword ptr [d_0045c634]
    mov ebp, dword ptr [esi + 0xc]
    mov ah, byte ptr [esi + 0xc]
    mov ecx, dword ptr [esi + 8]
    and ah, 0xcf
    and ebp, 0x30
    mov byte ptr [esi + 0xc], ah
    test ecx, ecx
    jne loc_0044edf4
    mov eax, esi
    call sub_0044ed40
loc_0044edf4:
    mov cl, byte ptr [esi + 0xd]
    xor edi, edi
    test cl, 4
    je loc_0044ee0f
    mov ch, cl
    and ch, 0xfa
    mov al, ch
    or al, 1
    mov edi, 1
    mov byte ptr [esi + 0xd], al
loc_0044ee0f:
    mov ecx, offset ptr_0044edb7
    mov eax, esi
    call sub_00450148
    mov edx, eax
    test edi, edi
    je loc_0044ee36
    mov ah, byte ptr [esi + 0xd]
    and ah, 0xfa
    mov bl, ah
    or bl, 4
    mov eax, esi
    mov byte ptr [esi + 0xd], bl
    call sub_0044c7d4
loc_0044ee36:
    mov eax, dword ptr [esi + 0x10]
    call dword ptr [d_0045c638]
    test byte ptr [esi + 0xc], 0x20
    je loc_0044ee4a
    mov edx, 0xffffffff
loc_0044ee4a:
    mov edi, dword ptr [esi + 0xc]
    or edi, ebp
    mov eax, edx
    mov dword ptr [esi + 0xc], edi
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    test edx, edx
    jne loc_0044ee60
    xor eax, eax
loc_0044ee5f:
    ret
loc_0044ee60:
    test edx, edx
    je loc_0044ee5f
sub_0044ee64:
    push edx
    mov edx, eax
    call sub_0044c8e8
    cmp edx, 0x7b
    jne loc_0044ee78
    mov eax, 1
    jmp loc_0044eea9
loc_0044ee78:
    cmp edx, 0xce
    jne loc_0044ee87
    mov eax, 9
    jmp loc_0044eea9
loc_0044ee87:
    cmp edx, 0xb7
    jne loc_0044ee96
    mov eax, 7
    jmp loc_0044eea9
loc_0044ee96:
    cmp edx, 0x13
    jbe loc_0044eea0
    mov edx, 0x13
loc_0044eea0:
    mov eax, dword ptr [edx + d_0045c891]
    sar eax, 0x18
loc_0044eea9:
    call sub_0044c8c3
    mov eax, 0xffffffff
    pop edx
    ret
sub_0044eeb5:
    push ecx
    push edx
    call sub_00457dcc
    call sub_0044ee64
    pop edx
    pop ecx
    ret
sub_0044eec4:
    push ecx
    push esi
    sub esp, 8
    mov esi, edx
    mov edx, esp
    push edx
    push eax
    call sub_00457d78
    push ebx
    push esi
    lea eax, [esp + 8]
    push eax
    call sub_00457d72
    add esp, 8
    pop esi
    pop ecx
    ret
    push ecx
    sub esp, 8
    mov ecx, esp
    push ecx
    xor ecx, ecx
    mov cx, dx
    push ecx
    xor ecx, ecx
    mov cx, ax
    push ecx
    call sub_00457d6c
    push ebx
    lea ebx, [esp + 4]
    push ebx
    call sub_00457d66
    add esp, 8
    pop ecx
    ret
sub_0044ef0e:
    push ebx
    push ecx
    push esi
    mov ecx, eax
    mov esi, edx
    lea ebx, [eax + 0x16]
    lea edx, [eax + 0x18]
    lea eax, [esi + 0x14]
    call sub_0044eec4
    mov al, byte ptr [esi]
    mov byte ptr [ecx + 0x15], al
    mov ebx, 0xff
    mov eax, dword ptr [esi + 0x20]
    lea edx, [esi + 0x2c]
    mov dword ptr [ecx + 0x1a], eax
    lea eax, [ecx + 0x1e]
    call sub_0045169c
    mov byte ptr [ecx + 0x11d], 0
    pop esi
    pop ecx
    pop ebx
    ret
sub_0044ef49:
    push ecx
    push esi
    push edi
    mov esi, eax
    mov edi, edx
loc_0044ef50:
    cmp dword ptr [ebx], 0
    jne loc_0044ef5b
    mov dword ptr [ebx], 0x80
loc_0044ef5b:
    test dword ptr [ebx], edi
    je loc_0044ef68
    mov eax, 1
    pop edi
    pop esi
    pop ecx
    ret
loc_0044ef68:
    push ebx
    push esi
    call sub_00457dd2
    test eax, eax
    jne loc_0044ef50
    pop edi
    pop esi
    pop ecx
    ret
    call dword ptr [d_0045c8a8]
sub_0044ef7d:
    push edx
    mov edx, 0xff
    mov eax, offset d_0045b178
    call sub_0044e083
    pop edx
    ret
sub_0044ef8f:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 4
    mov ebx, eax
    xor ecx, ecx
    mov ah, byte ptr [d_0045c9ac]
    mov dword ptr [ebp - 0x14], ecx
    test ah, ah
    je loc_0044efd3
    lea edi, [ebp - 0x14]
    fnstcw word ptr ss:[edi]
    wait
    test edx, edx
    je loc_0044efd3
    mov eax, edx
    mov esi, dword ptr [ebp - 0x14]
    not eax
    and edx, ebx
    and eax, esi
    or eax, edx
    lea edi, [ebp - 0x14]
    mov dword ptr [ebp - 0x14], eax
    fldcw word ptr ss:[edi]
    wait
    lea edi, [ebp - 0x14]
    fnstcw word ptr ss:[edi]
    wait
loc_0044efd3:
    xor eax, eax
    mov ax, word ptr [ebp - 0x14]
    lea esp, [ebp - 0x10]
    pop edi
    pop esi
    pop ecx
    pop ebx
    pop ebp
    ret
ptr_0044efe2:
    wait
    # fnsave dword ptr [eax]
    .byte 0xdd,0x30
    wait
    ret
ptr_0044efe7:
    # frstor dword ptr [eax]
    .byte 0xdd,0x20
    wait
    ret
sub_0044efeb:
    push ebx
    push edx
    cmp byte ptr [d_0045c9ad], 0
    je loc_0044f00c
    mov edx, offset ptr_0044efe2
    mov ebx, offset ptr_0044efe7
    mov dword ptr [d_0045c9d8], edx
    mov dword ptr [d_0045c9dc], ebx
loc_0044f00c:
    xor eax, eax
    mov ax, word ptr [d_0045c9e0]
    call sub_00450db6
    pop edx
    pop ebx
    ret
sub_0044f01c:
    cmp byte ptr [d_0045c9ad], 0
    jne sub_0044efeb
    ret
ptr_0044f026:
    push edx
    mov ah, byte ptr [d_0045c9ac]
    test ah, ah
    jne loc_0044f06e
    mov byte ptr [d_0045c9ad], ah
    xor dl, dl
    # sub eax, eax
    .byte 0x2b,0xc0
    push eax
    fninit
    fnstcw word ptr [esp]
    pop eax
    # mov al, ah
    .byte 0x8a,0xc4
    xor dh, dh
    and eax, 0xff
    cmp eax, 3
    jne loc_0044f059
    call sub_0044efeb
    mov dl, al
    mov dh, al
loc_0044f059:
    cmp byte ptr [d_0045c954], 0
    jne loc_0044f06e
    mov byte ptr [d_0045c9ac], dl
    mov byte ptr [d_0045c9ad], dh
loc_0044f06e:
    pop edx
    ret
sub_0044f070:
    push edx
    xor edx, edx
    mov dx, word ptr [eax]
    cmp edx, 1
    jne loc_0044f098
    cmp dword ptr [eax + 4], 0
    je loc_0044f098
    mov ax, word ptr [eax + 0xa]
    # cmp ax, 0x10
    .byte 0x66,0x3d,0x10,0x00
    jb loc_0044f091
    # cmp ax, 0x12
    .byte 0x66,0x3d,0x12,0x00
    jbe loc_0044f098
loc_0044f091:
    mov eax, 1
    pop edx
    ret
loc_0044f098:
    xor eax, eax
    pop edx
    ret
sub_0044f09c:
    push ecx
    push edx
    xor eax, eax
    call dword ptr [d_0045c634]
    cmp dword ptr [d_0045c8ac], -1
    jne loc_0044f0d0
    push 0
    push 0x80
    push 3
    push 0
    push 1
    push 0x80000000
    push offset d_0045b190
    call sub_00457d60
    mov dword ptr [d_0045c8ac], eax
loc_0044f0d0:
    cmp dword ptr [d_0045c8b0], -1
    jne loc_0044f0fa
    push 0
    push 0x80
    push 3
    push 0
    push 2
    push 0x40000000
    push offset d_0045b197
    call sub_00457d60
    mov dword ptr [d_0045c8b0], eax
loc_0044f0fa:
    xor eax, eax
    call dword ptr [d_0045c638]
    pop edx
    pop ecx
    ret
sub_0044f105:
    call sub_0044f09c
    mov eax, dword ptr [d_0045c8ac]
    ret
sub_0044f110:
    call sub_0044f09c
    mov eax, dword ptr [d_0045c8b0]
    ret
sub_0044f11b:
    push ebx
    push ecx
    push edx
    mov ecx, dword ptr [d_004a5e64]
    mov eax, dword ptr [d_004a5e60]
    cmp eax, dword ptr [d_0045c9e4]
    jae loc_0044f135
loc_0044f131:
    xor eax, eax
    jmp loc_0044f156
loc_0044f135:
    mov ebx, dword ptr [d_004a5e60]
    mov edx, ecx
    xor eax, eax
    shl ebx, 2
    jmp loc_0044f14d
loc_0044f144:
    cmp dword ptr [edx + eax], 0
    je loc_0044f131
    add eax, 4
loc_0044f14d:
    cmp eax, ebx
    jl loc_0044f144
    mov eax, 1
loc_0044f156:
    mov dword ptr [d_004a5e64], ecx
    pop edx
    pop ecx
    pop ebx
    ret
sub_0044f160:
    push ebx
    push ecx
    push edx
    push esi
    mov esi, eax
    call dword ptr [d_0045c664]
    mov ecx, dword ptr [d_004a5e60]
    xor ebx, ebx
    xor eax, eax
    shl ecx, 2
    jmp loc_0044f19b
loc_0044f17b:
    mov edx, dword ptr [d_004a5e64]
    add edx, eax
    cmp dword ptr [edx], 0
    jne loc_0044f197
    mov dword ptr [edx], esi
    call dword ptr [d_0045c668]
    mov eax, ebx
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0044f197:
    add eax, 4
    inc ebx
loc_0044f19b:
    cmp eax, ecx
    jl loc_0044f17b
    mov edx, dword ptr [d_004a5e60]
    inc edx
    mov eax, dword ptr [d_004a5e64]
    shl edx, 2
    call sub_00452abb
    mov edx, dword ptr [d_004a5e60]
    mov dword ptr [d_004a5e64], eax
    mov dword ptr [eax + edx*4], esi
    inc edx
    mov dword ptr [d_004a5e60], edx
    call dword ptr [d_0045c668]
    mov eax, dword ptr [d_004a5e60]
    dec eax
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push esi
    push edi
    mov edi, eax
    mov esi, edx
    call dword ptr [d_0045c664]
    cmp edx, 1
    jb loc_0044f1f5
    jbe loc_0044f1fe
    cmp edx, 2
    je loc_0044f203
    jmp loc_0044f20b
loc_0044f1f5:
    test edx, edx
    jne loc_0044f20b
    push edi
    push -0xa
    jmp loc_0044f206
loc_0044f1fe:
    push edi
    push -0xb
    jmp loc_0044f206
loc_0044f203:
    push edi
    push -0xc
loc_0044f206:
    call sub_00457d5a
loc_0044f20b:
    mov ecx, esi
    mov edx, dword ptr [d_004a5e60]
    shl ecx, 2
    cmp esi, edx
    jge loc_0044f224
    mov eax, dword ptr [d_004a5e64]
    mov dword ptr [ecx + eax], edi
    jmp loc_0044f26a
loc_0044f224:
    mov eax, dword ptr [d_004a5e64]
    lea edx, [ecx + 4]
    call sub_00452abb
    mov ebx, dword ptr [d_004a5e60]
    mov dword ptr [d_004a5e64], eax
    mov eax, ebx
    shl eax, 2
    jmp loc_0044f254
loc_0044f243:
    mov edx, dword ptr [d_004a5e64]
    inc ebx
    mov dword ptr [edx + eax], 0
    add eax, 4
loc_0044f254:
    cmp eax, ecx
    jl loc_0044f243
    mov edx, dword ptr [d_004a5e64]
    mov eax, esi
    inc esi
    mov dword ptr [edx + eax*4], edi
    mov dword ptr [d_004a5e60], esi
loc_0044f26a:
    call dword ptr [d_0045c668]
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0044f275:
    push edx
    mov edx, eax
    call dword ptr [d_0045c664]
    test edx, edx
    jle loc_0044f299
    cmp edx, dword ptr [d_004a5e60]
    jge loc_0044f299
    mov eax, edx
    mov edx, dword ptr [d_004a5e64]
    mov dword ptr [edx + eax*4], 0
loc_0044f299:
    call dword ptr [d_0045c668]
    pop edx
    ret
sub_0044f2a1:
    push ecx
    push edx
    xor edx, edx
    push -0xa
    mov dword ptr [d_004a5e60], edx
    mov dword ptr [d_004a5e64], edx
    call sub_00457d54
    call sub_0044f160
    push -0xb
    call sub_00457d54
    call sub_0044f160
    push -0xc
    call sub_00457d54
    call sub_0044f160
    pop edx
    pop ecx
    ret
sub_0044f2d8:
    push edx
    mov edx, dword ptr [d_0045c8b4]
    inc edx
    mov dword ptr [d_0045c8b4], edx
    mov eax, edx
    pop edx
    ret
loc_0044f2ea:
    push ebx
    push ecx
    push edx
    push ebp
    mov ebp, esp
    sub esp, 8
    mov eax, 1
    call sub_0044f8f0
    mov eax, dword ptr [d_0045ca3c]
    add eax, 3
    and al, 0xfc
    xor edx, edx
    sub esp, eax
    mov ecx, esp
    mov ebx, dword ptr [d_0045ca3c]
    mov eax, ecx
    call sub_00451940
    lea eax, [ebp - 8]
    mov edx, ecx
    call sub_0044c76f
    mov edx, dword ptr [d_0045c940]
    add edx, 3
    and dl, 0xfc
    call sub_00450e5c
    cmp edx, eax
    jae loc_0044f341
    mov eax, edx
    sub esp, eax
    mov eax, esp
    jmp loc_0044f343
loc_0044f341:
    xor eax, eax
loc_0044f343:
    mov edx, dword ptr [d_0045c940]
    add eax, edx
    xor ebx, ebx
    mov dword ptr [d_0045c944], eax
    call sub_00450e8b
    call sub_00457d90
    call sub_0044ad68
    mov bl, byte ptr [eax]
    mov edx, eax
    cmp ebx, 0x22
    jne loc_0044f380
loc_0044f36a:
    inc eax
    xor edx, edx
    mov dl, byte ptr [eax]
    cmp edx, 0x22
    je loc_0044f378
    test dl, dl
    jne loc_0044f36a
loc_0044f378:
    cmp byte ptr [eax], 0
    je loc_0044f3a3
loc_0044f37d:
    inc eax
    jmp loc_0044f3a3
loc_0044f380:
    mov dl, byte ptr [eax]
    inc dl
    and edx, 0xff
    mov dl, byte ptr [edx + d_0045b608]
    and dl, 2
    and edx, 0xff
    jne loc_0044f3a3
    cmp byte ptr [eax], 0
    je loc_0044f3a3
    inc eax
    jmp loc_0044f380
loc_0044f3a3:
    mov dl, byte ptr [eax]
    inc dl
    and edx, 0xff
    mov dl, byte ptr [edx + d_0045b608]
    and dl, 2
    and edx, 0xff
    jne loc_0044f37d
    push 0xa
    push eax
    push edx
    push edx
    call sub_00457d84
    push eax
    call dword ptr [d_004a5e68]
    call sub_0044c98b
    mov esp, ebp
    pop ebp
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x00
sub_0044f3dc:
    push ebx
    mov ebx, edx
    call sub_0044f3e6
    pop ebx
    ret
sub_0044f3e6:
    push ebp
    mov ebp, esp
    push ecx
    push esi
    sub esp, 0x20
    mov ecx, eax
    mov eax, dword ptr [edx]
    mov dword ptr [ebp - 0x20], eax
    mov eax, dword ptr [edx + 4]
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebx]
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebx + 4]
    mov dword ptr [ebp - 0x14], eax
    test cl, 0x40
    je loc_0044f412
    mov esi, 1
    jmp loc_0044f44c
loc_0044f412:
    test cl, 0x80
    je loc_0044f41e
    mov esi, 2
    jmp loc_0044f44c
loc_0044f41e:
    test ch, 1
    je loc_0044f42a
    mov esi, 3
    jmp loc_0044f44c
loc_0044f42a:
    test ch, 8
    je loc_0044f436
    mov esi, 4
    jmp loc_0044f44c
loc_0044f436:
    test ch, 2
    je loc_0044f442
    mov esi, 6
    jmp loc_0044f44c
loc_0044f442:
    test ch, 4
    je loc_0044f44c
    mov esi, 5
loc_0044f44c:
    mov eax, ecx
    and eax, 0x1f
    mov eax, dword ptr [eax*4 + d_0045c8b4]
    mov dword ptr [ebp - 0x28], esi
    mov dword ptr [ebp - 0x24], eax
    test ch, 0x10
    je loc_0044f470
    fld qword ptr [d_0045b5e4]
    fchs
    fstp qword ptr [ebp - 0x10]
    jmp loc_0044f4b2
loc_0044f470:
    test ch, 0x20
    je loc_0044f47f
    xor ecx, ecx
    mov dword ptr [ebp - 0x10], ecx
    mov dword ptr [ebp - 0xc], ecx
    jmp loc_0044f4b2
loc_0044f47f:
    test ch, 0x40
    je loc_0044f493
    xor edx, edx
    mov ebx, 0x3ff00000
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 0xc], ebx
    jmp loc_0044f4b2
loc_0044f493:
    test ch, 0x80
    je loc_0044f4a7
    mov eax, dword ptr [d_0045b5e4]
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [d_0045b5e8]
    jmp loc_0044f4af
loc_0044f4a7:
    mov eax, dword ptr [ebx]
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebx + 4]
loc_0044f4af:
    mov dword ptr [ebp - 0xc], eax
loc_0044f4b2:
    lea eax, [ebp - 0x28]
    call sub_00450ee4
    lea esp, [ebp - 8]
    pop esi
    pop ecx
    pop ebp
    ret
ptr_0044f4c1:
    ret
sub_0044f4c2:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    cmp dword ptr [eax + 4], 0
    je loc_0044f4d5
    mov ecx, dword ptr [eax]
    push ecx
    call sub_00457d4e
loc_0044f4d5:
    mov dword ptr [ebx + 4], 0
    mov dword ptr [ebx + 8], 0
    mov dword ptr [ebx + 0xc], 0
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0044f4ee:
    mov eax, offset d_004a5e6c
    # jmp 0x44f575
    .byte 0xe9
    .long sub_0044f575 - . - 4
ptr_0044f4f8:
    mov eax, offset d_004a5e6c
    jmp sub_0044f5d7
ptr_0044f502:
    and eax, 0xf
    shl eax, 4
    add eax, offset d_004a5e8c
    jmp sub_0044f575
ptr_0044f50f:
    and eax, 0xf
    shl eax, 4
    add eax, offset d_004a5e8c
    jmp sub_0044f5d7
ptr_0044f51f:
    jmp sub_0044f160
ptr_0044f524:
    push edx
    mov edx, eax
    and eax, 0xf
    shl eax, 4
    add eax, offset d_004a5e8c
    call sub_0044f4c2
    mov eax, edx
    call sub_0044f275
    pop edx
    ret
ptr_0044f540:
    mov eax, offset d_004a5f8c
    jmp sub_0044f575
ptr_0044f547:
    mov eax, offset d_004a5f8c
    jmp sub_0044f5d7
ptr_0044f551:
    mov eax, offset d_004a5e7c
    jmp sub_0044f575
ptr_0044f558:
    mov eax, offset d_004a5e7c
    # jmp 0x44f5d7
    .byte 0xe9
    .long sub_0044f5d7 - . - 4
ptr_0044f562:
    mov eax, offset d_004a5fac
    jmp sub_0044f575
ptr_0044f569:
    mov eax, offset d_004a5fac
    jmp sub_0044f5d7
ptr_0044f570:
    mov eax, offset d_004a5fbc
sub_0044f575:
    push ebx
    push ecx
    push edx
    push esi
    push ebp
    mov ebx, eax
    call sub_00457d48
    mov edx, dword ptr [ebx + 8]
    mov esi, eax
    cmp eax, edx
    je loc_0044f5c9
    mov ecx, dword ptr [ebx + 4]
    test ecx, ecx
    jne loc_0044f5bc
    mov eax, offset d_004a5f9c
    call sub_0044f575
    cmp dword ptr [ebx + 4], 0
    jne loc_0044f5b2
    push ecx
    push ecx
    push ecx
    call sub_00457d42
    mov dword ptr [ebx + 4], 1
    mov dword ptr [ebx], eax
loc_0044f5b2:
    mov eax, offset d_004a5f9c
    call sub_0044f5d7
loc_0044f5bc:
    push -1
    mov ebp, dword ptr [ebx]
    push ebp
    call sub_00457d3c
    mov dword ptr [ebx + 8], esi
loc_0044f5c9:
    inc dword ptr [ebx + 0xc]
    pop ebp
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0044f5d2:
    mov eax, offset d_004a5fbc
sub_0044f5d7:
    push ebx
    push ecx
    push edx
    push esi
    mov edx, dword ptr [eax + 0xc]
    test edx, edx
    jbe loc_0044f5f7
    lea ebx, [edx - 1]
    mov dword ptr [eax + 0xc], ebx
    test ebx, ebx
    jne loc_0044f5f7
    mov esi, dword ptr [eax]
    push esi
    mov dword ptr [eax + 8], ebx
    call sub_00457d36
loc_0044f5f7:
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0044f5fc:
    push ecx
    push edx
    mov edx, dword ptr [d_0045c62c]
    push edx
    call sub_00457d30
    mov edx, eax
    test eax, eax
    jne loc_0044f617
    call sub_00450f13
    mov edx, eax
loc_0044f617:
    mov eax, edx
    pop edx
    pop ecx
    ret
sub_0044f61c:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    test eax, eax
    jne loc_0044f63f
    mov eax, 1
    mov edx, dword ptr [d_0045ca3c]
    call sub_0045101e
    mov ebx, eax
    test eax, eax
    je loc_0044f63f
    mov byte ptr [eax + 0x52], 1
loc_0044f63f:
    test ebx, ebx
    je loc_0044f655
    mov dword ptr [ebx + 0xc], 1
    call sub_00457d48
    mov dword ptr [ebx + 0xda], eax
loc_0044f655:
    mov eax, ebx
    pop edx
    pop ecx
    pop ebx
    ret
sub_0044f65b:
    push ecx
    push edx
    call sub_00457d2a
    mov dword ptr [d_0045c62c], eax
    mov ax, word ptr [d_0045c961]
    xor al, al
    and ah, 0x80
    and eax, 0xffff
    je loc_0044f695
loc_0044f679:
    mov edx, dword ptr [d_0045c62c]
    cmp edx, -1
    je loc_0044f695
    cmp edx, 2
    ja loc_0044f695
    call sub_00457d2a
    mov dword ptr [d_0045c62c], eax
    jmp loc_0044f679
loc_0044f695:
    cmp dword ptr [d_0045c62c], -1
    setne al
    and eax, 0xff
    pop edx
    pop ecx
    ret
sub_0044f6a7:
    push ebx
    push ecx
    push edx
    cmp dword ptr [d_0045c62c], -1
    jne loc_0044f6b9
loc_0044f6b3:
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
loc_0044f6b9:
    call sub_0044f61c
    mov ebx, eax
    test eax, eax
    je loc_0044f6f0
    mov edx, ebx
    mov eax, dword ptr [eax + 0xda]
    call sub_00450f4a
    test eax, eax
    jne loc_0044f6de
    mov eax, ebx
    call sub_00452b35
    jmp loc_0044f6b3
loc_0044f6de:
    push ebx
    mov ebx, dword ptr [d_0045c62c]
    push ebx
    call sub_00457d24
    mov eax, 1
loc_0044f6f0:
    pop edx
    pop ecx
    pop ebx
    ret
sub_0044f6f4:
    push ebx
    push ecx
    push edx
    push esi
    mov esi, eax
    mov edx, dword ptr [d_0045c62c]
    cmp edx, -1
    je loc_0044f73c
    push edx
    call sub_00457d30
    test eax, eax
    je loc_0044f73c
    mov ebx, dword ptr [eax + 0xde]
    mov eax, dword ptr [eax + 0xda]
    call sub_00450fab
    push 0
    mov ecx, dword ptr [d_0045c62c]
    push ecx
    call sub_00457d24
    test ebx, ebx
    je loc_0044f73c
    test esi, esi
    je loc_0044f73c
    push ebx
    call sub_00457d4e
loc_0044f73c:
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0044f741:
    mov eax, 1
    call sub_0044f6f4
sub_0044f74b:
    push ecx
    push edx
    mov edx, dword ptr [d_0045c62c]
    cmp edx, -1
    je loc_0044f768
    push edx
    call sub_00457d1e
    mov dword ptr [d_0045c62c], 0xffffffff
loc_0044f768:
    pop edx
    pop ecx
    ret
sub_0044f76b:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov edx, offset ptr_0044f502
    mov ebx, offset ptr_0044f50f
    mov ecx, offset ptr_0044f51f
    mov esi, offset ptr_0044f524
    mov edi, offset ptr_0044f4ee
    push 0
    mov ebp, offset ptr_0044f4f8
    mov eax, offset sub_0044f575
    push 0
    mov dword ptr [d_0045c634], edx
    mov dword ptr [d_0045c638], ebx
    mov dword ptr [d_0045c63c], ecx
    mov dword ptr [d_0045c640], esi
    mov dword ptr [d_0045c644], edi
    mov dword ptr [d_0045c648], ebp
    mov dword ptr [d_0045c914], eax
    mov edx, offset sub_0044f5d7
    mov ebx, offset sub_0044f4c2
    mov ecx, offset ptr_0044f540
    mov esi, offset ptr_0044f551
    mov edi, offset ptr_0044f547
    mov ebp, offset ptr_0044f558
    mov eax, offset ptr_0044f562
    push 0
    mov dword ptr [d_0045c918], edx
    mov dword ptr [d_0045c91c], ebx
    mov dword ptr [d_0045c64c], ecx
    mov dword ptr [d_0045c650], esi
    mov dword ptr [d_0045c654], edi
    mov dword ptr [d_0045c658], ebp
    mov dword ptr [d_0045c65c], eax
    mov edx, offset ptr_0044f569
    mov ebx, 1
    mov esi, offset ptr_0044f5d2
    mov edi, offset ptr_0044f741
    mov dword ptr [d_0045c660], edx
    call sub_00457d42
    mov ecx, offset ptr_0044f570
    mov edx, dword ptr [d_004a5e28]
    mov dword ptr [d_004a5f9c], eax
    mov dword ptr [d_004a5fa0], ebx
    mov dword ptr [d_0045c668], esi
    mov dword ptr [d_0045c66c], edi
    mov eax, dword ptr [edx + 0xda]
    mov dword ptr [d_0045c664], ecx
    call sub_00450f4a
    mov ebp, dword ptr [d_004a5e28]
    push ebp
    mov eax, dword ptr [d_0045c62c]
    push eax
    call sub_00457d24
    mov dword ptr [d_0045c630], offset ptr_0044f5fc
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0044f884:
    push ebx
    push edx
    mov eax, offset d_004a5f8c
    call dword ptr [d_0045c91c]
    mov eax, offset d_004a5e7c
    mov edx, offset d_004a5e8c
    call dword ptr [d_0045c91c]
    mov eax, offset d_004a5e6c
    lea ebx, [edx + 0x100]
    call dword ptr [d_0045c91c]
loc_0044f8b2:
    mov eax, edx
    add edx, 0x10
    call dword ptr [d_0045c91c]
    cmp edx, ebx
    jne loc_0044f8b2
    mov eax, offset d_004a5fbc
    call dword ptr [d_0045c91c]
    call sub_00451036
    mov eax, offset d_004a5fac
    call dword ptr [d_0045c91c]
    mov eax, offset d_004a5f9c
    call dword ptr [d_0045c91c]
    call sub_0044f74b
    pop edx
    pop ebx
    ret
ptr_0044f8ef:
    ret
sub_0044f8f0:
    push esi
    push edi
    push ebx
    push edx
    push es
    mov edx, eax
loc_0044f8f7:
    # mov esi, 0x45ce34
    .byte 0x3e,0xbe
    .long d_0045ce34
    # mov edi, 0x45ce64
    .byte 0x3e,0xbf
    .long d_0045ce64
    mov ebx, edi
    mov al, dl
loc_0044f907:
    cmp esi, edi
    jae loc_0044f91f
    cmp byte ptr [esi], 2
    je loc_0044f91a
    cmp byte ptr [esi + 1], al
    ja loc_0044f91a
    mov ebx, esi
    mov al, byte ptr [esi + 1]
loc_0044f91a:
    add esi, 6
    jmp loc_0044f907
loc_0044f91f:
    cmp ebx, edi
    je loc_0044f935
    mov eax, dword ptr [ebx + 2]
    or eax, eax
    je loc_0044f930
    push ds
    pop es
    push edx
    call eax
    pop edx
loc_0044f930:
    mov byte ptr [ebx], 2
    jmp loc_0044f8f7
loc_0044f935:
    pop es
    pop edx
    pop ebx
    pop edi
    pop esi
    ret
sub_0044f93b:
    push esi
    push edi
    push ebx
    push es
    mov dh, dl
    mov dl, al
loc_0044f943:
    # mov esi, 0x45ce64
    .byte 0x3e,0xbe
    .long d_0045ce64
    # mov edi, 0x45ce76
    .byte 0x3e,0xbf
    .long d_0045ce76
    mov ebx, edi
    mov al, dl
loc_0044f953:
    cmp esi, edi
    jae loc_0044f96b
    cmp byte ptr [esi], 2
    je loc_0044f966
    cmp al, byte ptr [esi + 1]
    ja loc_0044f966
    mov ebx, esi
    mov al, byte ptr [esi + 1]
loc_0044f966:
    add esi, 6
    jmp loc_0044f953
loc_0044f96b:
    cmp ebx, edi
    je loc_0044f985
    cmp al, dh
    ja loc_0044f980
    mov eax, dword ptr [ebx + 2]
    or eax, eax
    je loc_0044f980
    push ds
    pop es
    push edx
    call eax
    pop edx
loc_0044f980:
    mov byte ptr [ebx], 2
    jmp loc_0044f943
loc_0044f985:
    pop es
    pop ebx
    pop edi
    pop esi
    ret
sub_0044f98a:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, eax
    mov edi, edx
    mov ebp, dword ptr [d_004a5e64]
    mov ebp, dword ptr [ebp + eax*4]
    call dword ptr [d_0045c634]
    mov eax, esi
    call sub_00450ddd
    test al, 0x80
    je loc_0044f9d0
    push 2
    push 0
    push 0
    push ebp
    call sub_00457d18
    cmp eax, -1
    jne loc_0044f9d0
loc_0044f9c1:
    mov eax, esi
    call dword ptr [d_0045c638]
    call sub_0044eeb5
    jmp loc_0044fa28
loc_0044f9d0:
    cmp dword ptr [d_0045c994], 0
    je loc_0044f9fb
    mov eax, esi
    call dword ptr [d_0045c968]
    test eax, eax
    je loc_0044f9fb
    mov edx, edi
    call dword ptr [d_0045c994]
    mov ebx, eax
    mov eax, esi
    call dword ptr [d_0045c638]
    mov eax, ebx
    jmp loc_0044fa28
loc_0044f9fb:
    push 0
    lea eax, [esp + 4]
    push eax
    push ebx
    push edi
    push ebp
    call sub_00457da2
    test eax, eax
    je loc_0044f9c1
    cmp ebx, dword ptr [esp]
    je loc_0044fa1d
    mov eax, 0xc
    call sub_0044c8c3
loc_0044fa1d:
    mov eax, esi
    call dword ptr [d_0045c638]
    mov eax, dword ptr [esp]
loc_0044fa28:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    push edx
    mov edx, eax
    imul edx, edx, 0x37
    call sub_004500c0
    add edx, eax
loc_0044fa3d:
    call sub_004500c0
    cmp edx, eax
    jle loc_0044fa50
    xor eax, eax
    call dword ptr [d_0045c9c8]
    jmp loc_0044fa3d
loc_0044fa50:
    pop edx
    ret
    .byte 0x8b,0xc0
sub_0044fa54:
    push ebx
    mov ebx, eax
    call sub_004500c0
    add edx, eax
loc_0044fa5e:
    call sub_004500c0
    cmp edx, eax
    jle loc_0044fa75
    mov eax, ebx
    call dword ptr [d_0045c9c8]
    test eax, eax
    jge loc_0044fa5e
    pop ebx
    ret
loc_0044fa75:
    xor eax, eax
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00
    mov dword ptr [d_0045c9b0], eax
    mov dword ptr [d_0045c9b4], edx
    ret
    .byte 0x00,0x00,0x00,0x00
    test eax, eax
    jl loc_0044faa3
    cmp eax, 0x23
    jge loc_0044faa3
    mov eax, 1
    # jmp 0x45101e
    .byte 0xe9
    .long sub_0045101e - . - 4
loc_0044faa3:
    xor eax, eax
    ret
    .byte 0x8b,0xc0
    push ebx
    mov ebx, eax
    mov eax, edx
    test ebx, ebx
    jl loc_0044fabf
    cmp ebx, 0x23
    jge loc_0044fabf
    test edx, edx
    je loc_0044fabf
    call sub_00452b35
loc_0044fabf:
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0044fac4:
    push edx
    mov edx, eax
    mov eax, 1
    call sub_0045101e
    pop edx
    ret
    .byte 0x90
sub_0044fad4:
    # jmp 0x452b35
    .byte 0xe9
    .long sub_00452b35 - . - 4
    .byte 0x8d,0x40,0x00
    test eax, eax
    jl loc_0044faef
    cmp eax, 0x23
    jge loc_0044faef
    mov eax, 1
    # jmp 0x45101e
    .byte 0xe9
    .long sub_0045101e - . - 4
loc_0044faef:
    xor eax, eax
    ret
    .byte 0x8b,0xc0
    push ebx
    mov ebx, eax
    mov eax, edx
    test ebx, ebx
    jl loc_0044fb07
    cmp ebx, 0x23
    jge loc_0044fb07
    call sub_00452b35
loc_0044fb07:
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    test eax, eax
    jl loc_0044fb1f
    cmp eax, 0x23
    jge loc_0044fb1f
    mov eax, 1
    # jmp 0x45101e
    .byte 0xe9
    .long sub_0045101e - . - 4
loc_0044fb1f:
    xor eax, eax
    ret
    .byte 0x8b,0xc0
    push ebx
    mov ebx, eax
    mov eax, edx
    test ebx, ebx
    jl loc_0044fb37
    cmp ebx, 0x23
    jge loc_0044fb37
    call sub_00452b35
loc_0044fb37:
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00
ptr_0044fb40:
    mov dword ptr [eax + 0xc], 0xffffffe8
    mov eax, dword ptr [eax + 0xc]
    ret
    .byte 0x90
ptr_0044fb4c:
    mov dword ptr [eax + 0xc], 0xffffffe8
    mov eax, dword ptr [eax + 0xc]
    ret 4
    .byte 0x8d,0x40,0x00
ptr_0044fb5c:
    push ebx
    sub esp, 4
    mov ebx, eax
    mov dword ptr [esp], edx
    mov eax, offset d_0045b20c
    call dword ptr [esp]
    mov eax, offset d_0045b234
    call dword ptr [esp]
    mov dword ptr [ebx + 0xc], 0xffffffe8
    mov eax, dword ptr [ebx + 0xc]
    add esp, 4
    pop ebx
    ret
ptr_0044fb84:
    push ebx
    push edx
    mov ebx, eax
    mov eax, dword ptr [d_0045c9b8]
    mov edx, offset d_0045c9b8
    test eax, eax
    je loc_0044fba4
loc_0044fb96:
    cmp eax, ebx
    je loc_0044fba4
    lea edx, [eax + 4]
    mov eax, dword ptr [eax + 4]
    test eax, eax
    jne loc_0044fb96
loc_0044fba4:
    test eax, eax
    je loc_0044fbad
    mov eax, dword ptr [eax + 4]
    mov dword ptr [edx], eax
loc_0044fbad:
    mov eax, ebx
    call sub_0044fad4
    xor eax, eax
    pop edx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
ptr_0044fbbc:
    mov dword ptr [eax + 0xc], 0
    ret
ptr_0044fbc4:
    push edx
    cmp dword ptr [d_0045c9b8], 0
    je loc_0044fbe2
loc_0044fbce:
    mov edx, dword ptr [d_0045c9b8]
    mov eax, edx
    call dword ptr [edx + 0x25]
    cmp dword ptr [d_0045c9b8], 0
    jne loc_0044fbce
loc_0044fbe2:
    pop edx
    ret
sub_0044fbe4:
    push edx
    mov edx, eax
    cmp dword ptr [d_0045c9bc], 0
    jne loc_0044fc04
    mov eax, offset ptr_0044fbc4
    call sub_00444418
    mov dword ptr [d_0045c9bc], 1
loc_0044fc04:
    mov dword ptr [edx + 0x11], 0
    mov dword ptr [edx + 0x79], 0
    mov dword ptr [edx + 0x19], offset ptr_0044fb40
    mov dword ptr [edx + 0x1d], offset ptr_0044fb40
    mov dword ptr [edx + 0x21], offset ptr_0044fb40
    mov dword ptr [edx + 0x25], offset ptr_0044fb84
    mov dword ptr [edx + 0x29], offset ptr_0044fb4c
    mov dword ptr [edx + 0x2d], offset ptr_0044fb40
    mov dword ptr [edx + 0x35], offset ptr_0044fb40
    mov dword ptr [edx + 0x31], offset ptr_0044fb40
    mov dword ptr [edx + 0x39], offset ptr_0044fb40
    mov dword ptr [edx + 0x3d], offset ptr_0044fb40
    mov dword ptr [edx + 0x41], offset ptr_0044fb40
    mov dword ptr [edx + 0x45], offset ptr_0044fb40
    mov dword ptr [edx + 0x49], offset ptr_0044fb40
    mov dword ptr [edx + 0x4d], offset ptr_0044fb40
    mov dword ptr [edx + 0x51], offset ptr_0044fb40
    mov dword ptr [edx + 0x55], offset ptr_0044fb40
    mov dword ptr [edx + 0x59], offset ptr_0044fb40
    mov dword ptr [edx + 0x5d], offset ptr_0044fb5c
    mov dword ptr [edx + 0x61], offset ptr_0044fb40
    mov dword ptr [edx + 0x69], offset ptr_0044fb40
    mov dword ptr [edx + 0x65], offset ptr_0044fb40
    mov dword ptr [edx + 0x6d], offset ptr_0044fb40
    mov dword ptr [edx + 0x71], offset ptr_0044fb40
    mov eax, dword ptr [d_0045c9b8]
    mov dword ptr [edx + 0x75], offset ptr_0044fbbc
    mov dword ptr [d_0045c9b8], edx
    mov dword ptr [edx + 4], eax
    pop edx
    ret
    .byte 0x8b,0xc0
sub_0044fccc:
    push ebx
    push edx
    mov edx, eax
    mov eax, dword ptr [d_0045c9b8]
    mov ebx, offset d_0045c9b8
    test eax, eax
    je loc_0044fcec
loc_0044fcde:
    cmp eax, edx
    je loc_0044fcec
    lea ebx, [eax + 4]
    mov eax, dword ptr [eax + 4]
    test eax, eax
    jne loc_0044fcde
loc_0044fcec:
    test eax, eax
    je loc_0044fcf5
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebx], eax
loc_0044fcf5:
    mov eax, edx
    call sub_0044fad4
    pop edx
    pop ebx
    ret
    .byte 0x90
sub_0044fd00:
    mov eax, offset d_004a5fd0
    call sub_0044fbe4
    mov dword ptr [d_004a5fd8], 0xffffffff
    mov dword ptr [d_004a5fd0], 0
    mov byte ptr [d_004a5fe0], 0xff
    mov dword ptr [d_004a5fdc], 0xfffffffb
    mov eax, offset d_004a5fd0
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
ptr_0044fd40:
    push ebx
    push ecx
    push esi
    push ebp
    mov ebp, esp
    sub esp, 0x70
    mov esi, eax
    mov dword ptr [ebp - 4], edx
    mov ebx, dword ptr [eax]
    mov eax, offset d_0045b238
    call dword ptr [ebp - 4]
    movzx eax, byte ptr [ebx + 0x1b]
    push eax
    movzx eax, byte ptr [ebx + 0x1a]
    push eax
    push dword ptr [ebx + 0xc]
    push offset d_0045b23c
    lea eax, [ebp - 0x70]
    push eax
    call dword ptr cs:[__imp__wsprintfA]
    add esp, 0x14
    lea eax, [ebp - 0x70]
    call dword ptr [ebp - 4]
    mov eax, dword ptr [ebx + 0x10]
    shl eax, 0x12
    shr eax, 0x1e
    push eax
    mov eax, dword ptr [ebx + 0x10]
    and eax, 1
    push eax
    movzx eax, byte ptr [ebx + 0x1c]
    push eax
    push offset d_0045b284
    lea eax, [ebp - 0x70]
    push eax
    call dword ptr cs:[__imp__wsprintfA]
    add esp, 0x14
    lea eax, [ebp - 0x70]
    call dword ptr [ebp - 4]
    mov eax, dword ptr [ebx + 0x10]
    shl eax, 0x16
    shr eax, 0x1f
    push eax
    mov eax, dword ptr [ebx + 0x10]
    shl eax, 0x17
    shr eax, 0x1f
    push eax
    mov eax, dword ptr [ebx + 0x10]
    shl eax, 0x1a
    shr eax, 0x1e
    push eax
    mov eax, dword ptr [ebx + 0x10]
    shl eax, 0x1c
    shr eax, 0x1f
    push eax
    mov eax, dword ptr [ebx + 0x10]
    shl eax, 0x1d
    shr eax, 0x1f
    push eax
    mov eax, dword ptr [ebx + 0x10]
    shl eax, 0x1e
    shr eax, 0x1f
    push eax
    push offset d_0045b2b4
    lea eax, [ebp - 0x70]
    push eax
    call dword ptr cs:[__imp__wsprintfA]
    add esp, 0x20
    lea eax, [ebp - 0x70]
    call dword ptr [ebp - 4]
    movzx eax, byte ptr [ebx + 0x1e]
    push eax
    movzx eax, byte ptr [ebx + 0x1d]
    push eax
    mov eax, dword ptr [ebx + 0x10]
    shl eax, 0x12
    shr eax, 0x1e
    push eax
    mov eax, dword ptr [ebx + 0x10]
    shl eax, 0x1a
    shr eax, 0x1e
    push eax
    mov eax, dword ptr [ebx + 0x10]
    shl eax, 0x14
    shr eax, 0x1f
    push eax
    push offset d_0045b308
    lea eax, [ebp - 0x70]
    push eax
    call dword ptr cs:[__imp__wsprintfA]
    add esp, 0x1c
    lea eax, [ebp - 0x70]
    call dword ptr [ebp - 4]
    movzx eax, byte ptr [ebx + 0x21]
    push eax
    movzx eax, byte ptr [ebx + 0x20]
    push eax
    movzx eax, word ptr [ebx + 0x18]
    push eax
    movzx eax, word ptr [ebx + 0x16]
    push eax
    push offset d_0045b354
    lea eax, [ebp - 0x70]
    push eax
    call dword ptr cs:[__imp__wsprintfA]
    add esp, 0x18
    lea eax, [ebp - 0x70]
    call dword ptr [ebp - 4]
    mov eax, esi
    call dword ptr [esi + 0x69]
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], eax
    lea eax, [ebp - 0x1c]
    push eax
    lea eax, [ebp - 0x10]
    push eax
    push dword ptr [ebx + 0x48]
    call dword ptr cs:[__imp__ClearCommError]
    mov eax, dword ptr [ebp - 0x10]
    or dword ptr [ebx + 0x24], eax
    test byte ptr [ebp - 0xc], 4
    setne al
    movzx eax, al
    push eax
    test byte ptr [ebp - 8], 2
    setne al
    movzx eax, al
    push eax
    test byte ptr [ebp - 8], 8
    setne al
    movzx eax, al
    push eax
    test byte ptr [ebp - 8], 0x10
    setne al
    movzx eax, al
    push eax
    mov eax, dword ptr [ebx + 4]
    sub eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, dword ptr [ebx]
    push dword ptr [ebp - 0x14]
    sub eax, dword ptr [ebp - 0x18]
    push eax
    push dword ptr [ebp - 0x18]
    push offset d_0045b38c
    lea eax, [ebp - 0x70]
    push eax
    call dword ptr cs:[__imp__wsprintfA]
    add esp, 0x28
    lea eax, [ebp - 0x70]
    call dword ptr [ebp - 4]
    test byte ptr [ebx + 0x24], 2
    setne al
    movzx eax, al
    push eax
    test byte ptr [ebx + 0x25], 0x80
    setne al
    movzx eax, al
    push eax
    test byte ptr [ebx + 0x24], 8
    setne al
    movzx eax, al
    push eax
    test byte ptr [ebx + 0x24], 0x10
    setne al
    movzx eax, al
    push eax
    push offset d_0045b3d8
    lea eax, [ebp - 0x70]
    push eax
    call dword ptr cs:[__imp__wsprintfA]
    add esp, 0x18
    lea eax, [ebp - 0x70]
    call dword ptr [ebp - 4]
    mov eax, esi
    call dword ptr [esi + 0x65]
    mov edx, eax
    test al, 0x80
    setne al
    movzx eax, al
    push eax
    test dl, 0x40
    setne al
    movzx eax, al
    push eax
    test dl, 0x20
    setne al
    movzx eax, al
    push eax
    test dl, 0x10
    setne al
    movzx eax, al
    push eax
    test byte ptr [ebx + 0x25], 1
    setne al
    movzx eax, al
    push eax
    test byte ptr [ebx + 0x24], 4
    setne al
    movzx eax, al
    push eax
    test byte ptr [ebx + 0x24], 1
    setne al
    movzx eax, al
    push eax
    push offset d_0045b40c
    lea eax, [ebp - 0x70]
    push eax
    call dword ptr cs:[__imp__wsprintfA]
    add esp, 0x24
    lea eax, [ebp - 0x70]
    call dword ptr [ebp - 4]
    push dword ptr [ebx + 0x2c]
    push offset d_0045b450
    lea eax, [ebp - 0x70]
    push eax
    call dword ptr cs:[__imp__wsprintfA]
    add esp, 0xc
    lea eax, [ebp - 0x70]
    call dword ptr [ebp - 4]
    xor eax, eax
    leave
    pop esi
    pop ecx
    pop ebx
    ret
ptr_0044ffbb:
    .byte 0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x61,0x62,0x63,0x64,0x65,0x66
    .byte 0x67,0x68,0x69,0x6a,0x6b,0x6c,0x6d,0x6e,0x6f,0x70,0x71,0x72,0x73,0x74,0x75,0x76
    .byte 0x77,0x78,0x79,0x7a,0x00
sub_0044ffe0:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x28
    mov ebp, edx
    mov edi, ebx
    mov esi, edx
    xor dl, dl
    lea ecx, [esp + 1]
    mov byte ptr [esp], dl
loc_0044fff6:
    lea ebx, [esp + 0x24]
    mov dword ptr [esp + 0x24], edi
    xor edx, edx
    div dword ptr [ebx]
    mov dword ptr [ebx], eax
    mov al, byte ptr cs:[edx + ptr_0044ffbb]
    mov byte ptr [ecx], al
    mov eax, dword ptr [esp + 0x24]
    inc ecx
    test eax, eax
    jne loc_0044fff6
loc_00450016:
    dec ecx
    mov al, byte ptr [ecx]
    mov byte ptr [esi], al
    inc esi
    test al, al
    jne loc_00450016
    mov eax, ebp
    add esp, 0x28
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0045002a:
    push ecx
    mov ecx, edx
    cmp ebx, 0xa
    jne loc_0045003c
    test eax, eax
    jge loc_0045003c
    neg eax
    mov byte ptr [edx], 0x2d
    inc edx
loc_0045003c:
    call sub_0044ffe0
    mov eax, ecx
    pop ecx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_00450050:
    push ecx
    push esi
    push edi
    push ebp
    mov esi, eax
    mov ebp, ebx
    mov dword ptr [eax + 0x15], 0
    cmp ebx, -2
    jl loc_0045006c
    cmp ebx, 0xff
    jle loc_00450075
loc_0045006c:
    mov dword ptr [esi + 0xc], 0xfffffff9
    jmp loc_004500af
loc_00450075:
    mov edi, edx
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov ebx, ecx
    mov eax, esi
    call dword ptr [esi + 0x55]
    cmp dword ptr [esi + 0xc], 0
    jl loc_004500af
    test ebp, ebp
    jl loc_00450096
    mov edx, ebp
    jmp loc_004500aa
loc_00450096:
    cmp ebp, -2
    jne loc_004500af
    mov edx, 0xd
    mov eax, esi
    call dword ptr [esi + 0x21]
    mov edx, 0xa
loc_004500aa:
    mov eax, esi
    call dword ptr [esi + 0x21]
loc_004500af:
    mov eax, dword ptr [esi + 0xc]
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_004500c0:
    push ecx
    push edx
    call dword ptr cs:[__imp__GetTickCount]
    pop edx
    pop ecx
    ret
    .byte 0x00,0x00,0x00,0x00
ptr_004500d0:
    xor eax, eax
    ret
    .byte 0x90
    mov dword ptr [d_0045c9c4], eax
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00
ptr_004500e0:
    push ecx
    push edx
    sub esp, 0x1c
loc_004500e5:
    push 1
    push 0
    push 0
    push 0
    lea eax, [esp + 0x10]
    push eax
    call dword ptr cs:[__imp__PeekMessageA]
    test eax, eax
    je loc_00450113
    mov eax, esp
    push eax
    call dword ptr cs:[__imp__TranslateMessage]
    mov eax, esp
    push eax
    call dword ptr cs:[__imp__DispatchMessageA]
    jmp loc_004500e5
loc_00450113:
    add esp, 0x1c
    pop edx
    pop ecx
    ret
    .byte 0x8d,0x40,0x00
    mov dword ptr [d_0045c9c8], eax
    ret
sub_00450122:
    cmp byte ptr [d_0045c9cc], 0
    je loc_00450145
    and edx, 0xffff
    push edx
    push eax
    int3
    jmp loc_0045013c
    push edi
    push esi
    dec ecx
    inc esp
    inc ebp
    dec edi
loc_0045013c:
    mov eax, 1
    add esp, 8
    ret
loc_00450145:
    xor eax, eax
    ret
sub_00450148:
    push esi
    push edi
    push es
    push ebp
    sub esp, 0x124
    mov esi, ebx
    mov dword ptr [esp + 0x11c], ecx
    xor bl, bl
    mov dword ptr [esp + 0x100], eax
    mov byte ptr [esp + 0x120], bl
    mov byte ptr [esp + 0x114], bl
    xor ebx, ebx
    mov edi, edx
    mov dword ptr [esp + 0x110], ebx
    mov ebp, 4
    jmp loc_0045021a
loc_00450187:
    lea ebx, [esp + 0x100]
    mov edx, esi
    call sub_004504e7
    mov edi, eax
    mov al, byte ptr [eax]
    inc edi
    mov byte ptr [esp + 0x115], al
    test al, al
    je loc_004504d5
    xor eax, eax
    mov al, byte ptr [esp + 0x115]
    cmp eax, 0x6e
    jne loc_004502e4
    mov al, byte ptr [esp + 0x114]
    xor edx, edx
    and al, 0x20
    mov dl, al
    mov al, byte ptr [esp + 0x114]
    and al, 0x40
    mov ah, byte ptr [esp + 0x114]
    and ah, 0x80
    test edx, edx
    # je 0x450251
    .byte 0x0f,0x84
    .long loc_00450251 - . - 4
    xor edx, edx
    mov dl, ah
    test edx, edx
    je loc_00450201
    mov ecx, dword ptr [esi]
    add ecx, 8
    mov dword ptr [esi], ecx
    # les edx, ptr [ecx - 8]
    .byte 0xc4,0x51,0xf8
loc_004501f5:
    mov eax, dword ptr [esp + 0x110]
    mov dword ptr es:[edx], eax
    jmp loc_0045021a
loc_00450201:
    and eax, 0xff
    je loc_00450246
    mov ebx, dword ptr [esi]
    add ebx, ebp
    mov dword ptr [esi], ebx
    mov edx, dword ptr [ebx - 4]
loc_00450211:
    mov eax, dword ptr [esp + 0x110]
    mov dword ptr [edx], eax
loc_0045021a:
    mov cl, byte ptr [edi]
    test cl, cl
    je loc_004504d5
    xor edx, edx
    mov dl, cl
    lea eax, [edi + 1]
    cmp edx, 0x25
    je loc_00450187
    mov edi, eax
    lea eax, [esp + 0x100]
    call dword ptr [esp + 0x11c]
    jmp loc_0045021a
loc_00450246:
    mov edx, dword ptr [esi]
    add edx, ebp
    mov dword ptr [esi], edx
    mov edx, dword ptr [edx - 4]
    jmp loc_00450211
loc_00450251:
    mov dl, byte ptr [esp + 0x114]
    and dl, 0x10
    and edx, 0xff
    je loc_004502ac
    xor edx, edx
    mov dl, ah
    test edx, edx
    je loc_00450282
    mov eax, dword ptr [esi]
    add eax, 8
    mov dword ptr [esi], eax
    # les edx, ptr [eax - 8]
    .byte 0xc4,0x50,0xf8
    mov eax, dword ptr [esp + 0x110]
    # mov word ptr es:[edx], ax
    .byte 0x66,0x26,0x89,0x02
    jmp loc_0045021a
loc_00450282:
    and eax, 0xff
    je loc_004502a1
    mov ecx, dword ptr [esi]
    add ecx, ebp
    mov dword ptr [esi], ecx
    mov edx, dword ptr [ecx - 4]
loc_00450292:
    mov eax, dword ptr [esp + 0x110]
    mov word ptr [edx], ax
    jmp loc_0045021a
loc_004502a1:
    mov ebx, dword ptr [esi]
    add ebx, ebp
    mov dword ptr [esi], ebx
    mov edx, dword ptr [ebx - 4]
    jmp loc_00450292
loc_004502ac:
    mov dl, ah
    test edx, edx
    je loc_004502c1
    mov edx, dword ptr [esi]
    add edx, 8
    mov dword ptr [esi], edx
    # les edx, ptr [edx - 8]
    .byte 0xc4,0x52,0xf8
    jmp loc_004501f5
loc_004502c1:
    and eax, 0xff
    je loc_004502d6
    mov eax, dword ptr [esi]
    add eax, ebp
    mov dword ptr [esi], eax
    mov edx, dword ptr [eax - 4]
    jmp loc_00450211
loc_004502d6:
    mov ecx, dword ptr [esi]
    add ecx, ebp
    mov dword ptr [esi], ecx
    mov edx, dword ptr [ecx - 4]
    jmp loc_00450211
loc_004502e4:
    lea ecx, [esp + 0x120]
    lea ebx, [esp + 0x100]
    mov eax, esp
    mov edx, esi
    call sub_00450825
    mov ebx, eax
    mov al, byte ptr [esp + 0x114]
    mov es, edx
    and al, 8
    and eax, 0xff
    jne loc_00450347
    mov al, byte ptr [esp + 0x116]
    cmp eax, 0x20
    jne loc_00450347
loc_0045031b:
    mov eax, dword ptr [esp + 0x104]
    dec eax
    mov dword ptr [esp + 0x104], eax
    test eax, eax
    jl loc_00450347
    xor edx, edx
    lea eax, [esp + 0x100]
    mov dl, byte ptr [esp + 0x116]
    call dword ptr [esp + 0x11c]
    jmp loc_0045031b
loc_00450347:
    lea ecx, [esp + 0x117]
loc_0045034e:
    mov al, byte ptr [ecx]
    test al, al
    je loc_00450369
    xor edx, edx
    mov dl, al
    lea eax, [esp + 0x100]
    inc ecx
    call dword ptr [esp + 0x11c]
    jmp loc_0045034e
loc_00450369:
    mov eax, dword ptr [esp + 0x10c]
    lea ecx, [eax - 1]
    mov dword ptr [esp + 0x10c], ecx
    test eax, eax
    je loc_00450393
    mov edx, 0x30
    lea eax, [esp + 0x100]
    call dword ptr [esp + 0x11c]
    jmp loc_00450369
loc_00450393:
    mov al, byte ptr [esp + 0x114]
    and al, 8
    and eax, 0xff
    jne loc_004503db
    mov al, byte ptr [esp + 0x116]
    cmp eax, 0x20
    je loc_004503db
loc_004503af:
    mov eax, dword ptr [esp + 0x104]
    dec eax
    mov dword ptr [esp + 0x104], eax
    test eax, eax
    jl loc_004503db
    xor edx, edx
    lea eax, [esp + 0x100]
    mov dl, byte ptr [esp + 0x116]
    call dword ptr [esp + 0x11c]
    jmp loc_004503af
loc_004503db:
    xor eax, eax
    mov al, byte ptr [esp + 0x115]
    cmp eax, 0x73
    je loc_004503ee
    cmp eax, 0x53
    jne loc_0045045a
loc_004503ee:
    mov al, byte ptr [esp + 0x114]
    and al, 0x20
    and eax, 0xff
    je loc_0045042f
loc_004503fe:
    mov eax, dword ptr [esp + 0x108]
    lea ecx, [eax - 1]
    mov dword ptr [esp + 0x108], ecx
    test eax, eax
    # je 0x450485
    .byte 0x0f,0x84
    .long loc_00450485 - . - 4
    xor edx, edx
    lea eax, [esp + 0x100]
    mov dl, byte ptr es:[ebx]
    call dword ptr [esp + 0x11c]
    add ebx, 2
    jmp loc_004503fe
loc_0045042f:
    mov eax, dword ptr [esp + 0x108]
    lea edx, [eax - 1]
    mov dword ptr [esp + 0x108], edx
    test eax, eax
    je loc_00450485
    xor edx, edx
    lea eax, [esp + 0x100]
    mov dl, byte ptr es:[ebx]
    call dword ptr [esp + 0x11c]
    inc ebx
    jmp loc_0045042f
loc_0045045a:
    mov eax, dword ptr [esp + 0x108]
    lea ecx, [eax - 1]
    mov dword ptr [esp + 0x108], ecx
    test eax, eax
    je loc_00450485
    xor edx, edx
    lea eax, [esp + 0x100]
    mov dl, byte ptr es:[ebx]
    call dword ptr [esp + 0x11c]
    inc ebx
    jmp loc_0045045a
loc_00450485:
    mov al, byte ptr [esp + 0x114]
    and al, 8
    and eax, 0xff
    je loc_0045021a
    cmp dword ptr [esp + 0x104], 0
    jle loc_0045021a
loc_004504a7:
    mov eax, dword ptr [esp + 0x104]
    lea edx, [eax - 1]
    mov dword ptr [esp + 0x104], edx
    test eax, eax
    je loc_0045021a
    mov edx, 0x20
    lea eax, [esp + 0x100]
    call dword ptr [esp + 0x11c]
    jmp loc_004504a7
loc_004504d5:
    mov eax, dword ptr [esp + 0x110]
    add esp, 0x124
    pop ebp
    pop es
    pop edi
    pop esi
    ret
sub_004504e7:
    push ecx
    push esi
    push edi
    mov esi, edx
    mov byte ptr [ebx + 0x17], 0
    mov edx, ebx
    mov byte ptr [ebx + 0x16], 0x20
    call sub_00450625
    mov dword ptr [ebx + 4], 0
    mov dl, byte ptr [eax]
    and edx, 0xff
    cmp edx, 0x30
    jl loc_00450535
    cmp edx, 0x39
    jg loc_00450535
loc_00450514:
    imul ecx, dword ptr [ebx + 4], 0xa
    xor edx, edx
    mov dl, byte ptr [eax]
    sub edx, 0x30
    inc eax
    add ecx, edx
    xor edx, edx
    mov dword ptr [ebx + 4], ecx
    mov dl, byte ptr [eax]
    cmp edx, 0x30
    jl loc_00450560
    cmp edx, 0x39
    jle loc_00450514
    jmp loc_00450560
loc_00450535:
    xor edx, edx
    mov dl, byte ptr [eax]
    cmp edx, 0x2a
    jne loc_00450560
    mov edx, dword ptr [esi]
    add edx, 4
    mov dword ptr [esi], edx
    mov edx, dword ptr [edx - 4]
    mov dword ptr [ebx + 4], edx
    test edx, edx
    jge loc_0045055f
    mov edi, edx
    mov dl, byte ptr [ebx + 0x14]
    neg edi
    or dl, 8
    mov dword ptr [ebx + 4], edi
    mov byte ptr [ebx + 0x14], dl
loc_0045055f:
    inc eax
loc_00450560:
    mov dword ptr [ebx + 8], 0xffffffff
    xor edx, edx
    mov dl, byte ptr [eax]
    cmp edx, 0x2e
    jne loc_004505b9
    inc eax
    mov dword ptr [ebx + 8], 0
    xor edx, edx
    mov dl, byte ptr [eax]
    cmp edx, 0x2a
    jne loc_0045059c
    mov edx, dword ptr [esi]
    add edx, 4
    mov dword ptr [esi], edx
    mov edx, dword ptr [edx - 4]
    mov dword ptr [ebx + 8], edx
    test edx, edx
    jge loc_00450599
    mov dword ptr [ebx + 8], 0xffffffff
loc_00450599:
    inc eax
    jmp loc_004505b9
loc_0045059c:
    xor edx, edx
    mov dl, byte ptr [eax]
    cmp edx, 0x30
    jl loc_004505b9
    cmp edx, 0x39
    jg loc_004505b9
    imul ecx, dword ptr [ebx + 8], 0xa
    sub edx, 0x30
    add ecx, edx
    inc eax
    mov dword ptr [ebx + 8], ecx
    jmp loc_0045059c
loc_004505b9:
    mov dl, byte ptr [eax]
    lea ecx, [eax + 1]
    cmp dl, 0x4e
    jb loc_004505de
    jbe loc_0045061b
    cmp dl, 0x6c
    jb loc_004505d5
    jbe loc_004505ee
    cmp dl, 0x77
    je loc_004505ee
    pop edi
    pop esi
    pop ecx
    ret
loc_004505d5:
    cmp dl, 0x68
    je loc_004505fc
    pop edi
    pop esi
    pop ecx
    ret
loc_004505de:
    cmp dl, 0x46
    jb loc_00450621
    jbe loc_00450611
    cmp dl, 0x4c
    je loc_00450602
    pop edi
    pop esi
    pop ecx
    ret
loc_004505ee:
    mov dh, byte ptr [ebx + 0x14]
    or dh, 0x20
    inc eax
loc_004505f5:
    mov byte ptr [ebx + 0x14], dh
    pop edi
    pop esi
    pop ecx
    ret
loc_004505fc:
    or byte ptr [ebx + 0x14], 0x10
    jmp loc_0045061f
loc_00450602:
    mov dl, byte ptr [ebx + 0x14]
    or dl, 0x40
    mov eax, ecx
    mov byte ptr [ebx + 0x14], dl
    pop edi
    pop esi
    pop ecx
    ret
loc_00450611:
    mov dh, byte ptr [ebx + 0x14]
    or dh, 0x80
    mov eax, ecx
    jmp loc_004505f5
loc_0045061b:
    or byte ptr [ebx + 0x14], 0x40
loc_0045061f:
    mov eax, ecx
loc_00450621:
    pop edi
    pop esi
    pop ecx
    ret
sub_00450625:
    push ebx
    push ecx
    mov ebx, eax
    mov byte ptr [edx + 0x14], 0
loc_0045062d:
    xor eax, eax
    mov al, byte ptr [ebx]
    cmp eax, 0x2d
    jne loc_0045063c
    or byte ptr [edx + 0x14], 8
    jmp loc_0045067c
loc_0045063c:
    cmp eax, 0x23
    jne loc_00450647
    or byte ptr [edx + 0x14], 1
    jmp loc_0045067c
loc_00450647:
    cmp eax, 0x2b
    jne loc_0045065c
    mov cl, byte ptr [edx + 0x14]
    or cl, 4
    mov ch, cl
    and ch, 0xfd
    mov byte ptr [edx + 0x14], ch
    jmp loc_0045067c
loc_0045065c:
    cmp eax, 0x20
    jne loc_00450673
    mov al, byte ptr [edx + 0x14]
    and al, 4
    and eax, 0xff
    jne loc_0045067c
    or byte ptr [edx + 0x14], 2
    jmp loc_0045067c
loc_00450673:
    cmp eax, 0x30
    jne loc_0045067f
    mov byte ptr [edx + 0x16], 0x30
loc_0045067c:
    inc ebx
    jmp loc_0045062d
loc_0045067f:
    mov eax, ebx
    pop ecx
    pop ebx
    ret
sub_00450684:
    push ecx
    push esi
    push edi
    push es
    mov ecx, edx
    mov edi, ebx
    mov edx, eax
    mov es, ecx
    xor eax, eax
loc_00450692:
    mov esi, edx
    mov bl, byte ptr es:[esi]
    inc edx
    test bl, bl
    je loc_004506a3
    cmp eax, edi
    je loc_004506a3
    inc eax
    jmp loc_00450692
loc_004506a3:
    pop es
    pop edi
    pop esi
    pop ecx
    ret
sub_004506a8:
    push ecx
    push esi
    push edi
    push es
    mov ecx, eax
    mov esi, ebx
    mov ebx, ecx
    mov es, edx
    xor eax, eax
loc_004506b6:
    mov ecx, ebx
    # mov di, word ptr es:[ecx]
    .byte 0x66,0x26,0x8b,0x39
    add ebx, 2
    test di, di
    je loc_004506a3
    cmp eax, esi
    je loc_004506a3
    inc eax
    jmp loc_004506b6
sub_004506cb:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov ebp, edx
    mov dword ptr [esp], ebx
    mov ebx, 0x10
    mov edi, ebp
    call sub_0045002a
    push es
    mov eax, ds
    mov es, eax
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    pop es
    mov eax, dword ptr [esp]
    mov esi, ebp
    dec eax
    lea edx, [ecx + ebp]
    lea ebx, [eax + ebp]
    jmp loc_00450708
loc_00450701:
    dec edx
    mov cl, byte ptr [edx]
    dec eax
    mov byte ptr [ebx], cl
    dec ebx
loc_00450708:
    cmp edx, esi
    jne loc_00450701
    lea edx, [eax + ebp]
loc_0045070f:
    test eax, eax
    jl loc_0045071a
    dec eax
    mov byte ptr [edx], 0x30
    dec edx
    jmp loc_0045070f
loc_0045071a:
    add ebp, dword ptr [esp]
    mov byte ptr [ebp], 0
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00450729:
    push ecx
    push esi
    push edi
    sub esp, 4
    mov ecx, eax
    mov esi, ebx
    mov dword ptr [esp], edx
    test edx, edx
    jge loc_00450745
    neg edx
    lea ecx, [eax + 1]
    mov byte ptr [eax], 0x2d
    mov dword ptr [esp], edx
loc_00450745:
    cmp dword ptr [esi + 8], -1
    jne loc_00450752
    mov dword ptr [esi + 8], 4
loc_00450752:
    mov ebx, 0xa
    xor eax, eax
    mov edx, ecx
    mov ax, word ptr [esp + 2]
    call sub_0045002a
    mov ebx, ecx
loc_00450767:
    mov ah, byte ptr [ecx]
    lea edx, [ecx + 1]
    test ah, ah
    je loc_00450774
    mov ecx, edx
    jmp loc_00450767
loc_00450774:
    cmp dword ptr [esi + 8], 0
    je loc_004507a6
    mov byte ptr [ecx], 0x2e
    xor eax, eax
    mov ecx, edx
    jmp loc_0045079e
loc_00450783:
    xor edx, edx
    mov word ptr [esp + 2], dx
    mov edi, dword ptr [esp]
    imul edx, edi, 0xa
    mov dword ptr [esp], edx
    mov dl, byte ptr [esp + 2]
    add dl, 0x30
    inc eax
    mov byte ptr [ecx], dl
    inc ecx
loc_0045079e:
    cmp eax, dword ptr [esi + 8]
    jl loc_00450783
    mov byte ptr [ecx], 0
loc_004507a6:
    mov eax, dword ptr [esp]
    xor al, al
    and ah, 0x80
    and eax, 0xffff
    # je 0x450817
    .byte 0x0f,0x84
    .long loc_00450817 - . - 4
loc_004507b9:
    cmp ecx, ebx
    jne loc_004507f6
    lea ecx, [ebx + 1]
    mov byte ptr [ebx], 0x31
loc_004507c3:
    xor edx, edx
    mov dl, byte ptr [ecx]
    lea eax, [ecx + 1]
    cmp edx, 0x30
    jne loc_004507d3
    mov ecx, eax
    jmp loc_004507c3
loc_004507d3:
    cmp edx, 0x2e
    jne loc_004507ed
    mov byte ptr [ecx], 0x30
    lea ecx, [eax + 1]
    mov byte ptr [eax], 0x2e
loc_004507e1:
    xor eax, eax
    mov al, byte ptr [ecx]
    cmp eax, 0x30
    jne loc_004507ed
    inc ecx
    jmp loc_004507e1
loc_004507ed:
    mov byte ptr [ecx], 0x30
    inc ecx
    mov byte ptr [ecx], 0
    jmp loc_00450817
loc_004507f6:
    dec ecx
    xor eax, eax
    mov al, byte ptr [ecx]
    cmp eax, 0x2e
    jne loc_00450801
    dec ecx
loc_00450801:
    xor eax, eax
    mov al, byte ptr [ecx]
    cmp eax, 0x39
    je loc_00450812
    mov dl, al
    inc dl
    mov byte ptr [ecx], dl
    jmp loc_00450817
loc_00450812:
    mov byte ptr [ecx], 0x30
    jmp loc_004507b9
loc_00450817:
    add esp, 4
    pop edi
    pop esi
    pop ecx
    ret
sub_0045081e:
    call dword ptr [d_0045c9d0]
    ret
sub_00450825:
    push esi
    push edi
    push es
    push ebp
    sub esp, 0xc
    mov edi, eax
    mov esi, ebx
    mov dword ptr [esp + 4], ecx
    mov eax, edx
    mov dword ptr [esp], 1
    mov edx, ds
    mov ecx, edi
    mov es, edx
    mov dl, byte ptr [ebx + 0x15]
    mov dword ptr [ebx + 0xc], 0
    cmp dl, 0x69
    jb loc_0045086e
    # jbe 0x4508bf
    .byte 0x0f,0x86
    .long loc_004508bf - . - 4
    cmp dl, 0x75
    jb loc_00450869
    jbe loc_0045087c
    cmp dl, 0x78
loc_00450862:
    je loc_0045087c
    # jmp 0x4508c9
    .byte 0xe9
    .long loc_004508c9 - . - 4
loc_00450869:
    cmp dl, 0x6f
    jmp loc_00450862
loc_0045086e:
    cmp dl, 0x58
    jb loc_004508c9
    jbe loc_0045087c
    cmp dl, 0x64
    je loc_004508bf
    jmp loc_004508c9
loc_0045087c:
    mov dl, byte ptr [esi + 0x14]
    and dl, 0x20
    and edx, 0xff
    je loc_00450896
    mov edx, dword ptr [eax]
    add edx, 4
    mov dword ptr [eax], edx
    mov ebp, dword ptr [edx - 4]
    jmp loc_004508bb
loc_00450896:
    mov dl, byte ptr [esi + 0x14]
    and dl, 0x10
    and edx, 0xff
    je loc_004508b1
    mov ebp, dword ptr [eax]
    add ebp, 4
    mov dword ptr [eax], ebp
    movzx ebp, word ptr [ebp - 4]
    jmp loc_004508bb
loc_004508b1:
    mov ebx, dword ptr [eax]
    add ebx, 4
    mov dword ptr [eax], ebx
    mov ebp, dword ptr [ebx - 4]
loc_004508bb:
    and byte ptr [esi + 0x14], 0xf9
loc_004508bf:
    cmp dword ptr [esi + 8], -1
    je loc_004508c9
    mov byte ptr [esi + 0x16], 0x20
loc_004508c9:
    mov dl, byte ptr [esi + 0x15]
    mov ebx, 0xa
    cmp dl, 0x65
    jb loc_00450936
    jbe loc_004509b6
    cmp dl, 0x6f
    jb loc_0045091d
    jbe loc_004509cc
    cmp dl, 0x73
    jb loc_0045090f
    jbe loc_00450a61
    cmp dl, 0x75
    jb loc_00450c33
    jbe loc_00450b4d
    cmp dl, 0x78
    je loc_00450b2a
    jmp loc_00450c33
loc_0045090f:
    cmp dl, 0x70
    je loc_00450b70
    jmp loc_00450c33
loc_0045091d:
    cmp dl, 0x67
    jb loc_00450984
    jbe loc_004509b6
    cmp dl, 0x69
    je loc_00450a10
    jmp loc_00450c33
loc_00450936:
    cmp dl, 0x50
    jb loc_0045096e
    jbe loc_00450b70
    cmp dl, 0x58
    jb loc_00450960
    jbe loc_00450b2a
    cmp dl, 0x63
    jb loc_00450c33
    jbe loc_00450c07
    jmp loc_00450a10
loc_00450960:
    cmp dl, 0x53
    je loc_00450a61
    jmp loc_00450c33
loc_0045096e:
    cmp dl, 0x46
    jb loc_0045097f
    jbe loc_00450984
    cmp dl, 0x47
loc_00450978:
    je loc_004509b6
    jmp loc_00450c33
loc_0045097f:
    cmp dl, 0x45
    jmp loc_00450978
loc_00450984:
    mov dl, byte ptr [esi + 0x14]
    and dl, 0x10
    and edx, 0xff
    je loc_004509b6
    mov ebx, dword ptr [eax]
    add ebx, 4
    mov dword ptr [eax], ebx
    mov eax, edi
    mov edx, dword ptr [ebx - 4]
    mov ebx, esi
    call sub_00450729
    mov ebx, 0xffffffff
    mov eax, ds
    mov edx, ds
    mov es, eax
    mov eax, edi
    mov ecx, edi
    jmp loc_00450a06
loc_004509b6:
    mov ebx, esi
    mov edx, eax
    mov eax, edi
    call sub_0045081e
    mov ebx, 0xffffffff
    mov es, edx
    mov ecx, eax
    jmp loc_00450a06
loc_004509cc:
    mov al, byte ptr [esi + 0x14]
    mov ebx, 8
    and al, 1
    and eax, 0xff
    je loc_004509e1
    mov byte ptr [edi], 0x30
    inc edi
loc_004509e1:
    mov edx, edi
    mov eax, ebp
    call sub_004510aa
loc_004509ea:
    cmp dword ptr [esi + 8], 0
    jne loc_004509fd
    xor eax, eax
    mov al, byte ptr [edi]
    cmp eax, 0x30
    jne loc_004509fd
    mov byte ptr es:[ecx], 0
loc_004509fd:
    mov ebx, 0xffffffff
    mov edx, es
    mov eax, ecx
loc_00450a06:
    call sub_00450684
    jmp loc_00450c5c
loc_00450a10:
    mov dl, byte ptr [esi + 0x14]
    and dl, 0x20
    and edx, 0xff
    je loc_00450a31
    mov edx, dword ptr [eax]
    add edx, 4
    mov dword ptr [eax], edx
    mov eax, dword ptr [edx - 4]
    mov edx, edi
loc_00450a2a:
    call sub_004510aa
    jmp loc_004509ea
loc_00450a31:
    mov dl, byte ptr [esi + 0x14]
    and dl, 0x10
    and edx, 0xff
    je loc_00450a4e
    mov ebp, dword ptr [eax]
    add ebp, 4
    mov dword ptr [eax], ebp
    mov edx, edi
    movsx eax, word ptr [ebp - 4]
    jmp loc_00450a2a
loc_00450a4e:
    mov edx, dword ptr [eax]
    add edx, 4
    mov dword ptr [eax], edx
    mov eax, dword ptr [edx - 4]
    mov edx, edi
    call sub_0045002a
    jmp loc_004509ea
loc_00450a61:
    mov dl, byte ptr [esi + 0x14]
    and dl, 0x80
    and edx, 0xff
    je loc_00450a92
    mov edi, dword ptr [eax]
    add edi, 8
    mov dword ptr [eax], edi
    mov ecx, dword ptr [edi - 8]
    mov dx, word ptr [edi - 4]
    test ecx, ecx
    jne loc_00450a86
    test dx, dx
    je loc_00450a8a
loc_00450a86:
    mov es, edx
    jmp loc_00450ac8
loc_00450a8a:
    mov eax, ds
    mov ecx, dword ptr [esp + 4]
    jmp loc_00450ac6
loc_00450a92:
    mov dl, byte ptr [esi + 0x14]
    and dl, 0x40
    and edx, 0xff
    je loc_00450ab2
    mov ecx, dword ptr [eax]
    add ecx, 4
    mov dword ptr [eax], ecx
    mov ecx, dword ptr [ecx - 4]
    test ecx, ecx
    je loc_00450a8a
loc_00450aae:
    mov eax, ds
    jmp loc_00450ac6
loc_00450ab2:
    mov ebx, dword ptr [eax]
    add ebx, 4
    mov dword ptr [eax], ebx
    mov ecx, dword ptr [ebx - 4]
    test ecx, ecx
    jne loc_00450aae
    mov eax, ds
    mov ecx, dword ptr [esp + 4]
loc_00450ac6:
    mov es, eax
loc_00450ac8:
    mov bl, byte ptr [esi + 0x14]
    xor ebp, ebp
    xor eax, eax
    and bl, 0xf9
    mov dword ptr [esp], ebp
    mov al, byte ptr [esi + 0x15]
    mov byte ptr [esi + 0x14], bl
    cmp eax, 0x53
    jne loc_00450b02
    mov al, bl
    and al, 0x20
    and eax, 0xff
    je loc_00450af9
    xor eax, eax
    # mov ax, word ptr es:[ecx]
    .byte 0x66,0x26,0x8b,0x01
    add ecx, 2
    jmp loc_00450c5c
loc_00450af9:
    mov al, byte ptr es:[ecx]
    inc ecx
    jmp loc_00450c5c
loc_00450b02:
    mov al, bl
    and al, 0x20
    and eax, 0xff
    je loc_00450b1e
    mov edx, es
    mov eax, ecx
    mov ebx, dword ptr [esi + 8]
    call sub_004506a8
    jmp loc_00450c5c
loc_00450b1e:
    mov edx, es
    mov eax, ecx
    mov ebx, dword ptr [esi + 8]
    jmp loc_00450a06
loc_00450b2a:
    mov al, byte ptr [esi + 0x14]
    and al, 1
    and eax, 0xff
    je loc_00450b48
    test ebp, ebp
    je loc_00450b48
    mov byte ptr [esi + 0x17], 0x30
    mov al, byte ptr [esi + 0x15]
    mov byte ptr [esi + 0x19], 0
    mov byte ptr [esi + 0x18], al
loc_00450b48:
    mov ebx, 0x10
loc_00450b4d:
    mov edx, edi
    mov eax, ebp
    call sub_00451060
    xor eax, eax
    mov al, byte ptr [esi + 0x15]
    cmp eax, 0x58
    jne loc_004509ea
    mov eax, edi
    call sub_00450d0e
    jmp loc_004509ea
loc_00450b70:
    cmp dword ptr [esi + 4], 0
    jne loc_00450b94
    mov dl, byte ptr [esi + 0x14]
    and dl, 0x80
    and edx, 0xff
    je loc_00450b8d
    mov dword ptr [esi + 4], 0xd
    jmp loc_00450b94
loc_00450b8d:
    mov dword ptr [esi + 4], 8
loc_00450b94:
    and byte ptr [esi + 0x14], 0xf9
    mov ebx, dword ptr [eax]
    add ebx, 4
    mov dword ptr [eax], ebx
    mov dl, byte ptr [esi + 0x14]
    and dl, 0x80
    mov byte ptr [esp + 8], dl
    xor edx, edx
    mov dl, byte ptr [esp + 8]
    mov ebp, dword ptr [ebx - 4]
    test edx, edx
    je loc_00450bdf
    add ebx, 4
    mov dword ptr [eax], ebx
    mov edx, edi
    mov eax, dword ptr [ebx - 4]
    mov ebx, 4
    and eax, 0xffff
    call sub_004506cb
    mov ebx, 8
    lea edx, [edi + 5]
    mov eax, ebp
    mov byte ptr [edi + 4], 0x3a
    jmp loc_00450be8
loc_00450bdf:
    mov ebx, 8
    mov edx, edi
    mov eax, ebp
loc_00450be8:
    call sub_004506cb
    xor eax, eax
    mov al, byte ptr [esi + 0x15]
    cmp eax, 0x50
    jne loc_004509fd
    mov eax, edi
    call sub_00450d0e
    jmp loc_004509fd
loc_00450c07:
    mov ebp, dword ptr [eax]
    add ebp, 4
    mov dword ptr [eax], ebp
    mov al, byte ptr [ebp - 4]
    mov byte ptr [edi + 1], 0
    mov byte ptr [edi], al
    mov dword ptr [esi + 8], 1
    mov dh, byte ptr [esi + 0x14]
    xor eax, eax
    and dh, 0xf9
    mov dword ptr [esp], eax
    mov eax, 1
    mov byte ptr [esi + 0x14], dh
    jmp loc_00450c5c
loc_00450c33:
    mov dword ptr [esi + 4], 0
    mov al, byte ptr [esi + 0x15]
    mov byte ptr [edi + 1], 0
    mov byte ptr [edi], al
    mov dword ptr [esi + 8], 1
    mov al, byte ptr [esi + 0x14]
    xor edi, edi
    and al, 0xf9
    mov dword ptr [esp], edi
    mov byte ptr [esi + 0x14], al
    mov eax, 1
loc_00450c5c:
    cmp dword ptr [esp], 0
    je loc_00450cb1
    xor edx, edx
    mov dl, byte ptr es:[ecx]
    cmp edx, 0x2d
    jne loc_00450c74
    inc ecx
    mov byte ptr [esi + 0x17], 0x2d
    dec eax
    jmp loc_00450c9a
loc_00450c74:
    mov dl, byte ptr [esi + 0x14]
    and dl, 2
    and edx, 0xff
    je loc_00450c88
    mov byte ptr [esi + 0x17], 0x20
    jmp loc_00450c9a
loc_00450c88:
    mov dl, byte ptr [esi + 0x14]
    and dl, 4
    and edx, 0xff
    je loc_00450c9e
    mov byte ptr [esi + 0x17], 0x2b
loc_00450c9a:
    mov byte ptr [esi + 0x18], 0
loc_00450c9e:
    mov edx, dword ptr [esi + 8]
    cmp eax, edx
    jle loc_00450caa
    mov dword ptr [esi + 8], eax
    jmp loc_00450cb1
loc_00450caa:
    mov ebx, edx
    sub ebx, eax
    mov dword ptr [esi + 0xc], ebx
loc_00450cb1:
    xor edx, edx
    mov dl, byte ptr [esi + 0x16]
    cmp edx, 0x2a
    jne loc_00450cc8
    mov dl, byte ptr [esi + 0x14]
    mov byte ptr [esi + 0x17], 0
    and dl, 0xf9
    mov byte ptr [esi + 0x14], dl
loc_00450cc8:
    mov ebx, dword ptr [esi + 8]
    cmp ebx, -1
    je loc_00450cd4
    cmp eax, ebx
    jge loc_00450ce1
loc_00450cd4:
    xor edx, edx
    mov dl, byte ptr [esi + 0x15]
    cmp edx, 0x63
    je loc_00450ce1
    mov dword ptr [esi + 8], eax
loc_00450ce1:
    mov ebx, 0xffffffff
    lea eax, [esi + 0x17]
    mov edx, ds
    call sub_00450684
    mov ebp, dword ptr [esi + 8]
    mov edx, dword ptr [esi + 0xc]
    add eax, ebp
    mov ebx, dword ptr [esi + 4]
    add eax, edx
    mov edx, es
    sub ebx, eax
    mov eax, ecx
    mov dword ptr [esi + 4], ebx
    add esp, 0xc
    pop ebp
    pop es
    pop edi
    pop esi
    ret
sub_00450d0e:
    push edx
    mov edx, eax
loc_00450d11:
    cmp byte ptr [edx], 0
    je loc_00450d24
    xor eax, eax
    mov al, byte ptr [edx]
    call sub_0045168e
    mov byte ptr [edx], al
    inc edx
    jmp loc_00450d11
loc_00450d24:
    pop edx
    ret
ptr_00450d26:
    push edx
    mov edx, 1
    mov eax, offset d_0045b45c
    call sub_0044e083
    pop edx
    ret
    push ebx
    test edx, 0x7ff00000
    je loc_00450d80
    sub ebx, ebx
    add eax, eax
    adc edx, edx
    rcr ebx, 1
    add eax, 0x20000000
    adc edx, 0
    je loc_00450d77
    cmp edx, 0x8fe00000
    jae loc_00450d77
    cmp edx, 0x70200000
    jb loc_00450d80
    sub edx, 0x70000000
    add eax, eax
    adc edx, edx
    add eax, eax
    adc edx, edx
    or edx, ebx
    mov eax, edx
    pop ebx
    ret
loc_00450d77:
    mov eax, 0x7f800000
    or eax, ebx
    pop ebx
    ret
loc_00450d80:
    sub eax, eax
    pop ebx
    ret
sub_00450d84:
    push ebx
    push ecx
    push edx
    mov edx, eax
    test byte ptr [eax + 0xd], 0x20
    jne loc_00450db1
    mov eax, dword ptr [edx + 0x10]
    call sub_004510c5
    test eax, eax
    je loc_00450db1
    mov bl, byte ptr [edx + 0xd]
    or bl, 0x20
    mov byte ptr [edx + 0xd], bl
    test bl, 7
    jne loc_00450db1
    mov cl, bl
    or cl, 2
    mov byte ptr [edx + 0xd], cl
loc_00450db1:
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00450db5:
    ret
sub_00450db6:
    push ax
    wait
    fninit
    fld1
    fldz
    fdivp st(1)
    fld st(0)
    fchs
    fcompp
    fnstsw ax
    mov al, 2
    sahf
    je loc_00450dd0
    mov al, 3
loc_00450dd0:
    wait
    fninit
    fldcw word ptr [esp]
    xchg word ptr [esp], ax
    pop ax
    ret
sub_00450ddd:
    push ebx
    push ecx
    push edx
    mov edx, eax
    cmp eax, dword ptr [d_0045c9e4]
    jb loc_00450df0
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
loc_00450df0:
    cmp eax, 3
    jg loc_00450e26
    mov ebx, eax
    mov eax, dword ptr [d_0045ca38]
    shl ebx, 2
    add eax, ebx
    mov cl, byte ptr [eax + 1]
    test cl, 0x40
    jne loc_00450e26
    mov ch, cl
    or ch, 0x40
    mov byte ptr [eax + 1], ch
    mov eax, edx
    call sub_004510c5
    test eax, eax
    je loc_00450e26
    mov eax, dword ptr [d_0045ca38]
    or byte ptr [ebx + eax + 1], 0x20
loc_00450e26:
    mov eax, dword ptr [d_0045ca38]
    mov eax, dword ptr [eax + edx*4]
    pop edx
    pop ecx
    pop ebx
    ret
sub_00450e32:
    push ebx
    or dh, 0x40
    mov ebx, edx
    mov edx, eax
    mov eax, dword ptr [d_0045ca38]
    shl edx, 2
    mov dword ptr [edx + eax], ebx
    pop ebx
    ret
    push ebx
    push edx
    mov edx, eax
    mov eax, dword ptr [d_0045ca3c]
    lea ebx, [eax + edx]
    mov dword ptr [d_0045ca3c], ebx
    pop edx
    pop ebx
    ret
sub_00450e5c:
    push edx
    mov eax, dword ptr fs:[8]
    mov edx, eax
    call dword ptr [d_0045c630]
    cmp edx, dword ptr [eax]
    jbe loc_00450e75
    mov eax, esp
    sub eax, edx
    pop edx
    ret
loc_00450e75:
    call dword ptr [d_0045c630]
    mov dword ptr [eax], edx
    call dword ptr [d_0045c630]
    mov edx, eax
    mov eax, esp
    sub eax, dword ptr [edx]
    pop edx
    ret
sub_00450e8b:
    mov dword ptr [d_0045ca44], 0x8000
    ret
    mov dword ptr [d_0045ca40], eax
    ret
sub_00450e9c:
    push ebx
    push ecx
    push esi
    mov esi, eax
    mov ecx, edx
    mov eax, 2
    call sub_0045110b
    mov ebx, eax
    mov eax, esi
    mov edx, ebx
    mov eax, dword ptr [eax*4 + d_0045b5ec]
    call sub_00451e74
    mov eax, offset d_0045b505
    mov edx, ebx
    call sub_00451e74
    mov edx, ebx
    mov eax, ecx
    call sub_00451e74
    mov eax, 0xa
    mov edx, ebx
    call sub_004527e3
    pop esi
    pop ecx
    pop ebx
    ret
sub_00450ee4:
    push ebx
    push edx
    mov ebx, eax
    call dword ptr [d_0045ca40]
    test eax, eax
    jne loc_00450f0d
    mov edx, dword ptr [ebx + 4]
    mov eax, dword ptr [ebx]
    call sub_00450e9c
    cmp dword ptr [ebx], 1
    jne loc_00450f08
    call sub_0044c8be
    jmp loc_00450f0d
loc_00450f08:
    call sub_0044c8d1
loc_00450f0d:
    fld qword ptr [ebx + 0x18]
    pop edx
    pop ebx
    ret
sub_00450f13:
    push ebx
    push ecx
    push edx
    xor eax, eax
    call sub_0044f6a7
    xor ebx, ebx
    test eax, eax
    je loc_00450f31
    mov edx, dword ptr [d_0045c62c]
    push edx
    call sub_00457d30
    mov ebx, eax
loc_00450f31:
    test ebx, ebx
    jne loc_00450f44
    mov edx, 1
    mov eax, offset d_0045b50c
    call sub_0044e083
loc_00450f44:
    mov eax, ebx
    pop edx
    pop ecx
    pop ebx
    ret
sub_00450f4a:
    push ebx
    push ecx
    push esi
    mov esi, eax
    mov ebx, edx
    call dword ptr [d_0045c65c]
    mov ecx, 1
    mov edx, 0x10
    mov eax, ecx
    call sub_0045101e
    mov edx, eax
    test eax, eax
    je loc_00450f9d
    mov eax, ebx
    call sub_0045113b
    test eax, eax
    je loc_00450f82
    mov eax, edx
    call sub_00452b35
    jmp loc_00450f9d
loc_00450f82:
    mov dword ptr [edx + 8], ebx
    mov dword ptr [edx + 4], esi
    mov al, byte ptr [ebx + 0x52]
    mov dword ptr [edx + 0xc], eax
    mov eax, dword ptr [d_004a6060]
    mov dword ptr [d_004a6060], edx
    mov dword ptr [edx], eax
    jmp loc_00450f9f
loc_00450f9d:
    xor ecx, ecx
loc_00450f9f:
    call dword ptr [d_0045c660]
    mov eax, ecx
    pop esi
    pop ecx
    pop ebx
    ret
sub_00450fab:
    push ebx
    push ecx
    push edx
    mov ecx, eax
    call dword ptr [d_0045c65c]
    mov ebx, offset d_004a6060
    mov edx, dword ptr [d_004a6060]
    jmp loc_00450fe7
loc_00450fc3:
    cmp ecx, dword ptr [edx + 4]
    jne loc_00450fe3
    cmp dword ptr [edx + 0xc], 0
    je loc_00450fd6
    mov eax, dword ptr [edx + 8]
    call sub_00452b35
loc_00450fd6:
    mov eax, dword ptr [edx]
    mov dword ptr [ebx], eax
    mov eax, edx
    call sub_00452b35
    jmp loc_00450feb
loc_00450fe3:
    mov ebx, edx
    mov edx, dword ptr [edx]
loc_00450fe7:
    test edx, edx
    jne loc_00450fc3
loc_00450feb:
    call dword ptr [d_0045c660]
loc_00450ff1:
    pop edx
    pop ecx
    pop ebx
    ret
loc_00450ff5:
    push ebx
    push ecx
    push edx
    mov edx, dword ptr [d_004a6060]
loc_00450ffe:
    # test edx, edx
    .byte 0x85,0xd2
