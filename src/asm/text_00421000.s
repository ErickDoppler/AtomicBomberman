# code 0x00421000 - 0x00431000
    .intel_syntax noprefix
    .text
    je loc_0042100d
    mov dword ptr [ebp - 8], 2
    jmp loc_00421014
loc_0042100d:
    mov dword ptr [ebp - 8], 0
loc_00421014:
    mov eax, dword ptr [d_0046492c]
    cmp eax, dword ptr [ebp - 8]
    jne loc_00421041
    imul eax, dword ptr [ebp - 4], 0x98
    cmp dword ptr [eax + d_00461bc4], 0
    je loc_00421041
    imul eax, dword ptr [ebp - 4], 0x98
    mov edx, offset d_00461bc4
    add eax, edx
    call sub_00420d4e
loc_00421041:
    jmp loc_00421070
loc_00421043:
    mov eax, dword ptr [d_0046492c]
    cmp eax, dword ptr [ebp - 4]
    jne loc_00421070
    imul eax, dword ptr [ebp - 4], 0x98
    cmp dword ptr [eax + d_00461bc4], 0
    je loc_00421070
    imul eax, dword ptr [ebp - 4], 0x98
    mov edx, offset d_00461bc4
    add eax, edx
    call sub_00420d4e
loc_00421070:
    imul eax, dword ptr [ebp - 4], 0x98
    cmp byte ptr [eax + d_00461bd4], 0
    je loc_00421149
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 4]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    add eax, 0x73
    call sub_00412135
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 4]
    and eax, 1
    add eax, 0x71
    call sub_00412135
    mov dword ptr [ebp - 0x10], eax
    imul eax, dword ptr [ebp - 4], 0x98
    mov eax, dword ptr [eax + d_00461c2e]
    sar eax, 0x10
    push eax
    imul eax, dword ptr [ebp - 4], 0x98
    mov eax, dword ptr [eax + d_00461c2c]
    sar eax, 0x10
    push eax
    mov eax, 0x25
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0x10
    mov eax, dword ptr [ebp - 4]
    call sub_00416867
    push eax
    mov eax, dword ptr [ebp - 4]
    call sub_0041672f
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, 0x5a
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    imul eax, dword ptr [ebp - 4], 0x98
    cmp dword ptr [eax + d_00461bc4], 0
    jne loc_00421149
    mov eax, offset d_0045a25a
    call sub_0041d957
    mov dword ptr [ebp - 0x7c], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0x7c]
    call sub_0041daa7
    mov dword ptr [ebp - 0x78], eax
    mov ebx, dword ptr [ebp - 0x78]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00415920
loc_00421149:
    # jmp 0x420fb6
    .byte 0xe9
    .long loc_00420fb6 - . - 4
loc_0042114e:
    mov eax, dword ptr [d_004621e4]
    mov dword ptr [d_004621d8], eax
    mov eax, dword ptr [d_004621d0]
    mov dword ptr [d_004621d4], eax
    mov dword ptr [d_004621dc], 0
    cmp dword ptr [d_004621bc], 0
    je loc_0042117b
    inc dword ptr [d_004621dc]
loc_0042117b:
    cmp dword ptr [d_004621c0], 0
    je loc_0042118a
    inc dword ptr [d_004621dc]
loc_0042118a:
    call sub_00420e39
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00421198:
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
    mov dword ptr [ebp - 4], offset d_00461bc4
loc_004211b4:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_004211ce
    jmp loc_004211de
loc_004211bc:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_004211b4
loc_004211ce:
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x10], 0
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x11], 0
    jmp loc_004211bc
loc_004211de:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004211e7:
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
    mov dword ptr [ebp - 4], offset d_00461bc4
loc_00421203:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_0042121d
    jmp loc_00421236
loc_0042120b:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_00421203
loc_0042121d:
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax + 0x10], 4
    jne loc_00421234
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x10], 0
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x11], 0
loc_00421234:
    jmp loc_0042120b
loc_00421236:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042123f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 4], 0
    cmp dword ptr [d_00464968], 0
    je loc_00421266
    mov dword ptr [ebp - 8], 0
    jmp loc_0042126d
loc_00421266:
    mov dword ptr [ebp - 8], 1
loc_0042126d:
    mov dword ptr [ebp - 0x14], 0
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 0xc], offset d_00461bc4
loc_00421282:
    cmp dword ptr [ebp - 0x14], 0xa
    jl loc_0042129f
    # jmp 0x42130a
    .byte 0xe9
    .long loc_0042130a - . - 4
loc_0042128d:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x98
    jmp loc_00421282
loc_0042129f:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 0
    jne loc_00421308
    mov eax, dword ptr [ebp - 0x10]
    call sub_00429628
    test eax, eax
    je loc_004212cc
    mov edx, dword ptr [ebp - 0xc]
    mov byte ptr [edx + 0x10], 3
    mov al, byte ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0xc]
    mov byte ptr [edx + 0x11], al
    mov edx, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00421302
loc_004212cc:
    cmp dword ptr [ebp - 8], 0
    je loc_004212e7
    cmp dword ptr [ebp - 0x14], 1
    jne loc_004212df
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x10], 1
loc_004212df:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00421302
loc_004212e7:
    mov dword ptr [ebp - 8], 1
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x10], 2
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x11], 0
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
loc_00421302:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
loc_00421308:
    jmp loc_0042128d
loc_0042130a:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [ebp - 0x10], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00421319:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_004621cc], 0
    je loc_0042134e
    mov ebx, 0x725
    mov edx, offset d_0045a25e
    mov eax, dword ptr [d_004621cc]
    call sub_0041863d
    mov dword ptr [d_004621cc], 0
loc_0042134e:
    cmp dword ptr [d_004621c8], 0
    # je 0x4213d7
    .byte 0x0f,0x84
    .long loc_004213d7 - . - 4
    mov dword ptr [ebp - 4], 0
loc_00421362:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_00421372
    jmp loc_004213b9
loc_0042136a:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00421362
loc_00421372:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_004621c8]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_004213b7
    mov ebx, 0x72c
    mov edx, offset d_0045a25e
    mov ecx, dword ptr [ebp - 4]
    shl ecx, 2
    mov eax, dword ptr [d_004621c8]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_0041863d
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_004621c8]
    add eax, edx
    mov dword ptr [eax], 0
loc_004213b7:
    jmp loc_0042136a
loc_004213b9:
    mov ebx, 0x730
    mov edx, offset d_0045a25e
    mov eax, dword ptr [d_004621c8]
    call sub_0041863d
    mov dword ptr [d_004621c8], 0
loc_004213d7:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004213e0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    call sub_00429790
    call sub_00421198
    call sub_0042123f
    mov ecx, 0x73d
    mov ebx, offset d_0045a25e
    mov edx, 0xa
    mov eax, 4
    call sub_00418511
    mov dword ptr [d_004621c8], eax
    mov dword ptr [ebp - 4], 0
loc_00421422:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_00421432
    jmp loc_0042145f
loc_0042142a:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00421422
loc_00421432:
    mov ecx, 0x73f
    mov ebx, offset d_0045a25e
    mov edx, 0x1e
    mov eax, 8
    call sub_00418511
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov ebx, dword ptr [d_004621c8]
    add eax, ebx
    mov dword ptr [eax], edx
    jmp loc_0042142a
loc_0042145f:
    mov dword ptr [ebp - 8], 0
loc_00421466:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00421476
    jmp loc_0042148b
loc_0042146e:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00421466
loc_00421476:
    mov dl, byte ptr [ebp - 8]
    and dl, 1
    imul eax, dword ptr [ebp - 8], 0x98
    mov byte ptr [eax + d_00461c18], dl
    jmp loc_0042146e
loc_0042148b:
    mov ecx, 0x749
    mov ebx, offset d_0045a25e
    mov edx, 0x10
    mov eax, 0x64
    call sub_00418511
    mov dword ptr [d_004621cc], eax
    mov eax, offset ptr_00421319
    call sub_00410ebf
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004214bc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x24
    .byte 0x81,0xec,0x24,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], 0
loc_004214d1:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_004214e1
    jmp loc_00421529
loc_004214d9:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_004214d1
loc_004214e1:
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov edx, dword ptr [d_004621c8]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 4], eax
loc_004214fb:
    cmp dword ptr [ebp - 8], 0x1e
    jl loc_00421512
    jmp loc_00421527
loc_00421503:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 8
    jmp loc_004214fb
loc_00421512:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], 0xffffffff
    jmp loc_00421503
loc_00421527:
    jmp loc_004214d9
loc_00421529:
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 0x10], offset d_00461bc4
loc_00421537:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00421554
    jmp loc_0042175a
loc_00421542:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    add dword ptr [ebp - 0x10], 0x98
    jmp loc_00421537
loc_00421554:
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax], 0
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov eax, dword ptr [eax + d_0046460c]
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov eax, dword ptr [eax + d_0046465c]
    mov dword ptr [ebp - 0x14], eax
loc_0042157b:
    cmp dword ptr [ebp - 0x18], 0
    jge loc_0042158b
    mov eax, dword ptr [d_004648ac]
    add dword ptr [ebp - 0x18], eax
    jmp loc_0042157b
loc_0042158b:
    cmp dword ptr [ebp - 0x14], 0
    jge loc_0042159b
    mov eax, dword ptr [d_004648b4]
    add dword ptr [ebp - 0x14], eax
    jmp loc_0042158b
loc_0042159b:
    mov eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004215af
    mov eax, dword ptr [d_004648ac]
    dec eax
    mov dword ptr [ebp - 0x18], eax
loc_004215af:
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004215c3
    mov eax, dword ptr [d_004648b4]
    dec eax
    mov dword ptr [ebp - 0x14], eax
loc_004215c3:
    mov eax, dword ptr [ebp - 0x18]
    call sub_00426524
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x14], edx
    mov eax, dword ptr [ebp - 0x14]
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x18], edx
    mov eax, dword ptr [ebp - 0x10]
    mov byte ptr [eax + 0x92], 0
    mov eax, dword ptr [ebp - 0x10]
    mov byte ptr [eax + 0x55], 0
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 0x4e], 0
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 0x50], 0
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 0x2c], 2
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 0x66], 0
    mov eax, dword ptr [ebp - 0x10]
    mov byte ptr [eax + 0x68], 1
    cmp dword ptr [d_00464964], 0
    je loc_0042164c
    mov eax, dword ptr [ebp - 0x10]
    cmp byte ptr [eax + 0x54], 0
    je loc_0042163a
    mov dword ptr [ebp - 0x1c], 2
    jmp loc_00421641
loc_0042163a:
    mov dword ptr [ebp - 0x1c], 0
loc_00421641:
    mov al, byte ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x10]
    mov byte ptr [edx + 0x3c], al
    jmp loc_00421655
loc_0042164c:
    mov al, byte ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov byte ptr [edx + 0x3c], al
loc_00421655:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov word ptr [edx + 0x3e], ax
    push 0
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 0x10]
    mov ecx, dword ptr [eax + 0x18]
    dec ecx
    mov eax, dword ptr [ebp - 0x10]
    mov ebx, dword ptr [eax + 0x14]
    mov edx, 1
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040f48c
    mov eax, 0x29
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 0x4a], dx
    mov eax, 0x2a
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x70], edx
    mov dword ptr [ebp - 8], 0
loc_004216b1:
    cmp dword ptr [ebp - 8], 0xf
    jl loc_004216c1
    jmp loc_004216d7
loc_004216b9:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_004216b1
loc_004216c1:
    mov eax, dword ptr [ebp - 8]
    add eax, 0x32
    call sub_00412135
    mov edx, dword ptr [ebp - 0x10]
    add edx, dword ptr [ebp - 8]
    mov byte ptr [edx + 0x56], al
    jmp loc_004216b9
loc_004216d7:
    mov eax, dword ptr [ebp - 0x10]
    mov byte ptr [eax + 0x65], 0
    cmp dword ptr [d_004648bc], 0
    # je 0x42174d
    .byte 0x0f,0x84
    .long loc_0042174d - . - 4
    call sub_00403a9c
    mov dword ptr [ebp - 0x20], eax
    cmp dword ptr [ebp - 0x20], 0
    jl loc_004216ff
    cmp dword ptr [ebp - 0x20], 0xf
    jl loc_00421701
loc_004216ff:
    jmp loc_0042174d
loc_00421701:
    cmp dword ptr [d_00464964], 0
    je loc_00421739
    mov eax, dword ptr [ebp - 0x10]
    cmp byte ptr [eax + 0x54], 0
    je loc_0042171c
    mov dword ptr [ebp - 0x24], 2
    jmp loc_00421723
loc_0042171c:
    mov dword ptr [ebp - 0x24], 0
loc_00421723:
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [d_0046492c]
    jne loc_00421737
    mov eax, dword ptr [ebp - 0x10]
    add eax, dword ptr [ebp - 0x20]
    inc byte ptr [eax + 0x56]
loc_00421737:
    jmp loc_0042174d
loc_00421739:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_0046492c]
    jne loc_0042174d
    mov eax, dword ptr [ebp - 0x10]
    add eax, dword ptr [ebp - 0x20]
    inc byte ptr [eax + 0x56]
loc_0042174d:
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041df4c
    jmp loc_00421542
loc_0042175a:
    mov eax, 0x1e
    call sub_00412135
    mov edx, dword ptr [d_0046494c]
    imul eax, edx
    mov dword ptr [d_004621e0], eax
    mov eax, 0x20
    call sub_00412135
    mov edx, dword ptr [d_0046494c]
    imul eax, edx
    mov dword ptr [d_004621e8], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00421793:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [d_0045be3c], 0xffffffff
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 4], offset d_00461bc4
loc_004217b9:
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_004217d3
    jmp loc_004217e7
loc_004217c1:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_004217b9
loc_004217d3:
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 0x6a], 0
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 0x6c], 0
    jmp loc_004217c1
loc_004217e7:
    cmp dword ptr [d_00464ae8], 0
    je loc_004218de
    mov dword ptr [ebp - 0x10], 0
loc_004217fb:
    cmp dword ptr [ebp - 0x10], 0xc8
    jl loc_00421811
    jmp loc_004218de
loc_00421809:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_004217fb
loc_00421811:
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0xc], edx
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [ebp - 8]
    je loc_004218d9
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046460c]
    xor dword ptr [eax + d_0046460c], edx
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046460c]
    xor dword ptr [eax + d_0046460c], edx
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046460c]
    xor dword ptr [eax + d_0046460c], edx
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046465c]
    xor dword ptr [eax + d_0046465c], edx
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046465c]
    xor dword ptr [eax + d_0046465c], edx
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov edx, dword ptr [edx + d_0046465c]
    xor dword ptr [eax + d_0046465c], edx
loc_004218d9:
    jmp loc_00421809
loc_004218de:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004218e7:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 0xc], offset d_00461bc4
loc_0042190a:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00421924
    jmp loc_00421935
loc_00421912:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x98
    jmp loc_0042190a
loc_00421924:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 0
    je loc_00421933
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
loc_00421933:
    jmp loc_00421912
loc_00421935:
    mov eax, dword ptr [ebp - 0x10]
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
sub_00421947:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_004621d8]
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
sub_00421969:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_0046489c], 0
    je loc_00421989
    mov dword ptr [ebp - 4], 2
    jmp loc_004219a4
loc_00421989:
    cmp dword ptr [d_00464964], 0
    je loc_0042199c
    mov eax, dword ptr [d_004621dc]
    mov dword ptr [ebp - 4], eax
    jmp loc_004219a4
loc_0042199c:
    mov eax, dword ptr [d_004621d4]
    mov dword ptr [ebp - 4], eax
loc_004219a4:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004219b0:
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
    call sub_0041087d
    test eax, eax
    jne loc_00421a99
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 8], offset d_00461bc4
loc_004219dc:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_004219f9
    jmp loc_00421a99
loc_004219e7:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_004219dc
loc_004219f9:
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 0
    je loc_00421a94
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x68], 0
    ja loc_00421a17
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00421a20
loc_00421a17:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 8], 0
    je loc_00421a25
loc_00421a20:
    # jmp 0x421a94
    .byte 0xe9
    .long loc_00421a94 - . - 4
loc_00421a25:
    cmp dword ptr [ebp - 0x10], 0
    je loc_00421a76
    cmp dword ptr [d_00464964], 0
    je loc_00421a5a
    mov eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax + 0x54]
    and eax, 0xff
    inc eax
    push eax
    mov eax, 0x22
    call sub_004124a4
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_00421a76
loc_00421a5a:
    mov eax, dword ptr [ebp - 0xc]
    inc eax
    push eax
    mov eax, 0x21
    call sub_004124a4
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_004518d0
    add esp, 0xc
loc_00421a76:
    cmp dword ptr [d_00464964], 0
    je loc_00421a8c
    xor eax, eax
    mov edx, dword ptr [ebp - 8]
    mov al, byte ptr [edx + 0x54]
    mov dword ptr [ebp - 4], eax
    jmp loc_00421abc
loc_00421a8c:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
    jmp loc_00421abc
loc_00421a94:
    jmp loc_004219e7
loc_00421a99:
    cmp dword ptr [ebp - 0x10], 0
    je loc_00421ab5
    mov eax, 0x20
    call sub_004124a4
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, eax
    mov eax, ebx
    call sub_0045189e
loc_00421ab5:
    mov dword ptr [ebp - 4], 0xffffffff
loc_00421abc:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00421ac8:
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
    cmp dword ptr [ebp - 8], 0
    jl loc_00421ae5
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00421ae7
loc_00421ae5:
    jmp loc_00421afc
loc_00421ae7:
    imul eax, dword ptr [ebp - 8], 0x98
    mov eax, dword ptr [eax + d_00461c2c]
    sar eax, 0x10
    mov dword ptr [ebp - 4], eax
    jmp loc_00421b03
loc_00421afc:
    mov dword ptr [ebp - 4], 0xffffffff
loc_00421b03:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00421b0f:
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
    cmp dword ptr [ebp - 8], 0
    jl loc_00421b2c
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00421b2e
loc_00421b2c:
    jmp loc_00421b43
loc_00421b2e:
    imul eax, dword ptr [ebp - 8], 0x98
    mov eax, dword ptr [eax + d_00461c2e]
    sar eax, 0x10
    mov dword ptr [ebp - 4], eax
    jmp loc_00421b4a
loc_00421b43:
    mov dword ptr [ebp - 4], 0xffffffff
loc_00421b4a:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00421b56:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    call sub_0041087d
    test eax, eax
    jne loc_00421c68
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 4], offset d_00461bc4
loc_00421b82:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00421b9f
    jmp loc_00421c68
loc_00421b8d:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_00421b82
loc_00421b9f:
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax + 0x10], 0
    je loc_00421c63
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax + 0x68], 0
    ja loc_00421bbd
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 0
    je loc_00421bc6
loc_00421bbd:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 8], 0
    je loc_00421bcb
loc_00421bc6:
    jmp loc_00421c63
loc_00421bcb:
    mov edx, dword ptr [ebp - 0xc]
    push edx
    mov edx, dword ptr [ebp - 8]
    push edx
    mov edx, offset d_0045a264
    push edx
    call sub_0042c0c8
    add esp, 0xc
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    add word ptr [edx + 0x6a], ax
    cmp dword ptr [d_00464964], 0
    # je 0x421c61
    .byte 0x0f,0x84
    .long loc_00421c61 - . - 4
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 0x14], offset d_00461bc4
loc_00421c06:
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_00421c20
    jmp loc_00421c61
loc_00421c0e:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    add dword ptr [ebp - 0x14], 0x98
    jmp loc_00421c06
loc_00421c20:
    mov eax, dword ptr [ebp - 0x14]
    cmp byte ptr [eax + 0x10], 0
    je loc_00421c5f
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [ebp - 4]
    je loc_00421c5f
    mov eax, dword ptr [ebp - 4]
    mov dl, byte ptr [eax + 0x54]
    mov eax, dword ptr [ebp - 0x14]
    cmp dl, byte ptr [eax + 0x54]
    jne loc_00421c5f
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, offset d_0045a282
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, dword ptr [ebp - 4]
    mov dx, word ptr [eax + 0x6a]
    mov eax, dword ptr [ebp - 0x14]
    mov word ptr [eax + 0x6a], dx
loc_00421c5f:
    jmp loc_00421c0e
loc_00421c61:
    jmp loc_00421c68
loc_00421c63:
    jmp loc_00421b8d
loc_00421c68:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00421c71:
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
    jl loc_00421c90
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00421c92
loc_00421c90:
    jmp loc_00421cad
loc_00421c92:
    imul edx, dword ptr [ebp - 0xc], 0x98
    mov eax, offset d_00461bc4
    add eax, edx
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    add word ptr [edx + 0x6a], ax
loc_00421cad:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00421cb5:
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
    mov dword ptr [ebp - 8], offset d_00461bc4
loc_00421cd6:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00421cf0
    jmp loc_00421d2d
loc_00421cde:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00421cd6
loc_00421cf0:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00421d01
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 8], 0
    je loc_00421d03
loc_00421d01:
    jmp loc_00421d2b
loc_00421d03:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    cmp eax, dword ptr [ebp - 0x14]
    jne loc_00421d2b
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_00421d2b
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00421d34
loc_00421d2b:
    jmp loc_00421cde
loc_00421d2d:
    mov dword ptr [ebp - 4], 0
loc_00421d34:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00421d3f:
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
    mov dword ptr [ebp - 8], offset d_00461bc4
loc_00421d60:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00421d7a
    jmp loc_00421dc0
loc_00421d68:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00421d60
loc_00421d7a:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00421d8b
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 8], 0
    je loc_00421d8d
loc_00421d8b:
    jmp loc_00421dbe
loc_00421d8d:
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 4
    je loc_00421dbe
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    cmp eax, dword ptr [ebp - 0x14]
    jne loc_00421dbe
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_00421dbe
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00421dc7
loc_00421dbe:
    jmp loc_00421d68
loc_00421dc0:
    mov dword ptr [ebp - 4], 0
loc_00421dc7:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00421dd2:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov dword ptr [ebp - 4], ebx
    cmp dword ptr [ebp - 0xc], 0
    jl loc_00421df3
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00421df5
loc_00421df3:
    jmp loc_00421e2c
loc_00421df5:
    imul eax, dword ptr [ebp - 0xc], 0x98
    mov edx, offset d_00461bc4
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    cmp dword ptr [ebp - 8], 0
    je loc_00421e19
    mov eax, dword ptr [ebp - 0x10]
    xor edx, edx
    mov dl, byte ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], edx
loc_00421e19:
    cmp dword ptr [ebp - 4], 0
    je loc_00421e2c
    mov eax, dword ptr [ebp - 0x10]
    xor edx, edx
    mov dl, byte ptr [eax + 0x11]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], edx
loc_00421e2c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00421e33:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov dword ptr [ebp - 4], ebx
    cmp dword ptr [ebp - 0xc], 0
    jl loc_00421e54
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00421e56
loc_00421e54:
    jmp loc_00421e79
loc_00421e56:
    imul edx, dword ptr [ebp - 0xc], 0x98
    mov eax, offset d_00461bc4
    add eax, edx
    mov dword ptr [ebp - 0x10], eax
    mov al, byte ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    mov byte ptr [edx + 0x10], al
    mov al, byte ptr [ebp - 4]
    mov edx, dword ptr [ebp - 0x10]
    mov byte ptr [edx + 0x11], al
loc_00421e79:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00421e80:
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
    jl loc_00421e9d
    cmp dword ptr [ebp - 4], 0xa
    jl loc_00421ea2
loc_00421e9d:
    jmp loc_00421f75
loc_00421ea2:
    imul eax, dword ptr [ebp - 4], 0x98
    mov edx, offset d_00461bc4
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 1
    jne loc_00421ece
    mov eax, dword ptr [ebp - 8]
    inc byte ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x11], 0
    jmp loc_00421f75
loc_00421ece:
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 2
    jne loc_00421ef8
    mov eax, dword ptr [ebp - 8]
    inc byte ptr [eax + 0x11]
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x11], 2
    jb loc_00421f75
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x11], 0xff
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x10], 3
loc_00421ef8:
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 3
    jne loc_00421f2b
    mov eax, dword ptr [ebp - 8]
    inc byte ptr [eax + 0x11]
    mov eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax + 0x11]
    and eax, 0xff
    call sub_00429628
    test eax, eax
    jne loc_00421f75
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x11], 0
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x10], 0
    jmp loc_00421f75
loc_00421f2b:
    mov eax, dword ptr [ebp - 8]
    inc byte ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 1
    jne loc_00421f55
    call sub_0040c06a
    cmp eax, 1
    je loc_00421ea2
    cmp dword ptr [d_0046489c], 0
    jne loc_00421ea2
loc_00421f55:
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 3
    jbe loc_00421f65
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x10], 0
loc_00421f65:
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 3
    jne loc_00421f75
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x11], 0
loc_00421f75:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00421f7e:
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
    call sub_0040c06a
    test eax, eax
    jne loc_0042207c
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 0x3a], 0x10
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 0x4e], 3
    mov eax, dword ptr [ebp - 0x10]
    mov word ptr [eax + 0x50], 0
    call sub_0040c06a
    test eax, eax
    jne loc_0042207c
    mov eax, 0x29f
    call sub_00412135
    cmp eax, 1
    jle loc_00421fe2
    mov eax, 0x29f
    call sub_00412135
    mov dword ptr [ebp - 0x14], eax
    jmp loc_00421fe9
loc_00421fe2:
    mov dword ptr [ebp - 0x14], 1
loc_00421fe9:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x14]
    mov eax, 0x29e
    call sub_00412135
    add edx, eax
    mov dword ptr [ebp - 8], edx
loc_00422007:
    dec dword ptr [ebp - 8]
    cmp dword ptr [ebp - 8], -1
    # je 0x42207c
    .byte 0x0f,0x84
    .long loc_0042207c - . - 4
    mov dword ptr [ebp - 4], 0
loc_0042201b:
    cmp dword ptr [ebp - 4], 0xc8
    jl loc_0042202e
    jmp loc_0042207a
loc_00422026:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0042201b
loc_0042202e:
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xf
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0xc], edx
    mov edx, dword ptr [ebp - 0x10]
    add edx, dword ptr [ebp - 0xc]
    mov dl, byte ptr [edx + 0x56]
    and edx, 0xff
    mov eax, dword ptr [ebp - 0xc]
    add eax, 0x32
    call sub_00412135
    cmp edx, eax
    jle loc_00422078
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425bed
    mov eax, dword ptr [ebp - 0x10]
    add eax, dword ptr [ebp - 0xc]
    dec byte ptr [eax + 0x56]
    jmp loc_0042207a
loc_00422078:
    jmp loc_00422026
loc_0042207a:
    jmp loc_00422007
loc_0042207c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422085:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 0x18], 0
    mov dword ptr [ebp - 0x10], offset d_00461bc4
loc_004220a8:
    cmp dword ptr [ebp - 0x18], 0xa
    jl loc_004220c5
    jmp loc_00422142
loc_004220b3:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x10]
    add dword ptr [ebp - 0x10], 0x98
    jmp loc_004220a8
loc_004220c5:
    mov dword ptr [ebp - 0x14], 0
    mov dword ptr [ebp - 0xc], offset d_00461bc4
loc_004220d3:
    cmp dword ptr [ebp - 0x14], 0xa
    jl loc_004220f0
    # jmp 0x42213d
    .byte 0xe9
    .long loc_0042213d - . - 4
loc_004220de:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x98
    jmp loc_004220d3
loc_004220f0:
    mov eax, dword ptr [ebp - 0x10]
    cmp byte ptr [eax + 0x10], 0
    je loc_00422102
    mov eax, dword ptr [ebp - 0x10]
    cmp byte ptr [eax + 0x10], 1
    jne loc_00422104
loc_00422102:
    jmp loc_0042210d
loc_00422104:
    mov eax, dword ptr [ebp - 0x10]
    cmp byte ptr [eax + 0x10], 4
    jne loc_0042210f
loc_0042210d:
    jmp loc_0042213b
loc_0042210f:
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [ebp - 0x18]
    je loc_0042213b
    mov eax, dword ptr [ebp - 0x10]
    mov dl, byte ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 0xc]
    cmp dl, byte ptr [eax + 0x10]
    jne loc_00422133
    mov eax, dword ptr [ebp - 0x10]
    mov dl, byte ptr [eax + 0x11]
    mov eax, dword ptr [ebp - 0xc]
    cmp dl, byte ptr [eax + 0x11]
    je loc_00422135
loc_00422133:
    jmp loc_0042213b
loc_00422135:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
loc_0042213b:
    jmp loc_004220de
loc_0042213d:
    jmp loc_004220b3
loc_00422142:
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
sub_00422154:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
loc_00422162:
    mov dword ptr [ebp - 4], 0
    mov dword ptr [ebp - 0x14], 0
    mov dword ptr [ebp - 0xc], offset d_00461bc4
loc_00422177:
    cmp dword ptr [ebp - 0x14], 0xa
    jl loc_00422194
    jmp loc_0042222b
loc_00422182:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x98
    jmp loc_00422177
loc_00422194:
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 8], offset d_00461bc4
loc_004221a2:
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_004221bf
    # jmp 0x422226
    .byte 0xe9
    .long loc_00422226 - . - 4
loc_004221ad:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_004221a2
loc_004221bf:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 0
    je loc_004221d1
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 1
    jne loc_004221d3
loc_004221d1:
    jmp loc_004221dc
loc_004221d3:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 4
    jne loc_004221de
loc_004221dc:
    jmp loc_00422224
loc_004221de:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0x14]
    je loc_00422224
    mov eax, dword ptr [ebp - 0xc]
    mov dl, byte ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 8]
    cmp dl, byte ptr [eax + 0x10]
    jne loc_00422202
    mov eax, dword ptr [ebp - 0xc]
    mov dl, byte ptr [eax + 0x11]
    mov eax, dword ptr [ebp - 8]
    cmp dl, byte ptr [eax + 0x11]
    je loc_00422204
loc_00422202:
    jmp loc_00422224
loc_00422204:
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 0x10]
    call sub_0040ee16
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x10], 0
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x11], 0
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
loc_00422224:
    jmp loc_004221ad
loc_00422226:
    jmp loc_00422182
loc_0042222b:
    cmp dword ptr [ebp - 4], 0
    jne loc_00422162
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042223e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], 0
    mov dword ptr [ebp - 0x14], 0
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 8], offset d_00461bc4
loc_0042226f:
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_00422289
    jmp loc_004222d6
loc_00422277:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_0042226f
loc_00422289:
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 0
    je loc_004222d4
    cmp dword ptr [d_00464964], 0
    je loc_004222ce
    mov eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax + 0x54]
    and eax, 0xff
    shl eax, 2
    cmp dword ptr [eax + ebp - 0x18], 0
    jne loc_004222cc
    mov eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax + 0x54]
    and eax, 0xff
    shl eax, 2
    mov dword ptr [eax + ebp - 0x18], 1
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
loc_004222cc:
    jmp loc_004222d4
loc_004222ce:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
loc_004222d4:
    jmp loc_00422277
loc_004222d6:
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
sub_004222e8:
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
    imul eax, dword ptr [ebp - 8], 0x98
    mov edx, offset d_00461bc4
    add edx, eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [d_00464928], 0
    je loc_0042231c
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax + 0x10], 4
    je loc_0042231e
loc_0042231c:
    jmp loc_00422338
loc_0042231e:
    call sub_0040c06a
    cmp eax, 2
    jne loc_00422336
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x10], 1
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x11], 0
loc_00422336:
    jmp loc_00422348
loc_00422338:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x10], 0
loc_00422348:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422351:
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
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 0xc], offset d_00461bc4
loc_00422374:
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_0042238e
    jmp loc_004223d6
loc_0042237c:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x98
    jmp loc_00422374
loc_0042238e:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [ebp - 0x1c]
    sub edx, eax
    mov eax, edx
    call sub_00451e6d
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov ebx, dword ptr [ebp - 0x18]
    sub ebx, eax
    mov eax, ebx
    call sub_00451e6d
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0x14]
    jg loc_004223d4
    mov dword ptr [ebp - 4], 0
    jmp loc_004223dd
loc_004223d4:
    jmp loc_0042237c
loc_004223d6:
    mov dword ptr [ebp - 4], 1
loc_004223dd:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_004223e7:
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
    cmp dword ptr [ebp - 0xc], 0
    jl loc_00422404
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00422406
loc_00422404:
    jmp loc_00422424
loc_00422406:
    imul eax, dword ptr [ebp - 0xc], 0x98
    mov edx, offset d_00461bc4
    add edx, eax
    mov dword ptr [ebp - 8], edx
    xor eax, eax
    mov edx, dword ptr [ebp - 8]
    mov al, byte ptr [edx + 0x54]
    mov dword ptr [ebp - 4], eax
    jmp loc_0042242b
loc_00422424:
    mov dword ptr [ebp - 4], 0
loc_0042242b:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422437:
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
    jl loc_00422456
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00422458
loc_00422456:
    jmp loc_00422472
loc_00422458:
    imul edx, dword ptr [ebp - 0xc], 0x98
    mov eax, offset d_00461bc4
    add eax, edx
    mov dword ptr [ebp - 4], eax
    mov al, byte ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov byte ptr [edx + 0x54], al
loc_00422472:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0042247a:
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
    mov dword ptr [ebp - 8], offset d_00461bc4
loc_00422496:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_004224b0
    jmp loc_004224cf
loc_0042249e:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00422496
loc_004224b0:
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 0
    je loc_004224c2
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 1
    jne loc_004224c4
loc_004224c2:
    jmp loc_004224cd
loc_004224c4:
    mov dword ptr [ebp - 4], 0
    jmp loc_004224d6
loc_004224cd:
    jmp loc_0042249e
loc_004224cf:
    mov dword ptr [ebp - 4], 1
loc_004224d6:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004224e2:
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
loc_004224f7:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_00422507
    jmp loc_0042253f
loc_004224ff:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_004224f7
loc_00422507:
    imul eax, dword ptr [ebp - 4], 0x98
    xor edx, edx
    mov dl, byte ptr [eax + d_00461bd4]
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_00461b9c], edx
    imul eax, dword ptr [ebp - 4], 0x98
    xor edx, edx
    mov dl, byte ptr [eax + d_00461bd5]
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_00461b74], edx
    jmp loc_004224ff
loc_0042253f:
    mov eax, dword ptr [d_00464964]
    mov dword ptr [d_004621c4], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422552:
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
loc_00422567:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_00422577
    jmp loc_004225ab
loc_0042256f:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00422567
loc_00422577:
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    imul eax, dword ptr [ebp - 4], 0x98
    mov dl, byte ptr [edx + d_00461b9c]
    mov byte ptr [eax + d_00461bd4], dl
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    imul edx, dword ptr [ebp - 4], 0x98
    mov al, byte ptr [eax + d_00461b74]
    mov byte ptr [edx + d_00461bd5], al
    jmp loc_0042256f
loc_004225ab:
    mov eax, dword ptr [d_004621c4]
    mov dword ptr [d_00464964], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004225be:
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
    jl loc_004225dd
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_004225df
loc_004225dd:
    jmp loc_004225fa
loc_004225df:
    imul edx, dword ptr [ebp - 0xc], 0x98
    mov eax, offset d_00461bc4
    add eax, edx
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov word ptr [edx + 0x6a], ax
loc_004225fa:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00422602:
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
    jl loc_00422621
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00422623
loc_00422621:
    jmp loc_0042263e
loc_00422623:
    imul edx, dword ptr [ebp - 0xc], 0x98
    mov eax, offset d_00461bc4
    add eax, edx
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov word ptr [edx + 0x6c], ax
loc_0042263e:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00422646:
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
    jl loc_00422665
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00422667
loc_00422665:
    jmp loc_0042268b
loc_00422667:
    imul eax, dword ptr [ebp - 0xc], 0x98
    mov edx, offset d_00461bc4
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov ebx, 0xf
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add eax, 0x56
    call sub_00451dc4
loc_0042268b:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00422693:
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
    jl loc_004226b6
    cmp dword ptr [ebp - 0x14], 0xa
    jl loc_004226b8
loc_004226b6:
    jmp loc_004226f0
loc_004226b8:
    imul eax, dword ptr [ebp - 0x14], 0x98
    mov edx, offset d_00461bc4
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x78], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x7c], eax
    mov ebx, 0xe
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add eax, 0x84
    call sub_00451dc4
loc_004226f0:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_004226f6:
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
    mov dword ptr [d_0045be3c], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422718:
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
    mov dword ptr [ebp - 0x10], 0
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0xc], edx
loc_00422746:
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_0042275f
    jmp loc_004227db
loc_00422751:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_00422746
loc_0042275f:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00422769
    add dword ptr [ebp - 0xc], -0xa
loc_00422769:
    imul eax, dword ptr [ebp - 0xc], 0x98
    mov edx, offset d_00461bc4
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [ebp - 8]
    je loc_004227d6
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 0
    je loc_00422794
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 1
    jne loc_00422796
loc_00422794:
    jmp loc_004227d6
loc_00422796:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_004227d6
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 8], 0
    jne loc_004227d6
    cmp dword ptr [d_00464964], 0
    je loc_004227cb
    mov eax, dword ptr [ebp - 0x14]
    mov dl, byte ptr [eax + 0x54]
    mov eax, dword ptr [ebp - 8]
    cmp dl, byte ptr [eax + 0x54]
    je loc_004227c9
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00422880
loc_004227c9:
    jmp loc_004227d6
loc_004227cb:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00422880
loc_004227d6:
    jmp loc_00422751
loc_004227db:
    mov dword ptr [ebp - 0x10], 0
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0xc], edx
loc_004227f8:
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_00422811
    # jmp 0x422879
    .byte 0xe9
    .long loc_00422879 - . - 4
loc_00422803:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_004227f8
loc_00422811:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_0042281b
    add dword ptr [ebp - 0xc], -0xa
loc_0042281b:
    imul eax, dword ptr [ebp - 0xc], 0x98
    mov edx, offset d_00461bc4
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [ebp - 8]
    je loc_00422877
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 0
    je loc_00422877
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00422877
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 8], 0
    jne loc_00422877
    cmp dword ptr [d_00464964], 0
    je loc_0042286f
    mov eax, dword ptr [ebp - 0x14]
    mov dl, byte ptr [eax + 0x54]
    mov eax, dword ptr [ebp - 8]
    cmp dl, byte ptr [eax + 0x54]
    je loc_0042286d
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00422880
loc_0042286d:
    jmp loc_00422877
loc_0042286f:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00422880
loc_00422877:
    jmp loc_00422803
loc_00422879:
    mov dword ptr [ebp - 4], 0
loc_00422880:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042288c:
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
    imul eax, dword ptr [ebp - 4], 0x98
    cmp byte ptr [eax + d_00461bd4], 1
    jne loc_004228bb
    imul eax, dword ptr [ebp - 4], 0x98
    mov byte ptr [eax + d_00461bd4], 0
loc_004228bb:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004228c4:
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
    cmp dword ptr [ebp - 8], 0
    jl loc_004228e1
    cmp dword ptr [ebp - 8], 0xa
    jl loc_004228e3
loc_004228e1:
    jmp loc_00422915
loc_004228e3:
    imul eax, dword ptr [ebp - 8], 0x98
    cmp byte ptr [eax + d_00461bd4], 0
    je loc_00422915
    imul eax, dword ptr [ebp - 8], 0x98
    cmp dword ptr [eax + d_00461bc4], 0
    jne loc_0042290c
    mov dword ptr [ebp - 4], 0
    jmp loc_0042291c
loc_0042290c:
    mov dword ptr [ebp - 4], 1
    jmp loc_0042291c
loc_00422915:
    mov dword ptr [ebp - 4], 0
loc_0042291c:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422928:
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
loc_0042293d:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_0042294d
    jmp loc_00422988
loc_00422945:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0042293d
loc_0042294d:
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 8], edx
    imul edx, dword ptr [ebp - 8], 0x98
    mov ebx, offset d_00461bc4
    add ebx, edx
    mov dword ptr [ebp - 4], ebx
    mov edx, dword ptr [ebp - 4]
    cmp byte ptr [edx + 0x10], 0
    jne loc_00422986
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x10], 1
    jmp loc_00422988
loc_00422986:
    jmp loc_00422945
loc_00422988:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422991:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    cmp dword ptr [d_00462208], 0
    je loc_004229ef
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_00462208]
    mov dword ptr [ebp - 8], eax
loc_004229b7:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_004229ce
    jmp loc_004229ef
loc_004229bf:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x18
    jmp loc_004229b7
loc_004229ce:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    jne loc_004229ed
    mov ebx, 0x18
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_00451940
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_004229f6
loc_004229ed:
    jmp loc_004229bf
loc_004229ef:
    mov dword ptr [ebp - 4], 0
loc_004229f6:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422a02:
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
    mov dword ptr [eax], 0
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422a25:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    cmp dword ptr [d_00462208], 0
    je loc_00422a96
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [d_00462208]
    mov dword ptr [ebp - 4], eax
loc_00422a4b:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00422a62
    jmp loc_00422a96
loc_00422a53:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x18
    jmp loc_00422a4b
loc_00422a62:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 0
    je loc_00422a94
    mov edx, dword ptr [d_00464958]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [eax + 0x14], edx
    mov edx, dword ptr [d_0046494c]
    add edx, edx
    mov eax, dword ptr [ebp - 4]
    cmp edx, dword ptr [eax + 0x14]
    jae loc_00422a94
    inc dword ptr [d_004642e4]
    mov eax, dword ptr [ebp - 4]
    call sub_00422a02
loc_00422a94:
    jmp loc_00422a53
loc_00422a96:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422a9f:
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
    cmp dword ptr [d_00462208], 0
    je loc_00422afc
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_00462208]
    mov dword ptr [ebp - 8], eax
loc_00422ac8:
    cmp dword ptr [ebp - 0xc], 0xa
    jl loc_00422adf
    jmp loc_00422afc
loc_00422ad0:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x18
    jmp loc_00422ac8
loc_00422adf:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00422afa
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_00422afa
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00422b03
loc_00422afa:
    jmp loc_00422ad0
loc_00422afc:
    mov dword ptr [ebp - 4], 0
loc_00422b03:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422b0f:
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
    mov eax, dword ptr [eax + d_0045be44]
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
ptr_00422b3b:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_0046220c], 0
    je loc_00422b70
    mov ebx, 0x81
    mov edx, offset d_0045a2ae
    mov eax, dword ptr [d_0046220c]
    call sub_0041863d
    mov dword ptr [d_0046220c], 0
loc_00422b70:
    cmp dword ptr [d_004621f8], 0
    je loc_00422b97
    mov ebx, 0x85
    mov edx, offset d_0045a2ae
    mov eax, dword ptr [d_004621f8]
    call sub_0041863d
    mov dword ptr [d_004621f8], 0
loc_00422b97:
    cmp dword ptr [d_004621fc], 0
    je loc_00422bbe
    mov ebx, 0x89
    mov edx, offset d_0045a2ae
    mov eax, dword ptr [d_004621fc]
    call sub_0041863d
    mov dword ptr [d_004621fc], 0
loc_00422bbe:
    cmp dword ptr [d_004621f4], 0
    je loc_00422be5
    mov ebx, 0x8d
    mov edx, offset d_0045a2ae
    mov eax, dword ptr [d_004621f4]
    call sub_0041863d
    mov dword ptr [d_004621f4], 0
loc_00422be5:
    cmp dword ptr [d_00462208], 0
    je loc_00422c0c
    mov ebx, 0x91
    mov edx, offset d_0045a2ae
    mov eax, dword ptr [d_00462208]
    call sub_0041863d
    mov dword ptr [d_00462208], 0
loc_00422c0c:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422c13:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, offset d_00464af4
    call sub_00451e3e
    mov eax, 0x141
    call sub_00412135
    cmp eax, 1
    jle loc_00422c49
    mov eax, 0x141
    call sub_00412135
    mov dword ptr [ebp - 4], eax
    jmp loc_00422c50
loc_00422c49:
    mov dword ptr [ebp - 4], 1
loc_00422c50:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 4]
    mov eax, 0x140
    call sub_00412135
    add eax, edx
    add dword ptr [d_00464af4], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422c7a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov ebx, 0xa3
    mov edx, offset d_0045a2ae
    mov eax, 0x3b60
    call sub_004184d0
    mov dword ptr [d_0046220c], eax
    mov ebx, 0xa4
    mov edx, offset d_0045a2ae
    mov eax, 0x190
    call sub_004184d0
    mov dword ptr [d_004621f8], eax
    mov ebx, 0xa5
    mov edx, offset d_0045a2ae
    mov eax, 0x190
    call sub_004184d0
    mov dword ptr [d_004621fc], eax
    mov eax, dword ptr [d_004648ac]
    shl eax, 2
    mov edx, dword ptr [d_004648b4]
    imul eax, edx
    mov dword ptr [d_00462204], eax
    mov ebx, 0xa8
    mov edx, offset d_0045a2ae
    mov eax, dword ptr [d_00462204]
    call sub_004184d0
    mov dword ptr [d_004621f4], eax
    mov ecx, 0xaa
    mov ebx, offset d_0045a2ae
    mov edx, 0xa
    mov eax, 0x18
    call sub_00418511
    mov dword ptr [d_00462208], eax
    call sub_00422d3b
    call sub_00422c13
    mov eax, offset ptr_00422b3b
    call sub_00410ebf
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422d3b:
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
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 4], eax
loc_00422d58:
    cmp dword ptr [ebp - 8], 0x64
    jl loc_00422d72
    jmp loc_00422d9f
loc_00422d60:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_00422d58
loc_00422d72:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_004621f8]
    add eax, edx
    mov dword ptr [eax], 0
    mov ebx, 0x98
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_00451940
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
    jmp loc_00422d60
loc_00422d9f:
    mov dword ptr [ebp - 8], 0
loc_00422da6:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00422db6
    jmp loc_00422dca
loc_00422dae:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00422da6
loc_00422db6:
    imul eax, dword ptr [ebp - 8], 0x18
    mov edx, dword ptr [d_00462208]
    add eax, edx
    mov dword ptr [eax], 0
    jmp loc_00422dae
loc_00422dca:
    mov dword ptr [d_00462200], 0
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422ddd:
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
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 8], eax
loc_00422dfa:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_00422e14
    jmp loc_00422e35
loc_00422e02:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00422dfa
loc_00422e14:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    jne loc_00422e33
    mov ebx, 0x98
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_00451940
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00422e3c
loc_00422e33:
    jmp loc_00422e02
loc_00422e35:
    mov dword ptr [ebp - 4], 0
loc_00422e3c:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00422e48:
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
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 8], eax
loc_00422e6a:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_00422e84
    jmp loc_00422ecc
loc_00422e72:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00422e6a
loc_00422e84:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00422eca
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    cmp eax, dword ptr [ebp - 0x14]
    jne loc_00422eca
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_00422eca
    mov eax, dword ptr [ebp - 8]
    cmp word ptr [eax + 0x2e], 2
    je loc_00422ec0
    mov eax, dword ptr [ebp - 8]
    cmp word ptr [eax + 0x2e], 3
    jne loc_00422ec2
loc_00422ec0:
    jmp loc_00422eca
loc_00422ec2:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00422ed3
loc_00422eca:
    jmp loc_00422e72
loc_00422ecc:
    mov dword ptr [ebp - 4], 0
loc_00422ed3:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00422ede:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x28
    .byte 0x81,0xec,0x28,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x14], edx
    mov dword ptr [ebp - 0x10], ebx
    mov dword ptr [ebp - 0xc], ecx
    cmp dword ptr [ebp + 0x24], 0
    je loc_00422f3d
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 8], eax
loc_00422f0a:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_00422f24
    jmp loc_00422f3d
loc_00422f12:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00422f0a
loc_00422f24:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00422f3b
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xc]
    cmp eax, dword ptr [ebp + 0x20]
    je loc_0042309d
loc_00422f3b:
    jmp loc_00422f12
loc_00422f3d:
    inc dword ptr [d_004642ac]
    call sub_00422ddd
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_0042309d
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], 1
    call sub_0040c06a
    test eax, eax
    jne loc_00422fbb
    cmp dword ptr [ebp - 0x10], 0
    jne loc_00422fbb
    lea eax, [ebp - 0x1c]
    call sub_00451e3e
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [d_00464af4]
    jb loc_00422fbb
    mov eax, 0x142
    call sub_00412135
    mov dword ptr [ebp - 0x20], eax
    call sub_00422c13
    cmp dword ptr [ebp - 0x20], 0
    jne loc_00422f9f
    mov dword ptr [ebp - 0x20], 1
loc_00422f9f:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x20]
    test edx, edx
    jne loc_00422fbb
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], 2
loc_00422fbb:
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp + 0x10]
    mov edx, dword ptr [ebp - 8]
    mov word ptr [edx + 0x3e], ax
    mov eax, dword ptr [ebp - 0x18]
    call sub_00426524
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0x14]
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x20], edx
    mov al, byte ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 8]
    mov byte ptr [edx + 0x3c], al
    mov al, byte ptr [ebp + 0x14]
    mov edx, dword ptr [ebp - 8]
    mov byte ptr [edx + 0x4c], al
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 8]
    mov ebx, dword ptr [ebp + 0x18]
    imul ebx, edx
    mov word ptr [eax + 0x4a], bx
    mov ebx, dword ptr [ebp + 0x1c]
    neg ebx
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 8]
    imul ebx, edx
    mov word ptr [eax + 0x44], bx
    mov edx, dword ptr [d_00464994]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x40], edx
    mov eax, dword ptr [ebp + 0x20]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 0xc], eax
    cmp dword ptr [ebp + 0x24], 0
    je loc_0042304e
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x10], 4
    jmp loc_00423055
loc_0042304e:
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x10], 9
loc_00423055:
    cmp dword ptr [ebp + 0x24], 0
    je loc_0042309d
    mov eax, dword ptr [ebp + 0x20]
    call sub_00422a9f
    mov dword ptr [ebp - 0x24], eax
    cmp dword ptr [ebp - 0x24], 0
    je loc_0042309d
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0x28], eax
    cmp dword ptr [ebp - 0x28], 1
    jne loc_0042309d
    mov eax, dword ptr [ebp - 0x24]
    mov ecx, dword ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 0x24]
    mov ebx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 4]
    call sub_0042325d
    inc dword ptr [d_004642e0]
loc_0042309d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0x18
sub_004230a5:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00422e48
    test eax, eax
    je loc_004230d3
    mov dword ptr [ebp - 4], 0
    jmp loc_0042317d
loc_004230d3:
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00421cb5
    test eax, eax
    je loc_004230ee
    mov dword ptr [ebp - 4], 0
    jmp loc_0042317d
loc_004230ee:
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0042542d
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_00423132
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 2
    jne loc_00423132
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 8]
    call sub_004254f3
    cmp dword ptr [ebp - 0x14], 2
    jne loc_00423132
    cmp dword ptr [d_00464990], 0
    jne loc_00423132
    mov eax, dword ptr [ebp - 0x14]
    call sub_004255b2
loc_00423132:
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00405654
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_00423158
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 4], 1
    jne loc_00423158
    mov dword ptr [ebp - 4], 0
    jmp loc_0042317d
loc_00423158:
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425fb9
    test eax, eax
    jne loc_00423170
    mov dword ptr [ebp - 0x18], 1
    jmp loc_00423177
loc_00423170:
    mov dword ptr [ebp - 0x18], 0
loc_00423177:
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 4], eax
loc_0042317d:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00423188:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00422e48
    test eax, eax
    je loc_004231b3
    mov dword ptr [ebp - 4], 0
    jmp loc_004231fe
loc_004231b3:
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00405654
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_004231d9
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 4], 1
    jne loc_004231d9
    mov dword ptr [ebp - 4], 0
    jmp loc_004231fe
loc_004231d9:
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425fb9
    test eax, eax
    jne loc_004231f1
    mov dword ptr [ebp - 0x14], 1
    jmp loc_004231f8
loc_004231f1:
    mov dword ptr [ebp - 0x14], 0
loc_004231f8:
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 4], eax
loc_004231fe:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00423209:
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
    cmp dword ptr [d_00462200], 0x64
    jge loc_00423255
    mov edx, dword ptr [d_00462200]
    shl edx, 2
    mov eax, dword ptr [d_004621f8]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [edx], eax
    mov eax, dword ptr [d_00462200]
    shl eax, 2
    mov edx, dword ptr [d_004621fc]
    add edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx], eax
    inc dword ptr [d_00462200]
loc_00423255:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0042325d:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x14], edx
    mov dword ptr [ebp - 0x10], ebx
    mov dword ptr [ebp - 0xc], ecx
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 8], eax
loc_00423283:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_0042329d
    jmp loc_004232d1
loc_0042328b:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00423283
loc_0042329d:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_004232cf
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xc]
    cmp eax, dword ptr [ebp - 0x18]
    jne loc_004232cf
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 0x20], eax
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    call sub_00423209
    jmp loc_00423316
loc_004232cf:
    jmp loc_0042328b
loc_004232d1:
    call sub_00422991
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 0
    je loc_00423316
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x1c]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x1c]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x1c]
    mov dword ptr [edx + 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x1c]
    mov dword ptr [edx + 0x10], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [eax + 0x14], 0
loc_00423316:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0042331c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x140
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [d_00462210]
    cmp eax, dword ptr [d_00464994]
    je loc_004233db
    mov eax, dword ptr [d_00464994]
    mov dword ptr [d_00462210], eax
    mov ebx, dword ptr [d_00462204]
    xor edx, edx
    mov eax, dword ptr [d_004621f4]
    call sub_00451940
    mov dword ptr [ebp - 0x34], 0
loc_00423361:
    mov eax, dword ptr [ebp - 0x34]
    cmp eax, dword ptr [d_00462200]
    jl loc_00423376
    jmp loc_004233d1
loc_0042336e:
    mov eax, dword ptr [ebp - 0x34]
    inc dword ptr [ebp - 0x34]
    jmp loc_00423361
loc_00423376:
    mov eax, dword ptr [ebp - 0x34]
    shl eax, 2
    mov edx, dword ptr [d_004621f8]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0x28], eax
    cmp dword ptr [ebp - 0x28], 0
    je loc_004233bb
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax], 0
    je loc_004233bb
    mov eax, dword ptr [ebp - 0x28]
    mov dx, word ptr [eax + 0x4a]
    mov eax, dword ptr [ebp - 0x28]
    mov word ptr [eax + 0x44], dx
    mov eax, dword ptr [ebp - 0x34]
    shl eax, 2
    mov edx, dword ptr [d_004621fc]
    add eax, edx
    mov dl, byte ptr [eax]
    mov eax, dword ptr [ebp - 0x28]
    mov byte ptr [eax + 0x38], dl
loc_004233bb:
    mov eax, dword ptr [ebp - 0x34]
    shl eax, 2
    mov edx, dword ptr [d_004621f8]
    add eax, edx
    mov dword ptr [eax], 0
    jmp loc_0042336e
loc_004233d1:
    mov dword ptr [d_00462200], 0
loc_004233db:
    mov dword ptr [ebp - 0x34], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 0x28], eax
loc_004233ea:
    cmp dword ptr [ebp - 0x34], 0x64
    jl loc_00423407
    jmp loc_00424591
loc_004233f5:
    mov eax, dword ptr [ebp - 0x34]
    inc dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x28]
    add dword ptr [ebp - 0x28], 0x98
    jmp loc_004233ea
loc_00423407:
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax], 0
    je loc_0042458c
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax + 0x94], 0
    jne loc_0042342b
    mov dword ptr [ebp - 0x9c], 1
    jmp loc_00423435
loc_0042342b:
    mov dword ptr [ebp - 0x9c], 0
loc_00423435:
    mov eax, dword ptr [ebp - 0x9c]
    cmp eax, dword ptr [ebp - 0x1c]
    je loc_004233f5
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    mov dword ptr [ebp - 4], eax
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0x28]
    add word ptr [eax + 0x32], dx
loc_00423460:
    mov eax, dword ptr [ebp - 0x28]
    cmp word ptr [eax + 0x32], 0
    jle loc_00423481
    mov eax, dword ptr [ebp - 0x28]
    inc word ptr [eax + 0x30]
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0x28]
    sub word ptr [eax + 0x32], dx
    jmp loc_00423460
loc_00423481:
    mov eax, dword ptr [ebp - 0x28]
    cmp byte ptr [eax + 0x10], 9
    je loc_004234a1
    jmp loc_00423e5a
    .byte 0x8b,0xc0
ptr_00423491:
    .long ptr_00423d4d
    .long ptr_004234cf
    .long ptr_004237c2
    .long ptr_00423bbd
loc_004234a1:
    mov eax, dword ptr [ebp - 0x28]
    mov ax, word ptr [eax + 0x2e]
    mov dword ptr [ebp - 0xa0], eax
    cmp word ptr [ebp - 0xa0], 3
    ja loc_00423e5a
    xor eax, eax
    mov ax, word ptr [ebp - 0xa0]
    shl eax, 2
    jmp dword ptr cs:[eax + ptr_00423491]
ptr_004234cf:
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x70]
    mov dword ptr [ebp - 0xa4], eax
    mov eax, dword ptr [ebp - 0xa4]
    imul eax, dword ptr [d_00464958]
    xor edx, edx
    div dword ptr [d_0046494c]
    mov dword ptr [ebp - 0xa4], eax
    mov eax, dword ptr [ebp - 0xa4]
    mov edx, dword ptr [ebp - 0x28]
    add dword ptr [edx + 0x74], eax
loc_00423502:
    mov eax, dword ptr [ebp - 0x28]
    add dword ptr [eax + 0x74], 0x64
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x28]
    sub dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [eax + d_0045bedc]
    mov eax, dword ptr [ebp - 0x28]
    sub dword ptr [eax + 0x20], edx
loc_00423539:
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax + 0x74], 0
    jle loc_004237bd
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x2c], eax
    mov eax, dword ptr [ebp - 0x30]
    call sub_00426599
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x2c]
    call sub_004265eb
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [ebp - 0x18]
    imul edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov ebx, dword ptr [ebp - 0x14]
    imul ebx, dword ptr [eax + d_0045bedc]
    mov eax, ebx
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [ebp - 0x14]
    imul edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov ebx, dword ptr [ebp - 0x18]
    imul ebx, dword ptr [eax + d_0045bedc]
    mov eax, ebx
    sub edx, eax
    mov dword ptr [ebp - 0xc], edx
    cmp dword ptr [ebp - 0x18], 0
    jne loc_00423604
    cmp dword ptr [ebp - 0x14], 0
    je loc_00423606
loc_00423604:
    jmp loc_00423650
loc_00423606:
    mov eax, dword ptr [ebp - 0x2c]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x30]
    call sub_0042665c
    call sub_00405654
    mov dword ptr [ebp - 0xa8], eax
    cmp dword ptr [ebp - 0xa8], 0
    je loc_00423650
    mov eax, dword ptr [ebp - 0xa8]
    cmp dword ptr [eax + 4], 0
    jne loc_00423650
    mov eax, dword ptr [ebp - 0xa8]
    mov dx, word ptr [eax + 0x2c]
    mov eax, dword ptr [ebp - 0x28]
    mov word ptr [eax + 0x2c], dx
    mov eax, dword ptr [ebp - 0x28]
    mov byte ptr [eax + 0x39], 0
loc_00423650:
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x30]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0xac], edx
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x2c]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0xb0], edx
    mov eax, dword ptr [ebp - 0x2c]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x30]
    call sub_0042665c
    call sub_0042708d
    mov dword ptr [ebp - 0xb4], eax
    cmp dword ptr [ebp - 0xb4], 0
    je loc_004236eb
    mov eax, dword ptr [ebp - 0xb4]
    cmp dword ptr [eax + 4], 9
    je loc_0042371e
    xor edx, edx
    mov eax, dword ptr [ebp - 0x28]
    call sub_00423209
    xor ecx, ecx
    mov eax, dword ptr [ebp - 0x28]
    mov ebx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0xc]
    call sub_0040f10f
    jmp loc_0042371e
loc_004236eb:
    mov edx, dword ptr [ebp - 0xb0]
    mov eax, dword ptr [ebp - 0xac]
    call sub_004230a5
    test eax, eax
    jne loc_00423707
    mov eax, dword ptr [ebp - 0x28]
    mov byte ptr [eax + 0x39], 1
loc_00423707:
    mov eax, dword ptr [ebp - 0x28]
    cmp byte ptr [eax + 0x39], 0
    je loc_0042379f
    cmp dword ptr [ebp - 0x10], 0
    jl loc_0042379f
loc_0042371e:
    mov eax, dword ptr [ebp - 0x28]
    mov byte ptr [eax + 0x39], 0
    mov eax, dword ptr [ebp - 0x30]
    call sub_0042665c
    call sub_00426524
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x2c]
    call sub_004266a3
    call sub_0042655f
    mov dword ptr [ebp - 0x2c], eax
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [eax + 0x74], 0
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax + 4], 2
    jne loc_00423782
    mov eax, dword ptr [ebp - 0x28]
    mov dx, word ptr [eax + 0x2c]
    add edx, 2
    mov eax, dword ptr [ebp - 0x28]
    and edx, 3
    mov word ptr [eax + 0x2c], dx
    mov eax, dword ptr [ebp - 0x28]
    cmp word ptr [eax + 0x2e], 0
    je loc_00423780
    mov eax, 0x87
    call sub_00427abb
loc_00423780:
    jmp loc_0042379f
loc_00423782:
    mov eax, dword ptr [ebp - 0x28]
    cmp word ptr [eax + 0x2e], 0
    je loc_00423796
    mov eax, 0x82
    call sub_00427961
loc_00423796:
    mov eax, dword ptr [ebp - 0x28]
    mov word ptr [eax + 0x2e], 0
loc_0042379f:
    mov eax, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x28]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [ebp - 0x28]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 0x28]
    sub dword ptr [eax + 0x74], 0x64
    jmp loc_00423539
loc_004237bd:
    jmp loc_00423e5a
ptr_004237c2:
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x70]
    mov dword ptr [ebp - 0xb8], eax
    mov eax, dword ptr [ebp - 0xb8]
    imul eax, dword ptr [d_00464958]
    xor edx, edx
    div dword ptr [d_0046494c]
    mov dword ptr [ebp - 0xb8], eax
    mov eax, dword ptr [ebp - 0xb8]
    mov edx, dword ptr [ebp - 0x28]
    add dword ptr [edx + 0x74], eax
loc_004237f5:
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax + 0x74], 0
    jle loc_00423bb8
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x2c], eax
    mov eax, dword ptr [ebp - 0x30]
    call sub_00426599
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x2c]
    call sub_004265eb
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x30]
    call sub_0042665c
    mov dword ptr [ebp - 0xbc], eax
    mov eax, dword ptr [ebp - 0x2c]
    call sub_004266a3
    mov dword ptr [ebp - 0xc0], eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [ebp - 0x18]
    imul edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov ebx, dword ptr [ebp - 0x14]
    imul ebx, dword ptr [eax + d_0045bedc]
    mov eax, ebx
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [ebp - 0x14]
    imul edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov ebx, dword ptr [ebp - 0x18]
    imul ebx, dword ptr [eax + d_0045bedc]
    mov eax, ebx
    sub edx, eax
    mov dword ptr [ebp - 0xc], edx
    cmp dword ptr [ebp - 0x18], 0
    jne loc_004238dc
    cmp dword ptr [ebp - 0x14], 0
    je loc_004238e1
loc_004238dc:
    jmp loc_00423b93
loc_004238e1:
    mov eax, dword ptr [d_004648ac]
    add eax, 2
    cmp eax, dword ptr [ebp - 0xbc]
    jg loc_00423903
    mov eax, dword ptr [d_004648ac]
    add eax, 3
    imul eax, dword ptr [d_004648a4]
    sub dword ptr [ebp - 0x30], eax
loc_00423903:
    cmp dword ptr [ebp - 0xbc], -2
    jg loc_0042391e
    mov eax, dword ptr [d_004648ac]
    add eax, 3
    imul eax, dword ptr [d_004648a4]
    add dword ptr [ebp - 0x30], eax
loc_0042391e:
    mov eax, dword ptr [d_004648b4]
    add eax, 2
    cmp eax, dword ptr [ebp - 0xc0]
    jg loc_00423940
    mov eax, dword ptr [d_004648b4]
    add eax, 3
    imul eax, dword ptr [d_004648a0]
    sub dword ptr [ebp - 0x2c], eax
loc_00423940:
    cmp dword ptr [ebp - 0xc0], -2
    jg loc_0042395b
    mov eax, dword ptr [d_004648b4]
    add eax, 3
    imul eax, dword ptr [d_004648a0]
    add dword ptr [ebp - 0x2c], eax
loc_0042395b:
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, eax
    mov eax, dword ptr [ebp - 0x28]
    cmp edx, dword ptr [eax + 0x14]
    je loc_00423985
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x28]
    cmp edx, dword ptr [eax + 0x18]
    jne loc_00423987
loc_00423985:
    jmp loc_0042398e
loc_00423987:
    mov eax, dword ptr [ebp - 0x28]
    inc word ptr [eax + 0x48]
loc_0042398e:
    mov eax, dword ptr [ebp - 0x28]
    cmp word ptr [eax + 0x48], 3
    jl loc_00423b93
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax + 4], 2
    jne loc_00423a4d
    cmp dword ptr [ebp - 0xbc], 0
    jl loc_004239c0
    mov eax, dword ptr [ebp - 0xbc]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004239c2
loc_004239c0:
    jmp loc_004239cb
loc_004239c2:
    cmp dword ptr [ebp - 0xc0], 0
    jge loc_004239cd
loc_004239cb:
    jmp loc_004239db
loc_004239cd:
    mov eax, dword ptr [ebp - 0xc0]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004239dd
loc_004239db:
    jmp loc_00423a4d
loc_004239dd:
    mov eax, 0x29b
    call sub_00412135
    cmp eax, 1
    jle loc_004239fe
    mov eax, 0x29b
    call sub_00412135
    mov dword ptr [ebp - 0xc4], eax
    jmp loc_00423a08
loc_004239fe:
    mov dword ptr [ebp - 0xc4], 1
loc_00423a08:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0xc4]
    test edx, edx
    jne loc_00423a4d
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    add edx, edx
    mov ebx, edx
    mov edx, dword ptr [ebp - 0x28]
    mov edx, dword ptr [edx + 0x2a]
    sar edx, 0x10
    add edx, ebx
    dec edx
    and edx, 3
    mov ebx, edx
    mov edx, dword ptr [ebp - 0x28]
    mov word ptr [edx + 0x2c], bx
loc_00423a4d:
    mov eax, 0xa0
    call sub_00427961
    mov eax, dword ptr [ebp - 0x28]
    mov word ptr [eax + 0x46], 0
    mov edx, dword ptr [ebp - 0xc0]
    mov eax, dword ptr [ebp - 0xbc]
    call sub_00425fb9
    test eax, eax
    jne loc_00423b93
    mov edx, dword ptr [ebp - 0xc0]
    mov eax, dword ptr [ebp - 0xbc]
    call sub_00422e48
    mov dword ptr [ebp - 0xc8], eax
    cmp dword ptr [ebp - 0xc8], 0
    jne loc_00423b93
    mov edx, dword ptr [ebp - 0xc0]
    mov eax, dword ptr [ebp - 0xbc]
    call sub_0042542d
    mov dword ptr [ebp - 0xc8], eax
    cmp dword ptr [ebp - 0xc8], 0
    jne loc_00423b93
    mov edx, dword ptr [ebp - 0xc0]
    mov eax, dword ptr [ebp - 0xbc]
    call sub_00421cb5
    mov dword ptr [ebp - 0xc8], eax
    cmp dword ptr [ebp - 0xc8], 0
    je loc_00423af1
    mov eax, dword ptr [ebp - 0xc8]
    call sub_00421f7e
    jmp loc_00423b93
loc_00423af1:
    mov edx, dword ptr [ebp - 0xc0]
    mov eax, dword ptr [ebp - 0xbc]
    call sub_00405654
    mov dword ptr [ebp - 0xcc], eax
    cmp dword ptr [ebp - 0xcc], 0
    je loc_00423b28
    mov eax, offset ptr_004443cc
    test eax, eax
    je loc_00423b26
    mov eax, dword ptr [ebp - 0xcc]
    cmp dword ptr [eax + 4], 1
    jne loc_00423b28
loc_00423b26:
    jmp loc_00423b93
loc_00423b28:
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [eax + 0x74], 0
    mov eax, dword ptr [ebp - 0x28]
    mov word ptr [eax + 0x2e], 0
    mov eax, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x28]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [ebp - 0x28]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_0042708d
    test eax, eax
    je loc_00423b91
    xor edx, edx
    mov eax, dword ptr [ebp - 0x28]
    call sub_00423209
    xor ecx, ecx
    mov eax, dword ptr [ebp - 0x28]
    mov ebx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0xc]
    call sub_0040f10f
loc_00423b91:
    jmp loc_00423bb3
loc_00423b93:
    mov eax, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x28]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [ebp - 0x28]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 0x28]
    sub dword ptr [eax + 0x74], 0x64
    mov eax, dword ptr [ebp - 0x28]
    inc word ptr [eax + 0x46]
loc_00423bb3:
    jmp loc_004237f5
loc_00423bb8:
    jmp loc_00423e5a
ptr_00423bbd:
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax + 0x94], 0
    je loc_00423d15
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x94]
    mov dword ptr [ebp - 0xd0], eax
    mov eax, dword ptr [ebp - 0xd0]
    mov word ptr [eax + 0x30], 0
    mov eax, dword ptr [ebp - 0xd0]
    cmp word ptr [eax + 0x4e], 4
    jne loc_00423cc4
    mov eax, dword ptr [ebp - 0xd0]
    mov eax, dword ptr [eax + 0x4e]
    sar eax, 0x10
    dec eax
    mov dword ptr [ebp - 0xd4], eax
    cmp dword ptr [ebp - 0xd4], 0
    jge loc_00423c1f
    mov dword ptr [ebp - 0xd4], 0
loc_00423c1f:
    cmp dword ptr [ebp - 0xd4], 3
    jle loc_00423c32
    mov dword ptr [ebp - 0xd4], 3
loc_00423c32:
    mov eax, dword ptr [ebp - 0xd0]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    imul edx, dword ptr [eax + d_0045becc], 0xa
    mov eax, dword ptr [ebp - 0xd0]
    mov ebx, dword ptr [eax + 0x1c]
    add ebx, edx
    mov eax, dword ptr [ebp - 0xd0]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0xd4]
    add eax, eax
    add eax, 0x1f4
    call sub_00412135
    mov edx, dword ptr [edx + d_0045becc]
    imul edx, eax
    mov eax, dword ptr [ebp - 0x28]
    add ebx, edx
    mov dword ptr [eax + 0x1c], ebx
    mov eax, dword ptr [ebp - 0xd0]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    imul edx, dword ptr [eax + d_0045bedc], 0xa
    mov eax, dword ptr [ebp - 0xd0]
    mov ebx, dword ptr [eax + 0x20]
    add ebx, edx
    mov eax, dword ptr [ebp - 0xd4]
    add eax, eax
    add eax, 0x1f5
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 0x28]
    sub ebx, edx
    mov dword ptr [eax + 0x20], ebx
    jmp loc_00423d13
loc_00423cc4:
    mov eax, dword ptr [ebp - 0xd0]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    imul edx, dword ptr [eax + d_0045becc], 0xa
    mov eax, dword ptr [ebp - 0xd0]
    mov eax, dword ptr [eax + 0x1c]
    add eax, edx
    mov edx, dword ptr [ebp - 0x28]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0xd0]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    imul edx, dword ptr [eax + d_0045bedc], 0xa
    mov eax, dword ptr [ebp - 0xd0]
    add edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x28]
    sub edx, 0x28
    mov dword ptr [eax + 0x20], edx
loc_00423d13:
    jmp loc_00423d48
loc_00423d15:
    mov eax, dword ptr [ebp - 0x30]
    call sub_0042665c
    call sub_00426524
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x2c]
    call sub_004266a3
    call sub_0042655f
    mov dword ptr [ebp - 0x2c], eax
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [eax + 0x74], 0
    mov eax, dword ptr [ebp - 0x28]
    mov word ptr [eax + 0x2e], 0
loc_00423d48:
    jmp loc_00423e5a
ptr_00423d4d:
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00405654
    mov dword ptr [ebp - 0xd8], eax
    cmp dword ptr [ebp - 0xd8], 0
    je loc_00423e5a
    mov eax, dword ptr [ebp - 0xd8]
    cmp dword ptr [eax + 4], 2
    jne loc_00423e5a
    mov eax, dword ptr [ebp - 0xd8]
    mov dx, word ptr [eax + 0x2c]
    mov eax, dword ptr [ebp - 0x28]
    mov word ptr [eax + 0x2c], dx
    mov eax, dword ptr [d_00464930]
    add eax, 0xbe
    call sub_00412135
    imul eax, dword ptr [d_00464958]
    xor edx, edx
    div dword ptr [d_0046494c]
    mov edx, eax
    mov eax, dword ptr [ebp - 0x28]
    add dword ptr [eax + 0x74], edx
    mov dword ptr [ebp - 0xdc], 0
loc_00423dce:
    cmp dword ptr [ebp - 0xdc], 2
    jl loc_00423dea
    # jmp 0x423e55
    .byte 0xe9
    .long loc_00423e55 - . - 4
loc_00423ddc:
    mov eax, dword ptr [ebp - 0xdc]
    inc dword ptr [ebp - 0xdc]
    jmp loc_00423dce
loc_00423dea:
    mov eax, dword ptr [ebp - 0x28]
    test byte ptr [eax + 0x2c], 1
    je loc_00423e24
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    call sub_004265eb
    mov dword ptr [ebp - 0xe0], eax
    cmp dword ptr [ebp - 0xe0], 0
    jge loc_00423e13
    mov eax, dword ptr [ebp - 0x28]
    inc dword ptr [eax + 0x20]
loc_00423e13:
    cmp dword ptr [ebp - 0xe0], 0
    jle loc_00423e22
    mov eax, dword ptr [ebp - 0x28]
    dec dword ptr [eax + 0x20]
loc_00423e22:
    jmp loc_00423e53
loc_00423e24:
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00426599
    mov dword ptr [ebp - 0xe0], eax
    cmp dword ptr [ebp - 0xe0], 0
    jge loc_00423e44
    mov eax, dword ptr [ebp - 0x28]
    inc dword ptr [eax + 0x1c]
loc_00423e44:
    cmp dword ptr [ebp - 0xe0], 0
    jle loc_00423e53
    mov eax, dword ptr [ebp - 0x28]
    dec dword ptr [eax + 0x1c]
loc_00423e53:
    jmp loc_00423ddc
loc_00423e55:
    jmp loc_00423502
loc_00423e5a:
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 4]
    call sub_00422b0f
    push eax
    mov eax, offset d_0045a2b6
    push eax
    lea eax, [ebp - 0x98]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax + 4], 0
    jne loc_00423ec7
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax], 2
    jne loc_00423ec7
    mov eax, dword ptr [ebp - 0x28]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, 0x143
    call sub_00412135
    cmp edx, eax
    jle loc_00423eb7
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0x28]
    mov word ptr [eax + 0x30], 0
    jmp loc_00423ec7
loc_00423eb7:
    mov edx, offset d_0045a2c4
    lea eax, [ebp - 0x98]
    call sub_00451d78
loc_00423ec7:
    lea eax, [ebp - 0x98]
    call sub_0041d957
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [ebp - 0x28]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x24]
    call sub_0041daa7
    mov dword ptr [ebp - 0x20], eax
    call sub_00421969
    cmp eax, 1
    jle loc_0042428c
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax], 2
    je loc_00423f35
    mov eax, dword ptr [ebp - 0x28]
    cmp word ptr [eax + 0x2e], 2
    je loc_00423f13
    mov eax, dword ptr [ebp - 0x28]
    cmp word ptr [eax + 0x2e], 3
    jne loc_00423f15
loc_00423f13:
    jmp loc_00423f35
loc_00423f15:
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax + 4], 1
    je loc_00423f35
    mov eax, dword ptr [ebp - 0x28]
    cmp byte ptr [eax + 0x10], 9
    jne loc_00423f35
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0x28]
    add word ptr [eax + 0x44], dx
loc_00423f35:
    mov eax, dword ptr [ebp - 0x28]
    mov dx, word ptr [eax + 0x44]
    mov eax, dword ptr [ebp - 0x28]
    cmp dx, word ptr [eax + 0x4a]
    jl loc_0042428c
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [eax], 0
    mov eax, dword ptr [ebp - 0x28]
    cmp byte ptr [eax + 0x10], 9
    jne loc_00423f74
    xor ecx, ecx
    mov eax, dword ptr [ebp - 0x28]
    mov ebx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0xc]
    call sub_0040f10f
loc_00423f74:
    mov eax, 0xc8
    call sub_00427961
    mov dword ptr [ebp - 0xe4], 0
loc_00423f88:
    cmp dword ptr [ebp - 0xe4], 4
    jl loc_00423fa4
    jmp loc_0042428c
loc_00423f96:
    mov eax, dword ptr [ebp - 0xe4]
    inc dword ptr [ebp - 0xe4]
    jmp loc_00423f88
loc_00423fa4:
    mov eax, dword ptr [ebp - 0x28]
    cmp byte ptr [eax + 0x38], 0
    je loc_00423fc3
    mov eax, dword ptr [ebp - 0x28]
    mov al, byte ptr [eax + 0x38]
    and eax, 0xff
    mov edx, dword ptr [ebp - 0xe4]
    inc edx
    cmp edx, eax
    je loc_00423f96
loc_00423fc3:
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov dword ptr [ebp - 0xe8], eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov dword ptr [ebp - 0xec], eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 0x28]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, 8
    mov edx, dword ptr [ebp - 0xec]
    mov eax, dword ptr [ebp - 0xe8]
    call sub_00426fcc
    mov edx, dword ptr [ebp - 0xec]
    mov eax, dword ptr [ebp - 0xe8]
    call sub_0042542d
    mov dword ptr [ebp - 0xf0], eax
    cmp dword ptr [ebp - 0xf0], 0
    je loc_0042406f
    mov eax, dword ptr [ebp - 0xf0]
    cmp dword ptr [eax], 2
    jne loc_0042406f
    mov eax, dword ptr [ebp - 0xf0]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebp - 0xf4], eax
    mov eax, dword ptr [ebp - 0xf0]
    call sub_004254f3
    cmp dword ptr [ebp - 0xf4], 2
    jne loc_0042406f
    cmp dword ptr [d_00464990], 0
    jne loc_0042406f
    mov eax, dword ptr [ebp - 0xf4]
    call sub_004255b2
loc_0042406f:
    mov dword ptr [ebp - 0xf8], 0
loc_00424079:
    mov eax, dword ptr [ebp - 0x28]
    mov al, byte ptr [eax + 0x4c]
    and eax, 0xff
    cmp eax, dword ptr [ebp - 0xf8]
    jg loc_0042409f
    jmp loc_00424287
loc_00424091:
    mov eax, dword ptr [ebp - 0xf8]
    inc dword ptr [ebp - 0xf8]
    jmp loc_00424079
loc_0042409f:
    mov eax, dword ptr [ebp - 0xe4]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045becc]
    add dword ptr [ebp - 0xe8], eax
    mov eax, dword ptr [ebp - 0xe4]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045bedc]
    add dword ptr [ebp - 0xec], eax
    mov edx, dword ptr [ebp - 0xec]
    mov eax, dword ptr [ebp - 0xe8]
    call sub_00422e48
    mov dword ptr [ebp - 0xfc], eax
    cmp dword ptr [ebp - 0xfc], 0
    je loc_00424148
    mov eax, dword ptr [ebp - 0x28]
    mov dx, word ptr [eax + 0x3e]
    mov eax, dword ptr [ebp - 0xfc]
    mov word ptr [eax + 0x3e], dx
    mov eax, dword ptr [ebp - 0xe4]
    add eax, 2
    and eax, 3
    lea edx, [eax + 1]
    mov eax, dword ptr [ebp - 0xfc]
    call sub_00423209
    mov eax, dword ptr [ebp - 0xe4]
    add eax, 2
    and eax, 3
    lea ecx, [eax + 1]
    mov eax, dword ptr [ebp - 0xfc]
    mov ebx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0xfc]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0xfc]
    mov eax, dword ptr [eax + 0xc]
    call sub_0040f10f
    jmp loc_00424287
loc_00424148:
    mov edx, dword ptr [ebp - 0xec]
    mov eax, dword ptr [ebp - 0xe8]
    call sub_0042542d
    mov dword ptr [ebp - 0xfc], eax
    cmp dword ptr [ebp - 0xfc], 0
    je loc_004241af
    mov eax, dword ptr [ebp - 0xfc]
    cmp dword ptr [eax], 2
    jne loc_004241af
    mov eax, dword ptr [ebp - 0xfc]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebp - 0x100], eax
    mov eax, dword ptr [ebp - 0xfc]
    call sub_004254f3
    cmp dword ptr [ebp - 0x100], 2
    jne loc_004241aa
    cmp dword ptr [d_00464990], 0
    jne loc_004241aa
    mov eax, dword ptr [ebp - 0x100]
    call sub_004255b2
loc_004241aa:
    jmp loc_00424287
loc_004241af:
    mov edx, dword ptr [ebp - 0xec]
    mov eax, dword ptr [ebp - 0xe8]
    call sub_00425fb9
    mov dword ptr [ebp - 0x104], eax
    cmp dword ptr [ebp - 0x104], 1
    je loc_00424287
    cmp dword ptr [ebp - 0x104], 2
    jne loc_00424228
    push -1
    mov eax, dword ptr [ebp - 0x28]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, 9
    mov edx, dword ptr [ebp - 0xec]
    mov eax, dword ptr [ebp - 0xe8]
    call sub_00426fcc
    inc dword ptr [d_004642b8]
    xor ebx, ebx
    mov edx, dword ptr [ebp - 0xec]
    mov eax, dword ptr [ebp - 0xe8]
    call sub_00425efc
    mov edx, dword ptr [ebp - 0xec]
    mov eax, dword ptr [ebp - 0xe8]
    call sub_00425107
    jmp loc_00424287
loc_00424228:
    mov eax, dword ptr [ebp - 0x28]
    mov al, byte ptr [eax + 0x4c]
    and eax, 0xff
    dec eax
    cmp eax, dword ptr [ebp - 0xf8]
    jne loc_0042424a
    mov eax, dword ptr [ebp - 0xe4]
    mov dword ptr [ebp - 0x108], eax
    jmp loc_00424259
loc_0042424a:
    mov eax, dword ptr [ebp - 0xe4]
    add eax, 4
    mov dword ptr [ebp - 0x108], eax
loc_00424259:
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 0x28]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, dword ptr [ebp - 0x108]
    mov edx, dword ptr [ebp - 0xec]
    mov eax, dword ptr [ebp - 0xe8]
    call sub_00426fcc
    jmp loc_00424091
loc_00424287:
    jmp loc_00423f96
loc_0042428c:
    mov eax, dword ptr [ebp - 0x28]
    cmp dword ptr [eax], 0
    je loc_0042458c
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x42]
    sar eax, 0x10
    add eax, 0x64
    mov dword ptr [ebp - 0x10c], eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov dword ptr [ebp - 0x110], eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov dword ptr [ebp - 0x114], eax
    mov ebx, dword ptr [ebp - 0x10c]
    mov edx, dword ptr [ebp - 0x114]
    mov eax, dword ptr [ebp - 0x110]
    call sub_00424dfe
    mov dword ptr [ebp - 0x118], 0
loc_004242ed:
    cmp dword ptr [ebp - 0x118], 4
    jl loc_00424309
    jmp loc_004243da
loc_004242fb:
    mov eax, dword ptr [ebp - 0x118]
    inc dword ptr [ebp - 0x118]
    jmp loc_004242ed
loc_00424309:
    mov eax, dword ptr [ebp - 0x110]
    mov dword ptr [ebp - 0x11c], eax
    mov eax, dword ptr [ebp - 0x114]
    mov dword ptr [ebp - 0x120], eax
    mov dword ptr [ebp - 0x124], 1
loc_0042432b:
    mov eax, dword ptr [ebp - 0x28]
    mov al, byte ptr [eax + 0x4c]
    and eax, 0xff
    cmp eax, dword ptr [ebp - 0x124]
    jge loc_00424351
    jmp loc_004243d5
loc_00424343:
    mov eax, dword ptr [ebp - 0x124]
    inc dword ptr [ebp - 0x124]
    jmp loc_0042432b
loc_00424351:
    mov eax, dword ptr [ebp - 0x118]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045becc]
    add dword ptr [ebp - 0x11c], eax
    mov eax, dword ptr [ebp - 0x118]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045bedc]
    add dword ptr [ebp - 0x120], eax
    mov edx, dword ptr [ebp - 0x120]
    mov eax, dword ptr [ebp - 0x11c]
    call sub_00425fb9
    test eax, eax
    jne loc_004243d5
    mov edx, dword ptr [ebp - 0x120]
    mov eax, dword ptr [ebp - 0x11c]
    call sub_00422e48
    test eax, eax
    jne loc_004243d5
    mov ebx, dword ptr [ebp - 0x10c]
    mov edx, dword ptr [ebp - 0x120]
    mov eax, dword ptr [ebp - 0x11c]
    call sub_00424dfe
    mov edx, dword ptr [ebp - 0x120]
    mov eax, dword ptr [ebp - 0x11c]
    call sub_0042542d
    test eax, eax
    je loc_00424343
loc_004243d5:
    jmp loc_004242fb
loc_004243da:
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [ebp - 0x128], eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    mov dword ptr [ebp - 0x12c], eax
    mov eax, dword ptr [ebp - 0x28]
    cmp word ptr [eax + 0x2e], 2
    jne loc_00424510
    fild dword ptr [d_004648a4]
    fstp qword ptr [ebp - 0x134]
    mov eax, dword ptr [ebp - 0x28]
    cmp word ptr [eax + 0x2c], 0
    je loc_00424420
    mov eax, dword ptr [ebp - 0x28]
    cmp word ptr [eax + 0x2c], 2
    jne loc_0042442c
loc_00424420:
    fild dword ptr [d_004648a0]
    fstp qword ptr [ebp - 0x134]
loc_0042442c:
    mov eax, dword ptr [ebp - 0x28]
    cmp word ptr [eax + 0x48], 3
    jge loc_004244a8
    mov eax, 0x294
    call sub_00412135
    mov dword ptr [ebp - 0x138], eax
    fild dword ptr [ebp - 0x138]
    fstp qword ptr [ebp - 0x140]
    mov eax, dword ptr [ebp - 0x28]
    fild word ptr [eax + 0x46]
    fmul qword ptr [d_0045a2c9]
    fld qword ptr [ebp - 0x134]
    fmul qword ptr [d_0045a2d1]
    fdivp st(1)
    sub esp, 8
    fstp qword ptr [esp]
    call sub_00433b0b
    fmul qword ptr [ebp - 0x140]
    fild dword ptr [ebp - 0x12c]
    fstp qword ptr [ebp - 0x140]
    fsubr qword ptr [ebp - 0x140]
    fstp qword ptr [ebp - 0x140]
    fld qword ptr [ebp - 0x140]
    call sub_00433b38
    fistp dword ptr [ebp - 0x12c]
    jmp loc_00424510
loc_004244a8:
    mov eax, 0x295
    call sub_00412135
    mov dword ptr [ebp - 0x140], eax
    fild dword ptr [ebp - 0x140]
    fstp qword ptr [ebp - 0x140]
    mov eax, dword ptr [ebp - 0x28]
    fild word ptr [eax + 0x46]
    fmul qword ptr [d_0045a2d9]
    fdiv qword ptr [ebp - 0x134]
    sub esp, 8
    fstp qword ptr [esp]
    call sub_00433b0b
    fmul qword ptr [ebp - 0x140]
    fild dword ptr [ebp - 0x12c]
    fstp qword ptr [ebp - 0x140]
    fsubr qword ptr [ebp - 0x140]
    fstp qword ptr [ebp - 0x140]
    fld qword ptr [ebp - 0x140]
    call sub_00433b38
    fistp dword ptr [ebp - 0x12c]
loc_00424510:
    mov eax, dword ptr [ebp - 0x28]
    cmp byte ptr [eax + 0x10], 9
    je loc_00424531
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [ebp - 0x128], eax
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0x20]
    mov dword ptr [ebp - 0x12c], eax
loc_00424531:
    mov eax, dword ptr [ebp - 0x28]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x12c]
    mov eax, dword ptr [ebp - 0x128]
    call sub_00415a9f
    call sub_0040c06a
    test eax, eax
    je loc_0042458c
    mov eax, dword ptr [ebp - 0x128]
    cmp eax, dword ptr [ebp - 8]
    jne loc_0042456c
    mov eax, dword ptr [ebp - 0x12c]
    cmp eax, dword ptr [ebp - 4]
    je loc_0042458c
loc_0042456c:
    mov eax, dword ptr [ebp - 0x28]
    mov ecx, dword ptr [eax + 0x2c]
    sar ecx, 0x10
    mov ebx, dword ptr [ebp - 0x12c]
    mov edx, dword ptr [ebp - 0x128]
    mov eax, dword ptr [ebp - 0x28]
    mov eax, dword ptr [eax + 0xc]
    call sub_0040f974
loc_0042458c:
    jmp loc_004233f5
loc_00424591:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042459a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, 1
    call sub_0042331c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004245b9:
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
    call sub_0042331c
    call sub_00422a25
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004245da:
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
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 0x10], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 8], eax
loc_00424601:
    cmp dword ptr [ebp - 0x10], 0x64
    jl loc_0042461b
    jmp loc_00424639
loc_00424609:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00424601
loc_0042461b:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00424637
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x14]
    jne loc_00424637
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
loc_00424637:
    jmp loc_00424609
loc_00424639:
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
sub_0042464b:
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
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 4]
    jne loc_00424676
    mov eax, dword ptr [ebp - 8]
    cmp word ptr [eax + 0x2e], 0
    jne loc_00424680
loc_00424676:
    mov eax, 0x78
    call sub_00427961
loc_00424680:
    mov eax, dword ptr [ebp - 8]
    cmp word ptr [eax + 0x2e], 0
    je loc_004246db
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 4]
    je loc_004246db
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00426524
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x20], edx
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0x2e], 0
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x74], 0
loc_004246db:
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov word ptr [edx + 0x2c], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0x2e], 1
    mov eax, 0x12c
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x70], edx
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00424708:
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
    mov eax, dword ptr [ebp - 8]
    cmp word ptr [eax + 0x2e], 0
    je loc_0042472f
    mov eax, dword ptr [ebp - 8]
    cmp word ptr [eax + 0x2e], 1
    jne loc_00424731
loc_0042472f:
    jmp loc_00424733
loc_00424731:
    jmp loc_00424757
loc_00424733:
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 9
    jne loc_00424749
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_0042464b
    jmp loc_00424757
loc_00424749:
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xc]
    call sub_0041017a
loc_00424757:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0042475f:
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
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 8], eax
loc_00424781:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_0042479b
    jmp loc_004247bd
loc_00424789:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00424781
loc_0042479b:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_004247bb
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xc]
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_004247bb
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    call sub_0042464b
    jmp loc_004247bd
loc_004247bb:
    jmp loc_00424789
loc_004247bd:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004247c5:
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
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 4], eax
loc_004247ec:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_00424806
    jmp loc_00424838
loc_004247f4:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_004247ec
loc_00424806:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 0
    je loc_00424836
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_00424836
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 4], 2
    je loc_00424836
    mov eax, dword ptr [ebp - 4]
    cmp word ptr [eax + 0x2e], 1
    jne loc_00424836
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x39], 1
loc_00424836:
    jmp loc_004247f4
loc_00424838:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00424841:
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
    mov dword ptr [eax], 0
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00424864:
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
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 8], eax
loc_00424884:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_0042489e
    jmp loc_004248bd
loc_0042488c:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00424884
loc_0042489e:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_004248bb
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xc]
    cmp eax, dword ptr [ebp - 0xc]
    jne loc_004248bb
    mov eax, dword ptr [ebp - 8]
    call sub_00424841
    jmp loc_004248bd
loc_004248bb:
    jmp loc_0042488c
loc_004248bd:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004248c6:
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
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00426524
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x20], edx
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0x2e], 0
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x74], 0
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov word ptr [edx + 0x2c], ax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0x2e], 2
    mov eax, 0x12d
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x70], edx
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x39], 0
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0x48], 0
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0x46], 0
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x14], edx
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x18], edx
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x94], 0
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00424987:
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
    mov eax, dword ptr [ebp - 8]
    cmp word ptr [eax + 0x2e], 0
    je loc_004249ae
    mov eax, dword ptr [ebp - 8]
    cmp word ptr [eax + 0x2e], 1
    jne loc_004249b0
loc_004249ae:
    jmp loc_004249ba
loc_004249b0:
    mov eax, dword ptr [ebp - 8]
    cmp word ptr [eax + 0x2e], 3
    jne loc_004249bc
loc_004249ba:
    jmp loc_004249be
loc_004249bc:
    jmp loc_004249e2
loc_004249be:
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 9
    jne loc_004249d4
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_004248c6
    jmp loc_004249e2
loc_004249d4:
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xc]
    call sub_0041013f
loc_004249e2:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004249ea:
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
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 8], eax
loc_00424a0c:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_00424a26
    jmp loc_00424a48
loc_00424a14:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00424a0c
loc_00424a26:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00424a46
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xc]
    cmp eax, dword ptr [ebp - 0x10]
    jne loc_00424a46
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    call sub_004248c6
    jmp loc_00424a48
loc_00424a46:
    jmp loc_00424a14
loc_00424a48:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00424a50:
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
    mov dword ptr [ebp - 0x14], 0
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0xc], edx
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00422e48
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_00424adb
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 8]
    call sub_00424987
    mov eax, 0x96
    call sub_00427961
loc_00424adb:
    mov dword ptr [ebp - 0x14], 1
    mov eax, dword ptr [ebp - 0x14]
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
sub_00424af4:
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
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 0x94], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x94], eax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0x2e], 3
    mov eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x39], 0
    mov eax, 0xaa
    call sub_00427961
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00424b41:
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
    mov eax, dword ptr [d_00464994]
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], 0xffffffff
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 0x14], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 0xc], eax
loc_00424b77:
    cmp dword ptr [ebp - 0x14], 0x64
    jl loc_00424b94
    # jmp 0x424be5
    .byte 0xe9
    .long loc_00424be5 - . - 4
loc_00424b82:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x98
    jmp loc_00424b77
loc_00424b94:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax], 0
    je loc_00424be3
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x18]
    jne loc_00424be3
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 4], 1
    jne loc_00424be3
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x2e], 3
    je loc_00424bc7
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x2e], 2
    jne loc_00424bc9
loc_00424bc7:
    jmp loc_00424be3
loc_00424bc9:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x40]
    cmp eax, dword ptr [ebp - 8]
    jge loc_00424be3
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x40]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 4], eax
loc_00424be3:
    jmp loc_00424b82
loc_00424be5:
    cmp dword ptr [ebp - 4], -1
    je loc_00424c3e
    xor edx, edx
    imul eax, dword ptr [ebp - 4], 0x98
    mov ebx, dword ptr [d_0046220c]
    add eax, ebx
    call sub_00423209
    xor ecx, ecx
    imul eax, dword ptr [ebp - 4], 0x98
    mov edx, dword ptr [d_0046220c]
    add eax, edx
    mov ebx, dword ptr [eax + 0x20]
    imul eax, dword ptr [ebp - 4], 0x98
    mov edx, dword ptr [d_0046220c]
    add eax, edx
    mov edx, dword ptr [eax + 0x1c]
    imul eax, dword ptr [ebp - 4], 0x98
    mov esi, dword ptr [d_0046220c]
    add eax, esi
    mov eax, dword ptr [eax + 0xc]
    call sub_0040f10f
loc_00424c3e:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00424c47:
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
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 4], eax
loc_00424c67:
    cmp dword ptr [ebp - 8], 0x64
    jl loc_00424c81
    jmp loc_00424cb5
loc_00424c6f:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_00424c67
loc_00424c81:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 0
    je loc_00424cb3
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0xc]
    jne loc_00424cb3
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 4], 1
    jne loc_00424cb3
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], 0
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 0x44], 0
loc_00424cb3:
    jmp loc_00424c6f
loc_00424cb5:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00424cbe:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x14], edx
    mov dword ptr [ebp - 0x10], ebx
    mov dword ptr [ebp - 0xc], ecx
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [d_0046220c]
    mov dword ptr [ebp - 8], eax
loc_00424ce4:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_00424cfe
    jmp loc_00424d31
loc_00424cec:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x98
    jmp loc_00424ce4
loc_00424cfe:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00424d2f
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xc]
    cmp eax, dword ptr [ebp - 0x18]
    jne loc_00424d2f
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 8]
    mov word ptr [edx + 0x2e], ax
    jmp loc_00424d31
loc_00424d2f:
    jmp loc_00424cec
loc_00424d31:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_00424d37:
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
    cmp dword ptr [ebp - 0x10], 0
    jl loc_00424d5b
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00424d5d
loc_00424d5b:
    jmp loc_00424d63
loc_00424d5d:
    cmp dword ptr [ebp - 0xc], 0
    jge loc_00424d65
loc_00424d63:
    jmp loc_00424d70
loc_00424d65:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00424d7c
loc_00424d70:
    mov dword ptr [ebp - 4], 0
    # jmp 0x424df3
    .byte 0xe9
    .long loc_00424df3 - . - 4
loc_00424d7c:
    mov eax, dword ptr [d_004648ac]
    imul eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    add edx, eax
    mov dword ptr [ebp - 8], edx
    cmp dword ptr [ebp - 8], 0
    jl loc_00424d9e
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00462204]
    jl loc_00424de0
loc_00424d9e:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, offset d_0045a2e1
    push eax
    call sub_0042c0c8
    add esp, 0xc
    push dword ptr [d_00462204]
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_0045a2f0
    push eax
    call sub_0042c0c8
    add esp, 0xc
    mov eax, offset d_0045a2fe
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_00424de0:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_004621f4]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 4], eax
loc_00424df3:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00424dfe:
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
    jl loc_00424e24
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00424e26
loc_00424e24:
    jmp loc_00424e2c
loc_00424e26:
    cmp dword ptr [ebp - 0xc], 0
    jge loc_00424e2e
loc_00424e2c:
    jmp loc_00424e39
loc_00424e2e:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00424e3e
loc_00424e39:
    jmp loc_00424ec8
loc_00424e3e:
    mov eax, dword ptr [d_004648ac]
    imul eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [ebp - 4], 0
    jl loc_00424e60
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00462204]
    jl loc_00424ea2
loc_00424e60:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, offset d_0045a30d
    push eax
    call sub_0042c0c8
    add esp, 0xc
    push dword ptr [d_00462204]
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, offset d_0045a2f0
    push eax
    call sub_0042c0c8
    add esp, 0xc
    mov eax, offset d_0045a2fe
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_00424ea2:
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [d_004621f4]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [edx]
    jle loc_00424ec8
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [d_004621f4]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [edx], eax
loc_00424ec8:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
ptr_00424ecf:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_00462214], 0
    je loc_00424f04
    mov ebx, 0x28
    mov edx, offset d_0045a387
    mov eax, dword ptr [d_00462214]
    call sub_0041863d
    mov dword ptr [d_00462214], 0
loc_00424f04:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00424f0b:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_004648ac]
    imul eax, dword ptr [d_004648b4]
    mov dword ptr [d_00462218], eax
    mov ebx, 0x32
    mov edx, offset d_0045a387
    imul eax, dword ptr [d_00462218], 0x98
    call sub_004184d0
    mov dword ptr [d_00462214], eax
    mov eax, offset ptr_00424ecf
    call sub_00410ebf
    call sub_00424f5e
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00424f5e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    imul ebx, dword ptr [d_00462218], 0x98
    xor edx, edx
    mov eax, dword ptr [d_00462214]
    call sub_00451940
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00424f89:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x78
    .byte 0x81,0xec,0x78,0x00,0x00,0x00
    mov eax, dword ptr [d_00462214]
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 0x14], 0
loc_00424fa6:
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00424fbe
    jmp loc_004250fe
loc_00424fb6:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_00424fa6
loc_00424fbe:
    mov dword ptr [ebp - 0x10], 0
loc_00424fc5:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00424fdd
    jmp loc_004250f9
loc_00424fd5:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00424fc5
loc_00424fdd:
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 0
    je loc_00425013
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 8], 0
    je loc_00425013
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 8], 0
loc_00425013:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 1
    jne loc_00425034
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425fb9
    cmp eax, 2
    je loc_00425034
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
loc_00425034:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 2
    jne loc_004250ea
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425fb9
    test eax, eax
    jne loc_004250ea
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    shl eax, 2
    push dword ptr [eax + d_0045be50]
    mov eax, offset d_0045a38f
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 4]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041daa7
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 4]
    inc word ptr [eax + 0x44]
    mov eax, dword ptr [ebp - 4]
    cmp word ptr [eax + 0x44], 4
    jne loc_004250c9
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00421cb5
    test eax, eax
    jne loc_004250c9
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 4]
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax]
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0040f710
loc_004250c9:
    mov ebx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    call sub_00426524
    call sub_00415920
    mov eax, dword ptr [ebp - 4]
    inc word ptr [eax + 0x30]
loc_004250ea:
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x98
    jmp loc_00424fd5
loc_004250f9:
    jmp loc_00424fb6
loc_004250fe:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00425107:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xb8
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    call sub_0045190a
    mov edx, eax
    mov ebx, 0x1e
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_00425136
    call sub_0042be0b
loc_00425136:
    cmp dword ptr [ebp - 0xc], 0
    jl loc_00425147
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00425149
loc_00425147:
    jmp loc_0042514f
loc_00425149:
    cmp dword ptr [ebp - 8], 0
    jge loc_00425151
loc_0042514f:
    jmp loc_0042515c
loc_00425151:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00425161
loc_0042515c:
    jmp loc_0042537b
loc_00425161:
    imul edx, dword ptr [ebp - 0xc], 0x98
    mov eax, dword ptr [d_00462214]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [d_004648ac]
    imul eax, eax, 0x98
    add edx, eax
    mov dword ptr [ebp - 4], edx
    call sub_0040c06a
    test eax, eax
    jne loc_0042535e
    call sub_004105b0
    mov edx, eax
    mov eax, 0x66
    call sub_00412135
    cmp edx, eax
    jge loc_0042535e
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebp - 0x20], eax
    cmp dword ptr [ebp - 0x20], 5
    jb loc_004251ca
    cmp dword ptr [ebp - 0x20], 6
    jbe loc_004251cf
    cmp dword ptr [ebp - 0x20], 0xb
    je loc_004251cf
    jmp loc_0042535e
loc_004251ca:
    jmp loc_0042535e
loc_004251cf:
    mov dword ptr [ebp - 0x1c], 0
loc_004251d6:
    cmp dword ptr [ebp - 0x1c], 0xc8
    jl loc_004251ec
    jmp loc_004252b7
loc_004251e4:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_004251d6
loc_004251ec:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648ac]
    mov dword ptr [ebp - 0x18], edx
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648b4]
    mov dword ptr [ebp - 0x14], edx
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_00425fb9
    cmp eax, 2
    jne loc_004252b2
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_0042542d
    test eax, eax
    # je 0x4252b2
    .byte 0x0f,0x84
    .long loc_004252b2 - . - 4
    imul eax, dword ptr [ebp - 0x18], 0x98
    mov edx, dword ptr [d_00462214]
    add edx, eax
    mov eax, dword ptr [ebp - 0x14]
    imul eax, dword ptr [d_004648ac]
    imul eax, eax, 0x98
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov eax, dword ptr [ebp - 0x10]
    cmp dword ptr [eax + 4], 5
    je loc_00425273
    mov eax, dword ptr [ebp - 0x10]
    cmp dword ptr [eax + 4], 6
    jne loc_00425275
loc_00425273:
    jmp loc_0042527e
loc_00425275:
    mov eax, dword ptr [ebp - 0x10]
    cmp dword ptr [eax + 4], 0xb
    jne loc_00425280
loc_0042527e:
    jmp loc_004252b2
loc_00425280:
    mov ecx, 0x26
    lea edi, [ebp - 0xb8]
    mov esi, dword ptr [ebp - 4]
    rep movsd dword ptr es:[edi], dword ptr [esi]
    mov ecx, 0x26
    mov edi, dword ptr [ebp - 4]
    mov esi, dword ptr [ebp - 0x10]
    rep movsd dword ptr es:[edi], dword ptr [esi]
    mov ecx, 0x26
    mov edi, dword ptr [ebp - 0x10]
    lea esi, [ebp - 0xb8]
    rep movsd dword ptr es:[edi], dword ptr [esi]
    jmp loc_0042535e
loc_004252b2:
    jmp loc_004251e4
loc_004252b7:
    mov dword ptr [ebp - 0x1c], 0
loc_004252be:
    cmp dword ptr [ebp - 0x1c], 0xc8
    jl loc_004252d4
    jmp loc_0042535e
loc_004252cc:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_004252be
loc_004252d4:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648ac]
    mov dword ptr [ebp - 0x18], edx
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648b4]
    mov dword ptr [ebp - 0x14], edx
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_00425fb9
    cmp eax, 2
    jne loc_00425359
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_0042542d
    test eax, eax
    jne loc_00425359
    imul eax, dword ptr [ebp - 0x18], 0x98
    mov edx, dword ptr [d_00462214]
    add edx, eax
    mov eax, dword ptr [ebp - 0x14]
    imul eax, dword ptr [d_004648ac]
    imul eax, eax, 0x98
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov ecx, 0x26
    mov edi, dword ptr [ebp - 0x10]
    mov esi, dword ptr [ebp - 4]
    rep movsd dword ptr es:[edi], dword ptr [esi]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
    jmp loc_0042537b
loc_00425359:
    jmp loc_004252cc
loc_0042535e:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 1
    jne loc_0042537b
    mov edx, dword ptr [d_00464994]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x40], edx
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 2
loc_0042537b:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00425383:
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
    jl loc_004253a9
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004253ab
loc_004253a9:
    jmp loc_004253b1
loc_004253ab:
    cmp dword ptr [ebp - 0xc], 0
    jge loc_004253b3
loc_004253b1:
    jmp loc_004253be
loc_004253b3:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004253c0
loc_004253be:
    jmp loc_00425426
loc_004253c0:
    imul edx, dword ptr [ebp - 0x10], 0x98
    mov eax, dword ptr [d_00462214]
    add edx, eax
    mov eax, dword ptr [ebp - 0xc]
    imul eax, dword ptr [d_004648ac]
    imul eax, eax, 0x98
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 2
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 0x30], 0
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 0x44], 0
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 4], eax
    call sub_0040c06a
    test eax, eax
    je loc_00425426
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 4]
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0040f710
loc_00425426:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0042542d:
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
    cmp dword ptr [ebp - 0x10], 0
    jl loc_00425451
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00425453
loc_00425451:
    jmp loc_00425459
loc_00425453:
    cmp dword ptr [ebp - 0xc], 0
    jge loc_0042545b
loc_00425459:
    jmp loc_00425466
loc_0042545b:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648b4]
    jl loc_0042546f
loc_00425466:
    mov dword ptr [ebp - 4], 0
    jmp loc_004254aa
loc_0042546f:
    imul eax, dword ptr [ebp - 0x10], 0x98
    mov edx, dword ptr [d_00462214]
    add edx, eax
    mov eax, dword ptr [ebp - 0xc]
    imul eax, dword ptr [d_004648ac]
    imul eax, eax, 0x98
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_004254a3
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_004254aa
loc_004254a3:
    mov dword ptr [ebp - 4], 0
loc_004254aa:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004254b5:
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
    cmp dword ptr [d_0045be98], 0
    je loc_004254e0
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0040fd7b
loc_004254e0:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 8], 1
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004254f3:
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
    cmp dword ptr [d_0045be98], 0
    je loc_0042551e
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0040fd7b
loc_0042551e:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00425530:
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
    jl loc_00425554
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00425556
loc_00425554:
    jmp loc_0042555c
loc_00425556:
    cmp dword ptr [ebp - 8], 0
    jge loc_0042555e
loc_0042555c:
    jmp loc_00425569
loc_0042555e:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_0042556b
loc_00425569:
    jmp loc_004255aa
loc_0042556b:
    imul edx, dword ptr [ebp - 0xc], 0x98
    mov eax, dword ptr [d_00462214]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [d_004648ac]
    imul eax, eax, 0x98
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov dword ptr [d_0045be98], 0
    mov eax, dword ptr [ebp - 4]
    call sub_004254b5
    mov dword ptr [d_0045be98], 1
loc_004255aa:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004255b2:
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
    cmp dword ptr [ebp - 0x18], 0xd
    je loc_00425681
    mov dword ptr [ebp - 0xc], 0
loc_004255d4:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_004255e7
    jmp loc_00425681
loc_004255df:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_004255d4
loc_004255e7:
    mov dword ptr [ebp - 8], 0x64
loc_004255ee:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648ac]
    mov dword ptr [ebp - 0x14], edx
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648b4]
    mov dword ptr [ebp - 0x10], edx
    mov edx, dword ptr [ebp - 8]
    dec dword ptr [ebp - 8]
    cmp dword ptr [ebp - 8], 0
    jle loc_00425681
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00425fb9
    test eax, eax
    jne loc_004255ee
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00422e48
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jne loc_004255df
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0042542d
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jne loc_004255df
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00421cb5
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jne loc_004255df
    mov ebx, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00425383
loc_00425681:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042568a:
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
    jl loc_004256b2
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004256b4
loc_004256b2:
    jmp loc_004256ba
loc_004256b4:
    cmp dword ptr [ebp - 0x10], 0
    jge loc_004256bc
loc_004256ba:
    jmp loc_004256c7
loc_004256bc:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004256c9
loc_004256c7:
    jmp loc_004256fe
loc_004256c9:
    imul eax, dword ptr [ebp - 0x14], 0x98
    mov edx, dword ptr [d_00462214]
    add edx, eax
    mov eax, dword ptr [ebp - 0x10]
    imul eax, dword ptr [d_004648ac]
    imul eax, eax, 0x98
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 4], eax
loc_004256fe:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_00425704:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x20
    .byte 0x81,0xec,0x20,0x00,0x00,0x00
    mov dword ptr [ebp - 0x20], eax
    mov dword ptr [ebp - 0x1c], edx
    mov dword ptr [ebp - 0x18], ebx
    cmp dword ptr [ebp - 0x20], 0
    jl loc_0042572a
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [d_004648ac]
    jl loc_0042572c
loc_0042572a:
    jmp loc_00425732
loc_0042572c:
    cmp dword ptr [ebp - 0x1c], 0
    jge loc_00425734
loc_00425732:
    jmp loc_0042573f
loc_00425734:
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00425744
loc_0042573f:
    jmp loc_00425834
loc_00425744:
    imul eax, dword ptr [ebp - 0x20], 0x98
    mov edx, dword ptr [d_00462214]
    add edx, eax
    mov eax, dword ptr [ebp - 0x1c]
    imul eax, dword ptr [d_004648ac]
    imul eax, eax, 0x98
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00425826
    mov dword ptr [ebp - 0x14], 0
loc_0042577b:
    cmp dword ptr [ebp - 0x14], 0xc8
    jl loc_00425791
    jmp loc_00425826
loc_00425789:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_0042577b
loc_00425791:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648ac]
    mov dword ptr [ebp - 0x10], edx
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648b4]
    mov dword ptr [ebp - 0xc], edx
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425fb9
    cmp eax, 2
    jne loc_00425821
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0042542d
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jne loc_00425821
    imul eax, dword ptr [ebp - 0x10], 0x98
    mov edx, dword ptr [d_00462214]
    add eax, edx
    mov edx, dword ptr [ebp - 0xc]
    imul edx, dword ptr [d_004648ac]
    imul edx, edx, 0x98
    add eax, edx
    mov dword ptr [ebp - 4], eax
    mov ecx, 0x26
    mov edi, dword ptr [ebp - 4]
    mov esi, dword ptr [ebp - 8]
    rep movsd dword ptr es:[edi], dword ptr [esi]
    mov ebx, 0x98
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_00451940
    jmp loc_00425826
loc_00425821:
    jmp loc_00425789
loc_00425826:
    mov ebx, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x1c]
    mov eax, dword ptr [ebp - 0x20]
    call sub_00425e9b
loc_00425834:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0042583b:
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
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425704
    mov edx, dword ptr [ebp - 8]
    dec edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425fb9
    cmp eax, 1
    je loc_0042587e
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    dec edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425704
loc_0042587e:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    inc eax
    call sub_00425fb9
    cmp eax, 1
    je loc_0042589e
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    inc eax
    call sub_00425704
loc_0042589e:
    mov edx, dword ptr [ebp - 8]
    inc edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425fb9
    cmp eax, 1
    je loc_004258be
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    inc edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425704
loc_004258be:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    dec eax
    call sub_00425fb9
    cmp eax, 1
    je loc_004258de
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    dec eax
    call sub_00425704
loc_004258de:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_004258e5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x2c
    .byte 0x81,0xec,0x2c,0x00,0x00,0x00
    call sub_00424f5e
    call sub_0040c06a
    cmp eax, 1
    jne loc_00425a76
    mov dword ptr [ebp - 0x20], 0
    mov dword ptr [ebp - 0x1c], 0
loc_00425914:
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00425929
    jmp loc_00425962
loc_00425921:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_00425914
loc_00425929:
    mov dword ptr [ebp - 0x24], 0
loc_00425930:
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00425945
    jmp loc_00425960
loc_0042593d:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_00425930
loc_00425945:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    imul edx, eax, 0x98
    mov eax, dword ptr [d_00462214]
    add eax, edx
    mov dword ptr [eax], 0xffffffff
    jmp loc_0042593d
loc_00425960:
    jmp loc_00425921
loc_00425962:
    mov eax, 0x131
    call sub_004124a4
    call sub_00412e0c
loc_00425971:
    call sub_004102b7
    mov dword ptr [ebp - 0x2c], eax
    cmp dword ptr [ebp - 0x2c], 0x1b
    jne loc_0042598e
    mov dword ptr [d_00464a68], 2
    jmp loc_00425a67
loc_0042598e:
    call bm_pump
    mov eax, 0x64
    call bm_nap
    mov dword ptr [ebp - 0x28], 0
    mov dword ptr [ebp - 0x20], 0
    mov dword ptr [ebp - 0x1c], 0
loc_004259b2:
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004259ca
    # jmp 0x425a35
    .byte 0xe9
    .long loc_00425a35 - . - 4
loc_004259c2:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_004259b2
loc_004259ca:
    mov dword ptr [ebp - 0x24], 0
loc_004259d1:
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004259e6
    jmp loc_00425a33
loc_004259de:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_004259d1
loc_004259e6:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    imul edx, eax, 0x98
    mov eax, dword ptr [d_00462214]
    add eax, edx
    cmp dword ptr [eax], -1
    jne loc_00425a31
    # --- patched: original code of 0x004259fe..0x00425a02 replaced (see hooks.s)
    cmp dword ptr [ebp - 0x28], 0x10
    # --- patched: original code of 0x00425a02..0x00425a04 replaced (see hooks.s)
    jge loc_00425a2b
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    # --- patched: original code of 0x00425a19..0x00425a1b replaced (see hooks.s)
    .fill 2, 1, 0x90
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    call sub_0040f75b
    call bm_pump
loc_00425a2b:
    mov eax, dword ptr [ebp - 0x28]
    inc dword ptr [ebp - 0x28]
loc_00425a31:
    jmp loc_004259de
loc_00425a33:
    jmp loc_004259c2
loc_00425a35:
    mov edx, dword ptr [d_004648ac]
    imul edx, dword ptr [d_004648b4]
    mov ebx, edx
    imul edx, dword ptr [ebp - 0x28], 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, 0x64
    sub edx, eax
    mov eax, edx
    call sub_00412e33
    cmp dword ptr [ebp - 0x28], 0
    jne loc_00425971
loc_00425a67:
    mov eax, 0x64
    call sub_00412e33
    jmp loc_00425be4
loc_00425a76:
    mov dword ptr [ebp - 0x24], 0
loc_00425a7d:
    cmp dword ptr [ebp - 0x24], 0xd
    jl loc_00425a90
    jmp loc_00425be4
loc_00425a88:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_00425a7d
loc_00425a90:
    mov eax, dword ptr [ebp - 0x24]
    add eax, 0x190
    call sub_00412135
    mov dword ptr [ebp - 8], eax
    call sub_0040c06a
    test eax, eax
    je loc_00425ab6
    cmp dword ptr [ebp - 0x24], 0xc
    jne loc_00425ab6
    mov dword ptr [ebp - 8], 0
loc_00425ab6:
    mov dword ptr [ebp - 4], 1
    cmp dword ptr [ebp - 8], 0
    jge loc_00425ad5
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [ebp - 8]
    call sub_00451e6d
    mov dword ptr [ebp - 8], eax
loc_00425ad5:
    mov dword ptr [ebp - 0x20], 0
loc_00425adc:
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [ebp - 8]
    jl loc_00425af1
    jmp loc_00425bdf
loc_00425ae9:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_00425adc
loc_00425af1:
    cmp dword ptr [ebp - 4], 0
    jne loc_00425b12
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_00425bda
loc_00425b12:
    mov dword ptr [ebp - 0x10], 0
loc_00425b19:
    cmp dword ptr [ebp - 0x10], 0xc8
    jl loc_00425b2f
    jmp loc_00425bda
loc_00425b27:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00425b19
loc_00425b2f:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648ac]
    mov dword ptr [ebp - 0x18], edx
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648b4]
    mov dword ptr [ebp - 0x14], edx
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_00425fb9
    cmp eax, 2
    jne loc_00425bd5
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_0042542d
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    jne loc_00425bd5
    imul edx, dword ptr [ebp - 0x18], 0x98
    mov eax, dword ptr [d_00462214]
    add edx, eax
    mov eax, dword ptr [ebp - 0x14]
    imul eax, dword ptr [d_004648ac]
    imul eax, eax, 0x98
    add edx, eax
    mov dword ptr [ebp - 0xc], edx
    mov ebx, 0x98
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00451940
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x44], 0
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x30], 0
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [edx + 4], eax
    jmp loc_00425bda
loc_00425bd5:
    jmp loc_00425b27
loc_00425bda:
    jmp loc_00425ae9
loc_00425bdf:
    jmp loc_00425a88
loc_00425be4:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00425bed:
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
    mov eax, dword ptr [ebp - 4]
    call sub_004255b2
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00425c10:
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
    cmp dword ptr [ebp - 8], 5
    jne loc_00425c30
    mov dword ptr [ebp - 4], 1
    jmp loc_00425c73
loc_00425c30:
    cmp dword ptr [ebp - 8], 6
    jne loc_00425c3f
    mov dword ptr [ebp - 4], 1
    jmp loc_00425c73
loc_00425c3f:
    cmp dword ptr [ebp - 8], 7
    jne loc_00425c4e
    mov dword ptr [ebp - 4], 1
    jmp loc_00425c73
loc_00425c4e:
    cmp dword ptr [ebp - 8], 9
    jne loc_00425c5d
    mov dword ptr [ebp - 4], 1
    jmp loc_00425c73
loc_00425c5d:
    cmp dword ptr [ebp - 8], 0xa
    jne loc_00425c6c
    mov dword ptr [ebp - 4], 1
    jmp loc_00425c73
loc_00425c6c:
    mov dword ptr [ebp - 4], 0
loc_00425c73:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00425c7f:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x78
    .byte 0x81,0xec,0x78,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 0x14], edx
    mov dword ptr [ebp - 0x10], ebx
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    push dword ptr [eax + d_0045be50]
    mov eax, offset d_0045a38f
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 8], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_0041daa7
    mov dword ptr [ebp - 4], eax
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00415920
    mov esp, ebp
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
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    jl loc_00425cfc
    cmp dword ptr [ebp - 8], 0xf
    jl loc_00425cfe
loc_00425cfc:
    jmp loc_00425d0f
loc_00425cfe:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045be50]
    mov dword ptr [ebp - 4], eax
    jmp loc_00425d16
loc_00425d0f:
    mov dword ptr [ebp - 4], offset d_0045a398
loc_00425d16:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00425d22:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x7c
    .byte 0x81,0xec,0x7c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0x14], edx
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425fb9
    mov dword ptr [ebp - 4], eax
    mov ecx, dword ptr [d_004648a0]
    mov ebx, dword ptr [d_004648a4]
    mov edx, dword ptr [ebp - 0x14]
    imul edx, dword ptr [d_004648a0]
    add edx, dword ptr [d_004648a8]
    mov eax, dword ptr [ebp - 0x10]
    imul eax, dword ptr [d_004648a4]
    add eax, dword ptr [d_00464898]
    call sub_004166bf
    cmp dword ptr [ebp - 4], 0
    je loc_00425e2e
    cmp dword ptr [ebp - 4], 1
    jb loc_00425d92
    cmp dword ptr [ebp - 4], 1
    jbe loc_00425d94
    cmp dword ptr [ebp - 4], 2
    je loc_00425dae
    jmp loc_00425dae
loc_00425d92:
    jmp loc_00425dae
loc_00425d94:
    push dword ptr [d_0046499c]
    mov eax, offset d_0045a3a4
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_00425dc6
loc_00425dae:
    push dword ptr [d_0046499c]
    mov eax, offset d_0045a3b2
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
loc_00425dc6:
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0xc], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041daa7
    mov dword ptr [ebp - 8], eax
    push dword ptr [d_004648a4]
    push dword ptr [d_004648a0]
    mov eax, dword ptr [d_004648a4]
    mov dword ptr [ebp - 0x7c], eax
    mov esi, dword ptr [ebp - 0x14]
    imul esi, dword ptr [d_004648a0]
    add esi, dword ptr [d_004648a8]
    mov edi, dword ptr [ebp - 0x10]
    imul edi, dword ptr [d_004648a4]
    add edi, dword ptr [d_00464898]
    push 0
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_0041c5e0
    mov ecx, dword ptr [ebp - 0x7c]
    mov ebx, esi
    mov edx, edi
    call sub_0041532b
loc_00425e2e:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00425e36:
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
    jl loc_00425e5c
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00425e5e
loc_00425e5c:
    jmp loc_00425e64
loc_00425e5e:
    cmp dword ptr [ebp - 8], 0
    jge loc_00425e66
loc_00425e64:
    jmp loc_00425e71
loc_00425e66:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00425e73
loc_00425e71:
    jmp loc_00425e94
loc_00425e73:
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov eax, dword ptr [d_0046222c]
    add eax, edx
    mov edx, dword ptr [ebp - 8]
    imul edx, dword ptr [d_004648ac]
    shl edx, 2
    add edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx], eax
loc_00425e94:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00425e9b:
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
    jl loc_00425ef5
    cmp dword ptr [ebp - 8], 0
    jl loc_00425ef5
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jge loc_00425ef5
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jge loc_00425ef5
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425e36
    call sub_004151ad
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425d22
    call sub_00415189
loc_00425ef5:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00425efc:
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
    jl loc_00425f72
    cmp dword ptr [ebp - 0xc], 0
    jl loc_00425f72
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648ac]
    jge loc_00425f72
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648b4]
    jge loc_00425f72
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425fb9
    mov dword ptr [ebp - 4], eax
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425e36
    call sub_004151ad
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425d22
    call sub_00415189
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425e36
loc_00425f72:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00425f79:
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
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425fb9
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 8]
    je loc_00425fb2
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00425e9b
loc_00425fb2:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00425fb9:
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
    jl loc_00425fdd
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00425fdf
loc_00425fdd:
    jmp loc_00425fe5
loc_00425fdf:
    cmp dword ptr [ebp - 8], 0
    jge loc_00425fe7
loc_00425fe5:
    jmp loc_00425ff2
loc_00425fe7:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00425ff4
loc_00425ff2:
    jmp loc_00426017
loc_00425ff4:
    mov edx, dword ptr [ebp - 0xc]
    shl edx, 2
    mov eax, dword ptr [d_0046222c]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [d_004648ac]
    shl eax, 2
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 4], eax
    jmp loc_0042601e
loc_00426017:
    mov dword ptr [ebp - 4], 1
loc_0042601e:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
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
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425e36
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    inc eax
    call sub_00425e36
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    inc edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425e36
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    dec eax
    call sub_00425e36
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    dec edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425e36
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
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
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425e9b
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    inc eax
    call sub_00425e9b
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    inc edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425e9b
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    dec eax
    call sub_00425e9b
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    dec edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425e9b
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_004260f5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    call sub_0040c06a
    cmp eax, 1
    jne loc_00426267
    # --- patched: original code of 0x00426111..0x00426116 replaced (see hooks.s)
    mov eax, 0x64
    call sub_00413cb0
    mov dword ptr [ebp - 4], 0
loc_00426122:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00426137
    jmp loc_00426167
loc_0042612f:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00426122
loc_00426137:
    mov dword ptr [ebp - 8], 0
loc_0042613e:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00426153
    jmp loc_00426165
loc_0042614b:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0042613e
loc_00426153:
    mov ebx, 0xffffffff
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00425e36
    jmp loc_0042614b
loc_00426165:
    jmp loc_0042612f
loc_00426167:
    mov eax, 0x12c
    call sub_004124a4
    call sub_00412e0c
loc_00426176:
    call sub_004102b7
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 0x1b
    jne loc_00426193
    mov dword ptr [d_00464a68], 2
    jmp loc_00426258
loc_00426193:
    call bm_pump
    mov eax, 0x64
    call bm_nap
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 4], 0
loc_004261b0:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004261c8
    # jmp 0x426226
    .byte 0xe9
    .long loc_00426226 - . - 4
loc_004261c0:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_004261b0
loc_004261c8:
    mov dword ptr [ebp - 8], 0
loc_004261cf:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004261e4
    jmp loc_00426224
loc_004261dc:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_004261cf
loc_004261e4:
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00425fb9
    cmp eax, -1
    jne loc_00426222
    # --- patched: original code of 0x004261f4..0x004261f8 replaced (see hooks.s)
    cmp dword ptr [ebp - 0xc], 0x10
    # --- patched: original code of 0x004261f8..0x004261fa replaced (see hooks.s)
    jge loc_0042621c
    call sub_0045190a
    mov edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    # --- patched: original code of 0x0042620f..0x00426211 replaced (see hooks.s)
    .fill 2, 1, 0x90
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_0040f5e8
loc_0042621c:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
loc_00426222:
    jmp loc_004261dc
loc_00426224:
    jmp loc_004261c0
loc_00426226:
    mov edx, dword ptr [d_004648ac]
    imul edx, dword ptr [d_004648b4]
    mov ebx, edx
    imul edx, dword ptr [ebp - 0xc], 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, 0x64
    sub edx, eax
    mov eax, edx
    call sub_00412e33
    cmp dword ptr [ebp - 0xc], 0
    jne loc_00426176
loc_00426258:
    mov eax, 0x64
    call sub_00412e33
    jmp loc_00426333
loc_00426267:
    mov dword ptr [ebp - 4], 0
loc_0042626e:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00426283
    jmp loc_004262b0
loc_0042627b:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0042626e
loc_00426283:
    mov dword ptr [ebp - 8], 0
loc_0042628a:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_0042629f
    jmp loc_004262ae
loc_00426297:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0042628a
loc_0042629f:
    xor ebx, ebx
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00425e36
    jmp loc_00426297
loc_004262ae:
    jmp loc_0042627b
loc_004262b0:
    mov dword ptr [ebp - 4], 0
loc_004262b7:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004262cf
    # jmp 0x426333
    .byte 0xe9
    .long loc_00426333 - . - 4
loc_004262c7:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_004262b7
loc_004262cf:
    mov dword ptr [ebp - 8], 0
loc_004262d6:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004262eb
    jmp loc_00426331
loc_004262e3:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_004262d6
loc_004262eb:
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00404852
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 2
    jne loc_00426321
    call sub_0045190a
    mov edx, eax
    mov ebx, 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    cmp edx, dword ptr [d_004647a0]
    jl loc_00426321
    mov dword ptr [ebp - 0x14], 0
loc_00426321:
    mov ebx, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00425e36
    jmp loc_004262e3
loc_00426331:
    jmp loc_004262c7
loc_00426333:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042633c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov ecx, dword ptr [d_00464a6c]
    mov ebx, dword ptr [d_00464a70]
    xor edx, edx
    xor eax, eax
    call sub_004166bf
    mov dword ptr [ebp - 4], 0
loc_00426366:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_004648b4]
    jl loc_0042637b
    jmp loc_004263a6
loc_00426373:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00426366
loc_0042637b:
    mov dword ptr [ebp - 8], 0
loc_00426382:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00426397
    jmp loc_004263a4
loc_0042638f:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00426382
loc_00426397:
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00425d22
    jmp loc_0042638f
loc_004263a4:
    jmp loc_00426373
loc_004263a6:
    mov eax, dword ptr [d_00464898]
    mov dword ptr [d_0046221c], eax
    mov dword ptr [d_00462220], 8
    mov eax, dword ptr [d_004648a4]
    imul eax, dword ptr [d_004648ac]
    mov edx, eax
    mov eax, dword ptr [d_0046221c]
    add eax, edx
    mov dword ptr [d_00462224], eax
    mov eax, dword ptr [d_004648a0]
    imul eax, dword ptr [d_004648b4]
    mov edx, eax
    mov eax, dword ptr [d_004648a8]
    add eax, edx
    mov dword ptr [d_00462228], eax
    mov dword ptr [d_0046221c], 0
    mov dword ptr [d_00462220], 0
    mov eax, dword ptr [d_00464a70]
    mov dword ptr [d_00462224], eax
    mov eax, dword ptr [d_00464a6c]
    mov dword ptr [d_00462228], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042641f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, offset d_0046221c
    call sub_00415dd9
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0042643e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_0046222c], 0
    je loc_00426473
    mov ebx, 0x12b
    mov edx, offset d_0045a3c0
    mov eax, dword ptr [d_0046222c]
    call sub_0041863d
    mov dword ptr [d_0046222c], 0
loc_00426473:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042647a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_004648ac], 0xf
    mov dword ptr [d_004648b4], 0xb
    mov dword ptr [d_004648a4], 0x28
    mov dword ptr [d_004648a0], 0x24
    mov edx, dword ptr [d_004648ac]
    imul edx, dword ptr [d_004648a4]
    mov eax, dword ptr [d_00464a70]
    sub eax, edx
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [d_00464898], eax
    mov edx, dword ptr [d_004648b4]
    imul edx, dword ptr [d_004648a0]
    mov eax, dword ptr [d_00464a6c]
    sub eax, edx
    sub eax, 0x10
    mov dword ptr [d_004648a8], eax
    mov ebx, 0x13d
    mov edx, offset d_0045a3c0
    mov eax, dword ptr [d_004648ac]
    shl eax, 2
    imul eax, dword ptr [d_004648b4]
    call sub_004184d0
    mov dword ptr [d_0046222c], eax
    mov eax, offset ptr_0042643e
    call sub_00410ebf
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00426524:
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
    mov eax, dword ptr [d_004648a4]
    sar eax, 1
    mov edx, dword ptr [d_00464898]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [d_004648a4]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042655f:
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
    mov eax, dword ptr [d_004648a0]
    dec eax
    mov edx, dword ptr [d_004648a8]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [d_004648a0]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00426599:
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
loc_004265aa:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00464898]
    jge loc_004265bf
    mov eax, dword ptr [d_004648a4]
    add dword ptr [ebp - 8], eax
    jmp loc_004265aa
loc_004265bf:
    mov edx, dword ptr [ebp - 8]
    sub edx, dword ptr [d_00464898]
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648a4]
    mov eax, dword ptr [d_004648a4]
    sar eax, 1
    sub edx, eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004265eb:
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
loc_004265fc:
    mov eax, dword ptr [d_004648a0]
    sar eax, 1
    mov edx, dword ptr [ebp - 8]
    sub edx, dword ptr [d_004648a8]
    dec eax
    sub edx, eax
    test edx, edx
    jge loc_0042661d
    mov eax, dword ptr [d_004648a0]
    add dword ptr [ebp - 8], eax
    jmp loc_004265fc
loc_0042661d:
    mov eax, dword ptr [d_004648a0]
    sar eax, 1
    mov edx, dword ptr [ebp - 8]
    sub edx, dword ptr [d_004648a8]
    dec eax
    sub edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648a0]
    mov eax, dword ptr [d_004648a0]
    dec eax
    sub edx, eax
    mov eax, dword ptr [d_004648a0]
    sar eax, 1
    dec eax
    add edx, eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042665c:
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
    cmp eax, dword ptr [d_00464898]
    jge loc_00426680
    mov eax, dword ptr [d_00464898]
    sub dword ptr [ebp - 8], eax
loc_00426680:
    mov edx, dword ptr [ebp - 8]
    sub edx, dword ptr [d_00464898]
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648a4]
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
sub_004266a3:
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
    mov eax, dword ptr [d_004648a0]
    sar eax, 1
    mov edx, dword ptr [ebp - 8]
    sub edx, dword ptr [d_004648a8]
    dec eax
    sub edx, eax
    test edx, edx
    jge loc_004266d4
    mov eax, dword ptr [d_004648a8]
    dec eax
    sub dword ptr [ebp - 8], eax
loc_004266d4:
    mov edx, dword ptr [d_004648a0]
    sar edx, 1
    mov eax, dword ptr [ebp - 8]
    sub eax, dword ptr [d_004648a8]
    dec edx
    sub eax, edx
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_004648a0]
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
sub_00426704:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    call sub_0040c06a
    cmp eax, 1
    je loc_0042680f
    mov eax, dword ptr [d_0046499c]
    add eax, 0x154
    call sub_00412135
    mov dword ptr [ebp - 0x14], eax
    call sub_0043acf8
    mov dword ptr [ebp - 0x10], eax
    mov edx, dword ptr [ebp - 0x10]
    sub edx, dword ptr [d_00464978]
    imul eax, dword ptr [ebp - 0x14], 0x3e8
    cmp edx, eax
    jbe loc_0042680f
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [d_00464978], eax
    mov dword ptr [ebp - 4], 0
loc_00426761:
    cmp dword ptr [ebp - 4], 0x64
    jl loc_00426774
    jmp loc_0042680f
loc_0042676c:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00426761
loc_00426774:
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
    test eax, eax
    jne loc_0042680a
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0042542d
    test eax, eax
    jne loc_0042680a
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00422e48
    test eax, eax
    jne loc_0042680a
    mov eax, 0x2b7
    call sub_00412135
    mov edx, dword ptr [ebp - 8]
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, eax
    mov eax, ecx
    call sub_00422351
    test eax, eax
    je loc_0042680a
    mov ebx, 2
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425f79
    mov ebx, 2
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0040fde8
    jmp loc_0042680f
loc_0042680a:
    jmp loc_0042676c
loc_0042680f:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00426818:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x48
    .byte 0x81,0xec,0x48,0x00,0x00,0x00
    mov dword ptr [ebp - 8], 0xfa
    call sub_00421969
    cmp eax, 1
    jle loc_00426c43
    call sub_0040c06a
    cmp eax, 1
    je loc_0042685d
    mov eax, dword ptr [d_0046499c]
    add eax, 0x154
    call sub_00412135
    test eax, eax
    je loc_0042685d
    call sub_00426704
loc_0042685d:
    mov eax, 0x65
    call sub_00412135
    mov edx, eax
    call sub_00410578
    sub edx, 5
    cmp eax, edx
    jle loc_004268b2
    cmp dword ptr [d_0045be9c], 0
    je loc_004268b0
    mov dword ptr [d_0045be9c], 0
    mov dword ptr [d_00462230], 0
    mov dword ptr [d_00462234], 0
    mov dword ptr [d_00462240], 0
    mov dword ptr [d_00462238], 1
loc_004268b0:
    jmp loc_004268ed
loc_004268b2:
    cmp dword ptr [d_0045be9c], 0
    jne loc_004268ed
    call sub_0045190a
    mov edx, eax
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [d_00462244], edx
    mov dword ptr [d_0045be9c], 1
    call sub_0043acf8
    mov dword ptr [d_0046223c], eax
    call sub_00405d0c
loc_004268ed:
    cmp dword ptr [d_0045be9c], 0
    je loc_00426c43
    mov eax, dword ptr [d_00464974]
    add eax, eax
    cmp eax, dword ptr [d_00462240]
    jle loc_00426c43
    mov eax, dword ptr [d_00462230]
    mov dword ptr [ebp - 0x28], eax
    mov eax, dword ptr [d_00462234]
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [d_00462238]
    mov dword ptr [ebp - 0x20], eax
    mov eax, dword ptr [d_00462240]
    mov dword ptr [ebp - 0x1c], eax
    mov eax, 0x38e
    call sub_00412135
    imul eax, eax, 0xa
    add eax, 0x64
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x14], 0
loc_00426947:
    mov eax, 0x38e
    call sub_00412135
    cmp eax, dword ptr [ebp - 0x14]
    jg loc_00426963
    jmp loc_00426a12
loc_0042695b:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_00426947
loc_00426963:
    mov edx, dword ptr [ebp - 0x20]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x30], eax
    mov edx, dword ptr [ebp - 0x20]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x2c], eax
    mov eax, dword ptr [d_004648ac]
    sub eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 0x30]
    jle loc_004269a1
    mov eax, dword ptr [d_004648b4]
    sub eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 0x2c]
    jg loc_004269a3
loc_004269a1:
    jmp loc_004269ab
loc_004269a3:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp - 0x1c]
    jge loc_004269ad
loc_004269ab:
    jmp loc_004269b5
loc_004269ad:
    mov eax, dword ptr [ebp - 0x2c]
    cmp eax, dword ptr [ebp - 0x1c]
    jge loc_004269ef
loc_004269b5:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    and dword ptr [ebp - 0x20], 3
    cmp dword ptr [ebp - 0x20], 1
    jne loc_004269e3
    mov eax, dword ptr [d_00464974]
    add eax, eax
    cmp eax, dword ptr [ebp - 0x1c]
    jle loc_00426a12
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    mov eax, dword ptr [ebp - 0x28]
    inc dword ptr [ebp - 0x28]
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
loc_004269e3:
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x2c], eax
loc_004269ef:
    mov ebx, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [ebp - 0x30]
    call sub_00424dfe
    add dword ptr [ebp - 0x18], -0xa
    mov eax, dword ptr [ebp - 0x30]
    mov dword ptr [ebp - 0x28], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [ebp - 0x24], eax
    jmp loc_0042695b
loc_00426a12:
    mov dword ptr [ebp - 4], 5
    call sub_0043acf8
    mov dword ptr [ebp - 0xc], eax
loc_00426a21:
    mov eax, dword ptr [d_0046223c]
    add eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0xc]
    jge loc_00426c43
    mov eax, dword ptr [ebp - 4]
    dec dword ptr [ebp - 4]
    cmp dword ptr [ebp - 4], 0
    jle loc_00426c43
    mov eax, dword ptr [ebp - 8]
    add dword ptr [d_0046223c], eax
    mov eax, dword ptr [d_00462244]
    add eax, 0x8c
    call sub_004278f2
    mov ebx, 1
    mov edx, dword ptr [d_00462234]
    mov eax, dword ptr [d_00462230]
    call sub_00425e9b
    mov dword ptr [ebp - 0x10], 0x64
loc_00426a76:
    mov edx, dword ptr [d_00462234]
    mov eax, dword ptr [d_00462230]
    call sub_00421d3f
    mov dword ptr [ebp - 0x34], eax
    cmp dword ptr [ebp - 0x34], 0
    je loc_00426a98
    mov eax, dword ptr [ebp - 0x34]
    cmp byte ptr [eax + 0x10], 4
    jne loc_00426a9a
loc_00426a98:
    jmp loc_00426aa7
loc_00426a9a:
    mov edx, 0xffffffff
    mov eax, dword ptr [ebp - 0x34]
    call sub_0041de63
loc_00426aa7:
    mov eax, dword ptr [ebp - 0x10]
    dec dword ptr [ebp - 0x10]
    cmp dword ptr [ebp - 0x34], 0
    je loc_00426ab9
    cmp dword ptr [ebp - 0x10], 0
    jg loc_00426a76
loc_00426ab9:
    mov dword ptr [ebp - 0x10], 0x64
loc_00426ac0:
    mov edx, dword ptr [d_00462234]
    mov eax, dword ptr [d_00462230]
    call sub_0042542d
    mov dword ptr [ebp - 0x38], eax
    cmp dword ptr [ebp - 0x38], 0
    je loc_00426ae1
    mov eax, dword ptr [ebp - 0x38]
    call sub_004254f3
loc_00426ae1:
    mov eax, dword ptr [ebp - 0x10]
    dec dword ptr [ebp - 0x10]
    cmp dword ptr [ebp - 0x38], 0
    je loc_00426af3
    cmp dword ptr [ebp - 0x10], 0
    jg loc_00426ac0
loc_00426af3:
    mov dword ptr [ebp - 0x10], 0x64
loc_00426afa:
    mov edx, dword ptr [d_00462234]
    mov eax, dword ptr [d_00462230]
    call sub_00422e48
    mov dword ptr [ebp - 0x3c], eax
    cmp dword ptr [ebp - 0x3c], 0
    je loc_00426b33
    cmp dword ptr [d_00464940], 0
    je loc_00426b2b
    mov edx, 0xffffffff
    mov eax, dword ptr [ebp - 0x3c]
    call sub_00423209
    jmp loc_00426b45
loc_00426b2b:
    mov eax, dword ptr [ebp - 0x3c]
    call sub_00424841
loc_00426b33:
    mov eax, dword ptr [ebp - 0x10]
    dec dword ptr [ebp - 0x10]
    cmp dword ptr [ebp - 0x3c], 0
    je loc_00426b45
    cmp dword ptr [ebp - 0x10], 0
    jg loc_00426afa
loc_00426b45:
    mov dword ptr [ebp - 0x10], 0x64
loc_00426b4c:
    mov edx, dword ptr [d_00462234]
    mov eax, dword ptr [d_00462230]
    call sub_0042708d
    mov dword ptr [ebp - 0x40], eax
    cmp dword ptr [ebp - 0x40], 0
    je loc_00426b6d
    mov eax, dword ptr [ebp - 0x40]
    call sub_00427115
loc_00426b6d:
    mov eax, dword ptr [ebp - 0x10]
    dec dword ptr [ebp - 0x10]
    cmp dword ptr [ebp - 0x40], 0
    je loc_00426b7f
    cmp dword ptr [ebp - 0x10], 0
    jg loc_00426b4c
loc_00426b7f:
    mov edx, dword ptr [d_00462238]
    shl edx, 2
    mov eax, dword ptr [d_00462230]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x48], eax
    mov edx, dword ptr [d_00462238]
    shl edx, 2
    mov eax, dword ptr [d_00462234]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [d_004648ac]
    sub eax, dword ptr [d_00462240]
    cmp eax, dword ptr [ebp - 0x48]
    jle loc_00426bcd
    mov eax, dword ptr [d_004648b4]
    sub eax, dword ptr [d_00462240]
    cmp eax, dword ptr [ebp - 0x44]
    jg loc_00426bcf
loc_00426bcd:
    jmp loc_00426bda
loc_00426bcf:
    mov eax, dword ptr [ebp - 0x48]
    cmp eax, dword ptr [d_00462240]
    jge loc_00426bdc
loc_00426bda:
    jmp loc_00426be7
loc_00426bdc:
    mov eax, dword ptr [ebp - 0x44]
    cmp eax, dword ptr [d_00462240]
    jge loc_00426c2e
loc_00426be7:
    inc dword ptr [d_00462238]
    and dword ptr [d_00462238], 3
    cmp dword ptr [d_00462238], 1
    jne loc_00426c1e
    mov eax, dword ptr [d_00464974]
    add eax, eax
    cmp eax, dword ptr [d_00462240]
    jle loc_00426c43
    inc dword ptr [d_00462240]
    inc dword ptr [d_00462230]
    inc dword ptr [d_00462234]
loc_00426c1e:
    mov eax, dword ptr [d_00462230]
    mov dword ptr [ebp - 0x48], eax
    mov eax, dword ptr [d_00462234]
    mov dword ptr [ebp - 0x44], eax
loc_00426c2e:
    mov eax, dword ptr [ebp - 0x48]
    mov dword ptr [d_00462230], eax
    mov eax, dword ptr [ebp - 0x44]
    mov dword ptr [d_00462234], eax
    jmp loc_00426a21
loc_00426c43:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00426c4c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_0046224c], 0
    je loc_00426c81
    mov ebx, 0x23
    mov edx, offset d_0045a419
    mov eax, dword ptr [d_0046224c]
    call sub_0041863d
    mov dword ptr [d_0046224c], 0
loc_00426c81:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00426c88:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_004648ac]
    imul eax, dword ptr [d_004648b4]
    mov dword ptr [d_00462248], eax
    mov ebx, 0x2d
    mov edx, offset d_0045a419
    imul eax, dword ptr [d_00462248], 0x98
    call sub_004184d0
    mov dword ptr [d_0046224c], eax
    mov eax, offset ptr_00426c4c
    call sub_00410ebf
    call sub_00426cdb
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00426cdb:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    imul ebx, dword ptr [d_00462248], 0x98
    xor edx, edx
    mov eax, dword ptr [d_0046224c]
    call sub_00451940
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00426d06:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x88
    mov eax, dword ptr [d_0046224c]
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0xc], 0
loc_00426d23:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648b4]
    jl loc_00426d3b
    jmp loc_00426fc3
loc_00426d33:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_00426d23
loc_00426d3b:
    mov dword ptr [ebp - 0x1c], 0
loc_00426d42:
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00426d5a
    jmp loc_00426fbe
loc_00426d52:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_00426d42
loc_00426d5a:
    mov eax, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax], 0
    je loc_00426faf
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0x18]
    add word ptr [eax + 0x44], dx
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax + 4], 9
    jne loc_00426e1e
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [d_004648a0]
    mov edx, dword ptr [d_004648a0]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 8], eax
    push dword ptr [d_0046499c]
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 4]
    shl eax, 2
    push dword ptr [eax + d_0045bea0]
    mov eax, offset d_0045a421
    push eax
    lea eax, [ebp - 0x80]
    push eax
    call sub_004518d0
    add esp, 0x10
    mov eax, 0x14
    call sub_00412135
    mov edx, dword ptr [d_0046494c]
    imul edx, eax
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x42]
    sar eax, 0x10
    cmp eax, edx
    jbe loc_00426e1c
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00425fb9
    cmp eax, 2
    jne loc_00426e13
    xor ebx, ebx
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00425e9b
loc_00426e13:
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax], 0xffffffff
loc_00426e1c:
    jmp loc_00426e86
loc_00426e1e:
    mov ebx, 0x3e8
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00424dfe
    mov dword ptr [ebp - 4], 1
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 4]
    shl eax, 2
    push dword ptr [eax + d_0045bea0]
    mov eax, offset d_0045a42d
    push eax
    lea eax, [ebp - 0x80]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov eax, 0xa
    call sub_00412135
    mov edx, dword ptr [d_0046494c]
    imul edx, eax
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x42]
    sar eax, 0x10
    cmp eax, edx
    jbe loc_00426e86
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax], 0
loc_00426e86:
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax], 0
    je loc_00426f80
    lea eax, [ebp - 0x80]
    call sub_0041d957
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax + 4], 9
    jne loc_00426ecd
    mov eax, dword ptr [ebp - 0x18]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041da5c
    cmp edx, eax
    jl loc_00426ecd
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041da5c
    mov edx, eax
    mov eax, dword ptr [ebp - 0x18]
    dec edx
    mov word ptr [eax + 0x30], dx
loc_00426ecd:
    mov eax, dword ptr [ebp - 0x18]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041daa7
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00426f4d
    lea ecx, [ebp - 0x84]
    lea ebx, [ebp - 0x88]
    mov eax, dword ptr [ebp - 0x18]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041db41
    mov eax, dword ptr [ebp - 0x18]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0042655f
    mov esi, dword ptr [ebp - 0x84]
    add esi, eax
    mov eax, dword ptr [d_004648a0]
    mov edx, dword ptr [d_004648a0]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    sub esi, eax
    mov edx, esi
    add edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00426524
    add eax, dword ptr [ebp - 0x88]
    call sub_00415a9f
    jmp loc_00426f6f
loc_00426f4d:
    mov eax, dword ptr [ebp - 0x18]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00426524
    call sub_00415a9f
loc_00426f6f:
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax], -1
    jne loc_00426f80
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax], 0
loc_00426f80:
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0x18]
    add word ptr [eax + 0x32], dx
loc_00426f8e:
    mov eax, dword ptr [ebp - 0x18]
    cmp word ptr [eax + 0x32], 0
    jle loc_00426faf
    mov eax, dword ptr [ebp - 0x18]
    inc word ptr [eax + 0x30]
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0x18]
    sub word ptr [eax + 0x32], dx
    jmp loc_00426f8e
loc_00426faf:
    mov eax, dword ptr [ebp - 0x18]
    add dword ptr [ebp - 0x18], 0x98
    jmp loc_00426d52
loc_00426fbe:
    jmp loc_00426d33
loc_00426fc3:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00426fcc:
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
    jl loc_00426ff4
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_004648ac]
    jl loc_00426ff6
loc_00426ff4:
    jmp loc_00426ffc
loc_00426ff6:
    cmp dword ptr [ebp - 0x10], 0
    jge loc_00426ffe
loc_00426ffc:
    jmp loc_00427009
loc_00426ffe:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648b4]
    jl loc_0042700b
loc_00427009:
    jmp loc_00427085
loc_0042700b:
    imul eax, dword ptr [ebp - 0x14], 0x98
    mov edx, dword ptr [d_0046224c]
    add eax, edx
    mov edx, dword ptr [ebp - 0x10]
    imul edx, dword ptr [d_004648ac]
    imul edx, edx, 0x98
    add eax, edx
    mov dword ptr [ebp - 4], eax
    mov ebx, 0x3e8
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00424dfe
    mov ebx, 0x98
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_00451940
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 0x44], 0
    mov eax, dword ptr [ebp - 4]
    mov word ptr [eax + 0x30], 0
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 4], eax
    mov al, byte ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov byte ptr [edx + 0x3c], al
    mov eax, dword ptr [ebp + 0x10]
    mov edx, dword ptr [ebp - 4]
    mov word ptr [edx + 0x3e], ax
loc_00427085:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 4
sub_0042708d:
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
    cmp dword ptr [ebp - 0x10], 0
    jl loc_004270b1
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_004648ac]
    jl loc_004270b3
loc_004270b1:
    jmp loc_004270b9
loc_004270b3:
    cmp dword ptr [ebp - 0xc], 0
    jge loc_004270bb
loc_004270b9:
    jmp loc_004270c6
loc_004270bb:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_004648b4]
    jl loc_004270cf
loc_004270c6:
    mov dword ptr [ebp - 4], 0
    jmp loc_0042710a
loc_004270cf:
    imul eax, dword ptr [ebp - 0x10], 0x98
    mov edx, dword ptr [d_0046224c]
    add edx, eax
    mov eax, dword ptr [ebp - 0xc]
    imul eax, dword ptr [d_004648ac]
    imul eax, eax, 0x98
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00427103
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_0042710a
loc_00427103:
    mov dword ptr [ebp - 4], 0
loc_0042710a:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00427115:
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
    mov dword ptr [eax], 0
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00427138:
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
    mov edx, dword ptr [d_0046308c]
    shl edx, 2
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx + d_00462ed0], eax
    inc dword ptr [d_0046308c]
    cmp dword ptr [d_0046308c], 0x64
    jl loc_00427174
    mov dword ptr [d_0046308c], 0
loc_00427174:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042717d:
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
loc_00427199:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_004271a9
    jmp loc_004271ba
loc_004271a1:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_00427199
loc_004271a9:
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov eax, dword ptr [eax + d_00462ed0]
    add dword ptr [ebp - 8], eax
    jmp loc_004271a1
loc_004271ba:
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
ptr_004271cc:
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
    mov ebx, 0x3b
    mov edx, offset d_0045a43c
    mov eax, dword ptr [ebp - 8]
    call sub_004184d0
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
ptr_004271fe:
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
    mov ecx, 0x3c
    mov ebx, offset d_0045a43c
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_004185aa
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
ptr_00427234:
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
    mov ebx, 0x3d
    mov edx, offset d_0045a43c
    mov eax, dword ptr [ebp - 4]
    call sub_0041863d
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00427260:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x64
    .byte 0x81,0xec,0x64,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 8], 0xffffffff
    mov edx, offset d_0045a444
    mov eax, dword ptr [ebp - 0x10]
    call sub_0043f134
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    je loc_004272cb
loc_0042728e:
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, 0x50
    lea eax, [ebp - 0x64]
    call sub_0043fc90
    test eax, eax
    je loc_004272c3
    mov edx, 0x3d
    lea eax, [ebp - 0x64]
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_004272c1
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov byte ptr [eax], 0
loc_004272c1:
    jmp loc_0042728e
loc_004272c3:
    mov eax, dword ptr [ebp - 0xc]
    call sub_00441e50
loc_004272cb:
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
sub_004272dd:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [ebp - 8], 0
    je loc_0042733a
    mov ebx, offset ptr_00427234
    mov edx, offset ptr_004271fe
    mov eax, offset ptr_004271cc
    call sub_004187ed
    mov eax, offset d_0045a446
    call sub_00427260
    mov dword ptr [ebp - 0x10], eax
    push 0x5622
    mov ecx, 0x8000
    mov ebx, 0x8000
    mov edx, 0x10
    mov eax, dword ptr [ebp - 0x10]
    call sub_00418ff7
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
loc_0042733a:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00427342:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_00463064], 0
    je loc_0042736d
    mov eax, dword ptr [d_00463064]
    call sub_00419f92
    mov dword ptr [d_00463064], 0
loc_0042736d:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00427374:
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
    cmp dword ptr [ebp - 4], 1
    jne loc_0042739c
    cmp dword ptr [d_0046307c], 0
    jle loc_0042739c
    dec dword ptr [d_0046307c]
loc_0042739c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004273a4:
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
    push eax
    mov eax, offset d_0045a450
    push eax
    call sub_0042c0c8
    add esp, 8
    call sub_00427342
    mov edx, 0x28
    mov eax, 2
    call sub_004195bc
    mov dword ptr [d_00463064], eax
    mov edx, 3
    mov eax, dword ptr [d_00463064]
    call sub_0041a896
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [d_00463064]
    call sub_0041986d
    mov edx, 0xffff
    mov eax, dword ptr [d_00463064]
    call sub_0041a3c9
    mov eax, dword ptr [d_00463064]
    call sub_00419d88
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042741e:
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
    cmp dword ptr [ebp - 8], 0
    jl loc_00427440
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00463080]
    jl loc_00427442
loc_00427440:
    jmp loc_004274a2
loc_00427442:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_004274a2
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add edx, eax
    mov edx, dword ptr [edx]
    lea eax, [ebp - 0x6c]
    call sub_0045189e
    mov edx, 0x2e
    lea eax, [ebp - 0x6c]
    call sub_0045167a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00427488
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
loc_00427488:
    mov edx, offset d_0045a46c
    lea eax, [ebp - 0x6c]
    call sub_00451d78
    lea eax, [ebp - 0x6c]
    call sub_00411d17
    call sub_004273a4
loc_004274a2:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004274ab:
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
    cmp dword ptr [ebp - 8], 0
    jl loc_004274cd
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00463080]
    jl loc_004274cf
loc_004274cd:
    jmp loc_0042752f
loc_004274cf:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_0042752f
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add edx, eax
    mov edx, dword ptr [edx]
    lea eax, [ebp - 0x6c]
    call sub_0045189e
    mov edx, 0x2e
    lea eax, [ebp - 0x6c]
    call sub_0045167a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00427515
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
loc_00427515:
    mov edx, offset d_0045a471
    lea eax, [ebp - 0x6c]
    call sub_00451d78
    lea eax, [ebp - 0x6c]
    call sub_00411d17
    call sub_004273a4
loc_0042752f:
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
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 4], 0
    cmp dword ptr [ebp - 0xc], 0
    jl loc_00427561
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_00463080]
    jl loc_00427566
loc_00427561:
    # jmp 0x4275da
    .byte 0xe9
    .long loc_004275da - . - 4
loc_00427566:
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_004275da
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 8], eax
loc_0042757f:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00463080]
    jl loc_00427594
    jmp loc_004275af
loc_0042758c:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0042757f
loc_00427594:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_004275af
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0042758c
loc_004275af:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 4]
    add edx, dword ptr [ebp - 0xc]
    mov eax, edx
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    mov eax, dword ptr [eax]
    call sub_00411d17
    call sub_004273a4
loc_004275da:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004275e3:
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
loc_004275f4:
    dec dword ptr [ebp - 0x14]
    cmp dword ptr [ebp - 0x14], -1
    je loc_004276b3
    mov eax, dword ptr [d_00463074]
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], 0xffffffff
    mov dword ptr [ebp - 0x10], 0
    mov eax, dword ptr [d_0046306c]
    mov dword ptr [ebp - 0xc], eax
loc_0042761f:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_00463070]
    jl loc_0042763b
    jmp loc_0042765f
loc_0042762c:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x70
    jmp loc_0042761f
loc_0042763b:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax], 0
    je loc_0042765d
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x6c]
    cmp eax, dword ptr [ebp - 8]
    jge loc_0042765d
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x6c]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 4], eax
loc_0042765d:
    jmp loc_0042762c
loc_0042765f:
    cmp dword ptr [ebp - 4], -1
    je loc_004276b3
    imul edx, dword ptr [ebp - 4], 0x70
    mov eax, dword ptr [d_0046306c]
    add eax, edx
    mov dword ptr [ebp - 0xc], eax
    mov ebx, 0x11a
    mov edx, offset d_0045a43c
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x64]
    call sub_0041863d
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x68]
    sub dword ptr [d_00463078], eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x64], 0
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax], 0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x68], 0
    jmp loc_004275f4
loc_004276b3:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004276bc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x14], eax
    call sub_0041b961
    inc dword ptr [d_00463074]
    mov dword ptr [ebp - 0x10], 0
    mov eax, dword ptr [d_0046306c]
    mov dword ptr [ebp - 0xc], eax
loc_004276e7:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_00463070]
    jl loc_00427703
    jmp loc_00427729
loc_004276f4:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x70
    jmp loc_004276e7
loc_00427703:
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00451df7
    test eax, eax
    jne loc_00427727
    mov eax, 1
    call sub_00427138
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
    jmp loc_0042784d
loc_00427727:
    jmp loc_004276f4
loc_00427729:
    mov eax, dword ptr [d_00463078]
    cmp eax, dword ptr [d_00463068]
    jl loc_00427742
    mov eax, 1
    call sub_004275e3
    jmp loc_00427729
loc_00427742:
    mov dword ptr [ebp - 8], 0
loc_00427749:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_0042775c
    jmp loc_00427846
loc_00427754:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00427749
loc_0042775c:
    mov dword ptr [ebp - 0x10], 0
    mov eax, dword ptr [d_0046306c]
    mov dword ptr [ebp - 0xc], eax
loc_0042776b:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_00463070]
    jl loc_0042778a
    jmp loc_00427837
loc_0042777b:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x70
    jmp loc_0042776b
loc_0042778a:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax], 0
    jne loc_00427832
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0045189e
    mov edx, offset d_0045a476
    mov eax, dword ptr [ebp - 0xc]
    call sub_004514fc
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    je loc_00427823
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x10]
    call sub_004442df
    mov ebx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x68], ebx
    mov ebx, 0x148
    mov edx, offset d_0045a43c
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x68]
    call sub_004184d0
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x64], edx
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x68]
    add dword ptr [d_00463078], eax
    xor eax, eax
    call sub_00427138
    mov ecx, dword ptr [ebp - 0x18]
    mov ebx, 1
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x68]
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x64]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x18]
    call sub_0045172e
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
    jmp loc_0042784d
loc_00427823:
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax], 0
    mov dword ptr [ebp - 4], 0
    jmp loc_0042784d
loc_00427832:
    jmp loc_0042777b
loc_00427837:
    mov eax, 1
    call sub_004275e3
    jmp loc_00427754
loc_00427846:
    mov dword ptr [ebp - 4], 0
loc_0042784d:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00427859:
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
    mov eax, 8
    call sub_00412135
    cmp eax, dword ptr [d_0046307c]
    jl loc_004278e9
    mov eax, dword ptr [ebp - 0xc]
    call sub_004276bc
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_004278e9
    mov edx, dword ptr [d_00463074]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x6c], edx
    mov edx, 8
    mov eax, 5
    call sub_004195bc
    mov dword ptr [ebp - 8], eax
    mov edx, 3
    mov eax, dword ptr [ebp - 8]
    call sub_0041a896
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 0x68]
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x64]
    mov eax, dword ptr [ebp - 8]
    call sub_00419c66
    xor ebx, ebx
    mov edx, offset ptr_00427374
    mov eax, dword ptr [ebp - 8]
    call sub_0041a84d
    inc dword ptr [d_0046307c]
    mov eax, dword ptr [ebp - 8]
    call sub_00419d88
loc_004278e9:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004278f2:
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
    jl loc_00427914
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00463080]
    jl loc_00427916
loc_00427914:
    jmp loc_00427958
loc_00427916:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00427958
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add eax, edx
    mov eax, dword ptr [eax]
    call sub_00411d17
    call sub_00427859
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_00463088]
    add eax, edx
    mov edx, dword ptr [d_00464994]
    mov dword ptr [eax], edx
loc_00427958:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00427961:
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
    cmp dword ptr [ebp - 0x14], 0
    jl loc_00427983
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_00463080]
    jl loc_00427988
loc_00427983:
    jmp loc_00427ab2
loc_00427988:
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00427ab2
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 0x10], eax
loc_004279ac:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_00463080]
    jl loc_004279c1
    jmp loc_004279dc
loc_004279b9:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_004279ac
loc_004279c1:
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_004279dc
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_004279b9
loc_004279dc:
    cmp dword ptr [ebp - 0xc], 0
    je loc_00427ab2
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov edx, dword ptr [d_00463088]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 0x10], 0
loc_00427a00:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0xc]
    jl loc_00427a12
    jmp loc_00427a44
loc_00427a0a:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00427a00
loc_00427a12:
    mov eax, dword ptr [ebp - 0x14]
    add eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [d_00463088]
    add eax, edx
    mov eax, dword ptr [eax]
    cmp eax, dword ptr [ebp - 4]
    jge loc_00427a42
    mov eax, dword ptr [ebp - 0x14]
    add eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [d_00463088]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 4], eax
loc_00427a42:
    jmp loc_00427a0a
loc_00427a44:
    mov dword ptr [ebp - 0x10], 0
loc_00427a4b:
    cmp dword ptr [ebp - 0x10], 0xc8
    jl loc_00427a5e
    jmp loc_00427a89
loc_00427a56:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00427a4b
loc_00427a5e:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x14]
    add eax, edx
    mov dword ptr [ebp - 8], eax
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_00463088]
    add eax, edx
    mov eax, dword ptr [eax]
    cmp eax, dword ptr [ebp - 4]
    jne loc_00427a56
loc_00427a89:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add eax, edx
    mov eax, dword ptr [eax]
    call sub_00411d17
    call sub_00427859
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00463088]
    add eax, edx
    inc dword ptr [eax]
loc_00427ab2:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00427abb:
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
    jl loc_00427add
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00463080]
    jl loc_00427adf
loc_00427add:
    jmp loc_00427b2d
loc_00427adf:
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [d_00463090]
    add eax, edx
    mov eax, dword ptr [eax]
    cmp eax, dword ptr [d_00464994]
    jg loc_00427b10
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [d_00463090]
    add eax, edx
    mov eax, dword ptr [eax]
    add eax, 3
    cmp eax, dword ptr [d_00464994]
    jg loc_00427b2d
loc_00427b10:
    mov eax, dword ptr [ebp - 4]
    call sub_00427961
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [d_00463090]
    add eax, edx
    mov edx, dword ptr [d_00464994]
    mov dword ptr [eax], edx
loc_00427b2d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00427b36:
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
    mov edx, 8
    mov eax, 6
    call sub_004195bc
    mov dword ptr [ebp - 4], eax
    mov edx, 3
    mov eax, dword ptr [ebp - 4]
    call sub_0041a896
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    call sub_0041986d
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_0041a3c9
    mov eax, dword ptr [ebp - 4]
    call sub_00419d88
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
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    jl loc_00427bae
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00463080]
    jl loc_00427bb0
loc_00427bae:
    jmp loc_00427bf2
loc_00427bb0:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00427bf2
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add eax, edx
    mov eax, dword ptr [eax]
    call sub_00411d17
    call sub_00427b36
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_00463088]
    add eax, edx
    mov edx, dword ptr [d_00464994]
    mov dword ptr [eax], edx
loc_00427bf2:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00427bfb:
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
    cmp dword ptr [ebp - 0x14], 0
    jl loc_00427c1d
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_00463080]
    jl loc_00427c22
loc_00427c1d:
    jmp loc_00427d4c
loc_00427c22:
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00427d4c
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 0x10], eax
loc_00427c46:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_00463080]
    jl loc_00427c5b
    jmp loc_00427c76
loc_00427c53:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00427c46
loc_00427c5b:
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00427c76
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_00427c53
loc_00427c76:
    cmp dword ptr [ebp - 0xc], 0
    je loc_00427d4c
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov edx, dword ptr [d_00463088]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 0x10], 0
loc_00427c9a:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0xc]
    jl loc_00427cac
    jmp loc_00427cde
loc_00427ca4:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00427c9a
loc_00427cac:
    mov eax, dword ptr [ebp - 0x14]
    add eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [d_00463088]
    add eax, edx
    mov eax, dword ptr [eax]
    cmp eax, dword ptr [ebp - 4]
    jge loc_00427cdc
    mov eax, dword ptr [ebp - 0x14]
    add eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [d_00463088]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 4], eax
loc_00427cdc:
    jmp loc_00427ca4
loc_00427cde:
    mov dword ptr [ebp - 0x10], 0
loc_00427ce5:
    cmp dword ptr [ebp - 0x10], 0xc8
    jl loc_00427cf8
    jmp loc_00427d23
loc_00427cf0:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00427ce5
loc_00427cf8:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x14]
    add eax, edx
    mov dword ptr [ebp - 8], eax
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_00463088]
    add eax, edx
    mov eax, dword ptr [eax]
    cmp eax, dword ptr [ebp - 4]
    jne loc_00427cf0
loc_00427d23:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add eax, edx
    mov eax, dword ptr [eax]
    call sub_00411d17
    call sub_00427b36
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00463088]
    add eax, edx
    inc dword ptr [eax]
loc_00427d4c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00427d55:
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
    mov eax, dword ptr [d_0046306c]
    mov dword ptr [ebp - 4], eax
loc_00427d72:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00463070]
    jl loc_00427d8e
    jmp loc_00427ddc
loc_00427d7f:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x70
    jmp loc_00427d72
loc_00427d8e:
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax], 0
    je loc_00427dda
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 0x64], 0
    je loc_00427dda
    mov ebx, 0x209
    mov edx, offset d_0045a43c
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x64]
    call sub_0041863d
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x68]
    sub dword ptr [d_00463078], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x64], 0
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x68], 0
loc_00427dda:
    jmp loc_00427d7f
loc_00427ddc:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00427de5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_00463094], 0
    je loc_00427eb3
    mov dword ptr [ebp - 4], 0
loc_00427e07:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00463080]
    jl loc_00427e1c
    jmp loc_00427e63
loc_00427e14:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00427e07
loc_00427e1c:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00427e61
    mov ebx, 0x21b
    mov edx, offset d_0045a43c
    mov ecx, dword ptr [ebp - 4]
    shl ecx, 2
    mov eax, dword ptr [d_00463094]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_0041863d
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    mov dword ptr [eax], 0
loc_00427e61:
    jmp loc_00427e14
loc_00427e63:
    mov ebx, 0x21f
    mov edx, offset d_0045a43c
    mov eax, dword ptr [d_00463088]
    call sub_0041863d
    mov ebx, 0x220
    mov edx, offset d_0045a43c
    mov eax, dword ptr [d_00463090]
    call sub_0041863d
    mov ebx, 0x221
    mov edx, offset d_0045a43c
    mov eax, dword ptr [d_00463094]
    call sub_0041863d
    mov dword ptr [d_00463094], 0
    mov dword ptr [d_00463080], 0
loc_00427eb3:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00427ebc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_00463064], 0
    je loc_00427ee7
    mov eax, dword ptr [d_00463064]
    call sub_00419f92
    mov dword ptr [d_00463064], 0
loc_00427ee7:
    call sub_00427d55
    mov ebx, 0x235
    mov edx, offset d_0045a43c
    mov eax, dword ptr [d_0046306c]
    call sub_0041863d
    mov dword ptr [d_0046306c], 0
    call sub_00427de5
    call sub_00419512
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00427f1b:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x28
    .byte 0x81,0xec,0x28,0x00,0x00,0x00
    mov dword ptr [ebp - 0x24], eax
    mov dword ptr [ebp - 0x20], edx
    mov dword ptr [ebp - 0x1c], ebx
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x14], eax
loc_00427f3c:
    mov eax, dword ptr [ebp - 0x18]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00427f62
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    jne loc_00427f64
loc_00427f62:
    jmp loc_00427f72
loc_00427f64:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_00427fe4
loc_00427f72:
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00427fde
    mov eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [ebp - 0x14]
    je loc_00427fd0
    mov eax, dword ptr [ebp - 0x18]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0x28], eax
    mov edx, dword ptr [ebp - 0x14]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add edx, eax
    mov ebx, dword ptr [ebp - 0x18]
    shl ebx, 2
    mov eax, dword ptr [d_00463094]
    add eax, ebx
    mov edx, dword ptr [edx]
    mov dword ptr [eax], edx
    mov edx, dword ptr [ebp - 0x14]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add edx, eax
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [edx], eax
loc_00427fd0:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_00427fe4
loc_00427fde:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
loc_00427fe4:
    mov eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [ebp - 0x20]
    jg loc_00427ff8
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [ebp - 0x20]
    jle loc_00427f3c
loc_00427ff8:
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 4], 0
    cmp dword ptr [ebp - 0x24], 0
    jl loc_00428017
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [d_00463080]
    jl loc_0042801c
loc_00428017:
    jmp loc_00428126
loc_0042801c:
    mov eax, dword ptr [ebp - 0x24]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00428126
loc_00428033:
    mov dword ptr [ebp - 0x10], 0
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x18], eax
loc_00428040:
    mov eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [d_00463080]
    jl loc_00428055
    jmp loc_00428070
loc_0042804d:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    jmp loc_00428040
loc_00428055:
    mov eax, dword ptr [ebp - 0x18]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00428070
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_0042804d
loc_00428070:
    cmp dword ptr [ebp - 4], 0
    jne loc_0042807c
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 4], eax
loc_0042807c:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0x1c]
    jle loc_0042811a
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x24]
    add eax, edx
    mov dword ptr [ebp - 0xc], eax
    mov ebx, 0x270
    mov edx, offset d_0045a43c
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov ecx, dword ptr [d_00463094]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_0041863d
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 0x18], eax
loc_004280c4:
    mov eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x10]
    dec eax
    cmp eax, dword ptr [ebp - 0x18]
    jg loc_004280da
    jmp loc_004280fb
loc_004280d2:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    jmp loc_004280c4
loc_004280da:
    mov edx, dword ptr [ebp - 0x18]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add edx, eax
    mov ebx, dword ptr [ebp - 0x18]
    shl ebx, 2
    mov eax, dword ptr [d_00463094]
    add eax, ebx
    mov edx, dword ptr [edx + 4]
    mov dword ptr [eax], edx
    jmp loc_004280d2
loc_004280fb:
    mov eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [d_00463094]
    add eax, edx
    mov dword ptr [eax - 4], 0
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
loc_0042811a:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0x1c]
    jg loc_00428033
loc_00428126:
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, dword ptr [ebp - 0x24]
    push eax
    mov eax, offset d_0045a479
    push eax
    call sub_0042c0c8
    add esp, 0x14
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0042814b:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x1b0
    call sub_00427de5
    mov eax, offset d_0045a4b3
    call sub_00411d17
    push eax
    mov eax, offset d_0045a4b9
    push eax
    lea eax, [ebp - 0x120]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea edx, [ebp - 4]
    lea eax, [ebp - 0x120]
    call sub_0041404b
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, offset d_0045a4bc
    push eax
    call sub_0042c0c8
    add esp, 8
    mov dword ptr [ebp - 0x14], 0
    mov edx, offset d_0045a4fb
    mov eax, offset d_0045a4ee
    call sub_00411d17
    call sub_004514fc
    mov dword ptr [ebp - 0x20], eax
    cmp dword ptr [ebp - 0x20], 0
    je loc_004284b3
    mov dword ptr [d_00463080], 0
    mov dword ptr [ebp - 0x10], 1
loc_004281da:
    cmp dword ptr [ebp - 0x10], 2
    jle loc_004281ed
    jmp loc_004284a9
loc_004281e5:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_004281da
loc_004281ed:
    mov eax, dword ptr [ebp - 0x20]
    call sub_004515e8
loc_004281f5:
    mov byte ptr [ebp - 0x120], 0
    mov ebx, dword ptr [ebp - 0x20]
    mov edx, 0xff
    lea eax, [ebp - 0x120]
    call sub_004515ff
    cmp byte ptr [ebp - 0x120], 0
    je loc_0042842e
    mov edx, 0xa
    lea eax, [ebp - 0x120]
    call sub_0045167a
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 0
    je loc_0042823b
    mov eax, dword ptr [ebp - 0x1c]
    mov byte ptr [eax], 0
loc_0042823b:
    mov al, byte ptr [ebp - 0x120]
    inc al
    and eax, 0xff
    test byte ptr [eax + d_0045b608], 0x20
    je loc_0042842e
    lea eax, [ebp - 0x120]
    call sub_004516c1
    mov dword ptr [ebp - 0x18], eax
    mov edx, 0x2c
    lea eax, [ebp - 0x120]
    call sub_0045167a
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 0
    je loc_0042842e
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    cmp dword ptr [ebp - 0x10], 1
    jne loc_0042829f
    mov eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [d_00463080]
    jl loc_0042829f
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [d_00463080], eax
loc_0042829f:
    cmp dword ptr [ebp - 0x10], 2
    jne loc_0042842e
    mov edx, 0x2e
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0045167a
    mov dword ptr [ebp - 0x124], eax
    cmp dword ptr [ebp - 0x124], 0
    je loc_004282ce
    mov eax, dword ptr [ebp - 0x124]
    mov byte ptr [eax], 0
loc_004282ce:
    mov edx, 9
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0045167a
    mov dword ptr [ebp - 0x124], eax
    cmp dword ptr [ebp - 0x124], 0
    je loc_004282f3
    mov eax, dword ptr [ebp - 0x124]
    mov byte ptr [eax], 0
loc_004282f3:
    mov edx, 0x20
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0045167a
    mov dword ptr [ebp - 0x124], eax
    cmp dword ptr [ebp - 0x124], 0
    je loc_00428318
    mov eax, dword ptr [ebp - 0x124]
    mov byte ptr [eax], 0
loc_00428318:
    mov edx, 0x3b
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0045167a
    mov dword ptr [ebp - 0x124], eax
    cmp dword ptr [ebp - 0x124], 0
    je loc_0042833d
    mov eax, dword ptr [ebp - 0x124]
    mov byte ptr [eax], 0
loc_0042833d:
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, offset d_0045a4fe
    push eax
    lea eax, [ebp - 0x188]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov eax, dword ptr [ebp - 0x18]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_0042839a
    mov ebx, 0x2b7
    mov edx, offset d_0045a43c
    mov eax, dword ptr [ebp - 0x18]
    shl eax, 2
    mov ecx, dword ptr [d_00463094]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_0041863d
    mov eax, dword ptr [ebp - 0x18]
    push eax
    mov eax, offset d_0045a505
    push eax
    call sub_0042c0c8
    add esp, 8
loc_0042839a:
    mov ebx, 0x2ba
    mov edx, offset d_0045a43c
    lea eax, [ebp - 0x188]
    call sub_004186ac
    mov ebx, dword ptr [ebp - 0x18]
    shl ebx, 2
    mov edx, dword ptr [d_00463094]
    add edx, ebx
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov edx, offset d_0045a46c
    lea eax, [ebp - 0x188]
    call sub_0045201d
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 0
    je loc_0042842e
    mov edx, offset d_0045a52f
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0045189e
    mov dword ptr [ebp - 8], 0
loc_004283f2:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 4]
    jl loc_00428404
    jmp loc_0042842e
loc_004283fc:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_004283f2
loc_00428404:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    add edx, dword ptr [ebp - 0xc]
    mov edx, dword ptr [edx]
    lea eax, [ebp - 0x188]
    call sub_00451df7
    test eax, eax
    jne loc_0042842c
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    add eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    mov byte ptr [eax], 0x2a
loc_0042842c:
    jmp loc_004283fc
loc_0042842e:
    mov eax, dword ptr [ebp - 0x20]
    test byte ptr [eax + 0xc], 0x10
    je loc_004281f5
    cmp dword ptr [ebp - 0x10], 1
    jne loc_004284a4
    inc dword ptr [d_00463080]
    mov ecx, 0x2d0
    mov ebx, offset d_0045a43c
    mov edx, dword ptr [d_00463080]
    mov eax, 4
    call sub_00418511
    mov dword ptr [d_00463094], eax
    mov ecx, 0x2d1
    mov ebx, offset d_0045a43c
    mov edx, dword ptr [d_00463080]
    mov eax, 4
    call sub_00418511
    mov dword ptr [d_00463088], eax
    mov ecx, 0x2d2
    mov ebx, offset d_0045a43c
    mov edx, dword ptr [d_00463080]
    mov eax, 4
    call sub_00418511
    mov dword ptr [d_00463090], eax
loc_004284a4:
    jmp loc_004281e5
loc_004284a9:
    mov eax, dword ptr [ebp - 0x20]
    call sub_0045172e
    jmp loc_004284cb
loc_004284b3:
    mov eax, offset d_0045a534
    push eax
    call sub_0042c0c8
    add esp, 4
    mov eax, 1
    call sub_0044c98b
loc_004284cb:
    call sub_00413d01
    test eax, eax
    je loc_0042856b
    mov dword ptr [ebp - 0x18c], 0
    mov edx, offset d_0045a553
    mov eax, offset d_0045a556
    call sub_004514fc
    mov dword ptr [ebp - 0x20], eax
    cmp dword ptr [ebp - 0x20], 0
    je loc_00428556
    mov dword ptr [ebp - 8], 0
loc_00428501:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 4]
    jl loc_00428513
    jmp loc_0042854e
loc_0042850b:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00428501
loc_00428513:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    add eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    cmp byte ptr [eax], 0x2a
    je loc_0042854c
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    add eax, dword ptr [ebp - 0xc]
    push dword ptr [eax]
    mov eax, offset d_0045a563
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    call sub_00451b3e
    add esp, 0xc
    mov eax, dword ptr [ebp - 0x18c]
    inc dword ptr [ebp - 0x18c]
loc_0042854c:
    jmp loc_0042850b
loc_0042854e:
    mov eax, dword ptr [ebp - 0x20]
    call sub_0045172e
loc_00428556:
    mov eax, dword ptr [ebp - 0x18c]
    push eax
    mov eax, offset d_0045a56b
    push eax
    call sub_0042c0c8
    add esp, 8
loc_0042856b:
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00414173
    push dword ptr [d_00463080]
    mov eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, offset d_0045a5a3
    push eax
    call sub_0042c0c8
    add esp, 0xc
    cmp dword ptr [d_00464824], 0
    je loc_004285a3
    mov dword ptr [ebp - 0x190], 1
    jmp loc_004285ad
loc_004285a3:
    mov dword ptr [ebp - 0x190], 3
loc_004285ad:
    mov ebx, dword ptr [ebp - 0x190]
    mov edx, 0x12b
    mov eax, 0xc8
    call sub_00427f1b
    cmp dword ptr [d_00464824], 0
    je loc_004285d7
    mov dword ptr [ebp - 0x194], 1
    jmp loc_004285e1
loc_004285d7:
    mov dword ptr [ebp - 0x194], 7
loc_004285e1:
    mov ebx, dword ptr [ebp - 0x194]
    mov edx, 0x1f3
    mov eax, 0x190
    call sub_00427f1b
    cmp dword ptr [d_00464824], 0
    je loc_0042860b
    mov dword ptr [ebp - 0x198], 1
    jmp loc_00428615
loc_0042860b:
    mov dword ptr [ebp - 0x198], 7
loc_00428615:
    mov ebx, dword ptr [ebp - 0x198]
    mov edx, 0x3e7
    mov eax, 0x2bc
    call sub_00427f1b
    cmp dword ptr [d_00464824], 0
    je loc_0042863f
    mov dword ptr [ebp - 0x19c], 1
    jmp loc_00428649
loc_0042863f:
    mov dword ptr [ebp - 0x19c], 2
loc_00428649:
    mov ebx, dword ptr [ebp - 0x19c]
    mov edx, 0x513
    mov eax, 0x4b0
    call sub_00427f1b
    cmp dword ptr [d_00464824], 0
    je loc_00428673
    mov dword ptr [ebp - 0x1a0], 1
    jmp loc_0042867d
loc_00428673:
    mov dword ptr [ebp - 0x1a0], 7
loc_0042867d:
    mov ebx, dword ptr [ebp - 0x1a0]
    mov edx, 0x6a3
    mov eax, 0x578
    call sub_00427f1b
    cmp dword ptr [d_00464824], 0
    je loc_004286a7
    mov dword ptr [ebp - 0x1a4], 1
    jmp loc_004286b1
loc_004286a7:
    mov dword ptr [ebp - 0x1a4], 8
loc_004286b1:
    mov ebx, dword ptr [ebp - 0x1a4]
    mov edx, 0xa27
    mov eax, 0x8fc
    call sub_00427f1b
    cmp dword ptr [d_00464824], 0
    je loc_004286db
    mov dword ptr [ebp - 0x1a8], 1
    jmp loc_004286e5
loc_004286db:
    mov dword ptr [ebp - 0x1a8], 5
loc_004286e5:
    mov ebx, dword ptr [ebp - 0x1a8]
    mov edx, 0xaef
    mov eax, 0xa8c
    call sub_00427f1b
    mov dword ptr [ebp - 0x1ac], 0
loc_00428704:
    cmp dword ptr [ebp - 0x1ac], 9
    jl loc_0042871d
    jmp loc_00428762
loc_0042870f:
    mov eax, dword ptr [ebp - 0x1ac]
    inc dword ptr [ebp - 0x1ac]
    jmp loc_00428704
loc_0042871d:
    cmp dword ptr [d_00464824], 0
    je loc_00428732
    mov dword ptr [ebp - 0x1b0], 1
    jmp loc_0042873c
loc_00428732:
    mov dword ptr [ebp - 0x1b0], 4
loc_0042873c:
    mov ebx, dword ptr [ebp - 0x1b0]
    imul eax, dword ptr [ebp - 0x1ac], 0x32
    lea edx, [eax + 0xbe9]
    imul eax, dword ptr [ebp - 0x1ac], 0x32
    add eax, 0xbb8
    call sub_00427f1b
    jmp loc_0042870f
loc_00428762:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042876b:
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
loc_0042877c:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_004287b0
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add eax, edx
    mov eax, dword ptr [eax]
    call sub_00411d17
    call sub_004276bc
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0042877c
loc_004287b0:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004287b9:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, 0xc8
    call sub_004124a4
    call sub_00412e0c
    mov eax, 5
    call sub_00412e33
    mov eax, 0xc8
    call sub_0042876b
    mov eax, 0x14
    call sub_00412e33
    mov eax, 0x190
    call sub_0042876b
    mov eax, 0x28
    call sub_00412e33
    mov eax, 0x2bc
    call sub_0042876b
    mov eax, 0x3c
    call sub_00412e33
    mov eax, 0x578
    call sub_0042876b
    mov eax, 0x50
    call sub_00412e33
    mov eax, 0x8fc
    call sub_0042876b
    mov eax, 0x64
    call sub_00412e33
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042884b:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov eax, 0xc8
    call sub_004124a4
    call sub_00412e0c
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 0x18], 1
loc_0042887d:
    cmp dword ptr [ebp - 0x18], 2
    jle loc_00428890
    jmp loc_0042895b
loc_00428888:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    jmp loc_0042887d
loc_00428890:
    mov dword ptr [ebp - 0x14], 0
loc_00428897:
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_00463080]
    jl loc_004288af
    jmp loc_00428956
loc_004288a7:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_00428897
loc_004288af:
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00428951
    mov edx, offset d_0045a476
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 2
    mov ebx, dword ptr [d_00463094]
    add eax, ebx
    mov eax, dword ptr [eax]
    call sub_00411d17
    call sub_004514fc
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00428951
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x10]
    call sub_004442df
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 4]
    call sub_0045172e
    cmp dword ptr [ebp - 8], 0x493e0
    jge loc_00428951
    cmp dword ptr [ebp - 0x18], 1
    jne loc_0042891b
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 0x10], eax
    jmp loc_00428951
loc_0042891b:
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 0xc], eax
    mov edx, dword ptr [ebp - 0x14]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add eax, edx
    mov eax, dword ptr [eax]
    call sub_00411d17
    call sub_004276bc
    cmp dword ptr [ebp - 0x10], 0
    je loc_00428951
    imul edx, dword ptr [ebp - 0xc], 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x10]
    call sub_00412e33
loc_00428951:
    jmp loc_004288a7
loc_00428956:
    jmp loc_00428888
loc_0042895b:
    mov eax, 0x64
    call sub_00412e33
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042896e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x7c
    .byte 0x81,0xec,0x7c,0x00,0x00,0x00
    mov eax, 5
    call sub_00412135
    cmp eax, 0xa
    jle loc_0042899a
    mov eax, 5
    call sub_00412135
    mov dword ptr [ebp - 0x18], eax
    jmp loc_004289a1
loc_0042899a:
    mov dword ptr [ebp - 0x18], 0xa
loc_004289a1:
    cmp dword ptr [ebp - 0x18], 0xc8
    jle loc_004289b3
    mov dword ptr [ebp - 0x14], 0xc8
    jmp loc_004289de
loc_004289b3:
    mov eax, 5
    call sub_00412135
    cmp eax, 0xa
    jle loc_004289d1
    mov eax, 5
    call sub_00412135
    mov dword ptr [ebp - 4], eax
    jmp loc_004289d8
loc_004289d1:
    mov dword ptr [ebp - 4], 0xa
loc_004289d8:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [ebp - 0x14], eax
loc_004289de:
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [d_00463070], eax
    mov eax, 6
    call sub_00412135
    cmp eax, 0x7a120
    jle loc_00428a06
    mov eax, 6
    call sub_00412135
    mov dword ptr [ebp - 0x10], eax
    jmp loc_00428a0d
loc_00428a06:
    mov dword ptr [ebp - 0x10], 0x7a120
loc_00428a0d:
    cmp dword ptr [ebp - 0x10], 0x1312d00
    jle loc_00428a1f
    mov dword ptr [ebp - 0xc], 0x1312d00
    jmp loc_00428a4c
loc_00428a1f:
    mov eax, 6
    call sub_00412135
    cmp eax, 0x7a120
    jle loc_00428a3f
    mov eax, 6
    call sub_00412135
    mov dword ptr [ebp - 8], eax
    jmp loc_00428a46
loc_00428a3f:
    mov dword ptr [ebp - 8], 0x7a120
loc_00428a46:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0xc], eax
loc_00428a4c:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [d_00463068], eax
    mov byte ptr [ebp - 0x7c], 0
    lea edx, [ebp - 0x7c]
    mov eax, offset d_0045a5d7
    call sub_0041739c
    lea eax, [ebp - 0x7c]
    call sub_004516c1
    mov dword ptr [d_00463098], eax
    xor edx, edx
    mov eax, dword ptr [d_00463098]
    call sub_004272dd
    mov ecx, 0x350
    mov ebx, offset d_0045a43c
    mov edx, dword ptr [d_00463070]
    mov eax, 0x70
    call sub_00418511
    mov dword ptr [d_0046306c], eax
    mov eax, offset d_00463084
    call sub_00451e3e
    call sub_0042814b
    mov eax, offset sub_0041b961
    call sub_0043a6fc
    mov eax, offset ptr_00427ebc
    call sub_00410ebf
    mov eax, 4
    call sub_00412135
    test eax, eax
    je loc_00428ad3
    call sub_0042884b
loc_00428ad3:
    mov eax, 3
    call sub_00412135
    test eax, eax
    je loc_00428ae6
    call sub_004287b9
loc_00428ae6:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00428aef:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, 7
    call sub_00412135
    test eax, eax
    # je 0x428b8e
    .byte 0x0f,0x84
    .long loc_00428b8e - . - 4
    lea eax, [ebp - 4]
    call sub_00451e3e
    mov eax, 7
    call sub_00412135
    add eax, dword ptr [d_00463084]
    cmp eax, dword ptr [ebp - 4]
    jae loc_00428b8e
    mov eax, 0xcd
    call sub_004124a4
    call sub_00412e0c
    xor eax, eax
    call sub_00412e33
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00463084], eax
    call sub_00427d55
    mov eax, 0x32
    call sub_00412e33
    call sub_0042814b
    mov eax, 0x64
    call sub_00412e33
    mov eax, 4
    call sub_00412135
    test eax, eax
    je loc_00428b7b
    call sub_0042884b
loc_00428b7b:
    mov eax, 3
    call sub_00412135
    test eax, eax
    je loc_00428b8e
    call sub_004287b9
loc_00428b8e:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00428b97:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    call sub_00428aef
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00428bb1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    call sub_00428aef
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00428bcb:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_00463078]
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
sub_00428bed:
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
    mov dword ptr [ebp - 8], offset d_00462250
loc_00428c09:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_00428c20
    jmp loc_00428c41
loc_00428c11:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x20
    jmp loc_00428c09
loc_00428c20:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    jne loc_00428c3f
    mov ebx, 0x20
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_00451940
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00428c48
loc_00428c3f:
    jmp loc_00428c11
loc_00428c41:
    mov dword ptr [ebp - 4], 0
loc_00428c48:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00428c54:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    lea eax, [ebp - 0x14]
    call sub_00451e3e
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 0xc], offset d_00462250
loc_00428c7f:
    cmp dword ptr [ebp - 0x10], 0x64
    jl loc_00428c96
    jmp loc_00428cd1
loc_00428c87:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x20
    jmp loc_00428c7f
loc_00428c96:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax], 0
    je loc_00428ccf
    cmp dword ptr [ebp - 8], 0
    jne loc_00428cb5
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x18]
    mov dword ptr [ebp - 0x14], eax
    jmp loc_00428ccf
loc_00428cb5:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x18]
    cmp eax, dword ptr [ebp - 0x14]
    jae loc_00428ccf
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x18]
    mov dword ptr [ebp - 0x14], eax
loc_00428ccf:
    jmp loc_00428c87
loc_00428cd1:
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
sub_00428ce3:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x1f8
    mov dword ptr [ebp - 0x14], eax
    mov edx, dword ptr [ebp - 0x14]
    lea eax, [ebp - 0x78]
    call sub_0045189e
    mov edx, 0x2e
    lea eax, [ebp - 0x78]
    call sub_0045167a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00428d1b
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
loc_00428d1b:
    lea eax, [ebp - 0x78]
    push eax
    mov eax, offset d_0045a5e2
    push eax
    call sub_0042c0c8
    add esp, 8
    cmp dword ptr [d_00463060], 0
    jne loc_00428e81
    mov dword ptr [ebp - 0x7c], 0
    mov dword ptr [ebp - 0x80], offset d_00462250
loc_00428d48:
    mov eax, 0x23
    call sub_00412135
    cmp eax, dword ptr [ebp - 0x7c]
    jg loc_00428d64
    jmp loc_00428e77
loc_00428d5c:
    mov eax, dword ptr [ebp - 0x7c]
    inc dword ptr [ebp - 0x7c]
    jmp loc_00428d48
loc_00428d64:
    mov eax, dword ptr [ebp - 0x7c]
    shl eax, 2
    mov edx, dword ptr [d_00463094]
    add eax, edx
    cmp dword ptr [eax + 0x1130], 0
    je loc_00428e72
    mov edx, dword ptr [ebp - 0x7c]
    shl edx, 2
    mov eax, dword ptr [d_00463094]
    add edx, eax
    mov edx, dword ptr [edx + 0x1130]
    lea eax, [ebp - 0xe4]
    call sub_0045189e
    mov edx, 0x2e
    lea eax, [ebp - 0xe4]
    call sub_0045167a
    mov dword ptr [ebp - 0xe8], eax
    cmp dword ptr [ebp - 0xe8], 0
    je loc_00428dc5
    mov eax, dword ptr [ebp - 0xe8]
    mov byte ptr [eax], 0
loc_00428dc5:
    lea edx, [ebp - 0xe4]
    lea eax, [ebp - 0x14c]
    call sub_0045189e
    mov edx, offset d_0045a471
    lea eax, [ebp - 0xe4]
    call sub_00451d78
    mov edx, offset d_0045a476
    lea eax, [ebp - 0xe4]
    call sub_00411d17
    call sub_004514fc
    mov dword ptr [ebp - 0x150], eax
    cmp dword ptr [ebp - 0x150], 0
    je loc_00428e72
    mov eax, dword ptr [ebp - 0x80]
    mov dword ptr [eax], 1
    lea edx, [ebp - 0x14c]
    mov eax, dword ptr [ebp - 0x80]
    add eax, 4
    call sub_0045189e
    mov eax, dword ptr [ebp - 0x80]
    add eax, 0x18
    call sub_00451e3e
    mov eax, dword ptr [ebp - 0x150]
    mov eax, dword ptr [eax + 0x10]
    call sub_004442df
    mov edx, eax
    mov eax, dword ptr [ebp - 0x80]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0x150]
    call sub_0045172e
    mov eax, dword ptr [ebp - 0x80]
    push dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x80]
    add eax, 4
    push eax
    mov eax, offset d_0045a5f5
    push eax
    call sub_0042c0c8
    add esp, 0xc
    mov eax, dword ptr [ebp - 0x80]
    add dword ptr [ebp - 0x80], 0x20
loc_00428e72:
    jmp loc_00428d5c
loc_00428e77:
    mov dword ptr [d_00463060], 1
loc_00428e81:
    mov dword ptr [ebp - 0x154], 0
    mov dword ptr [ebp - 0x158], offset d_00462250
loc_00428e95:
    cmp dword ptr [ebp - 0x154], 0x64
    jl loc_00428ebb
    jmp loc_00428ef6
loc_00428ea0:
    mov eax, dword ptr [ebp - 0x154]
    inc dword ptr [ebp - 0x154]
    mov eax, dword ptr [ebp - 0x158]
    add dword ptr [ebp - 0x158], 0x20
    jmp loc_00428e95
loc_00428ebb:
    mov ebx, 7
    mov edx, offset d_0045a611
    mov eax, dword ptr [ebp - 0x158]
    add eax, 4
    call sub_004528c8
    test eax, eax
    jne loc_00428ef4
    mov eax, dword ptr [ebp - 0x158]
    add eax, 0x18
    call sub_00451e3e
    mov eax, dword ptr [ebp - 0x158]
    add dword ptr [eax + 0x18], 0x3e8
    jmp loc_00428ef6
loc_00428ef4:
    jmp loc_00428ea0
loc_00428ef6:
    mov dword ptr [ebp - 0x15c], 0
    mov dword ptr [ebp - 0x160], offset d_00462250
loc_00428f0a:
    cmp dword ptr [ebp - 0x15c], 0x64
    jl loc_00428f30
    jmp loc_00428f7e
loc_00428f15:
    mov eax, dword ptr [ebp - 0x15c]
    inc dword ptr [ebp - 0x15c]
    mov eax, dword ptr [ebp - 0x160]
    add dword ptr [ebp - 0x160], 0x20
    jmp loc_00428f0a
loc_00428f30:
    mov eax, dword ptr [ebp - 0x160]
    cmp dword ptr [eax], 0
    je loc_00428f7c
    lea edx, [ebp - 0x78]
    mov eax, dword ptr [ebp - 0x160]
    add eax, 4
    call sub_00451df7
    test eax, eax
    jne loc_00428f7c
    mov eax, dword ptr [ebp - 0x15c]
    push eax
    lea eax, [ebp - 0x78]
    push eax
    mov eax, offset d_0045a619
    push eax
    call sub_0042c0c8
    add esp, 0xc
    mov eax, dword ptr [ebp - 0x160]
    add eax, 0x18
    call sub_00451e3e
    jmp loc_004293dc
loc_00428f7c:
    jmp loc_00428f15
loc_00428f7e:
    mov dword ptr [ebp - 8], 0x1312d00
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 8]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    cmp eax, 0x1312d00
    jle loc_00428fa5
    mov dword ptr [ebp - 0x164], 0x1312d00
    jmp loc_00428fb8
loc_00428fa5:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 8]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x164], eax
loc_00428fb8:
    mov eax, dword ptr [ebp - 0x164]
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0x10], 0x19bfcc0
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 0x168], 0
    mov dword ptr [ebp - 0x16c], offset d_00462250
loc_00428fe3:
    cmp dword ptr [ebp - 0x168], 0x64
    jl loc_00429009
    jmp loc_00429022
loc_00428fee:
    mov eax, dword ptr [ebp - 0x168]
    inc dword ptr [ebp - 0x168]
    mov eax, dword ptr [ebp - 0x16c]
    add dword ptr [ebp - 0x16c], 0x20
    jmp loc_00428fe3
loc_00429009:
    mov eax, dword ptr [ebp - 0x16c]
    cmp dword ptr [eax], 0
    je loc_00429020
    mov eax, dword ptr [ebp - 0x16c]
    mov eax, dword ptr [eax + 0x1c]
    add dword ptr [ebp - 0xc], eax
loc_00429020:
    jmp loc_00428fee
loc_00429022:
    call sub_00428bed
    mov dword ptr [ebp - 0x170], eax
    cmp dword ptr [ebp - 0x170], 0
    je loc_004293ce
    lea eax, [ebp - 0x78]
    push eax
    mov eax, offset d_0045a650
    push eax
    lea eax, [ebp - 0x1d4]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x1d4]
    call sub_00411d17
    mov edx, eax
    lea eax, [ebp - 0x1d4]
    call sub_0045189e
    mov edx, offset d_0045a476
    lea eax, [ebp - 0x1d4]
    call sub_004514fc
    mov dword ptr [ebp - 0x1d8], eax
    cmp dword ptr [ebp - 0x1d8], 0
    je loc_004293b5
    lea eax, [ebp - 0x1d4]
    push eax
    mov eax, offset d_0045a657
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, dword ptr [ebp - 0x1d8]
    mov eax, dword ptr [eax + 0x10]
    call sub_004442df
    mov edx, eax
    mov eax, dword ptr [ebp - 0x170]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0x170]
    mov eax, dword ptr [eax + 0x1c]
    cmp eax, dword ptr [ebp - 0x10]
    jle loc_004290ef
    lea eax, [ebp - 0x1d4]
    push eax
    mov eax, offset d_0045a678
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, dword ptr [ebp - 0x1d8]
    call sub_0045172e
    jmp loc_004293dc
loc_004290ef:
    mov eax, dword ptr [ebp - 0x170]
    mov eax, dword ptr [eax + 0x1c]
    add eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [ebp - 0x10]
    jle loc_004291ac
    call sub_00428c54
    mov dword ptr [ebp - 0x1dc], eax
    cmp dword ptr [ebp - 0x1dc], 0
    je loc_00429189
    mov eax, dword ptr [ebp - 0x1dc]
    add eax, 4
    push eax
    mov eax, offset d_0045a6c7
    push eax
    lea eax, [ebp - 0x1d4]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x1d4]
    call sub_00411d17
    mov edx, eax
    lea eax, [ebp - 0x1d4]
    call sub_0045189e
    lea eax, [ebp - 0x1d4]
    push eax
    mov eax, offset d_0045a6ce
    push eax
    call sub_0042c0c8
    add esp, 8
    lea eax, [ebp - 0x1d4]
    call sub_004443d8
    mov eax, dword ptr [ebp - 0x1dc]
    mov dword ptr [eax], 0
    mov eax, dword ptr [ebp - 0x1dc]
    mov eax, dword ptr [eax + 0x1c]
    sub dword ptr [ebp - 0xc], eax
    jmp loc_004291a7
loc_00429189:
    mov eax, offset d_0045a6f9
    push eax
    call sub_0042c0c8
    add esp, 4
    mov eax, dword ptr [ebp - 0x1d8]
    call sub_0045172e
    jmp loc_004293dc
loc_004291a7:
    jmp loc_004290ef
loc_004291ac:
    call sub_00427342
    lea eax, [ebp - 0x78]
    push eax
    mov eax, offset d_0045a6c7
    push eax
    lea eax, [ebp - 0x1d4]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x1d4]
    call sub_00411d17
    mov edx, eax
    lea eax, [ebp - 0x1d4]
    call sub_0045189e
    mov edx, offset d_0045a72b
    lea eax, [ebp - 0x1d4]
    call sub_004514fc
    mov dword ptr [ebp - 0x1e0], eax
    cmp dword ptr [ebp - 0x1e0], 0
    je loc_00429386
    mov dword ptr [ebp - 0x1e4], 0x4000
    lea eax, [ebp - 0x1d4]
    push eax
    mov eax, offset d_0045a72e
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, 0xc8
    call sub_004124a4
    call sub_00412e0c
    mov ebx, 0x47b
    mov edx, offset d_0045a43c
    mov eax, dword ptr [ebp - 0x1e4]
    call sub_004184d0
    mov dword ptr [ebp - 0x1e8], eax
    mov eax, dword ptr [ebp - 0x170]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [ebp - 0x1ec], eax
loc_0042925d:
    cmp dword ptr [ebp - 0x1ec], 0
    je loc_0042931d
    mov eax, dword ptr [ebp - 0x170]
    mov edx, dword ptr [eax + 0x1c]
    sub edx, dword ptr [ebp - 0x1ec]
    imul edx, edx, 0x64
    mov eax, edx
    sar edx, 0x1f
    mov ebx, dword ptr [ebp - 0x170]
    idiv dword ptr [ebx + 0x1c]
    mov dword ptr [ebp - 0x1f0], eax
    mov eax, dword ptr [ebp - 0x1f0]
    call sub_00412e33
    mov eax, dword ptr [ebp - 0x1ec]
    cmp eax, dword ptr [ebp - 0x1e4]
    jge loc_004292b7
    mov eax, dword ptr [ebp - 0x1ec]
    mov dword ptr [ebp - 0x1f4], eax
    jmp loc_004292c3
loc_004292b7:
    mov eax, dword ptr [ebp - 0x1e4]
    mov dword ptr [ebp - 0x1f4], eax
loc_004292c3:
    mov eax, dword ptr [ebp - 0x1f4]
    mov dword ptr [ebp - 0x1f8], eax
    mov ecx, dword ptr [ebp - 0x1d8]
    mov ebx, 1
    mov edx, dword ptr [ebp - 0x1f8]
    mov eax, dword ptr [ebp - 0x1e8]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x1e0]
    mov ebx, 1
    mov edx, dword ptr [ebp - 0x1f8]
    mov eax, dword ptr [ebp - 0x1e8]
    call sub_00451958
    mov eax, dword ptr [ebp - 0x1f8]
    sub dword ptr [ebp - 0x1ec], eax
    call sub_004102b7
    jmp loc_0042925d
loc_0042931d:
    mov eax, 0x64
    call sub_00412e33
    mov ebx, 0x487
    mov edx, offset d_0045a43c
    mov eax, dword ptr [ebp - 0x1e8]
    call sub_0041863d
    mov eax, dword ptr [ebp - 0x170]
    mov dword ptr [eax], 1
    lea edx, [ebp - 0x78]
    mov eax, dword ptr [ebp - 0x170]
    add eax, 4
    call sub_0045189e
    mov eax, dword ptr [ebp - 0x170]
    add eax, 0x18
    call sub_00451e3e
    lea eax, [ebp - 0x78]
    push eax
    mov eax, offset d_0045a74f
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, dword ptr [ebp - 0x1e0]
    call sub_0045172e
    jmp loc_004293a8
loc_00429386:
    mov eax, dword ptr [ebp - 0x1d8]
    call sub_0045172e
    lea eax, [ebp - 0x1d4]
    push eax
    mov eax, offset d_0045a783
    push eax
    call sub_0042c0c8
    add esp, 8
    jmp loc_004293dc
loc_004293a8:
    mov eax, dword ptr [ebp - 0x1d8]
    call sub_0045172e
    jmp loc_004293cc
loc_004293b5:
    lea eax, [ebp - 0x1d4]
    push eax
    mov eax, offset d_0045a7b6
    push eax
    call sub_0042c0c8
    add esp, 8
    jmp loc_004293dc
loc_004293cc:
    jmp loc_004293dc
loc_004293ce:
    mov eax, offset d_0045a7f6
    push eax
    call sub_0042c0c8
    add esp, 4
loc_004293dc:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004293e5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xd0
    push dword ptr [d_0046499c]
    push dword ptr [d_00464998]
    mov eax, offset d_0045a81f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    mov eax, dword ptr [d_0046499c]
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [d_00463094]
    add eax, edx
    mov eax, dword ptr [eax + 0x1130]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_0042950d
    mov edx, dword ptr [ebp - 8]
    lea eax, [ebp - 0xd0]
    call sub_0045189e
    mov edx, 0x2e
    lea eax, [ebp - 0xd0]
    call sub_0045167a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_0042945e
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
loc_0042945e:
    mov edx, offset d_0045a471
    lea eax, [ebp - 0xd0]
    call sub_00451d78
    mov edx, dword ptr [ebp - 8]
    lea eax, [ebp - 0x6c]
    call sub_0045189e
    mov edx, 0x2e
    lea eax, [ebp - 0x6c]
    call sub_0045167a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00429495
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0
loc_00429495:
    mov edx, offset d_0045a83d
    lea eax, [ebp - 0x6c]
    call sub_00451d78
    mov eax, dword ptr [ebp - 8]
    call sub_00411d17
    mov edx, eax
    lea eax, [ebp - 0xd0]
    call sub_00411d17
    call sub_00451df7
    test eax, eax
    jne loc_004294d2
    lea eax, [ebp - 0xd0]
    call sub_00411d17
    call sub_004273a4
    jmp loc_00429517
loc_004294d2:
    call sub_0040c06a
    test eax, eax
    jne loc_004294e4
    cmp dword ptr [d_00464998], -1
    jne loc_004294e6
loc_004294e4:
    jmp loc_004294ff
loc_004294e6:
    mov eax, dword ptr [ebp - 8]
    call sub_00428ce3
    mov eax, dword ptr [d_0046499c]
    add eax, 0x44c
    call sub_004274ab
    jmp loc_0042950b
loc_004294ff:
    mov eax, 0x460
    call sub_004274ab
    jmp loc_00429517
loc_0042950b:
    jmp loc_00429517
loc_0042950d:
    mov eax, 0x460
    call sub_004274ab
loc_00429517:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00429520:
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
    imul eax, dword ptr [ebp - 0x14], 0x38
    mov edx, offset d_0046309c
    add edx, eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [ebp - 0x10], 0
    je loc_00429556
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax], edx
loc_00429556:
    cmp dword ptr [ebp - 0xc], 0
    je loc_00429567
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x24]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], edx
loc_00429567:
    cmp dword ptr [ebp - 8], 0
    je loc_00429578
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x28]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], edx
loc_00429578:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0042957e:
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
    imul eax, dword ptr [ebp - 0x14], 0x38
    mov edx, offset d_0046309c
    add edx, eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [ebp - 0x10], 0
    je loc_004295b4
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x2c]
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax], edx
loc_004295b4:
    cmp dword ptr [ebp - 0xc], 0
    je loc_004295c5
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], edx
loc_004295c5:
    cmp dword ptr [ebp - 8], 0
    je loc_004295d6
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x34]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], edx
loc_004295d6:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_004295dc:
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
    imul eax, dword ptr [ebp - 0x10], 0x38
    mov edx, offset d_0046309c
    add edx, eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [ebp - 0xc], 0
    je loc_00429610
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x18]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], edx
loc_00429610:
    cmp dword ptr [ebp - 8], 0
    je loc_00429621
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], edx
loc_00429621:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00429628:
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
    imul eax, dword ptr [ebp - 0xc], 0x38
    mov edx, offset d_0046309c
    add edx, eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
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
sub_0042965c:
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
    imul eax, dword ptr [ebp - 0xc], 0x38
    mov edx, offset d_0046309c
    add edx, eax
    mov dword ptr [ebp - 8], edx
    imul eax, dword ptr [ebp - 0xc], 0x194
    mov edx, offset d_004632cc
    add edx, eax
    mov dword ptr [ebp - 4], edx
    push 0x194
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    call dword ptr cs:[__imp__joyGetDevCapsA]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x24]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 8], edx
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x28]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0xc], edx
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x2c]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x10], edx
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x14], edx
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004296e2:
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
loc_004296f7:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00464294]
    jl loc_0042970c
    jmp loc_00429716
loc_00429704:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_004296f7
loc_0042970c:
    mov eax, dword ptr [ebp - 4]
    call sub_0042965c
    jmp loc_00429704
loc_00429716:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042971f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    call dword ptr cs:[__imp__joyGetNumDevs]
    mov dword ptr [d_00464298], eax
    push dword ptr [d_00464298]
    mov eax, offset d_0045a844
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, dword ptr [d_00464298]
    mov dword ptr [d_00464294], eax
    cmp dword ptr [d_00464294], 0xa
    jle loc_0042976a
    mov dword ptr [d_00464294], 0xa
loc_0042976a:
    call sub_004296e2
    push dword ptr [d_00464294]
    push dword ptr [d_00464298]
    mov eax, offset d_0045a860
    push eax
    call sub_0042c0c8
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00429790:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x50
    .byte 0x81,0xec,0x50,0x00,0x00,0x00
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 0x1c], 0
    mov dword ptr [ebp - 0x18], offset d_0046309c
loc_004297b3:
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [d_00464294]
    jl loc_004297d2
    jmp loc_0042998e
loc_004297c3:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    mov eax, dword ptr [ebp - 0x18]
    add dword ptr [ebp - 0x18], 0x38
    jmp loc_004297b3
loc_004297d2:
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax], 0
    je loc_00429989
    mov ebx, 0x34
    xor edx, edx
    lea eax, [ebp - 0x50]
    call sub_00451940
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x2c], edx
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x24]
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x30], edx
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x28]
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x34], edx
    mov dword ptr [ebp - 0x50], 0x34
    mov dword ptr [ebp - 0x4c], 0x83
    lea eax, [ebp - 0x50]
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    call dword ptr cs:[__imp__joyGetPosEx]
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    je loc_00429864
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x20], 0x32
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x24], 0x32
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x28], 0
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 4], 0
    jmp loc_00429989
loc_00429864:
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax + 4], 0
    jne loc_00429875
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0042965c
loc_00429875:
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 4], 1
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [edx + 0x28], eax
    mov eax, dword ptr [ebp - 0x48]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [edx + 0x18], eax
    mov eax, dword ptr [ebp - 0x44]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x18]
    cmp edx, dword ptr [eax + 8]
    jle loc_004298bc
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x14]
    mov eax, dword ptr [ebp - 0x18]
    cmp edx, dword ptr [eax + 0x10]
    jg loc_004298c1
loc_004298bc:
    jmp loc_00429989
loc_004298c1:
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x18]
    mov eax, dword ptr [ebp - 0x18]
    cmp edx, dword ptr [eax + 8]
    jge loc_004298db
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x18], edx
loc_004298db:
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x18]
    cmp edx, dword ptr [eax + 0x10]
    jge loc_004298f5
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x1c], edx
loc_004298f5:
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x18]
    mov eax, dword ptr [ebp - 0x18]
    cmp edx, dword ptr [eax + 0xc]
    jle loc_0042990f
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x18], edx
loc_0042990f:
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x18]
    cmp edx, dword ptr [eax + 0x14]
    jle loc_00429929
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x14]
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x1c], edx
loc_00429929:
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x18]
    mov edx, dword ptr [ebp - 0x18]
    sub eax, dword ptr [edx + 8]
    imul edx, eax, 0x64
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0xc]
    mov ebx, dword ptr [ebp - 0x18]
    sub eax, dword ptr [ebx + 8]
    mov ebx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x1c]
    mov edx, dword ptr [ebp - 0x18]
    sub eax, dword ptr [edx + 0x10]
    imul edx, eax, 0x64
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x14]
    mov ebx, dword ptr [ebp - 0x18]
    sub eax, dword ptr [ebx + 0x10]
    mov ebx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [edx + 0x24], eax
loc_00429989:
    jmp loc_004297c3
loc_0042998e:
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
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x20
    .byte 0x81,0xec,0x20,0x00,0x00,0x00
    mov dword ptr [ebp - 0x20], 0
    mov dword ptr [ebp - 0x18], 0
loc_004299bc:
    cmp dword ptr [ebp - 0x18], 5
    jl loc_004299cc
    jmp loc_004299d8
loc_004299c4:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    jmp loc_004299bc
loc_004299cc:
    mov dword ptr [d_0046309c], 1
    jmp loc_004299c4
loc_004299d8:
    call sub_00429790
    mov dword ptr [ebp - 0x18], 0
loc_004299e4:
    cmp dword ptr [ebp - 0x18], 5
    jl loc_004299f4
    jmp loc_00429a2f
loc_004299ec:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    jmp loc_004299e4
loc_004299f4:
    lea ecx, [ebp - 0xc]
    lea ebx, [ebp - 0x10]
    lea edx, [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_00429520
    lea ebx, [ebp - 4]
    lea edx, [ebp - 8]
    mov eax, dword ptr [ebp - 0x18]
    call sub_004295dc
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, offset d_0045a8ab
    push eax
    call sub_0042c0c8
    add esp, 0x10
    jmp loc_004299ec
loc_00429a2f:
    mov eax, offset d_0045a8ba
    push eax
    call sub_0042c0c8
    add esp, 4
    call sub_004102b7
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 0x1b
    jne loc_00429a52
    mov dword ptr [ebp - 0x20], 1
loc_00429a52:
    cmp dword ptr [ebp - 0x20], 0
    je loc_004299d8
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00429a61:
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
    cmp dword ptr [ebp - 8], 0
    jl loc_00429a7e
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00429a80
loc_00429a7e:
    jmp loc_00429a96
loc_00429a80:
    imul eax, dword ptr [ebp - 8], 0x194
    mov edx, offset d_004632cc
    add eax, edx
    add eax, 4
    mov dword ptr [ebp - 4], eax
    jmp loc_00429a9d
loc_00429a96:
    mov dword ptr [ebp - 4], offset d_0045a8bc
loc_00429a9d:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00429aa9:
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
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 8]
    call sub_0043f4c0
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
sub_00429ae1:
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
    mov eax, dword ptr [ebp - 8]
    call sub_0043fa10
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax], dl
    mov eax, dword ptr [ebp - 8]
    call sub_0043fa10
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 1], dl
    mov eax, dword ptr [ebp - 8]
    call sub_0043fa10
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 2], dl
    mov eax, dword ptr [ebp - 8]
    call sub_0043fa10
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 3], dl
    mov eax, dword ptr [ebp - 8]
    call sub_00429aa9
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 4], dx
    mov eax, dword ptr [ebp - 8]
    call sub_00429aa9
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 6], dx
    mov eax, dword ptr [ebp - 8]
    call sub_00429aa9
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 8], dx
    mov eax, dword ptr [ebp - 8]
    call sub_00429aa9
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0xa], dx
    mov eax, dword ptr [ebp - 8]
    call sub_00429aa9
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0xc], dx
    mov eax, dword ptr [ebp - 8]
    call sub_00429aa9
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0xe], dx
    mov dword ptr [ebp - 4], 0
loc_00429ba0:
    cmp dword ptr [ebp - 4], 0x30
    jb loc_00429bb0
    jmp loc_00429bc3
loc_00429ba8:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00429ba0
loc_00429bb0:
    mov eax, dword ptr [ebp - 8]
    call sub_0043fa10
    mov edx, dword ptr [ebp - 0xc]
    add edx, dword ptr [ebp - 4]
    mov byte ptr [edx + 0x10], al
    jmp loc_00429ba8
loc_00429bc3:
    mov eax, dword ptr [ebp - 8]
    call sub_0043fa10
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x40], dl
    mov eax, dword ptr [ebp - 8]
    call sub_0043fa10
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x41], dl
    mov eax, dword ptr [ebp - 8]
    call sub_00429aa9
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x42], dx
    mov eax, dword ptr [ebp - 8]
    call sub_00429aa9
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x44], dx
    mov eax, dword ptr [ebp - 8]
    call sub_00429aa9
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x46], dx
    mov eax, dword ptr [ebp - 8]
    call sub_00429aa9
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x48], dx
    mov dword ptr [ebp - 4], 0
loc_00429c2e:
    cmp dword ptr [ebp - 4], 0x36
    jb loc_00429c3e
    jmp loc_00429c51
loc_00429c36:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00429c2e
loc_00429c3e:
    mov eax, dword ptr [ebp - 8]
    call sub_0043fa10
    mov edx, dword ptr [ebp - 0xc]
    add edx, dword ptr [ebp - 4]
    mov byte ptr [edx + 0x4a], al
    jmp loc_00429c36
loc_00429c51:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00429c59:
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
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 8], 0
loc_00429c7c:
    xor eax, eax
    mov al, byte ptr [d_0045bec8]
    add dword ptr [ebp - 8], eax
loc_00429c86:
    cmp byte ptr [d_0045bec8], 0
    je loc_00429c97
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0x18]
    jl loc_00429ca7
loc_00429c97:
    jmp loc_00429cb7
loc_00429c99:
    dec byte ptr [d_0045bec8]
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00429c86
loc_00429ca7:
    mov eax, dword ptr [ebp - 0x1c]
    add eax, dword ptr [ebp - 0x10]
    mov dl, byte ptr [d_0045bec9]
    mov byte ptr [eax], dl
    jmp loc_00429c99
loc_00429cb7:
    cmp byte ptr [d_0045bec8], 0
    je loc_00429cd3
    xor eax, eax
    mov al, byte ptr [d_0045bec8]
    sub dword ptr [ebp - 8], eax
    movsx eax, word ptr [ebp - 8]
    mov dword ptr [ebp - 0xc], eax
    jmp loc_00429d22
loc_00429cd3:
    mov eax, dword ptr [ebp - 0x14]
    call sub_0043fa10
    mov byte ptr [ebp - 4], al
    mov al, byte ptr [ebp - 4]
    and al, 0xc0
    cmp al, 0xc0
    jne loc_00429d00
    mov al, byte ptr [ebp - 4]
    and al, 0x3f
    mov byte ptr [d_0045bec8], al
    mov eax, dword ptr [ebp - 0x14]
    call sub_0043fa10
    mov byte ptr [d_0045bec9], al
    jmp loc_00429d0f
loc_00429d00:
    mov byte ptr [d_0045bec8], 1
    mov al, byte ptr [ebp - 4]
    mov byte ptr [d_0045bec9], al
loc_00429d0f:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0x18]
    jl loc_00429c7c
    movsx eax, word ptr [ebp - 8]
    mov dword ptr [ebp - 0xc], eax
loc_00429d22:
    mov eax, dword ptr [ebp - 0xc]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00429d2c:
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
    mov eax, dword ptr [ebp - 0x1c]
    cmp byte ptr [eax + 1], 5
    je loc_00429d56
    mov dword ptr [ebp - 8], 0
    jmp loc_00429ddd
loc_00429d56:
    mov eax, dword ptr [ebp - 0x14]
    call sub_0043fe94
    mov dword ptr [ebp - 0x10], eax
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x14]
    call sub_00441284
    lea edx, [eax - 0x301]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0043fd08
    mov eax, dword ptr [ebp - 0x14]
    call sub_0043fa10
    mov byte ptr [ebp - 4], al
    cmp byte ptr [ebp - 4], 0xc
    jne loc_00429dc9
    mov dword ptr [ebp - 0xc], 0
loc_00429d91:
    cmp dword ptr [ebp - 0xc], 0x300
    jl loc_00429da1
    jmp loc_00429db3
loc_00429d9c:
    inc dword ptr [ebp - 0xc]
    jmp loc_00429d91
loc_00429da1:
    mov eax, dword ptr [ebp - 0x14]
    call sub_0043fa10
    mov edx, dword ptr [ebp - 0x18]
    add edx, dword ptr [ebp - 0xc]
    mov byte ptr [edx], al
    jmp loc_00429d9c
loc_00429db3:
    xor ebx, ebx
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0043fd08
    mov dword ptr [ebp - 8], 1
    jmp loc_00429ddd
loc_00429dc9:
    xor ebx, ebx
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0043fd08
    mov dword ptr [ebp - 8], 0
loc_00429ddd:
    mov eax, dword ptr [ebp - 8]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00429de7:
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xb0
    mov dword ptr [ebp - 0x24], eax
    mov dword ptr [ebp - 0x30], edx
    mov dword ptr [ebp - 0x2c], ebx
    mov dword ptr [ebp - 0x28], ecx
    mov edx, offset d_0045a8c0
    mov eax, dword ptr [ebp - 0x24]
    call sub_0043f134
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    jne loc_00429e20
    mov dword ptr [ebp - 4], 0
    jmp loc_00429f11
loc_00429e20:
    mov edx, dword ptr [ebp - 8]
    lea eax, [ebp - 0xb0]
    call sub_00429ae1
    xor edx, edx
    mov dx, word ptr [ebp - 0xa8]
    xor eax, eax
    mov ax, word ptr [ebp - 0xac]
    sub edx, eax
    inc edx
    mov dword ptr [ebp - 0x1c], edx
    xor eax, eax
    mov ax, word ptr [ebp - 0xa6]
    xor edx, edx
    mov dx, word ptr [ebp - 0xaa]
    sub eax, edx
    inc eax
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x30]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx], eax
    xor edx, edx
    mov dl, byte ptr [ebp - 0x6f]
    xor eax, eax
    mov ax, word ptr [ebp - 0x6e]
    imul edx, eax
    mov dword ptr [ebp - 0x14], edx
    mov ebx, 0xc3
    mov edx, offset d_0045a8c3
    mov eax, dword ptr [ebp - 0x14]
    imul eax, dword ptr [ebp - 0x18]
    call sub_004184d0
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0x10], 0
    jne loc_00429eb5
    mov eax, dword ptr [ebp - 8]
    call sub_00441e50
    mov dword ptr [ebp - 4], 0
    jmp loc_00429f11
loc_00429eb5:
    mov byte ptr [d_0045bec9], 0
    mov al, byte ptr [d_0045bec9]
    mov byte ptr [d_0045bec8], al
    mov dword ptr [ebp - 0x20], 0
loc_00429ecd:
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [ebp - 0x18]
    jl loc_00429edc
    jmp loc_00429ef2
loc_00429ed7:
    inc dword ptr [ebp - 0x20]
    jmp loc_00429ecd
loc_00429edc:
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00429c59
    mov eax, dword ptr [ebp - 0x1c]
    add dword ptr [ebp - 0x10], eax
    jmp loc_00429ed7
loc_00429ef2:
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x28]
    lea eax, [ebp - 0xb0]
    call sub_00429d2c
    mov eax, dword ptr [ebp - 8]
    call sub_00441e50
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
loc_00429f11:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_00429f1a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_00464af8], 0
    # jne 0x429f98
    .byte 0x0f,0x85
    .long loc_00429f98 - . - 4
    mov dword ptr [d_00464af8], 1
    mov dword ptr [ebp - 4], offset d_0045bf06
loc_00429f46:
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax], 0
    je loc_00429f98
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax], 0x61
    jb loc_00429f5e
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax], 0x7a
    jbe loc_00429f60
loc_00429f5e:
    jmp loc_00429f6f
loc_00429f60:
    mov eax, dword ptr [ebp - 4]
    mov dl, 0x7a
    sub dl, byte ptr [eax]
    mov eax, dword ptr [ebp - 4]
    add dl, 0x61
    mov byte ptr [eax], dl
loc_00429f6f:
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax], 0x41
    jb loc_00429f7f
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax], 0x5a
    jbe loc_00429f81
loc_00429f7f:
    jmp loc_00429f90
loc_00429f81:
    mov eax, dword ptr [ebp - 4]
    mov dl, 0x5a
    sub dl, byte ptr [eax]
    mov eax, dword ptr [ebp - 4]
    add dl, 0x41
    mov byte ptr [eax], dl
loc_00429f90:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00429f46
loc_00429f98:
    mov eax, offset d_0045bf06
    call sub_00451dab
    test eax, eax
    je loc_00429fe8
    test byte ptr [d_00464994], 0x40
    je loc_00429fe8
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    call dword ptr [d_0045c37c]
    mov edx, 0x1e0
    sub edx, eax
    mov eax, edx
    sub eax, 4
    push eax
    xor ecx, ecx
    mov ebx, 0x280
    mov edx, offset d_0045bf06
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
loc_00429fe8:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00429ff1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_00464994], 0x40
    call sub_00429f1a
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042a015:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_004646bc], 0
    jne loc_0042a081
    mov dword ptr [d_004646bc], 1
    mov eax, 1
    call sub_0042a16f
    call sub_00431178
    call sub_00410522
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x6f
    call sub_004124a4
    mov edx, eax
    mov eax, 0x5f
    call sub_004124a4
    call sub_00414340
    call sub_00431360
    xor eax, eax
    call sub_0042a16f
loc_0042a081:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042a088:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x7c
    .byte 0x81,0xec,0x7c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0xc], edx
    call sub_00415ce3
    call sub_00415c1f
    mov eax, dword ptr [ebp - 0x18]
    push eax
    mov eax, offset d_0045a8cc
    push eax
    lea eax, [ebp - 0x7c]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x7c]
    call sub_00411d17
    call sub_0041522d
    call sub_00429ff1
    call sub_00415c1f
    call sub_0041043c
    call sub_004102b7
    cmp dword ptr [ebp - 0xc], 0
    je loc_0042a167
    lea eax, [ebp - 8]
    call sub_00451e3e
    mov dword ptr [ebp - 0x10], 0
loc_0042a0f5:
    call sub_004102b7
    mov dword ptr [ebp - 0x14], eax
    lea eax, [ebp - 4]
    call sub_00451e3e
    mov eax, 0xc
    call sub_00412135
    add eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 4]
    jae loc_0042a11e
    mov dword ptr [ebp - 0x14], 0xd
loc_0042a11e:
    cmp dword ptr [ebp - 0x14], -1
    je loc_0042a12a
    cmp dword ptr [ebp - 0x14], -2
    jne loc_0042a12c
loc_0042a12a:
    jmp loc_0042a136
loc_0042a12c:
    mov eax, 0x14
    call sub_00427961
loc_0042a136:
    cmp dword ptr [ebp - 0x14], 0x1b
    jb loc_0042a14a
    cmp dword ptr [ebp - 0x14], 0x1b
    jbe loc_0042a150
    cmp dword ptr [ebp - 0x14], 0x20
    je loc_0042a150
    jmp loc_0042a161
loc_0042a14a:
    cmp dword ptr [ebp - 0x14], 0xd
    jne loc_0042a161
loc_0042a150:
    mov eax, 0xa
    call sub_00427961
    mov dword ptr [ebp - 0x10], 1
loc_0042a161:
    cmp dword ptr [ebp - 0x10], 0
    je loc_0042a0f5
loc_0042a167:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0042a16f:
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
    mov dword ptr [d_004646ac], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0042a191:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    cmp dword ptr [d_004646ac], 0
    jne loc_0042a31c
    call sub_0043acf8
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [d_0046496c]
    mov edx, dword ptr [ebp - 4]
    sub edx, eax
    mov dword ptr [d_00464958], edx
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0046496c], eax
    mov eax, 0x1f
    call sub_00412135
    cmp eax, dword ptr [d_00464958]
    jae loc_0042a1ed
    mov eax, 0x1f
    call sub_00412135
    mov dword ptr [d_00464958], eax
loc_0042a1ed:
    call sub_0040c06a
    cmp eax, 1
    jne loc_0042a20f
    call sub_0040f386
    test eax, eax
    jne loc_0042a20f
    mov dword ptr [d_00464a68], 2
    call sub_0042a015
loc_0042a20f:
    call sub_0040e765
    inc dword ptr [d_00464994]
    call sub_004105d2
    call sub_00415ca4
    call sub_0042641f
    call sub_004056ca
    call sub_004245b9
    call sub_00424f89
    call sub_0041b961
    call sub_00426d06
    call sub_00426818
    call sub_00420f07
    cmp dword ptr [d_0046489c], 0
    je loc_0042a25a
    call sub_004016da
loc_0042a25a:
    call sub_0042459a
    call sub_00410578
    mov edx, eax
    mov eax, 0x65
    call sub_00412135
    cmp edx, eax
    jge loc_0042a28c
    mov eax, 0x65
    call sub_00412135
    mov edx, eax
    call sub_00410578
    sub edx, 5
    cmp eax, edx
    jg loc_0042a28e
loc_0042a28c:
    jmp loc_0042a2fe
loc_0042a28e:
    cmp dword ptr [d_00464984], 0
    jne loc_0042a2ab
    mov dword ptr [d_00464984], 1
    mov eax, 0xa8c
    call sub_00427961
loc_0042a2ab:
    mov eax, offset d_0045a8d3
    call sub_0041d957
    mov dword ptr [ebp - 0xc], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041daa7
    mov dword ptr [ebp - 8], eax
    test byte ptr [d_00464994], 4
    je loc_0042a2fe
    mov ebx, dword ptr [ebp - 8]
    mov eax, dword ptr [d_00464a6c]
    mov edx, dword ptr [d_00464a6c]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov ecx, eax
    mov eax, dword ptr [d_00464a70]
    mov edx, dword ptr [d_00464a70]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov edx, ecx
    call sub_00415920
loc_0042a2fe:
    call sub_00429f1a
    call sub_00415ed1
    call sub_0040e765
    call sub_0041b961
    call sub_00415c1f
    call bm_pump
loc_0042a31c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042a325:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x78
    .byte 0x81,0xec,0x78,0x00,0x00,0x00
    mov eax, 1
    call sub_0042a16f
    xor edx, edx
    lea eax, [ebp - 0x14]
    call sub_0041d826
    mov eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, 0x14
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    or eax, 0x10000
    push eax
    push 0x64
    push 0x64
    xor ecx, ecx
    mov ebx, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x10]
    lea eax, [ebp - 0x78]
    call sub_0041485a
    mov dword ptr [ebp - 0xc], eax
    mov edx, offset d_0045a8d9
    mov eax, offset d_0045a8dc
    call sub_004514fc
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_0042a3de
    mov dword ptr [ebp - 4], 0
loc_0042a3a5:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 0x14]
    jl loc_0042a3b7
    jmp loc_0042a3d6
loc_0042a3af:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0042a3a5
loc_0042a3b7:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    add eax, dword ptr [ebp - 0x10]
    push dword ptr [eax]
    mov eax, offset d_0045a8e6
    push eax
    mov eax, dword ptr [ebp - 8]
    push eax
    call sub_00451b3e
    add esp, 0xc
    jmp loc_0042a3af
loc_0042a3d6:
    mov eax, dword ptr [ebp - 8]
    call sub_0045172e
loc_0042a3de:
    lea eax, [ebp - 0x14]
    call sub_00412bfd
    xor eax, eax
    call sub_0042a16f
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042a3f6:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x104
    mov dword ptr [d_0046489c], 0
    mov eax, 1
    call sub_0042a16f
    mov dword ptr [ebp - 0x20], 0
loc_0042a41f:
    cmp dword ptr [ebp - 0x20], 0x64
    jl loc_0042a42f
    jmp loc_0042a436
loc_0042a427:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_0042a41f
loc_0042a42f:
    call bm_pump
    jmp loc_0042a427
loc_0042a436:
    mov eax, 0x3fc
    call sub_0042741e
    call sub_00410f81
    cmp dword ptr [d_00464a68], 0
    jne loc_0042b057
    call sub_00410b6e
    mov eax, offset ptr_0042a191
    call sub_0043a6fc
    xor eax, eax
    call sub_0042a16f
    call sub_0043acf8
    mov dword ptr [d_0046496c], eax
    mov dword ptr [d_004646b4], 0
loc_0042a47c:
    mov dword ptr [d_00464aec], 0
    call sub_0043a508
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], 0x1b
    # jb 0x42a512
    .byte 0x0f,0x82
    .long loc_0042a512 - . - 4
    cmp dword ptr [ebp - 0x1c], 0x1b
    # --- patched: original code of 0x0042a49c..0x0042a4a2 replaced (see hooks.s)
    .byte 0x0f, 0x86
    .long loc_0042a56f - . - 4
    cmp dword ptr [ebp - 0x1c], 0x131
    jb loc_0042a4e5
    cmp dword ptr [ebp - 0x1c], 0x131
    jbe loc_0042a620
    cmp dword ptr [ebp - 0x1c], 0x13b
    jb loc_0042a4e0
    cmp dword ptr [ebp - 0x1c], 0x13b
    jbe loc_0042a588
    cmp dword ptr [ebp - 0x1c], 0x144
    je loc_0042a5ac
    jmp loc_0042a62c
loc_0042a4e0:
    jmp loc_0042a62c
loc_0042a4e5:
    cmp dword ptr [ebp - 0x1c], 0x111
    jb loc_0042a50d
    cmp dword ptr [ebp - 0x1c], 0x111
    jbe loc_0042a5ed
    cmp dword ptr [ebp - 0x1c], 0x120
    je loc_0042a627
    jmp loc_0042a62c
loc_0042a50d:
    jmp loc_0042a62c
loc_0042a512:
    cmp dword ptr [ebp - 0x1c], 0xd
    jb loc_0042a53e
    cmp dword ptr [ebp - 0x1c], 0xd
    jbe loc_0042a562
    cmp dword ptr [ebp - 0x1c], 0x11
    jb loc_0042a539
    cmp dword ptr [ebp - 0x1c], 0x11
    jbe loc_0042a56f
    cmp dword ptr [ebp - 0x1c], 0x12
    je loc_0042a610
    jmp loc_0042a62c
loc_0042a539:
    jmp loc_0042a62c
loc_0042a53e:
    cmp dword ptr [ebp - 0x1c], 1
    jb loc_0042a55d
    cmp dword ptr [ebp - 0x1c], 1
    jbe loc_0042a600
    cmp dword ptr [ebp - 0x1c], 4
    je loc_0042a5f9
    jmp loc_0042a62c
loc_0042a55d:
    jmp loc_0042a62c
loc_0042a562:
    cmp dword ptr [d_00464938], 0
    je loc_0042a62c
loc_0042a56f:
    mov dword ptr [d_0046492c], 0xffffffff
    mov dword ptr [d_00464a68], 2
    jmp loc_0042a62c
loc_0042a588:
    call sub_0040c06a
    test eax, eax
    jne loc_0042a5a7
    mov eax, 1
    call sub_0042a16f
    call sub_0041431c
    xor eax, eax
    call sub_0042a16f
loc_0042a5a7:
    jmp loc_0042a62c
loc_0042a5ac:
    call sub_00413d01
    test eax, eax
    je loc_0042a5c8
    cmp dword ptr [d_0046489c], 0
    je loc_0042a5c8
    mov dword ptr [d_00464894], 1
loc_0042a5c8:
    call sub_0040c06a
    cmp eax, 1
    je loc_0042a5eb
    mov dword ptr [d_00464aec], 1
    mov eax, dword ptr [d_00464aec]
    call sub_0040fb90
    call bm_pump
loc_0042a5eb:
    jmp loc_0042a62c
loc_0042a5ed:
    mov dword ptr [d_004646b4], 1
    jmp loc_0042a62c
loc_0042a5f9:
    call sub_00413bb0
    jmp loc_0042a62c
loc_0042a600:
    call sub_00413d01
    test eax, eax
    je loc_0042a60e
    call sub_0042a325
loc_0042a60e:
    jmp loc_0042a62c
loc_0042a610:
    call sub_00413d01
    test eax, eax
    je loc_0042a61e
    call sub_004165d2
loc_0042a61e:
    jmp loc_0042a62c
loc_0042a620:
    call sub_0040c678
    jmp loc_0042a62c
loc_0042a627:
    call sub_00413d45
loc_0042a62c:
    call sub_00421969
    cmp eax, 1
    jg loc_0042a63b
    call sub_00410522
loc_0042a63b:
    cmp dword ptr [d_0046489c], 0
    je loc_0042a6a9
    cmp dword ptr [d_00464894], 0
    je loc_0042a6a4
    mov eax, 1
    call sub_0042a16f
    cmp dword ptr [d_00464894], 2
    jne loc_0042a68b
    xor ecx, ecx
    mov cl, byte ptr [d_0049d38f]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x4dd
    call sub_004124a4
    mov edx, eax
    mov eax, 0x4d8
    call sub_004124a4
    call sub_00414340
loc_0042a68b:
    call sub_00410b6e
    xor eax, eax
    call sub_0042a16f
    cmp dword ptr [d_00464a68], 0
    jne loc_0042aff8
loc_0042a6a4:
    jmp loc_0042aff8
loc_0042a6a9:
    cmp dword ptr [d_00464aec], 0
    jne loc_0042a6bc
    call sub_00421947
    cmp eax, 1
    jg loc_0042a6be
loc_0042a6bc:
    jmp loc_0042a6cb
loc_0042a6be:
    call sub_0041087d
    test eax, eax
    je loc_0042aff8
loc_0042a6cb:
    cmp dword ptr [d_00464938], 0
    jne loc_0042b043
    mov eax, 0x46a
    call sub_0042741e
    mov eax, 1
    call sub_0042a16f
    mov edx, offset d_0045a8ea
    lea eax, [ebp - 0x88]
    call sub_0045189e
    lea eax, [ebp - 0x88]
    call sub_004219b0
    cmp eax, -1
    jne loc_0042a884
    xor edx, edx
    mov eax, offset d_0045a8f3
    call sub_0042a088
    mov eax, 0x6a4
    call sub_00427bfb
    call sub_0043acf8
    mov dword ptr [ebp - 0x14], eax
    mov dword ptr [ebp - 0x24], 0
    call sub_0041043c
loc_0042a73a:
    call bm_pump
    call sub_004102b7
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], -1
    je loc_0042a753
    cmp dword ptr [ebp - 0x1c], -2
    jne loc_0042a755
loc_0042a753:
    jmp loc_0042a75f
loc_0042a755:
    mov eax, 0x14
    call sub_00427961
loc_0042a75f:
    call sub_0040c06a
    cmp eax, 1
    jne loc_0042a779
    call sub_0040f386
    test eax, eax
    jne loc_0042a779
    mov dword ptr [ebp - 0x1c], 0x1b
loc_0042a779:
    call sub_0042247a
    test eax, eax
    jne loc_0042a78b
    cmp dword ptr [d_004646b4], 0
    je loc_0042a7a4
loc_0042a78b:
    call sub_0043acf8
    mov edx, dword ptr [ebp - 0x14]
    add edx, 0x1770
    cmp eax, edx
    jbe loc_0042a7a4
    mov dword ptr [ebp - 0x1c], 0xd
loc_0042a7a4:
    cmp dword ptr [ebp - 0x1c], 0x1b
    jl loc_0042a7d3
    cmp dword ptr [ebp - 0x1c], 0x1b
    jle loc_0042a7ef
    cmp dword ptr [ebp - 0x1c], 0x20
    jl loc_0042a7ce
    cmp dword ptr [ebp - 0x1c], 0x20
    jle loc_0042a802
    cmp dword ptr [ebp - 0x1c], 0x388
    # je 0x42a841
    .byte 0x0f,0x84
    .long loc_0042a841 - . - 4
    jmp loc_0042a86b
loc_0042a7ce:
    jmp loc_0042a86b
loc_0042a7d3:
    cmp dword ptr [ebp - 0x1c], -2
    jl loc_0042a7ea
    cmp dword ptr [ebp - 0x1c], -2
    jle loc_0042a802
    cmp dword ptr [ebp - 0x1c], 0xd
    je loc_0042a802
    # jmp 0x42a86b
    .byte 0xe9
    .long loc_0042a86b - . - 4
loc_0042a7ea:
    # jmp 0x42a86b
    .byte 0xe9
    .long loc_0042a86b - . - 4
loc_0042a7ef:
    mov dword ptr [d_00464a68], 2
    mov dword ptr [ebp - 0x24], 1
    jmp loc_0042a86b
loc_0042a802:
    call sub_0040c06a
    cmp eax, 1
    jne loc_0042a818
    mov eax, 0x28
    call sub_00427961
    jmp loc_0042a86b
loc_0042a818:
    call sub_0043acf8
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0x14]
    jae loc_0042a82e
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0x14], eax
loc_0042a82e:
    call sub_004148ac
    imul eax, eax, 0x3e8
    add eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [ebp - 0x10]
    jae loc_0042a86b
loc_0042a841:
    mov eax, 0xa
    call sub_00427961
    mov dword ptr [ebp - 0x24], 1
    call sub_0040c06a
    cmp eax, 2
    jne loc_0042a86b
    mov eax, 0x388
    call sub_0040f064
    call bm_pump
loc_0042a86b:
    cmp dword ptr [ebp - 0x24], 0
    je loc_0042a73a
    call sub_00415ce3
    call sub_00415c1f
    call sub_004150bd
loc_0042a884:
    cmp dword ptr [d_00464a68], 0
    jne loc_0042aff8
    mov eax, offset d_0045a8f8
    call sub_00411d17
    call sub_004151cc
    mov dword ptr [ebp - 0x18], 0xffffffff
    cmp dword ptr [d_00464aec], 0
    jne loc_0042a91e
    lea eax, [ebp - 0x88]
    push eax
    mov eax, 0x1e
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xf4]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x30d
    call sub_00412135
    push eax
    mov eax, 0x30c
    call sub_00412135
    mov ecx, eax
    mov eax, 0x30f
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0xf4]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, 1
    call sub_00421b56
loc_0042a91e:
    mov dword ptr [ebp - 0xc], 0
    xor eax, eax
    call sub_00421b0f
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 0x90], 0
loc_0042a939:
    cmp dword ptr [ebp - 0x90], 0xa
    jl loc_0042a952
    jmp loc_0042a972
loc_0042a944:
    mov eax, dword ptr [ebp - 0x90]
    inc dword ptr [ebp - 0x90]
    jmp loc_0042a939
loc_0042a952:
    mov eax, dword ptr [ebp - 0x90]
    call sub_00421b0f
    cmp eax, dword ptr [ebp - 8]
    jle loc_0042a970
    mov eax, dword ptr [ebp - 0x90]
    call sub_00421b0f
    mov dword ptr [ebp - 8], eax
loc_0042a970:
    jmp loc_0042a944
loc_0042a972:
    mov dword ptr [ebp - 4], 0
    mov dword ptr [ebp - 0x90], 0
loc_0042a983:
    cmp dword ptr [ebp - 0x90], 0xa
    jl loc_0042a99c
    jmp loc_0042a9b4
loc_0042a98e:
    mov eax, dword ptr [ebp - 0x90]
    inc dword ptr [ebp - 0x90]
    jmp loc_0042a983
loc_0042a99c:
    mov eax, dword ptr [ebp - 0x90]
    call sub_00421b0f
    cmp eax, dword ptr [ebp - 8]
    jne loc_0042a9b2
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
loc_0042a9b2:
    jmp loc_0042a98e
loc_0042a9b4:
    cmp dword ptr [d_00464964], 0
    je loc_0042ab04
    mov dword ptr [ebp - 0x90], 0
loc_0042a9cb:
    cmp dword ptr [ebp - 0x90], 2
    jl loc_0042a9e7
    jmp loc_0042aaff
loc_0042a9d9:
    mov eax, dword ptr [ebp - 0x90]
    inc dword ptr [ebp - 0x90]
    jmp loc_0042a9cb
loc_0042a9e7:
    mov dword ptr [ebp - 0x8c], 0
loc_0042a9f1:
    cmp dword ptr [ebp - 0x8c], 0xa
    jl loc_0042aa0d
    jmp loc_0042aafa
loc_0042a9ff:
    mov eax, dword ptr [ebp - 0x8c]
    inc dword ptr [ebp - 0x8c]
    jmp loc_0042a9f1
loc_0042aa0d:
    xor ebx, ebx
    lea edx, [ebp - 0xf8]
    mov eax, dword ptr [ebp - 0x8c]
    call sub_00421dd2
    cmp dword ptr [ebp - 0xf8], 0
    je loc_0042aaf5
    mov eax, dword ptr [ebp - 0x8c]
    call sub_004223e7
    cmp eax, dword ptr [ebp - 0x90]
    jne loc_0042aaf5
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x8c]
    call sub_00421ac8
    push eax
    mov eax, dword ptr [ebp - 0x90]
    inc eax
    push eax
    mov eax, 0x26
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xf4]
    push eax
    call sub_004518d0
    add esp, 0x10
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    mov eax, dword ptr [ebp - 0x90]
    call sub_004141f8
    push eax
    mov eax, 0x313
    call sub_00412135
    mov edx, dword ptr [ebp - 0x90]
    imul edx, eax
    mov eax, 0x312
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x311
    call sub_00412135
    mov ecx, eax
    mov eax, 0x314
    call sub_00412135
    lea edx, [ebp - 0xf4]
    mov esi, dword ptr [d_00464ae4]
    mov ebx, eax
    mov eax, esi
    call sub_0041696c
    mov eax, dword ptr [ebp - 0x8c]
    call sub_00421ac8
    cmp eax, dword ptr [d_00464a7c]
    jl loc_0042aaf3
    mov eax, dword ptr [ebp - 0x90]
    mov dword ptr [ebp - 0x18], eax
loc_0042aaf3:
    jmp loc_0042aafa
loc_0042aaf5:
    jmp loc_0042a9ff
loc_0042aafa:
    jmp loc_0042a9d9
loc_0042aaff:
    jmp loc_0042ac40
loc_0042ab04:
    mov dword ptr [ebp - 0x90], 0
loc_0042ab0e:
    cmp dword ptr [ebp - 0x90], 0xa
    jl loc_0042ab2a
    jmp loc_0042ac40
loc_0042ab1c:
    mov eax, dword ptr [ebp - 0x90]
    inc dword ptr [ebp - 0x90]
    jmp loc_0042ab0e
loc_0042ab2a:
    xor ebx, ebx
    lea edx, [ebp - 0xfc]
    mov eax, dword ptr [ebp - 0x90]
    call sub_00421dd2
    cmp dword ptr [ebp - 0xfc], 0
    je loc_0042ac3b
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x90]
    call sub_00421b0f
    push eax
    mov eax, dword ptr [ebp - 0x90]
    call sub_00421ac8
    push eax
    mov eax, dword ptr [ebp - 0x90]
    inc eax
    push eax
    mov eax, 0x1f
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xf4]
    push eax
    call sub_004518d0
    add esp, 0x14
    mov eax, dword ptr [ebp - 0x90]
    call sub_00416867
    push eax
    mov eax, dword ptr [ebp - 0x90]
    call sub_0041672f
    push eax
    mov eax, 0x313
    call sub_00412135
    mov edx, dword ptr [ebp - 0x90]
    imul edx, eax
    mov eax, 0x312
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x311
    call sub_00412135
    mov ecx, eax
    mov eax, 0x314
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0xf4]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    cmp dword ptr [d_0046497c], 0
    je loc_0042ac1f
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00464a7c]
    jl loc_0042ac1d
    cmp dword ptr [ebp - 4], 1
    jne loc_0042ac1d
    mov eax, dword ptr [ebp - 0x90]
    call sub_00421b0f
    cmp eax, dword ptr [ebp - 8]
    jne loc_0042ac1d
    mov eax, dword ptr [ebp - 0x90]
    mov dword ptr [ebp - 0x18], eax
loc_0042ac1d:
    jmp loc_0042ac3b
loc_0042ac1f:
    mov eax, dword ptr [ebp - 0x90]
    call sub_00421ac8
    cmp eax, dword ptr [d_00464a7c]
    jl loc_0042ac3b
    mov eax, dword ptr [ebp - 0x90]
    mov dword ptr [ebp - 0x18], eax
loc_0042ac3b:
    jmp loc_0042ab1c
loc_0042ac40:
    call sub_00415c1f
    cmp dword ptr [ebp - 0x18], -1
    je loc_0042ad62
    call sub_0040c06a
    test eax, eax
    jne loc_0042acaf
    cmp dword ptr [d_004648bc], 0
    je loc_0042aca3
    cmp dword ptr [d_00464964], 0
    je loc_0042ac99
    mov eax, dword ptr [ebp - 0x18]
    call sub_004223e7
    test eax, eax
    je loc_0042ac82
    mov dword ptr [ebp - 0x100], 2
    jmp loc_0042ac8c
loc_0042ac82:
    mov dword ptr [ebp - 0x100], 0
loc_0042ac8c:
    mov eax, dword ptr [ebp - 0x100]
    mov dword ptr [d_0046492c], eax
    jmp loc_0042aca1
loc_0042ac99:
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [d_0046492c], eax
loc_0042aca1:
    jmp loc_0042acad
loc_0042aca3:
    mov dword ptr [d_0046492c], 0xffffffff
loc_0042acad:
    jmp loc_0042acb9
loc_0042acaf:
    mov dword ptr [d_0046492c], 0xffffffff
loc_0042acb9:
    mov eax, 0x7d0
    call sub_00427bfb
    mov eax, 0x5dc
    call sub_00413cb0
    cmp dword ptr [d_0046497c], 0
    je loc_0042acf7
    mov eax, dword ptr [ebp - 0x18]
    inc eax
    push eax
    mov eax, 0x24
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xf4]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_0042ad18
loc_0042acf7:
    lea eax, [ebp - 0x88]
    push eax
    mov eax, 0x23
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xf4]
    push eax
    call sub_004518d0
    add esp, 0xc
loc_0042ad18:
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_00497f8f]
    push eax
    mov eax, 0x321
    call sub_00412135
    push eax
    mov eax, 0x320
    call sub_00412135
    mov ecx, eax
    mov eax, 0x323
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0xf4]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    call sub_00415c1f
    jmp loc_0042add0
loc_0042ad62:
    push dword ptr [d_00464a7c]
    mov eax, dword ptr [d_0046497c]
    add eax, 0x78
    call sub_004124a4
    push eax
    lea eax, [ebp - 0xf4]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049a624]
    push eax
    mov eax, 0x321
    call sub_00412135
    push eax
    mov eax, 0x320
    call sub_00412135
    mov ecx, eax
    mov eax, 0x323
    call sub_00412135
    lea edx, [ebp - 0xf4]
    mov esi, dword ptr [d_00464ae4]
    mov ebx, eax
    mov eax, esi
    call sub_0041696c
    call sub_00415c1f
loc_0042add0:
    call sub_0043acf8
    mov dword ptr [ebp - 0x14], eax
    mov dword ptr [ebp - 0x24], 0
    call sub_0041043c
loc_0042ade4:
    call bm_pump
    call sub_004102b7
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], -1
    je loc_0042adfd
    cmp dword ptr [ebp - 0x1c], -2
    jne loc_0042adff
loc_0042adfd:
    jmp loc_0042ae09
loc_0042adff:
    mov eax, 0x14
    call sub_00427961
loc_0042ae09:
    call sub_0040c06a
    cmp eax, 1
    jne loc_0042ae28
    call sub_0040f386
    test eax, eax
    jne loc_0042ae28
    call sub_0042a015
    mov dword ptr [ebp - 0x1c], 0x1b
loc_0042ae28:
    call sub_0042247a
    test eax, eax
    jne loc_0042ae3a
    cmp dword ptr [d_004646b4], 0
    je loc_0042ae53
loc_0042ae3a:
    call sub_0043acf8
    mov edx, dword ptr [ebp - 0x14]
    add edx, 0x1770
    cmp eax, edx
    jbe loc_0042ae53
    mov dword ptr [ebp - 0x1c], 0xd
loc_0042ae53:
    cmp dword ptr [ebp - 0x1c], 0x1b
    jl loc_0042ae82
    cmp dword ptr [ebp - 0x1c], 0x1b
    jle loc_0042ae9e
    cmp dword ptr [ebp - 0x1c], 0x20
    jl loc_0042ae7d
    cmp dword ptr [ebp - 0x1c], 0x20
    jle loc_0042aeb1
    cmp dword ptr [ebp - 0x1c], 0x387
    # je 0x42aef0
    .byte 0x0f,0x84
    .long loc_0042aef0 - . - 4
    jmp loc_0042af1a
loc_0042ae7d:
    jmp loc_0042af1a
loc_0042ae82:
    cmp dword ptr [ebp - 0x1c], -2
    jl loc_0042ae99
    cmp dword ptr [ebp - 0x1c], -2
    jle loc_0042aeb1
    cmp dword ptr [ebp - 0x1c], 0xd
    je loc_0042aeb1
    # jmp 0x42af1a
    .byte 0xe9
    .long loc_0042af1a - . - 4
loc_0042ae99:
    # jmp 0x42af1a
    .byte 0xe9
    .long loc_0042af1a - . - 4
loc_0042ae9e:
    mov dword ptr [d_00464a68], 2
    mov dword ptr [ebp - 0x24], 1
    jmp loc_0042af1a
loc_0042aeb1:
    call sub_0040c06a
    cmp eax, 1
    jne loc_0042aec7
    mov eax, 0x28
    call sub_00427961
    jmp loc_0042af1a
loc_0042aec7:
    call sub_0043acf8
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0x14]
    jae loc_0042aedd
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0x14], eax
loc_0042aedd:
    call sub_004148ac
    imul eax, eax, 0x3e8
    add eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [ebp - 0x10]
    jae loc_0042af1a
loc_0042aef0:
    mov eax, 0xa
    call sub_00427961
    mov dword ptr [ebp - 0x24], 1
    call sub_0040c06a
    cmp eax, 2
    jne loc_0042af1a
    mov eax, 0x387
    call sub_0040f064
    call bm_pump
loc_0042af1a:
    cmp dword ptr [ebp - 0x24], 0
    je loc_0042ade4
    cmp dword ptr [d_00464a68], 0
    jne loc_0042aff8
    cmp dword ptr [ebp - 0x18], -1
    # je 0x42afaf
    .byte 0x0f,0x84
    .long loc_0042afaf - . - 4
    cmp dword ptr [d_00464964], 0
    je loc_0042af5f
    mov eax, dword ptr [ebp - 0x18]
    push eax
    mov eax, offset d_0045a904
    push eax
    lea eax, [ebp - 0xf4]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_0042af78
loc_0042af5f:
    mov eax, dword ptr [ebp - 0x18]
    push eax
    mov eax, offset d_0045a90b
    push eax
    lea eax, [ebp - 0xf4]
    push eax
    call sub_004518d0
    add esp, 0xc
loc_0042af78:
    xor edx, edx
    lea eax, [ebp - 0xf4]
    call sub_0042a088
    mov eax, 0xbb8
    call sub_00413cb0
    mov dword ptr [d_00464a68], 1
    call sub_0041043c
    call sub_00415ce3
    call sub_00415c1f
    call sub_004150bd
    jmp loc_0042aff8
loc_0042afaf:
    cmp dword ptr [ebp - 0xc], 2
    jge loc_0042afec
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2f
    call sub_004124a4
    mov edx, eax
    mov eax, 0x5f
    call sub_004124a4
    call sub_00414340
    mov dword ptr [d_00464a68], 2
    jmp loc_0042aff8
loc_0042afec:
    call sub_00410b6e
    xor eax, eax
    call sub_0042a16f
loc_0042aff8:
    cmp dword ptr [d_00464a68], 0
    je loc_0042a47c
    mov eax, dword ptr [d_00464a68]
    call sub_0040fb44
    mov dword ptr [ebp - 0x104], 0
loc_0042b019:
    cmp dword ptr [ebp - 0x104], 0xa
    jl loc_0042b032
    jmp loc_0042b043
loc_0042b024:
    mov eax, dword ptr [ebp - 0x104]
    inc dword ptr [ebp - 0x104]
    jmp loc_0042b019
loc_0042b032:
    call bm_pump
    mov eax, 0x64
    call sub_00413cb0
    jmp loc_0042b024
loc_0042b043:
    call sub_00416591
    call sub_00410522
    mov eax, offset ptr_0042a191
    call sub_0043a74c
loc_0042b057:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042b060:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, 0x3e8
    call sub_0042741e
    call sub_00413d01
    test eax, eax
    jne loc_0042b09f
    mov edx, 1
    mov eax, offset d_0045a915
    call sub_0042a088
    mov edx, 1
    mov eax, offset d_0045a91c
    call sub_0042a088
loc_0042b09f:
    mov eax, 0xaf0
    call sub_00427bfb
    mov edx, 1
    mov eax, offset d_0045a923
    call sub_0042a088
    call sub_00415ce3
    call sub_00415c1f
    call sub_004150bd
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042b0ce:
    # --- patched: original code of 0x0042b0ce..0x0042b47d replaced (see hooks.s)
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
    .org 0x42b47d - 0x401000, 0x90      # padding up to the next function
sub_0042b47d:
    # --- patched: original code of 0x0042b47d..0x0042b9ce replaced (see hooks.s)
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
    .org 0x42b9ce - 0x401000, 0x90      # padding up to the next function
sub_0042b9ce:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x2c
    .byte 0x81,0xec,0x2c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 0x18], 0
loc_0042b9ea:
    call sub_0043acf8
    mov dword ptr [d_00464934], eax
    cmp dword ptr [d_00464938], 0
    je loc_0042ba20
    call sub_00422552
    mov dword ptr [d_00464938], 0
    mov eax, dword ptr [d_004646b8]
    mov dword ptr [d_00464998], eax
    mov eax, dword ptr [d_004646b0]
    mov dword ptr [d_00464964], eax
loc_0042ba20:
    call sub_00428bcb
    push eax
    call sub_00418713
    push eax
    mov eax, offset d_0045a929
    push eax
    call sub_0042c0c8
    add esp, 0xc
    call sub_0041043c
    call sub_004151ad
    mov eax, offset d_0045a95d
    call sub_00411d17
    call sub_004151cc
    call sub_00415189
    call sub_00431360
    call sub_0041043c
    mov dword ptr [ebp - 0x1c], 0
    mov dword ptr [ebp - 8], 1
    mov dword ptr [ebp - 4], 0
loc_0042ba77:
    call sub_00415ca4
    mov eax, 0x2bc
    call sub_00412135
    mov dword ptr [ebp - 0x14], eax
    mov eax, 0x2be
    call sub_00412135
    mov edx, dword ptr [ebp - 0x18]
    imul edx, eax
    mov eax, 0x2bd
    call sub_00412135
    add eax, edx
    mov dword ptr [ebp - 0x10], eax
    mov eax, offset d_0045a96a
    call sub_0041d957
    mov dword ptr [ebp - 0x28], eax
    mov edx, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x28]
    call sub_0041daa7
    mov dword ptr [ebp - 0x24], eax
    mov ebx, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00415920
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049a624]
    push eax
    push 0
    xor ecx, ecx
    mov ebx, 0x32
    mov edx, offset d_0045a97d
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    call sub_00415c1f
    cmp dword ptr [ebp - 8], 0
    je loc_0042bb18
    mov eax, 0x3f2
    call sub_0042741e
    mov dword ptr [ebp - 8], 0
loc_0042bb18:
    call sub_004102b7
    mov dword ptr [ebp - 0x20], eax
    cmp dword ptr [ebp - 0x20], -1
    je loc_0042bb2c
    cmp dword ptr [ebp - 0x20], -2
    jne loc_0042bb2e
loc_0042bb2c:
    jmp loc_0042bb42
loc_0042bb2e:
    mov eax, 0x14
    call sub_00427961
    call sub_0043acf8
    mov dword ptr [d_00464934], eax
loc_0042bb42:
    cmp dword ptr [ebp - 0x20], -1
    je loc_0042bb52
    cmp dword ptr [ebp - 0x20], -2
    # jne 0x42bbcc
    .byte 0x0f,0x85
    .long loc_0042bbcc - . - 4
loc_0042bb52:
    mov eax, 0x5c
    call sub_00412135
    cmp eax, 5
    jle loc_0042bbcc
    call sub_0043acf8
    mov dword ptr [ebp - 0x2c], eax
    mov eax, 0x5c
    call sub_00412135
    imul eax, eax, 0x3e8
    mov edx, dword ptr [ebp - 0x2c]
    sub edx, dword ptr [d_00464934]
    cmp edx, eax
    jbe loc_0042bbcc
loc_0042bb86:
    inc dword ptr [d_004642d8]
    mov dword ptr [d_00464938], 1
    call sub_004224e2
    mov eax, dword ptr [d_00464998]
    mov dword ptr [d_004646b8], eax
    mov eax, dword ptr [d_00464964]
    mov dword ptr [d_004646b0], eax
    mov dword ptr [d_00464964], 0
    mov dword ptr [ebp - 0x18], 0
    mov dword ptr [ebp - 0x20], 0xd
    jmp loc_0042bda2
loc_0042bbcc:
    cmp dword ptr [ebp - 0x20], 0x20
    # jl 0x42bc57
    .byte 0x0f,0x8c
    .long loc_0042bc57 - . - 4
    cmp dword ptr [ebp - 0x20], 0x20
    jle loc_0042bd66
    cmp dword ptr [ebp - 0x20], 0x120
    jl loc_0042bc30
    cmp dword ptr [ebp - 0x20], 0x120
    jle loc_0042bcb5
    cmp dword ptr [ebp - 0x20], 0x148
    jl loc_0042bc1e
    cmp dword ptr [ebp - 0x20], 0x148
    jle loc_0042bcd7
    cmp dword ptr [ebp - 0x20], 0x150
    je loc_0042bcbf
    # jmp 0x42bca4
    .byte 0xe9
    .long loc_0042bca4 - . - 4
loc_0042bc1e:
    cmp dword ptr [ebp - 0x20], 0x13b
    je loc_0042bd23
    # jmp 0x42bca4
    .byte 0xe9
    .long loc_0042bca4 - . - 4
loc_0042bc30:
    cmp dword ptr [ebp - 0x20], 0x118
    jl loc_0042bc55
    cmp dword ptr [ebp - 0x20], 0x118
    jle loc_0042bcef
    cmp dword ptr [ebp - 0x20], 0x11e
    # je 0x42bcb0
    .byte 0x0f,0x84
    .long loc_0042bcb0 - . - 4
    jmp loc_0042bca4
loc_0042bc55:
    jmp loc_0042bca4
loc_0042bc57:
    cmp dword ptr [ebp - 0x20], 0xd
    jl loc_0042bc85
    cmp dword ptr [ebp - 0x20], 0xd
    jle loc_0042bd66
    cmp dword ptr [ebp - 0x20], 0x11
    jl loc_0042bc83
    cmp dword ptr [ebp - 0x20], 0x11
    jle loc_0042bd09
    cmp dword ptr [ebp - 0x20], 0x1b
    je loc_0042bd09
    jmp loc_0042bca4
loc_0042bc83:
    jmp loc_0042bca4
loc_0042bc85:
    cmp dword ptr [ebp - 0x20], -2
    jl loc_0042bc9d
    cmp dword ptr [ebp - 0x20], -1
    jle loc_0042bc9f
    cmp dword ptr [ebp - 0x20], 5
    je loc_0042bd3d
    jmp loc_0042bca4
loc_0042bc9d:
    jmp loc_0042bca4
loc_0042bc9f:
    jmp loc_0042bd77
loc_0042bca4:
    mov dword ptr [ebp - 4], 0
    jmp loc_0042bd77
loc_0042bcb0:
    jmp loc_0042bb86
loc_0042bcb5:
    call sub_00413d45
    jmp loc_0042bd77
loc_0042bcbf:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    # --- patched: original code of 0x0042bcc5..0x0042bcc9 replaced (see hooks.s)
    cmp dword ptr [ebp - 0x18], 5
    jle loc_0042bcd2
    mov dword ptr [ebp - 0x18], 0
loc_0042bcd2:
    jmp loc_0042bd77
loc_0042bcd7:
    mov eax, dword ptr [ebp - 0x18]
    dec dword ptr [ebp - 0x18]
    cmp dword ptr [ebp - 0x18], 0
    jge loc_0042bcea
    # --- patched: original code of 0x0042bce3..0x0042bcea replaced (see hooks.s)
    mov dword ptr [ebp - 0x18], 5
loc_0042bcea:
    jmp loc_0042bd77
loc_0042bcef:
    mov eax, 0xa
    call sub_00427961
    mov dword ptr [ebp - 0x18], 3
    mov dword ptr [ebp - 0x1c], 1
    jmp loc_0042bd77
loc_0042bd09:
    mov eax, 0xa
    call sub_00427961
    # --- patched: original code of 0x0042bd13..0x0042bd1a replaced (see hooks.s)
    mov dword ptr [ebp - 0x18], 5
    mov dword ptr [ebp - 0x1c], 1
    jmp loc_0042bd77
loc_0042bd23:
    mov eax, 0xa
    call sub_00427961
    # --- patched: original code of 0x0042bd2d..0x0042bd3b replaced (see hooks.s)
    .fill 14, 1, 0x90
    jmp loc_0042bd77
loc_0042bd3d:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    cmp dword ptr [ebp - 4], 5
    jle loc_0042bd64
    mov dword ptr [ebp - 4], 0
    mov eax, 0xa
    call sub_00427961
    call sub_0040330e
    jmp loc_0042b9ea
loc_0042bd64:
    jmp loc_0042bd77
loc_0042bd66:
    mov eax, 0xa
    call sub_00427961
    mov dword ptr [ebp - 0x1c], 1
loc_0042bd77:
    cmp dword ptr [ebp - 0x1c], 0
    je loc_0042ba77
    jmp loc_0042bda2
    .byte 0x8d,0x40,0x00
ptr_0042bd86:
    .long ptr_0042bdb5
    .long ptr_0042bdc1
    .long ptr_0042bdcd
    .long ptr_0042bdd9
    .long ptr_0042bde7
    # --- patched: original code of 0x0042bd9a..0x0042bd9e replaced (see hooks.s)
    .long ptr_0042bdfa
    .long ptr_0042bdfa
loc_0042bda2:
    # --- patched: original code of 0x0042bda2..0x0042bda6 replaced (see hooks.s)
    cmp dword ptr [ebp - 0x18], 5
    ja loc_0042be06
    mov eax, dword ptr [ebp - 0x18]
    shl eax, 2
    jmp dword ptr cs:[eax + ptr_0042bd86]
ptr_0042bdb5:
    call sub_004121ff
    call sub_0042a3f6
    jmp loc_0042be06
ptr_0042bdc1:
    call sub_004121ff
    call sub_0042b0ce
    jmp loc_0042be06
ptr_0042bdcd:
    call sub_004121ff
    call sub_0042b47d
    jmp loc_0042be06
ptr_0042bdd9:
    call sub_004080dc
    mov dword ptr [ebp - 0x18], 0
    jmp loc_0042be06
ptr_0042bde7:
    mov eax, offset d_0045a982
    call sub_0041302d
    jmp loc_0042be06
ptr_0042bdf3:
    call sub_0041431c
    jmp loc_0042be06
ptr_0042bdfa:
    call sub_00412987
    mov dword ptr [ebp - 0x18], 0
loc_0042be06:
    jmp loc_0042b9ea
sub_0042be0b:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042be22:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    call sub_0041095a
    call bm_intro
    call sub_0042b9ce
    call sub_0043c668
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00
sub_0042be50:
    mov eax, offset ptr_0042c368
    # jmp 0x444418
    .byte 0xe9
    .long sub_00444418 - . - 4
    .byte 0x8b,0xc0
sub_0042be5c:
    push ebx
    push ecx
    cmp dword ptr [d_0045bfd0], offset ptr_0042c184
    je loc_0042be92
    mov ebx, dword ptr [d_0045bfc4]
    test ebx, ebx
    je loc_0042be83
    mov eax, ebx
    xor ecx, ecx
    call sub_0045172e
    mov dword ptr [d_0045bfc4], ecx
loc_0042be83:
    mov dword ptr [d_0045bfd0], offset ptr_0042c184
    call sub_0042c12c
loc_0042be92:
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0042be98:
    push ebx
    push ecx
    push esi
    mov ebx, eax
    mov ah, byte ptr [edx]
    cmp ah, 0x77
    je loc_0042bea9
    cmp ah, 0x61
    jne loc_0042bed7
loc_0042bea9:
    cmp byte ptr [edx + 1], 0x74
    jne loc_0042bed7
    mov ecx, dword ptr [d_0045bfc4]
    test ecx, ecx
    je loc_0042bec0
    mov eax, ecx
    call sub_0045172e
loc_0042bec0:
    mov eax, ebx
    mov esi, offset ptr_0042c1a8
    call sub_004514fc
    mov dword ptr [d_0045bfc4], eax
    mov dword ptr [d_0045bfd0], esi
loc_0042bed7:
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
    push ebx
    push ecx
    cmp dword ptr [d_0045bfd0], offset ptr_0042c1e8
    je loc_0042bf0d
    mov ebx, dword ptr [d_0045bfc4]
    test ebx, ebx
    je loc_0042bf03
    mov eax, ebx
    xor ecx, ecx
    call sub_0045172e
    mov dword ptr [d_0045bfc4], ecx
loc_0042bf03:
    mov dword ptr [d_0045bfd0], offset ptr_0042c1e8
loc_0042bf0d:
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov eax, offset d_0045a9c4
    call sub_00451fb1
    mov esi, eax
    test eax, eax
    je loc_0042c090
    mov edi, eax
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    lea eax, [ecx + 1]
    call sub_004444b0
    mov edx, eax
    mov ebp, eax
    test eax, eax
    je loc_0042c090
    mov edi, eax
    push edi
loc_0042bf4d:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_0042bf65
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_0042bf4d
loc_0042bf65:
    pop edi
    xor ebx, ebx
    jmp loc_0042bf79
loc_0042bf6a:
    inc edx
    xor eax, eax
    mov al, byte ptr [edx - 1]
    inc ebx
    call sub_00451de9
    mov byte ptr [edx - 1], al
loc_0042bf79:
    mov edi, ebp
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    cmp ebx, ecx
    jb loc_0042bf6a
    mov edx, offset d_0045a9d0
    mov eax, ebp
    call sub_00451f10
    test eax, eax
    jne loc_0042bfd6
    cmp dword ptr [d_0045bfd0], offset ptr_0042c184
    je loc_0042c089
    mov esi, dword ptr [d_0045bfc4]
    test esi, esi
    je loc_0042bfc2
    mov eax, esi
    xor edi, edi
    call sub_0045172e
    mov dword ptr [d_0045bfc4], edi
loc_0042bfc2:
    mov dword ptr [d_0045bfd0], offset ptr_0042c184
    call sub_0042c12c
    jmp loc_0042c089
loc_0042bfd6:
    mov edx, offset d_0045a9d8
    mov eax, ebp
    call sub_00451f10
    test eax, eax
    jne loc_0042c003
    mov edx, offset d_0045a9dc
    mov eax, offset d_0045a9e0
    call sub_0042be98
    mov eax, ebp
    call sub_00444630
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0042c003:
    mov edx, offset d_0045a9ec
    mov eax, ebp
    call sub_00451f10
    test eax, eax
    jne loc_0042c04d
    cmp dword ptr [d_0045bfd0], offset ptr_0042c1e8
    je loc_0042c089
    mov eax, dword ptr [d_0045bfc4]
    test eax, eax
    je loc_0042c035
    xor edx, edx
    call sub_0045172e
    mov dword ptr [d_0045bfc4], edx
loc_0042c035:
    mov dword ptr [d_0045bfd0], offset ptr_0042c1e8
    mov eax, ebp
    call sub_00444630
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0042c04d:
    mov edx, offset d_0045a9f4
    mov eax, ebp
    call sub_00451f10
    test eax, eax
    jne loc_0042c089
    mov edx, offset ptr_0042f7cc
    cmp edx, dword ptr [d_0045bfd0]
    je loc_0042c089
    mov ecx, dword ptr [d_0045bfc4]
    test ecx, ecx
    je loc_0042c083
    mov eax, ecx
    xor esi, esi
    call sub_0045172e
    mov dword ptr [d_0045bfc4], esi
loc_0042c083:
    mov dword ptr [d_0045bfd0], edx
loc_0042c089:
    mov eax, ebp
    call sub_00444630
loc_0042c090:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0042c098:
    push ecx
    push edx
    push esi
    mov edx, eax
    cmp eax, dword ptr [d_0045bfd0]
    je loc_0042c0c4
    mov ecx, dword ptr [d_0045bfc4]
    test ecx, ecx
    je loc_0042c0be
    mov eax, ecx
    xor esi, esi
    call sub_0045172e
    mov dword ptr [d_0045bfc4], esi
loc_0042c0be:
    mov dword ptr [d_0045bfd0], edx
loc_0042c0c4:
    pop esi
    pop edx
    pop ecx
    ret
sub_0042c0c8:
    push ebx
    push edx
    sub esp, 0x104
    cmp dword ptr [d_0045bfd0], 0
    je loc_0042c106
    lea eax, [esp + 0x114]
    lea ebx, [esp + 0x100]
    mov edx, dword ptr [esp + 0x110]
    mov dword ptr [esp + 0x100], eax
    mov eax, esp
    call sub_0045292e
    mov eax, esp
    call dword ptr [d_0045bfd0]
    jmp loc_0042c10b
loc_0042c106:
    mov eax, 0xffffffff
loc_0042c10b:
    add esp, 0x104
    pop edx
    pop ebx
    ret
    cmp dword ptr [d_0045bfd0], 0
    je loc_0042c124
    call dword ptr [d_0045bfd0]
    ret
loc_0042c124:
    mov eax, 0xffffffff
    ret
    .byte 0x8b,0xc0
sub_0042c12c:
    push ebx
    push ecx
    push edx
    mov edx, dword ptr [d_0045bfd0]
    xor eax, eax
    cmp edx, offset ptr_0042c184
    jne loc_0042c146
    mov eax, 0xb0000
    jmp loc_0042c153
loc_0042c146:
    cmp edx, offset ptr_0042c1e8
    jne loc_0042c153
    mov eax, 0xb8000
loc_0042c153:
    test eax, eax
    je loc_0042c17e
    xor ebx, ebx
    mov cl, 7
loc_0042c15b:
    xor edx, edx
loc_0042c15d:
    mov byte ptr [eax], 0x20
    inc eax
    inc edx
    mov byte ptr [eax], cl
    inc eax
    cmp edx, 0x50
    jl loc_0042c15d
    inc ebx
    cmp ebx, 0x19
    jl loc_0042c15b
    xor ecx, ecx
    mov dword ptr [d_0045bfc8], ecx
    mov dword ptr [d_0045bfcc], ecx
loc_0042c17e:
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_0042c184:
    push edx
    mov edx, eax
    cmp dword ptr [d_0045bfd0], offset ptr_0042c184
    jne loc_0042c1a4
loc_0042c193:
    cmp byte ptr [edx], 0
    je loc_0042c1a4
    xor eax, eax
    mov al, byte ptr [edx]
    inc edx
    call sub_0042c21c
    jmp loc_0042c193
loc_0042c1a4:
    xor eax, eax
    pop edx
    ret
ptr_0042c1a8:
    push ebx
    cmp dword ptr [d_0045bfd0], offset ptr_0042c1a8
    jne loc_0042c1e3
    mov ebx, dword ptr [d_0045bfc4]
    test ebx, ebx
    je loc_0042c1dc
    push eax
    push ebx
    call sub_00451b3e
    add esp, 8
    test eax, eax
    jl loc_0042c1dc
    mov eax, dword ptr [d_0045bfc4]
    call sub_00452943
    cmp eax, -1
    jne loc_0042c1e3
loc_0042c1dc:
    mov eax, 0xffffffff
    pop ebx
    ret
loc_0042c1e3:
    xor eax, eax
    pop ebx
    ret
    .byte 0x90
ptr_0042c1e8:
    cmp dword ptr [d_0045bfd0], offset ptr_0042c1e8
    jne loc_0042c1fd
    push eax
    call sub_004528a6
    add esp, 4
loc_0042c1fd:
    xor eax, eax
    ret
ptr_0042c200:
    .long ptr_0042c23c
    .long ptr_0042c24f
    .long ptr_0042c29b
    .long ptr_0042c2fb
    .long loc_0042c2c4
    .long loc_0042c2c4
    .long ptr_0042c28d
sub_0042c21c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov ebx, eax
    lea edx, [ebx - 7]
    mov eax, 0xb0000
    cmp edx, 6
    ja loc_0042c2c4
    jmp dword ptr cs:[edx*4 + ptr_0042c200]
ptr_0042c23c:
    push offset d_0045a9f8
    call sub_004528a6
    add esp, 4
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0042c24f:
    mov edx, dword ptr [d_0045bfc8]
    test edx, edx
    jle loc_0042c324
    mov eax, dword ptr [d_0045bfcc]
    lea ebx, [edx - 1]
    lea edx, [eax*4]
    mov dword ptr [d_0045bfc8], ebx
    add edx, eax
    add ebx, ebx
    shl edx, 5
    lea eax, [ebx + edx + 0xb0000]
    mov byte ptr [eax], 0x20
    inc eax
    mov byte ptr [eax], 7
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0042c28d:
    xor ecx, ecx
    mov dword ptr [d_0045bfc8], ecx
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0042c29b:
    mov ebx, 0x20
    mov ecx, 4
loc_0042c2a5:
    mov eax, ebx
    call sub_0042c21c
    mov edx, dword ptr [d_0045bfc8]
    dec edx
    mov eax, edx
    sar edx, 0x1f
    idiv ecx
    test edx, edx
    jne loc_0042c2a5
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
loc_0042c2c4:
    mov ecx, dword ptr [d_0045bfcc]
    lea edx, [ecx*4]
    mov esi, dword ptr [d_0045bfc8]
    add edx, ecx
    add esi, esi
    shl edx, 5
    add edx, esi
    add eax, edx
    inc eax
    mov edx, dword ptr [d_0045bfc8]
    mov byte ptr [eax - 1], bl
    inc edx
    mov byte ptr [eax], 7
    mov dword ptr [d_0045bfc8], edx
    cmp edx, 0x4f
    jle loc_0042c324
ptr_0042c2fb:
    mov edi, dword ptr [d_0045bfcc]
    xor esi, esi
    inc edi
    mov dword ptr [d_0045bfc8], esi
    mov dword ptr [d_0045bfcc], edi
    cmp edi, 0x18
    jle loc_0042c324
    mov dword ptr [d_0045bfcc], 0x18
    call sub_0042c32c
loc_0042c324:
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0042c32c:
    push ebx
    push ecx
    push edx
    mov eax, 0xb0000
    xor ecx, ecx
loc_0042c336:
    xor edx, edx
loc_0042c338:
    inc eax
    mov bl, byte ptr [eax + 0x9f]
    inc edx
    mov byte ptr [eax - 1], bl
    cmp edx, 0xa0
    jl loc_0042c338
    inc ecx
    cmp ecx, 0x18
    jl loc_0042c336
    xor edx, edx
loc_0042c353:
    mov byte ptr [eax], 0x20
    inc eax
    inc edx
    mov byte ptr [eax], 7
    inc eax
    cmp edx, 0x50
    jl loc_0042c353
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
ptr_0042c368:
    push edx
    mov edx, dword ptr [d_0045bfc4]
    test edx, edx
    je loc_0042c37a
    mov eax, edx
    call sub_0045172e
loc_0042c37a:
    pop edx
    ret
    .byte 0x00,0x00,0x00,0x00
    cmp dword ptr [d_0049d3f0], 0
    je loc_0042c390
    call dword ptr [d_0049d3f0]
    ret
loc_0042c390:
    mov eax, 0xffffffff
    ret
    .byte 0x8b,0xc0
    cmp dword ptr [d_0049d3e8], 0
    je loc_0042c3a8
    call dword ptr [d_0049d3e8]
    ret
loc_0042c3a8:
    mov eax, 0xffffffff
    ret
    .byte 0x8b,0xc0
    cmp dword ptr [d_0049d3ec], 0
    je loc_0042c3c0
    call dword ptr [d_0049d3ec]
    ret
loc_0042c3c0:
    mov eax, 0xffffffff
    ret
    .byte 0x8b,0xc0
sub_0042c3c8:
    mov dword ptr [d_0049d3f0], eax
    mov dword ptr [d_0049d3e8], edx
    mov dword ptr [d_0049d3ec], ebx
    ret
    .byte 0x8b,0xc0
ptr_0042c3dc:
    # jmp 0x4529cc
    .byte 0xe9
    .long sub_004529cc - . - 4
    .byte 0x8d,0x40,0x00
ptr_0042c3e4:
    # jmp 0x452abb
    .byte 0xe9
    .long sub_00452abb - . - 4
    .byte 0x8d,0x40,0x00
ptr_0042c3ec:
    # jmp 0x452b35
    .byte 0xe9
    .long sub_00452b35 - . - 4
    .byte 0x8d,0x40,0x00
    mov dword ptr [d_0045bffc], eax
    ret
    .byte 0x8b,0xc0
    push ebx
    mov ebx, eax
    and ebx, 0xff
    xor eax, eax
    shl ebx, 8
    mov al, dl
    mov al, byte ptr [ebx + eax + d_00465390]
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push ebx
    mov ebx, eax
    and ebx, 0xff
    xor eax, eax
    shl ebx, 8
    mov al, dl
    mov al, byte ptr [ebx + eax + d_00485390]
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0042c434:
    and edx, 0xff
    sar eax, 9
    shl edx, 8
    mov al, byte ptr [edx + eax + d_00475390]
    nop
    ret
    .byte 0x8d,0x40,0x00
    mov al, byte ptr [eax + d_00495390]
    # mov eax, eax
    .byte 0x8b,0xc0
    ret
    .byte 0x8d,0x40,0x00
    and eax, 0xff
    # lea eax, [eax]
    .byte 0x8d,0x40,0x00
sub_0042c460:
    push ebx
    push edx
    xor edx, edx
    mov dl, al
    lea eax, [edx*4]
    sub eax, edx
    mov edx, eax
    xor eax, eax
    xor ebx, ebx
    mov al, byte ptr [edx + d_0045c000]
    mov bl, byte ptr [edx + d_0045c001]
    sar eax, 1
    sar ebx, 1
    shl eax, 5
    mov dl, byte ptr [edx + d_0045c002]
    or eax, ebx
    and edx, 0xff
    shl eax, 5
    sar edx, 1
    or eax, edx
    pop edx
    pop ebx
    ret
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x30c
    mov dword ptr [esp + 0x300], eax
    mov dword ptr [esp + 0x304], edx
    mov dword ptr [esp + 0x308], ebx
    xor ebp, ebp
    test ebx, ebx
    jle loc_0042c515
loc_0042c4c5:
    mov ecx, dword ptr [esp + 0x304]
    mov esi, dword ptr [esp + 0x300]
    xor ebx, ebx
loc_0042c4d5:
    movzx edi, byte ptr [esi]
    xor edx, edx
    mov eax, edi
    mov dl, byte ptr [ecx]
    sub eax, edx
    imul eax, ebp
    mov edx, eax
    sar edx, 0x1f
    idiv dword ptr [esp + 0x308]
    inc ecx
    sub edi, eax
    inc ebx
    mov eax, edi
    inc esi
    mov byte ptr [esp + ebx - 1], al
    cmp ebx, 0x300
    jl loc_0042c4d5
    mov eax, esp
    mov ebx, dword ptr [esp + 0x308]
    inc ebp
    call sub_0042c534
    cmp ebp, ebx
    jl loc_0042c4c5
loc_0042c515:
    mov eax, dword ptr [esp + 0x304]
    call sub_0042c534
    add esp, 0x30c
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    mov eax, offset d_0049d3f4
    # lea eax, [eax]
    .byte 0x8d,0x40,0x00
sub_0042c534:
    push ebx
    push edx
    sub esp, 0x300
    mov edx, eax
    xor eax, eax
loc_0042c540:
    xor ebx, ebx
    mov bl, byte ptr [edx]
    mov bl, byte ptr [ebx + d_00464e50]
    mov byte ptr [esp + eax], bl
    inc eax
    mov bl, byte ptr [edx]
    inc edx
    mov byte ptr [eax + d_00464b4f], bl
    cmp eax, 0x300
    jl loc_0042c540
    mov eax, esp
    call sub_00443608
    add esp, 0x300
    pop edx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0042c570:
    mov eax, offset d_00464b50
    ret
    .byte 0x8b,0xc0
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x300
    mov ecx, eax
    mov ebp, edx
    mov edi, ebx
    mov ebx, ebp
    xor edx, edx
    lea eax, [ebx*4]
    sub edi, ebp
    sub eax, ebx
    lea esi, [edi + 1]
    mov ebx, eax
    mov eax, ecx
    jmp loc_0042c5ee
loc_0042c5a0:
    xor ecx, ecx
    mov cl, byte ptr [eax]
    mov cl, byte ptr [ecx + d_00464e50]
    mov byte ptr [esp + edx], cl
    xor ecx, ecx
    mov cl, byte ptr [eax + 1]
    mov cl, byte ptr [ecx + d_00464e50]
    mov byte ptr [esp + edx + 1], cl
    xor ecx, ecx
    mov cl, byte ptr [eax + 2]
    mov cl, byte ptr [ecx + d_00464e50]
    mov byte ptr [esp + edx + 2], cl
    mov cl, byte ptr [eax]
    mov byte ptr [ebx + d_00464b50], cl
    mov cl, byte ptr [eax + 1]
    add eax, 3
    mov byte ptr [ebx + d_00464b51], cl
    add ebx, 3
    mov cl, byte ptr [eax - 1]
    add edx, 3
    mov byte ptr [ebx + d_00464b4f], cl
loc_0042c5ee:
    lea ecx, [esi + esi*2]
    cmp edx, ecx
    jb loc_0042c5a0
    mov eax, esp
    mov ebx, esi
    mov edx, ebp
    call sub_004433ac
    add esp, 0x300
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
    push esi
    mov esi, eax
    shl eax, 2
    sub eax, esi
    mov byte ptr [eax + d_00464b50], dl
    mov byte ptr [eax + d_00464b51], bl
    mov byte ptr [eax + d_00464b52], cl
    and edx, 0xff
    mov dl, byte ptr [edx + d_00464e50]
    and ebx, 0xff
    mov bl, byte ptr [ebx + d_00464e50]
    and ecx, 0xff
    mov cl, byte ptr [ecx + d_00464e50]
    and ecx, 0xff
    and ebx, 0xff
    and edx, 0xff
    mov eax, esi
    call sub_004432b4
    pop esi
    ret
    .byte 0x8d,0x40,0x00
    push esi
    mov esi, ebx
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov bl, byte ptr [eax + d_00464b50]
    mov byte ptr [edx], bl
    mov dl, byte ptr [eax + d_00464b51]
    mov byte ptr [esi], dl
    mov al, byte ptr [eax + d_00464b52]
    mov byte ptr [ecx], al
    pop esi
    ret
sub_0042c68c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov byte ptr [esp + 0xc], al
    xor ecx, ecx
    xor edx, edx
loc_0042c69d:
    xor ebx, ebx
    mov bl, byte ptr [esp + 0xc]
    mov eax, ebx
    call sub_0042c460
    mov edi, eax
    mov eax, ebx
    call sub_0042c460
    mov esi, eax
    mov eax, ebx
    and edi, 0x7c00
    call sub_0042c460
    and eax, 0x1f
    sar edi, 0xa
    mov dword ptr [esp + 8], eax
    mov eax, edi
    imul eax, edx
    mov ebp, dword ptr [esp + 8]
    imul ebp, edx
    and esi, 0x3e0
    sar eax, 0x10
    sar esi, 5
    mov dword ptr [esp + 4], eax
    mov eax, esi
    imul eax, edx
    sar ebp, 0x10
    mov dword ptr [esp], ebp
    mov ebp, dword ptr [esp + 4]
    sar eax, 0x10
    shl ebp, 0xa
    shl eax, 5
    or eax, ebp
    or eax, dword ptr [esp]
    mov al, byte ptr [eax + d_00495390]
    mov ebp, 0x1f
    sub ebp, dword ptr [esp + 8]
    imul ebp, edx
    and eax, 0xff
    shl ebx, 8
    mov byte ptr [ecx + ebx + d_00475390], al
    mov eax, 0x1f
    sub eax, edi
    imul eax, edx
    sar eax, 0x10
    mov dword ptr [esp + 4], eax
    mov eax, 0x1f
    sub eax, esi
    imul eax, edx
    sar ebp, 0x10
    mov dword ptr [esp], ebp
    mov ebp, dword ptr [esp + 4]
    sar eax, 0x10
    add edi, ebp
    add eax, esi
    shl edi, 0xa
    shl eax, 5
    mov esi, dword ptr [esp]
    or edi, eax
    mov eax, dword ptr [esp + 8]
    add eax, esi
    or eax, edi
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    inc ecx
    add edx, 0x200
    mov byte ptr [ecx + ebx + d_0047540f], al
    cmp ecx, 0x80
    jl loc_0042c69d
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042c794:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov esi, offset d_00475390
    mov edi, 0x100
    xor ecx, ecx
loc_0042c7a5:
    cmp byte ptr [ecx + d_00465290], 0
    je loc_0042c7b7
    mov eax, ecx
    call sub_0042c68c
    jmp loc_0042c7c2
loc_0042c7b7:
    mov ebx, edi
    mov eax, esi
    xor edx, edx
    call sub_00451940
loc_0042c7c2:
    inc ecx
    add esi, 0x100
    cmp ecx, 0x100
    jl loc_0042c7a5
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0042c7d8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov dword ptr [esp + 8], eax
    mov ebx, eax
    xor ecx, ecx
    shl ebx, 8
loc_0042c7ec:
    mov eax, dword ptr [esp + 8]
    cmp byte ptr [eax + d_00465290], 0
    jne loc_0042c813
    cmp byte ptr [ecx + d_00465290], 0
    je loc_0042c81c
    mov byte ptr [ebx + d_00465390], cl
    mov byte ptr [ebx + d_00485390], cl
    jmp loc_0042c9ca
loc_0042c813:
    cmp byte ptr [ecx + d_00465290], 0
    jne loc_0042c82b
loc_0042c81c:
    mov al, byte ptr [esp + 8]
    mov byte ptr [ebx + d_00465390], al
    jmp loc_0042c9c4
loc_0042c82b:
    movzx edi, byte ptr [esp + 8]
    mov eax, edi
    movzx ebp, cl
    call sub_0042c460
    mov edx, eax
    mov eax, ebp
    and edx, 0x7c00
    call sub_0042c460
    and eax, 0x7c00
    sar edx, 0xa
    sar eax, 0xa
    add edx, eax
    mov eax, edi
    call sub_0042c460
    and eax, 0x3e0
    sar eax, 5
    mov dword ptr [esp], eax
    mov eax, ebp
    call sub_0042c460
    and eax, 0x3e0
    mov esi, dword ptr [esp]
    sar eax, 5
    add esi, eax
    mov eax, edi
    call sub_0042c460
    and eax, 0x1f
    mov dword ptr [esp], eax
    mov eax, ebp
    mov edi, dword ptr [esp]
    call sub_0042c460
    and eax, 0x1f
    mov dword ptr [esp + 4], edx
    add eax, edi
    cmp esi, edx
    jle loc_0042c8a4
    mov dword ptr [esp + 4], esi
loc_0042c8a4:
    cmp eax, dword ptr [esp + 4]
    jle loc_0042c8ae
    mov dword ptr [esp + 4], eax
loc_0042c8ae:
    mov edi, dword ptr [esp + 4]
    cmp edi, 0x1f
    jle loc_0042c917
    sub edi, 0x1f
    sub edx, edi
    sub esi, edi
    sub eax, edi
    test edx, edx
    jge loc_0042c8c6
    xor edx, edx
loc_0042c8c6:
    test esi, esi
    jge loc_0042c8cc
    xor esi, esi
loc_0042c8cc:
    test eax, eax
    jge loc_0042c8d2
    xor eax, eax
loc_0042c8d2:
    shl edx, 0xa
    shl esi, 5
    or edx, esi
    or eax, edx
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    fild dword ptr [esp + 4]
    fadd qword ptr [d_0045aa20]
    fmul qword ptr [d_0045aa10]
    fld1
    faddp st(1)
    xor edx, edx
    fmul qword ptr [d_0045aa18]
    mov dl, al
    call sub_00433b38
    fistp dword ptr [esp]
    mov eax, dword ptr [esp]
    call sub_0042c434
    jmp loc_0042c92c
loc_0042c917:
    shl edx, 0xa
    shl esi, 5
    or edx, esi
    or eax, edx
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
loc_0042c92c:
    mov byte ptr [ebx + d_00465390], al
    xor edx, edx
    mov dl, byte ptr [esp + 8]
    mov eax, edx
    movzx esi, cl
    call sub_0042c460
    mov edi, eax
    mov eax, esi
    and edi, 0x7c00
    call sub_0042c460
    and eax, 0x7c00
    sar edi, 0xa
    sar eax, 0xa
    imul eax, edi
    sar eax, 5
    mov dword ptr [esp], eax
    mov eax, edx
    call sub_0042c460
    mov edi, eax
    mov eax, esi
    and edi, 0x3e0
    call sub_0042c460
    and eax, 0x3e0
    sar edi, 5
    sar eax, 5
    imul edi, eax
    mov eax, edx
    call sub_0042c460
    mov edx, eax
    mov eax, esi
    call sub_0042c460
    mov esi, eax
    and edx, 0x1f
    and esi, 0x1f
    imul esi, edx
    sar edi, 5
    mov eax, dword ptr [esp]
    mov edx, edi
    shl eax, 0xa
    shl edx, 5
    sar esi, 5
    or eax, edx
    or eax, esi
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
loc_0042c9c4:
    mov byte ptr [ebx + d_00485390], al
loc_0042c9ca:
    inc ecx
    inc ebx
    cmp ecx, 0x100
    jl loc_0042c7ec
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    push edx
    xor edx, edx
loc_0042c9e7:
    mov eax, edx
    inc edx
    call sub_0042c7d8
    cmp edx, 0x100
    jl loc_0042c9e7
    pop edx
    ret
    .byte 0x8d,0x40,0x00
sub_0042c9fc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    sub esp, 0x10
    cmp dword ptr [d_0045bffc], 0
    je loc_0042ca13
    call dword ptr [d_0045bffc]
loc_0042ca13:
    cmp dword ptr [d_0049d3f0], 0
    je loc_0042ca29
    mov edx, 0x200
    call dword ptr [d_0049d3f0]
    jmp loc_0042ca2e
loc_0042ca29:
    mov eax, 0xffffffff
loc_0042ca2e:
    mov ecx, eax
    cmp eax, -1
    jne loc_0042ca47
    mov ecx, offset d_0045aa28
    xor eax, eax
    mov dword ptr [d_0045bfe0], ecx
    jmp loc_0042cbc0
loc_0042ca47:
    xor esi, esi
    xor edi, edi
loc_0042ca4b:
    cmp dword ptr [d_0049d3e8], 0
    je loc_0042ca65
    mov ebx, 1
    lea edx, [esp + 8]
    mov eax, ecx
    call dword ptr [d_0049d3e8]
loc_0042ca65:
    cmp dword ptr [d_0049d3e8], 0
    je loc_0042ca7f
    mov ebx, 1
    lea edx, [esp + 4]
    mov eax, ecx
    call dword ptr [d_0049d3e8]
loc_0042ca7f:
    cmp dword ptr [d_0049d3e8], 0
    je loc_0042ca99
    mov ebx, 1
    lea edx, [esp + 0xc]
    mov eax, ecx
    call dword ptr [d_0049d3e8]
loc_0042ca99:
    cmp byte ptr [esp + 8], 0x3f
    ja loc_0042caae
    cmp byte ptr [esp + 4], 0x3f
    ja loc_0042caae
    cmp byte ptr [esp + 0xc], 0x3f
    jbe loc_0042cac4
loc_0042caae:
    xor bh, bh
    mov byte ptr [esp + 8], bh
    mov byte ptr [esp + 4], bh
    mov byte ptr [esp + 0xc], bh
    mov byte ptr [esi + d_00465290], bh
    jmp loc_0042cacb
loc_0042cac4:
    mov byte ptr [esi + d_00465290], 1
loc_0042cacb:
    add edi, 3
    mov al, byte ptr [esp + 8]
    mov byte ptr [edi + d_0045bffd], al
    mov al, byte ptr [esp + 4]
    mov byte ptr [edi + d_0045bffe], al
    mov al, byte ptr [esp + 0xc]
    inc esi
    mov byte ptr [edi + d_0045bfff], al
    cmp esi, 0x100
    jl loc_0042ca4b
    cmp dword ptr [d_0049d3e8], 0
    je loc_0042cb14
    mov ebx, 0x8000
    mov edx, offset d_00495390
    mov eax, ecx
    call dword ptr [d_0049d3e8]
loc_0042cb14:
    xor esi, esi
    mov edi, dword ptr [d_0049d3e8]
    mov dword ptr [esp], esi
    test edi, edi
    je loc_0042cb32
    mov ebx, 4
    mov edx, esp
    mov eax, ecx
    call dword ptr [d_0049d3e8]
loc_0042cb32:
    .byte 0x81,0x3c,0x24,0x43,0x57,0x45,0x4e,0x75,0x53,0x83,0x3d
    .long d_0049d3e8
    .byte 0x00,0x74,0x12,0xbb,0x00,0x00,0x01,0x00,0xba
    .long d_00475390
    .byte 0x89,0xc8,0xff,0x15
    .long d_0049d3e8
    .byte 0x83,0x3d
    .long d_0049d3e8
    .byte 0x00,0x74,0x12,0xbb,0x00,0x00,0x01,0x00,0xba
    .long d_00465390
    .byte 0x89,0xc8,0xff,0x15
    .long d_0049d3e8
    .byte 0x83,0x3d
    .long d_0049d3e8
    .byte 0x00,0x74,0x2b,0xbb,0x00,0x00,0x01,0x00,0xba
    .long d_00485390
    .byte 0x89,0xc8,0xff,0x15
    .long d_0049d3e8
    .byte 0xeb,0x17,0xe8,0x01,0xfc,0xff,0xff,0x31,0xd2,0x89,0xd0,0x42,0xe8,0x3b,0xfc,0xff
    .byte 0xff,0x81,0xfa,0x00,0x01,0x00,0x00,0x7c,0xf0,0xe8,0xfe,0x02,0x00,0x00,0x83,0x3d
    .long d_0049d3ec
    .byte 0x00,0x74,0x08,0x89,0xc8,0xff,0x15
    .long d_0049d3ec
    .byte 0xb8,0x01,0x00,0x00,0x00
loc_0042cbc0:
    add esp, 0x10
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    mov eax, dword ptr [d_0045bfe0]
    ret
    .byte 0x8b,0xc0
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov ecx, 0x300
    mov edi, offset d_0045c000
    mov ebx, 0x100
    mov esi, eax
    mov edx, 1
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
    mov eax, offset d_00465290
    call sub_00451940
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
    sub esp, 4
    mov byte ptr [esp], dl
    mov edx, eax
    shl eax, 2
    sub eax, edx
    mov byte ptr [eax + d_0045c001], bl
    mov dl, byte ptr [esp]
    mov byte ptr [eax + d_0045c002], cl
    mov byte ptr [eax + d_0045c000], dl
    add esp, 4
    ret
    .byte 0x8b,0xc0
    push esi
    mov esi, ebx
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    mov bl, byte ptr [eax + d_0045c000]
    mov byte ptr [edx], bl
    mov dl, byte ptr [eax + d_0045c001]
    mov byte ptr [esi], dl
    mov al, byte ptr [eax + d_0045c002]
    mov byte ptr [ecx], al
    pop esi
    ret
sub_0042cc5c:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x44
    mov dword ptr [esp], eax
    mov byte ptr [esp + 0x40], dl
    and edx, 0xff
    mov eax, edx
    xor ecx, ecx
    call sub_0042c460
    mov dword ptr [esp + 0x3c], ecx
    mov esi, eax
    mov eax, edx
    and esi, 0x7c00
    call sub_0042c460
    sar esi, 0xa
    mov ebx, eax
    mov eax, edx
    and ebx, 0x3e0
    call sub_0042c460
    sar ebx, 5
    mov edx, eax
    mov eax, dword ptr [esp]
    and edx, 0x1f
loc_0042ccaa:
    mov edi, dword ptr [esp + 0x3c]
    inc eax
    mov cl, byte ptr [esp + 0x3c]
    inc edi
    mov byte ptr [eax - 1], cl
    mov dword ptr [esp + 0x3c], edi
    cmp edi, 0x100
    jl loc_0042ccaa
    mov eax, dword ptr [esp]
    mov dword ptr [esp + 8], edx
    mov dword ptr [esp + 0x24], edx
    add eax, 0x100
    mov dword ptr [esp + 0x10], ebx
    mov dword ptr [esp + 0x2c], eax
    mov eax, 6
    mov dword ptr [esp + 0x18], ebx
    mov dword ptr [esp + 0x28], eax
    mov eax, dword ptr [esp]
    mov dword ptr [esp + 4], esi
    add eax, 0x800
    mov dword ptr [esp + 0x1c], esi
    mov dword ptr [esp + 0xc], eax
loc_0042ccfc:
    mov ebp, dword ptr [esp + 0x28]
    mov eax, dword ptr [esp + 0x1c]
    mov edi, dword ptr [esp + 0x2c]
    mov dword ptr [esp + 0x38], eax
    mov eax, dword ptr [esp + 0x18]
    xor edx, edx
    mov dword ptr [esp + 0x30], eax
    mov eax, dword ptr [esp + 0x24]
    mov dword ptr [esp + 0x3c], edx
    mov dword ptr [esp + 0x34], eax
loc_0042cd22:
    xor edx, edx
    mov dl, byte ptr [esp + 0x3c]
    mov eax, edx
    call sub_0042c460
    mov esi, eax
    mov eax, edx
    and esi, 0x7c00
    call sub_0042c460
    sar esi, 0xa
    mov ebx, eax
    mov eax, edx
    mov edx, ebp
    imul edx, esi
    call sub_0042c460
    mov esi, dword ptr [esp + 0x38]
    mov ecx, eax
    add edx, esi
    mov esi, 7
    mov eax, edx
    sar edx, 0x1f
    idiv esi
    and ebx, 0x3e0
    sar ebx, 5
    mov edx, ebp
    imul edx, ebx
    mov esi, eax
    add edx, dword ptr [esp + 0x30]
    mov ebx, 7
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    and ecx, 0x1f
    mov edx, ebp
    imul edx, ecx
    mov ecx, dword ptr [esp + 0x34]
    mov ebx, eax
    add edx, ecx
    mov ecx, 7
    mov eax, edx
    sar edx, 0x1f
    idiv ecx
    mov ecx, eax
    mov eax, ebx
    shl esi, 0xa
    shl eax, 5
    or eax, esi
    or eax, ecx
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    mov esi, dword ptr [esp + 0x3c]
    and eax, 0xff
    inc edi
    inc esi
    mov byte ptr [edi - 1], al
    mov dword ptr [esp + 0x3c], esi
    cmp esi, 0x100
    jl loc_0042cd22
    mov edx, dword ptr [esp + 0x2c]
    mov eax, dword ptr [esp + 8]
    mov ebx, dword ptr [esp + 0x24]
    mov ecx, dword ptr [esp + 0x18]
    mov esi, dword ptr [esp + 0x1c]
    mov edi, dword ptr [esp + 0x28]
    mov ebp, dword ptr [esp + 0xc]
    add edx, 0x100
    dec edi
    add ebx, eax
    mov eax, dword ptr [esp + 0x10]
    mov dword ptr [esp + 0x2c], edx
    mov dword ptr [esp + 0x24], ebx
    add ecx, eax
    mov eax, dword ptr [esp + 4]
    mov dword ptr [esp + 0x28], edi
    add esi, eax
    mov dword ptr [esp + 0x18], ecx
    mov dword ptr [esp + 0x1c], esi
    cmp edx, ebp
    je loc_0042ce24
    jmp loc_0042ccfc
loc_0042ce24:
    mov eax, dword ptr [esp]
    add eax, 0x900
    mov ebp, dword ptr [esp]
    mov dword ptr [esp + 0x20], eax
    mov eax, dword ptr [esp]
    xor edi, edi
    add eax, 0x1000
    add ebp, 0x800
    mov dword ptr [esp + 0x14], eax
loc_0042ce47:
    mov ebx, 7
    mov edx, edi
    mov eax, edi
    sar edx, 0x1f
    idiv ebx
    mov esi, dword ptr [esp + 0x20]
    lea ecx, [eax + 0xffff]
    mov ebx, ebp
loc_0042ce61:
    xor edx, edx
    mov eax, ecx
    mov dl, byte ptr [esp + 0x40]
    call sub_0042c434
    and eax, 0xff
    inc ebx
    mov byte ptr [ebx - 1], al
    cmp ebx, esi
    jne loc_0042ce61
    mov eax, dword ptr [esp + 0x20]
    mov edx, dword ptr [esp + 0x14]
    add edi, 0x10000
    add eax, 0x100
    add ebp, 0x100
    mov dword ptr [esp + 0x20], eax
    cmp ebp, edx
    jne loc_0042ce47
    add esp, 0x44
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0042cea8:
    push ebx
    push ecx
    push edx
    xor ecx, ecx
    xor ebx, ebx
loc_0042ceaf:
    cmp dword ptr [ebx + d_00464e90], 0
    je loc_0042cec7
    xor edx, edx
    mov eax, dword ptr [ebx + d_00464e90]
    mov dl, cl
    call sub_0042cc5c
loc_0042cec7:
    inc ecx
    add ebx, 4
    cmp ecx, 0x100
    jl loc_0042ceaf
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
    push ebx
    push ecx
    push edx
    mov bl, al
    xor ecx, ecx
    mov cl, al
    lea edx, [ecx*4]
    cmp dword ptr [edx + d_00464e90], 0
    jne loc_0042cf19
    mov eax, 0x1004
    call dword ptr [d_0045bff0]
    add eax, 4
    mov dword ptr [edx + d_00464e90], eax
    mov dword ptr [eax - 4], 1
    mov eax, dword ptr [edx + d_00464e90]
    mov edx, ecx
    call sub_0042cc5c
loc_0042cf19:
    xor eax, eax
    mov al, bl
    mov edx, dword ptr [eax*4 + d_00464e90]
    mov ecx, dword ptr [edx - 4]
    inc ecx
    mov dword ptr [edx - 4], ecx
    mov eax, dword ptr [eax*4 + d_00464e90]
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0042cf38:
    push ebx
    push edx
    xor edx, edx
    mov dl, al
    shl edx, 2
    mov ebx, dword ptr [edx + d_00464e90]
    test ebx, ebx
    je loc_0042cf6b
    mov eax, ebx
    mov ebx, dword ptr [ebx - 4]
    dec ebx
    mov dword ptr [eax - 4], ebx
    jne loc_0042cf6b
    mov eax, dword ptr [edx + d_00464e90]
    sub eax, 4
    call dword ptr [d_0045bff8]
    mov dword ptr [edx + d_00464e90], ebx
loc_0042cf6b:
    pop edx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0042cf70:
    mov dword ptr [d_0045bff0], eax
    mov dword ptr [d_0045bff4], edx
    mov dword ptr [d_0045bff8], ebx
    ret
    .byte 0x8b,0xc0
sub_0042cf84:
    push ebx
    push ecx
    push edx
    push esi
    push ebp
    sub esp, 0x10
    mov edx, dword ptr [esp + 0x28]
    mov dword ptr [d_0045bfe8], edx
    mov edx, dword ptr [esp + 0x2c]
    mov dword ptr [d_0045bfec], edx
    xor edx, edx
    mov ecx, 0x404f8000
    mov dword ptr [esp + 8], edx
loc_0042cfab:
    fld qword ptr [d_0045bfe8]
    fild dword ptr [esp + 8]
    call sub_00443fd4
    fst qword ptr [esp]
    fcomp qword ptr [d_0045aa48]
    fnstsw ax
    sahf
    jbe loc_0042cfd1
    xor ebx, ebx
    mov dword ptr [esp + 4], ecx
    mov dword ptr [esp], ebx
loc_0042cfd1:
    fldz
    fcomp qword ptr [esp]
    fnstsw ax
    sahf
    jbe loc_0042cfe4
    xor esi, esi
    mov dword ptr [esp], esi
    mov dword ptr [esp + 4], esi
loc_0042cfe4:
    fld qword ptr [esp]
    mov edx, dword ptr [esp + 8]
    call sub_00433b38
    fistp dword ptr [esp + 0xc]
    lea ebp, [edx + 1]
    mov al, byte ptr [esp + 0xc]
    mov dword ptr [esp + 8], ebp
    mov byte ptr [edx + d_00464e50], al
    cmp ebp, 0x40
    jl loc_0042cfab
    mov eax, offset d_00464b50
    call sub_0042c534
    add esp, 0x10
    pop ebp
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret 8
    .byte 0x90
    fld qword ptr [d_0045bfe8]
    ret
    .byte 0x90
    and eax, 0xff
    mov al, byte ptr [eax + d_00465290]
    and eax, 0xff
    ret
    .byte 0x8d,0x40,0x00
sub_0042d03c:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x18
    mov ebp, dword ptr [d_0049d394]
    mov dword ptr [esp + 8], eax
    mov dword ptr [esp + 0x10], edx
    mov edx, 0x20
    mov ecx, 8
    mov ebx, 0x40
    mov edi, 0x400
    mov eax, 0x20000
    mov dword ptr [d_0049d39c], edx
    mov dword ptr [d_0049d3a0], ebx
    mov dword ptr [d_0049d3e0], edx
    mov dword ptr [d_0049d3e4], edi
    mov dword ptr [d_0049d398], ecx
    call sub_004529cc
    mov ecx, dword ptr [d_0049d398]
    mov dword ptr [esp + 0xc], eax
    test eax, eax
    jne loc_0042d0a6
    mov edx, 1
    jmp loc_0042d34d
loc_0042d0a6:
    mov edx, dword ptr [d_0049d39c]
    mov ebx, edx
    imul ebx, edx
    imul edx, ebx
    mov ebp, dword ptr [d_0049d394]
    mov ebx, eax
    test edx, edx
    jle loc_0042d0ce
loc_0042d0c0:
    dec edx
    mov dword ptr [ebx], 0xffffffff
    add ebx, 4
    test edx, edx
    jg loc_0042d0c0
loc_0042d0ce:
    mov ebx, 0x8000
    mov eax, offset d_00495390
    mov dword ptr [d_0049d394], ebp
    xor edx, edx
    xor ebp, ebp
    call sub_00451940
    mov dword ptr [d_0049d394], ebp
loc_0042d0ed:
    mov eax, dword ptr [esp + 0x10]
    mov ebp, dword ptr [d_0049d394]
    mov ecx, dword ptr [d_0049d398]
    test eax, eax
    je loc_0042d116
    mov edx, eax
    cmp byte ptr [edx + ebp], 0
    je loc_0042d116
    xor bh, bh
    mov byte ptr [ebp + d_00465290], bh
    jmp loc_0042d30d
loc_0042d116:
    mov ebx, dword ptr [esp + 8]
    lea edx, [ebp + ebp*2]
    add edx, ebx
    mov bl, byte ptr [edx]
    mov al, byte ptr [edx + 1]
    movzx esi, bl
    mov ah, byte ptr [edx + 2]
    mov edx, esi
    xor ebx, ebx
    movzx edi, ah
    mov bl, al
    mov eax, edi
    sar edx, 3
    sar eax, 3
    mov dword ptr [d_0049d3cc], edx
    mov dword ptr [d_0049d3c0], eax
    mov eax, dword ptr [d_0049d3cc]
    imul eax, ecx
    mov edx, ebx
    sar edx, 3
    mov dword ptr [d_0049d3bc], edx
    mov edx, ecx
    sar edx, 0x1f
    mov dword ptr [esp], eax
    mov eax, ecx
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov edx, dword ptr [esp]
    add edx, eax
    mov dword ptr [esp], edx
    mov edx, esi
    sub edx, dword ptr [esp]
    mov dword ptr [d_0049d3d0], edx
    mov edx, dword ptr [d_0049d3bc]
    imul edx, ecx
    add edx, eax
    mov dword ptr [esp], edx
    mov edx, ebx
    sub edx, dword ptr [esp]
    mov dword ptr [d_0049d3dc], edx
    mov edx, dword ptr [d_0049d3c0]
    imul edx, ecx
    add eax, edx
    mov edx, edi
    sub edx, eax
    mov eax, dword ptr [d_0049d3d0]
    imul eax, eax
    mov dword ptr [esp + 0x14], 9
    mov dword ptr [d_0049d3c8], edx
    xor edx, edx
    div dword ptr [esp + 0x14]
    mov dword ptr [esp], eax
    mov eax, dword ptr [d_0049d3dc]
    imul eax, eax
    mov dword ptr [esp + 0x14], 0x24
    xor edx, edx
    div dword ptr [esp + 0x14]
    mov edx, dword ptr [esp]
    add edx, eax
    mov dword ptr [esp], edx
    mov edx, dword ptr [d_0049d3c8]
    imul edx, edx
    mov eax, dword ptr [esp]
    add eax, edx
    mov edx, dword ptr [d_0049d3cc]
    mov dword ptr [d_0049d3c8], eax
    mov eax, dword ptr [d_0049d3a0]
    inc edx
    imul eax, edx
    mov edx, esi
    imul edx, ecx
    sub eax, edx
    lea edx, [eax + eax]
    mov dword ptr [d_0049d3a4], edx
    mov edx, dword ptr [d_0049d3bc]
    mov eax, dword ptr [d_0049d3a0]
    inc edx
    imul eax, edx
    mov edx, ebx
    imul edx, ecx
    sub eax, edx
    lea edx, [eax + eax]
    mov dword ptr [d_0049d3ac], edx
    mov edx, dword ptr [d_0049d3c0]
    mov eax, dword ptr [d_0049d3a0]
    inc edx
    imul eax, edx
    mov edx, edi
    imul edx, ecx
    sub eax, edx
    lea edx, [eax + eax]
    mov eax, dword ptr [d_0049d3cc]
    mov dword ptr [d_0049d3a8], edx
    mov edx, dword ptr [d_0049d3e4]
    imul eax, edx
    mov dword ptr [esp], eax
    lea edx, [eax*4]
    mov eax, dword ptr [esp + 0xc]
    add eax, edx
    mov edx, dword ptr [d_0049d3bc]
    mov dword ptr [esp + 0x14], eax
    imul edx, dword ptr [d_0049d3e0]
    lea eax, [edx*4]
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esp + 0x14]
    add eax, dword ptr [esp + 4]
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [d_0049d3c0]
    shl eax, 2
    mov dword ptr [esp + 0x14], eax
    mov eax, dword ptr [esp + 4]
    add eax, dword ptr [esp + 0x14]
    mov dword ptr [d_0049d3b4], eax
    mov eax, offset d_00495390
    add eax, dword ptr [esp]
    add edx, eax
    mov eax, dword ptr [d_0049d3c0]
    mov dword ptr [d_0049d398], ecx
    add eax, edx
    mov dword ptr [d_0049d394], ebp
    mov dword ptr [d_0049d3b8], eax
    call sub_0042d37c
    mov ebp, dword ptr [d_0049d394]
    lea edx, [ebp + ebp*2]
    sar ebx, 2
    mov ecx, dword ptr [d_0049d398]
    mov byte ptr [edx + d_0045c001], bl
    mov ebx, edi
    mov eax, esi
    sar ebx, 2
    sar eax, 2
    mov byte ptr [edx + d_0045c002], bl
    mov bl, 1
    mov byte ptr [edx + d_0045c000], al
    mov byte ptr [ebp + d_00465290], bl
loc_0042d30d:
    inc ebp
    mov dword ptr [d_0049d398], ecx
    mov dword ptr [d_0049d394], ebp
    cmp ebp, 0x100
    jl loc_0042d0ed
    mov eax, dword ptr [esp + 0xc]
    call sub_00452b35
    call sub_0042c794
    xor edx, edx
loc_0042d336:
    mov eax, edx
    inc edx
    call sub_0042c7d8
    cmp edx, 0x100
    jl loc_0042d336
    call sub_0042cea8
    xor edx, edx
loc_0042d34d:
    mov ecx, dword ptr [d_0049d398]
    mov eax, edx
    add esp, 0x18
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
    call sub_0042d03c
    test eax, eax
    jne loc_0042d376
    mov eax, offset d_0045c000
    call sub_0042c534
    xor eax, eax
    ret
loc_0042d376:
    mov eax, 1
    ret
sub_0042d37c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ecx, dword ptr [d_0049d3a0]
    mov ebx, dword ptr [d_0049d3cc]
    mov eax, dword ptr [d_0049d3c8]
    mov esi, dword ptr [d_0049d3a4]
    mov edi, dword ptr [d_0049d39c]
    mov dword ptr [d_0049d3d0], eax
    mov eax, dword ptr [d_0049d3b4]
    xor edx, edx
    mov dword ptr [d_0049d3b0], eax
    mov eax, dword ptr [d_0049d3b8]
    add ecx, ecx
    mov dword ptr [d_0049d3d4], eax
    mov eax, 1
    cmp ebx, edi
    # jge 0x42d43b
    .byte 0x0f,0x8d
    .long loc_0042d43b - . - 4
    mov dword ptr [d_0049d6f4], esi
loc_0042d3cf:
    call sub_0042d500
    test eax, eax
    je loc_0042d3e5
    mov edx, 1
    mov esi, dword ptr [d_0049d6f4]
    jmp loc_0042d3ef
loc_0042d3e5:
    mov esi, dword ptr [d_0049d6f4]
    test edx, edx
    jne loc_0042d43b
loc_0042d3ef:
    mov eax, dword ptr [d_0049d3e4]
    mov ebp, dword ptr [d_0049d3b0]
    mov edi, dword ptr [d_0049d3d4]
    shl eax, 2
    inc ebx
    add ebp, eax
    mov eax, dword ptr [d_0049d3e4]
    mov dword ptr [d_0049d3b0], ebp
    add edi, eax
    mov ebp, dword ptr [d_0049d3d0]
    mov dword ptr [d_0049d3d4], edi
    add ebp, esi
    xor eax, eax
    mov edi, dword ptr [d_0049d39c]
    add esi, ecx
    mov dword ptr [d_0049d3d0], ebp
    mov dword ptr [d_0049d6f4], esi
    cmp ebx, edi
    jl loc_0042d3cf
loc_0042d43b:
    mov esi, dword ptr [d_0049d3a4]
    mov eax, dword ptr [d_0049d3c8]
    sub esi, ecx
    mov edi, dword ptr [d_0049d3e4]
    sub eax, esi
    shl edi, 2
    mov dword ptr [d_0049d3d0], eax
    mov eax, dword ptr [d_0049d3b4]
    mov ebx, dword ptr [d_0049d3cc]
    sub eax, edi
    mov ebp, dword ptr [d_0049d3e4]
    mov dword ptr [d_0049d3b0], eax
    mov eax, dword ptr [d_0049d3b8]
    dec ebx
    sub eax, ebp
    mov dword ptr [d_0049d6f4], esi
    mov dword ptr [d_0049d3d4], eax
    mov eax, 1
    test ebx, ebx
    jl loc_0042d4ee
loc_0042d48c:
    call sub_0042d500
    test eax, eax
    je loc_0042d49c
    mov edx, 1
    jmp loc_0042d4a0
loc_0042d49c:
    test edx, edx
    jne loc_0042d4ee
loc_0042d4a0:
    mov eax, dword ptr [d_0049d3e4]
    mov esi, dword ptr [d_0049d3b0]
    mov edi, dword ptr [d_0049d3d4]
    mov ebp, dword ptr [d_0049d3d0]
    shl eax, 2
    dec ebx
    sub esi, eax
    mov eax, dword ptr [d_0049d3e4]
    mov dword ptr [d_0049d3b0], esi
    mov esi, dword ptr [d_0049d6f4]
    sub edi, eax
    sub esi, ecx
    mov dword ptr [d_0049d3d4], edi
    mov dword ptr [d_0049d6f4], esi
    sub ebp, esi
    mov eax, esi
    mov dword ptr [d_0049d3d0], ebp
    xor eax, esi
    test ebx, ebx
    jge loc_0042d48c
loc_0042d4ee:
    mov esi, dword ptr [d_0049d6f4]
    mov eax, edx
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_0042d500:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov esi, dword ptr [d_0049d3a0]
    add esi, esi
    test eax, eax
    je loc_0042d539
    mov eax, dword ptr [d_0049d3bc]
    mov dword ptr [d_0049d714], eax
    mov eax, dword ptr [d_0049d39c]
    dec eax
    xor ebx, ebx
    mov dword ptr [d_0049d70c], eax
    mov eax, dword ptr [d_0049d3ac]
    mov dword ptr [d_0049d710], ebx
    mov dword ptr [d_0049d708], eax
loc_0042d539:
    mov ebx, dword ptr [d_0049d714]
    mov eax, dword ptr [d_0049d3d0]
    mov ecx, dword ptr [d_0049d708]
    mov dword ptr [d_0049d3dc], eax
    mov dword ptr [d_0049d700], eax
    mov eax, dword ptr [d_0049d3b0]
    mov edi, dword ptr [d_0049d70c]
    mov dword ptr [d_0049d3c4], eax
    mov dword ptr [d_0049d6fc], eax
    mov eax, dword ptr [d_0049d3d4]
    xor edx, edx
    mov dword ptr [d_0049d3d8], eax
    mov dword ptr [d_0049d6f8], eax
    mov eax, 1
    cmp ebx, edi
    jg loc_0042d65d
    mov dword ptr [d_0049d704], ecx
loc_0042d58d:
    call sub_0042d7a4
    test eax, eax
    je loc_0042d5d9
    mov ecx, dword ptr [d_0049d704]
    test edx, edx
    jne loc_0042d5e3
    cmp ebx, dword ptr [d_0049d714]
    jle loc_0042d5d2
    mov eax, dword ptr [d_0049d6fc]
    mov dword ptr [d_0049d3b0], eax
    mov eax, dword ptr [d_0049d6f8]
    mov dword ptr [d_0049d714], ebx
    mov dword ptr [d_0049d3d4], eax
    mov eax, dword ptr [d_0049d700]
    mov dword ptr [d_0049d708], ecx
    mov dword ptr [d_0049d3d0], eax
loc_0042d5d2:
    mov edx, 1
    jmp loc_0042d5e3
loc_0042d5d9:
    mov ecx, dword ptr [d_0049d704]
    test edx, edx
    jne loc_0042d65d
loc_0042d5e3:
    mov eax, dword ptr [d_0049d3e0]
    mov ebp, dword ptr [d_0049d3c4]
    mov edi, dword ptr [d_0049d6fc]
    shl eax, 2
    inc ebx
    add ebp, eax
    add edi, eax
    mov eax, dword ptr [d_0049d3e0]
    mov dword ptr [d_0049d3c4], ebp
    mov dword ptr [d_0049d6fc], edi
    mov ebp, dword ptr [d_0049d3d8]
    mov edi, dword ptr [d_0049d6f8]
    add ebp, eax
    add edi, eax
    mov dword ptr [d_0049d3d8], ebp
    mov dword ptr [d_0049d6f8], edi
    xor eax, eax
    mov ebp, dword ptr [d_0049d3dc]
    mov edi, dword ptr [d_0049d700]
    add ebp, ecx
    add edi, ecx
    mov dword ptr [d_0049d3dc], ebp
    mov dword ptr [d_0049d700], edi
    add ecx, esi
    mov ebp, dword ptr [d_0049d70c]
    mov dword ptr [d_0049d704], ecx
    cmp ebx, ebp
    jle loc_0042d58d
loc_0042d65d:
    mov ebx, dword ptr [d_0049d714]
    mov ecx, dword ptr [d_0049d708]
    mov eax, dword ptr [d_0049d3d0]
    sub ecx, esi
    mov edi, dword ptr [d_0049d3e0]
    sub eax, ecx
    shl edi, 2
    mov dword ptr [d_0049d3dc], eax
    mov dword ptr [d_0049d700], eax
    mov eax, dword ptr [d_0049d3b0]
    mov ebp, dword ptr [d_0049d710]
    sub eax, edi
    mov edi, dword ptr [d_0049d3e0]
    mov dword ptr [d_0049d3c4], eax
    mov dword ptr [d_0049d6fc], eax
    mov eax, dword ptr [d_0049d3d4]
    dec ebx
    sub eax, edi
    mov dword ptr [d_0049d704], ecx
    mov dword ptr [d_0049d3d8], eax
    mov dword ptr [d_0049d6f8], eax
    mov eax, 1
    cmp ebx, ebp
    jl loc_0042d795
loc_0042d6c7:
    call sub_0042d7a4
    test eax, eax
    je loc_0042d70b
    test edx, edx
    jne loc_0042d713
    mov edx, 1
    mov eax, dword ptr [d_0049d6fc]
    mov ecx, dword ptr [d_0049d704]
    mov dword ptr [d_0049d3b0], eax
    mov eax, dword ptr [d_0049d6f8]
    mov dword ptr [d_0049d714], ebx
    mov dword ptr [d_0049d3d4], eax
    mov eax, dword ptr [d_0049d700]
    mov dword ptr [d_0049d708], ecx
    mov dword ptr [d_0049d3d0], eax
    jmp loc_0042d713
loc_0042d70b:
    test edx, edx
    jne loc_0042d795
loc_0042d713:
    mov eax, dword ptr [d_0049d3e0]
    mov ecx, dword ptr [d_0049d3c4]
    mov edi, dword ptr [d_0049d6fc]
    mov ebp, dword ptr [d_0049d3d8]
    shl eax, 2
    dec ebx
    sub ecx, eax
    sub edi, eax
    mov eax, dword ptr [d_0049d3e0]
    mov dword ptr [d_0049d3c4], ecx
    mov dword ptr [d_0049d6fc], edi
    mov ecx, dword ptr [d_0049d6f8]
    mov edi, dword ptr [d_0049d3dc]
    sub ecx, eax
    sub ebp, eax
    mov dword ptr [d_0049d6f8], ecx
    mov ecx, dword ptr [d_0049d704]
    mov dword ptr [d_0049d3d8], ebp
    sub ecx, esi
    mov ebp, dword ptr [d_0049d700]
    mov dword ptr [d_0049d704], ecx
    mov eax, ecx
    sub edi, ecx
    sub ebp, ecx
    mov dword ptr [d_0049d3dc], edi
    mov dword ptr [d_0049d700], ebp
    mov edi, dword ptr [d_0049d710]
    xor eax, ecx
    cmp ebx, edi
    jge loc_0042d6c7
loc_0042d795:
    mov ecx, dword ptr [d_0049d704]
    mov eax, edx
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0042d7a4:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov edx, dword ptr [d_0049d394]
    mov ebp, dword ptr [d_0049d3a0]
    mov dword ptr [esp + 4], edx
    add ebp, ebp
    test eax, eax
    je loc_0042d7ea
    mov eax, dword ptr [d_0049d3c0]
    mov dword ptr [d_0049d724], eax
    mov eax, dword ptr [d_0049d39c]
    dec eax
    xor ebx, ebx
    mov dword ptr [d_0049d71c], eax
    mov eax, dword ptr [d_0049d3a8]
    mov dword ptr [d_0049d720], ebx
    mov dword ptr [d_0049d718], eax
loc_0042d7ea:
    mov ebx, dword ptr [d_0049d724]
    mov eax, dword ptr [d_0049d3dc]
    mov esi, dword ptr [d_0049d718]
    xor ecx, ecx
    mov edx, dword ptr [d_0049d3c4]
    mov dword ptr [esp], ecx
    mov ecx, dword ptr [d_0049d71c]
    mov edi, dword ptr [d_0049d3d8]
    mov dword ptr [esp + 0xc], ecx
    cmp ebx, ecx
    jg loc_0042d875
loc_0042d81a:
    cmp eax, dword ptr [edx]
    jae loc_0042d84c
    cmp ebx, dword ptr [d_0049d724]
    jle loc_0042d843
    mov dword ptr [d_0049d724], ebx
    mov dword ptr [d_0049d3c4], edx
    mov dword ptr [d_0049d3d8], edi
    mov dword ptr [d_0049d3dc], eax
    mov dword ptr [d_0049d718], esi
loc_0042d843:
    mov dword ptr [esp], 1
    jmp loc_0042d875
loc_0042d84c:
    mov ecx, dword ptr [esp + 0xc]
    inc ebx
    add edx, 4
    inc edi
    add eax, esi
    add esi, ebp
    cmp ebx, ecx
    jle loc_0042d81a
    jmp loc_0042d875
loc_0042d85f:
    cmp eax, dword ptr [edx]
    jae loc_0042d87b
    mov cl, byte ptr [esp + 4]
    inc ebx
    inc edi
    mov dword ptr [edx], eax
    add edx, 4
    add eax, esi
    mov byte ptr [edi - 1], cl
    add esi, ebp
loc_0042d875:
    cmp ebx, dword ptr [esp + 0xc]
    jle loc_0042d85f
loc_0042d87b:
    mov ecx, dword ptr [esp]
    mov eax, dword ptr [d_0049d720]
    mov esi, dword ptr [d_0049d724]
    mov ebx, dword ptr [d_0049d718]
    mov edx, dword ptr [d_0049d3dc]
    mov edi, dword ptr [d_0049d3d8]
    mov dword ptr [esp + 8], eax
    dec esi
    dec edi
    sub ebx, ebp
    mov eax, dword ptr [d_0049d3c4]
    sub edx, ebx
    sub eax, 4
    test ecx, ecx
    je loc_0042d8e7
    jmp loc_0042d905
loc_0042d8b3:
    cmp edx, dword ptr [eax]
    jae loc_0042d8de
    mov ecx, 1
    mov dword ptr [d_0049d724], esi
    mov dword ptr [d_0049d3c4], eax
    mov dword ptr [d_0049d3d8], edi
    mov dword ptr [d_0049d3dc], edx
    mov dword ptr [d_0049d718], ebx
    mov dword ptr [esp], ecx
    jmp loc_0042d905
loc_0042d8de:
    dec esi
    sub eax, 4
    sub ebx, ebp
    dec edi
    sub edx, ebx
loc_0042d8e7:
    cmp esi, dword ptr [esp + 8]
    jge loc_0042d8b3
    jmp loc_0042d905
loc_0042d8ef:
    cmp edx, dword ptr [eax]
    jae loc_0042d90b
    mov cl, byte ptr [esp + 4]
    dec esi
    dec edi
    sub ebx, ebp
    mov dword ptr [eax], edx
    sub eax, 4
    sub edx, ebx
    mov byte ptr [edi + 1], cl
loc_0042d905:
    cmp esi, dword ptr [esp + 8]
    jge loc_0042d8ef
loc_0042d90b:
    mov eax, dword ptr [esp]
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    push ebx
    mov ebx, eax
    mov eax, edx
    imul eax, edx
    imul eax, edx
    mov edx, ebx
    test eax, eax
    jle loc_0042d937
loc_0042d929:
    dec eax
    mov dword ptr [edx], 0xffffffff
    add edx, 4
    test eax, eax
    jg loc_0042d929
loc_0042d937:
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    push ecx
    push esi
    push edi
    cmp dword ptr [d_0049d390], 0x10
    jl loc_0042d959
    mov ecx, offset d_0045aa50
    xor eax, eax
    mov dword ptr [d_0045bfe0], ecx
    pop edi
    pop esi
    pop ecx
    ret
loc_0042d959:
    mov eax, 0x8400
    call sub_004529cc
    mov edi, dword ptr [d_0049d390]
    mov ecx, 0x100
    mov esi, offset d_00465290
    mov dword ptr [edi*4 + d_00464b10], eax
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
    mov eax, dword ptr [d_0049d390]
    mov ecx, 0x300
    mov edi, dword ptr [eax*4 + d_00464b10]
    mov esi, offset d_0045c000
    add edi, 0x100
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
    mov eax, dword ptr [d_0049d390]
    mov ecx, 0x8000
    mov edi, dword ptr [eax*4 + d_00464b10]
    mov esi, offset d_00495390
    add edi, 0x400
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
    mov eax, 1
    add dword ptr [d_0049d390], eax
    pop edi
    pop esi
    pop ecx
    ret
    .byte 0x90
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov edx, dword ptr [d_0049d390]
    test edx, edx
    jne loc_0042da15
    mov esi, offset d_0045aa78
    xor eax, eax
    mov dword ptr [d_0045bfe0], esi
    jmp loc_0042dad8
loc_0042da15:
    lea ebx, [edx - 1]
    mov ecx, 0x100
    mov edi, offset d_00465290
    mov esi, dword ptr [ebx*4 + d_00464b10]
    mov dword ptr [d_0049d390], ebx
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
    mov esi, dword ptr [d_0049d390]
    mov ecx, 0x300
    mov esi, dword ptr [esi*4 + d_00464b10]
    mov edi, offset d_0045c000
    add esi, 0x100
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
    mov eax, dword ptr [d_0049d390]
    mov ecx, 0x8000
    mov esi, dword ptr [eax*4 + d_00464b10]
    mov edi, offset d_00495390
    add esi, 0x400
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
    mov eax, dword ptr [d_0049d390]
    mov eax, dword ptr [eax*4 + d_00464b10]
    call sub_00452b35
    mov eax, dword ptr [d_0049d390]
    xor ecx, ecx
    xor edx, edx
    mov dword ptr [eax*4 + d_00464b10], ecx
    call sub_0042c794
loc_0042dabe:
    mov eax, edx
    inc edx
    call sub_0042c7d8
    cmp edx, 0x100
    jl loc_0042dabe
    call sub_0042cea8
    mov eax, 1
loc_0042dad8:
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
sub_0042dae0:
    push ebx
    push edx
    mov edx, dword ptr [d_0045bfe4]
    test edx, edx
    je loc_0042daf4
    mov eax, 1
    pop edx
    pop ebx
    ret
loc_0042daf4:
    push 0x3ff00000
    mov ebx, 1
    push edx
    mov dword ptr [d_0045bfe4], ebx
    call sub_0042cf84
    mov eax, offset d_0045aaa0
    call sub_0042c9fc
    cmp eax, ebx
    jne loc_0042db27
    mov eax, offset d_0045c000
    call sub_0042c534
    mov eax, ebx
    pop edx
    pop ebx
    ret
loc_0042db27:
    xor eax, eax
    pop edx
    pop ebx
    ret
sub_0042db2c:
    push ebx
    push ecx
    push edx
    push esi
    xor edx, edx
loc_0042db32:
    xor eax, eax
    mov al, dl
    inc edx
    call sub_0042cf38
    cmp edx, 0x100
    jl loc_0042db32
    mov ebx, dword ptr [d_0049d390]
    xor edx, edx
    test ebx, ebx
    jle loc_0042db6b
    xor ebx, ebx
loc_0042db52:
    mov eax, dword ptr [ebx + d_00464b10]
    call sub_00452b35
    inc edx
    mov ecx, dword ptr [d_0049d390]
    add ebx, 4
    cmp edx, ecx
    jl loc_0042db52
loc_0042db6b:
    xor esi, esi
    mov dword ptr [d_0049d390], esi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    mov eax, offset d_0045c000
    ret
    .byte 0x00,0x00
sub_0042db80:
    push esi
    push edi
    push ebp
    push 0
    mov esi, dword ptr [esp + 0x1c]
    push esi
    mov edi, dword ptr [esp + 0x1c]
    push edi
    mov ebp, dword ptr [esp + 0x1c]
    push ebp
    call sub_0042dbcc
    pop ebp
    pop edi
    pop esi
    ret 0xc
    .byte 0x90
ptr_0042dba0:
    .long ptr_0042e525
    .long ptr_0042e476
    .long ptr_0042e4e0
    .long ptr_0042e54d
    .long ptr_0042e54d
    .long ptr_0042e54d
    .long ptr_0042e54d
    .long ptr_0042e54d
    .long ptr_0042e539
    .long ptr_0042e49f
    .long ptr_0042e4ff
sub_0042dbcc:
    push esi
    push edi
    push ebp
    sub esp, 0xac
    mov edi, dword ptr [esp + 0xc8]
    mov dword ptr [esp + 0x20], eax
    mov dword ptr [esp + 0x7c], edx
    mov dword ptr [esp + 0xa4], ebx
    mov dword ptr [esp + 0x58], ecx
    mov edx, 0xffffffff
    mov ecx, dword ptr [d_0045c468]
    mov dword ptr [esp + 0x74], edx
    mov dword ptr [esp + 0x98], edx
    test ecx, ecx
    jne loc_0042dc10
    mov eax, edx
    jmp loc_0042e92c
loc_0042dc10:
    mov eax, dword ptr [esp + 0x7c]
    mov edx, ebx
    call sub_0042fef0
    mov edx, eax
    mov dword ptr [esp + 0xa0], eax
    lea esi, [eax + 0x10]
    mov eax, dword ptr [esp + 0x20]
    call dword ptr [d_0045c380]
    cmp eax, esi
    jle loc_0042dc44
    mov ebx, eax
    sub ebx, esi
    add edx, ebx
    mov esi, eax
    mov dword ptr [esp + 0xa0], edx
loc_0042dc44:
    mov ebp, 0xa
    add esi, 0x14
    mov dword ptr [esp + 0xa8], ebp
    mov ebp, 0xd
loc_0042dc58:
    call dword ptr [d_0045c37c]
    imul eax, ebp
    push 0x14
    mov edx, dword ptr [esp + 0xc4]
    mov ebx, esi
    add eax, 0x16
    push 0x100
    mov dword ptr [esp + 0x68], eax
    mov ecx, eax
    mov eax, dword ptr [esp + 0xc4]
    call sub_0043c734
    mov dword ptr [esp + 0x80], eax
    cmp eax, -1
    jne loc_0042dca7
    mov eax, dword ptr [esp + 0xa8]
    dec eax
    dec ebp
    mov dword ptr [esp + 0xa8], eax
    cmp ebp, 8
    jg loc_0042dc58
loc_0042dca7:
    mov edx, dword ptr [esp + 0x80]
    cmp edx, -1
    jne loc_0042dcc1
    mov eax, edx
    add esp, 0xac
    pop ebp
    pop edi
    pop esi
    ret 0x10
loc_0042dcc1:
    mov eax, edx
    call sub_0043dd7c
    mov dword ptr [esp + 0x84], eax
    add eax, 8
    mov edx, dword ptr [eax + 0x24]
    mov dword ptr [esp + 0x70], eax
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    mov eax, dword ptr [esp + 0x64]
    xor ecx, ecx
    dec eax
    xor ebx, ebx
    push eax
    lea eax, [esi - 1]
    mov dword ptr [esp + 0x50], edx
    push eax
    mov edx, esi
    mov eax, dword ptr [esp + 0x54]
    call sub_00442384
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [esp + 0x68]
    sub eax, 2
    mov ecx, 1
    push eax
    lea eax, [esi - 2]
    mov ebx, ecx
    push eax
    mov edx, esi
    mov eax, dword ptr [esp + 0x58]
    call sub_0044240c
    lea ebx, [esi*8]
    mov edx, esi
    mov eax, esi
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    add ebx, eax
    mov eax, dword ptr [esp + 0x20]
    call dword ptr [d_0045c380]
    mov edx, eax
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    sub ebx, eax
    mov eax, dword ptr [d_0045c46c]
    mov dword ptr [esp + 0x18], ebx
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    lea ebp, [esi - 0xb]
    call dword ptr [d_0045c37c]
    lea ebx, [eax + 3]
    mov edx, dword ptr [esp + 0x4c]
    lea eax, [esi*4]
    add edx, 5
    add eax, esi
    mov ecx, esi
    add eax, edx
    mov edx, ebp
    call sub_00442a5c
    mov eax, dword ptr [d_0045c478]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    mov ebx, dword ptr [esp + 0x18]
    or eax, 0x10000
    mov edx, dword ptr [esp + 0x20]
    push eax
    mov eax, dword ptr [esp + 0x4c]
    mov ecx, esi
    add eax, ebx
    mov ebx, esi
    call dword ptr [d_0045c378]
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    call dword ptr [d_0045c37c]
    add eax, 8
    mov ecx, 5
    push eax
    lea eax, [esi - 6]
    mov ebx, ecx
    push eax
    mov edx, esi
    mov eax, dword ptr [esp + 0x58]
    call sub_0044240c
    call dword ptr [d_0045c37c]
    add eax, 0x10
    mov ebp, dword ptr [esp + 0xa8]
    mov dword ptr [esp + 0x90], eax
    call dword ptr [d_0045c37c]
    imul eax, ebp
    mov edx, dword ptr [esp + 0x90]
    add edx, eax
    mov dword ptr [esp + 0x24], edx
    mov edx, dword ptr [esp + 0x90]
    imul edx, esi
    mov ecx, 8
    mov eax, dword ptr [esp + 0x48]
    add eax, ecx
    add eax, edx
    mov dword ptr [esp + 0x8c], eax
    mov eax, dword ptr [d_0045c46c]
    mov dword ptr [esp + 0x78], ecx
    mov al, byte ptr [eax + d_00495390]
    mov ebx, dword ptr [esp + 0x24]
    and eax, 0xff
    mov edx, dword ptr [esp + 0xa0]
    push eax
    mov eax, dword ptr [esp + 0x94]
    lea ecx, [esi*2]
    sub ebx, eax
    mov eax, dword ptr [esp + 0x90]
    add edx, 6
    sub eax, 3
    add ebx, 2
    sub eax, ecx
    mov ecx, esi
    call sub_00442a5c
    test edi, edi
    jl loc_0042deb4
    cmp edi, dword ptr [esp + 0xa4]
    jl loc_0042deb6
loc_0042deb4:
    xor edi, edi
loc_0042deb6:
    mov eax, dword ptr [esp + 0xa4]
    mov ebx, dword ptr [esp + 0xa8]
    sub eax, edi
    cmp eax, ebx
    jge loc_0042dee1
    mov eax, dword ptr [esp + 0xa4]
    sub eax, ebx
    test eax, eax
    jge loc_0042ded9
    xor eax, eax
loc_0042ded9:
    mov ebp, edi
    mov edi, eax
    sub ebp, eax
    jmp loc_0042dee3
loc_0042dee1:
    xor ebp, ebp
loc_0042dee3:
    mov eax, dword ptr [esp + 0xc4]
    mov ebx, dword ptr [esp + 0x7c]
    lea edx, [edi*4]
    mov ecx, dword ptr [esp + 0xa8]
    add edx, ebx
    mov ebx, dword ptr [esp + 0xa4]
    or eax, 0x2000000
    cmp ebx, ecx
    jge loc_0042df2f
    push eax
    mov ecx, dword ptr [esp + 0x94]
    push ecx
    mov eax, dword ptr [esp + 0x80]
    push eax
    mov ecx, dword ptr [esp + 0xac]
    mov eax, dword ptr [esp + 0x8c]
    jmp loc_0042df55
loc_0042df2f:
    push eax
    mov eax, dword ptr [esp + 0x94]
    push eax
    mov ebx, dword ptr [esp + 0x80]
    mov ecx, dword ptr [esp + 0xa8]
    push ebx
    mov eax, dword ptr [esp + 0x8c]
    mov ebx, dword ptr [esp + 0xb4]
loc_0042df55:
    call sub_0043ced4
    call dword ptr [d_0045c37c]
    mov ebx, eax
    call dword ptr [d_0045c37c]
    imul eax, ebp
    imul eax, esi
    mov edx, dword ptr [esp + 0x8c]
    mov ecx, esi
    add eax, edx
    mov edx, dword ptr [esp + 0xa0]
    call sub_00442c28
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov ebx, dword ptr [esp + 0x2c]
    mov eax, dword ptr [esp + 0xa8]
    push ebx
    add eax, 0xa
    push eax
    mov eax, dword ptr [esp + 0xa0]
    mov edx, esi
    sub eax, 3
    mov ebx, 5
    mov dword ptr [esp + 0x28], eax
    mov ecx, eax
    mov eax, dword ptr [esp + 0x58]
    call sub_0044240c
    push 0
    push offset d_0045aaac
    push -1
    mov ecx, 0xffffffff
    lea eax, [esi - 0x19]
    push 0x148
    mov ebx, dword ptr [esp + 0x28]
    mov dword ptr [esp + 0x28], eax
    push -1
    mov edx, eax
    mov eax, dword ptr [esp + 0x94]
    call sub_00432298
    push 0
    push offset d_0045aab0
    push -1
    push 0x150
    mov ebx, dword ptr [esp + 0x34]
    push -1
    mov ecx, 0xffffffff
    mov edx, dword ptr [esp + 0x2c]
    call dword ptr [d_0045c37c]
    sub ebx, eax
    mov eax, dword ptr [esp + 0x94]
    sub ebx, 5
    call sub_00432298
    push 0
    push offset d_0045aab4
    push 0x1b
    push -1
    mov edx, dword ptr [esp + 0x70]
    push -1
    sub edx, 8
    call dword ptr [d_0045c37c]
    sub edx, eax
    lea ebx, [edx - 6]
    mov edx, esi
    mov eax, esi
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    lea edx, [eax - 0x20]
    mov ecx, 0xffffffff
    mov eax, dword ptr [esp + 0x94]
    call sub_00432298
    lea eax, [esi - 0x15]
    mov ecx, dword ptr [esp + 0x90]
    mov dword ptr [esp + 0x44], eax
    call dword ptr [d_0045c37c]
    add eax, ecx
    add eax, 7
    mov dword ptr [esp + 0x94], eax
    mov dword ptr [esp + 0x88], 0xe
    mov eax, dword ptr [d_0045c46c]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    mov edx, dword ptr [esp + 0x94]
    push eax
    mov eax, dword ptr [esp + 0x28]
    sub eax, edx
    mov dword ptr [esp + 0x1c], eax
    mov ebx, dword ptr [esp + 0x1c]
    call dword ptr [d_0045c37c]
    sub ebx, eax
    mov eax, dword ptr [esp + 0x98]
    imul eax, esi
    mov ecx, dword ptr [esp + 0x48]
    mov edx, dword ptr [esp + 0x4c]
    add edx, ecx
    mov ecx, esi
    add edx, eax
    sub ebx, 8
    mov dword ptr [esp + 0x20], edx
    mov edx, 0xf
    mov eax, dword ptr [esp + 0x20]
    call sub_00442a5c
    push 0
    push 0
    push 0
    push 0
    push -1
    push 0x800
    push -1
    push -1
    mov edx, dword ptr [esp + 0x38]
    call dword ptr [d_0045c37c]
    sub edx, eax
    mov ecx, 0xf
    lea eax, [edx - 8]
    mov ebx, dword ptr [esp + 0xb4]
    push eax
    mov edx, dword ptr [esp + 0x68]
    mov eax, dword ptr [esp + 0xa4]
    call sub_004321f0
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov edx, dword ptr [esp + 0x2c]
    call dword ptr [d_0045c37c]
    sub edx, eax
    mov ecx, dword ptr [esp + 0x9c]
    lea eax, [edx - 9]
    mov ebx, dword ptr [esp + 0x4c]
    push eax
    mov eax, dword ptr [esp + 0x50]
    dec ecx
    add eax, 0xf
    dec ebx
    push eax
    mov edx, esi
    mov eax, dword ptr [esp + 0x58]
    call sub_0044240c
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [esp + 0x9c]
    add eax, 0xe
    push eax
    mov eax, dword ptr [esp + 0x50]
    mov ecx, dword ptr [esp + 0xa0]
    add eax, 0xe
    mov ebx, dword ptr [esp + 0x50]
    push eax
    mov edx, esi
    mov eax, dword ptr [esp + 0x58]
    call sub_0044240c
    mov ebx, 0xe
    mov eax, dword ptr [esp + 0x1c]
    mov ecx, esi
    mov edx, ebx
    call sub_00442c28
    xor eax, eax
    mov edx, dword ptr [esp + 0xa8]
    mov dword ptr [esp + 0x6c], eax
    test edx, edx
    jle loc_0042e28b
    mov ecx, 0x200
    mov eax, 0x400
    mov dword ptr [esp + 0x64], ecx
    mov dword ptr [esp + 0x68], eax
loc_0042e212:
    push 0
    push 0
    push 0
    push 0
    push -1
    mov ebx, dword ptr [esp + 0x7c]
    push ebx
    push -1
    mov ecx, dword ptr [esp + 0x80]
    push ecx
    call dword ptr [d_0045c37c]
    push eax
    mov edx, dword ptr [esp + 0x90]
    call dword ptr [d_0045c37c]
    imul eax, edx
    mov ebx, dword ptr [esp + 0xb4]
    mov ecx, dword ptr [esp + 0xc4]
    mov edx, dword ptr [esp + 0x9c]
    add ebx, eax
    mov eax, dword ptr [esp + 0xa4]
    call sub_004321f0
    mov ebx, dword ptr [esp + 0x64]
    mov ecx, dword ptr [esp + 0x68]
    mov eax, dword ptr [esp + 0x6c]
    mov edx, dword ptr [esp + 0xa8]
    inc ebx
    inc ecx
    inc eax
    mov dword ptr [esp + 0x64], ebx
    mov dword ptr [esp + 0x68], ecx
    mov dword ptr [esp + 0x6c], eax
    cmp eax, edx
    jl loc_0042e212
loc_0042e28b:
    push 0x10
    push 0
    push 0
    push 0
    push -1
    push -1
    push -1
    push -1
    mov ecx, esi
    call dword ptr [d_0045c37c]
    add eax, 8
    xor ebx, ebx
    push eax
    xor edx, edx
    mov eax, dword ptr [esp + 0xa4]
    call sub_004321f0
    mov eax, dword ptr [esp + 0x80]
    call sub_0043d454
    mov eax, dword ptr [esp + 0x88]
    inc eax
    mov ebx, dword ptr [esp + 0x44]
    mov dword ptr [esp + 0x54], eax
    mov eax, dword ptr [esp + 0x48]
    add eax, ebx
    mov ecx, dword ptr [esp + 0x90]
    mov dword ptr [esp + 0x4c], eax
    mov eax, dword ptr [esp + 0x24]
    sub eax, ecx
    mov edx, dword ptr [esp + 0xa8]
    mov dword ptr [esp + 0x5c], eax
    mov eax, dword ptr [esp + 0xa4]
    sub eax, edx
    mov dword ptr [esp + 0x9c], eax
    mov eax, ebx
    mov ebx, dword ptr [esp + 0x88]
    add eax, ebx
    mov dword ptr [esp + 0x2c], eax
    mov eax, dword ptr [esp + 0xc4]
    or eax, 0x2000000
    mov dword ptr [esp + 0x50], eax
    mov eax, dword ptr [esp + 0xc4]
    and eax, 0xffff
    shl eax, 2
    mov dword ptr [esp + 0x30], eax
    mov eax, dword ptr [esp + 0xc4]
    xor ax, ax
    mov dword ptr [esp + 0x28], eax
    mov eax, dword ptr [esp + 0xa4]
    dec eax
    mov dword ptr [esp + 0x3c], eax
    lea eax, [edx - 1]
    mov dword ptr [esp + 0x40], eax
    lea eax, [edx + 0x200]
    mov dword ptr [esp + 0x38], eax
    lea eax, [edx + 0x400]
    mov dword ptr [esp + 0x34], eax
loc_0042e36c:
    call sub_0043a508
    lea edx, [esp + 0x10]
    mov ebx, eax
    mov ecx, eax
    lea eax, [esp + 0x14]
    call sub_00431804
    cmp ebx, 0xd
    je loc_0042e395
    cmp ebx, 0x400
    .byte 0x7c,0x3c,0x3b,0x5c,0x24,0x34,0x7d,0x36
loc_0042e395:
    cmp ebp, -1
    je loc_0042e36c
    lea eax, [edi + ebp]
    mov edx, dword ptr [esp + 0xa4]
    mov dword ptr [esp + 0x74], eax
    cmp eax, edx
    jge loc_0042e3c1
    cmp dword ptr [esp + 0x58], 0
    je loc_0042e91c
    mov edx, eax
    mov eax, dword ptr [esp + 0x7c]
    call dword ptr [esp + 0x58]
loc_0042e3c1:
    mov dword ptr [esp + 0x74], 0xffffffff
    jmp loc_0042e36c
    .byte 0x81,0xf9,0x00,0x08,0x00,0x00,0x75,0x47,0x8b,0x94,0x24,0x84,0x00,0x00,0x00,0x8b
    .byte 0x84,0x24,0x94,0x00,0x00,0x00,0x8b,0x5a,0x0c,0x8b,0x4c,0x24,0x10,0x01,0xd8,0x39
    .byte 0xc8,0x7e,0x07,0xb9,0x49,0x01,0x00,0x00,0xeb,0x25,0x8b,0x84,0x24,0x94,0x00,0x00
    .byte 0x00,0x03,0x84,0x24,0x88,0x00,0x00,0x00,0x8b,0x94,0x24,0x84,0x00,0x00,0x00,0x03
    .byte 0x42,0x0c,0x39,0xc8,0x0f,0x8d,0x57,0xff,0xff,0xff,0xb9,0x51,0x01,0x00,0x00,0x83
    .byte 0xf9,0x1b,0x0f,0x84,0xf9,0x04,0x00,0x00,0x81,0xf9,0x00,0x02,0x00,0x00,0x7c,0x34
    .byte 0x3b,0x4c,0x24,0x38,0x7d,0x2e,0x81,0xe9,0x00,0x02,0x00,0x00,0x39,0xe9,0x0f,0x84
    .byte 0x2d,0xff,0xff,0xff,0x3b,0x8c,0x24,0xa4,0x00,0x00,0x00,0x0f,0x8d,0x20,0xff,0xff
    .byte 0xff,0x89,0xac,0x24,0x98,0x00,0x00,0x00,0x89,0xcd,0xb9,0xfd,0xff,0xff,0xff,0xe9
    .byte 0x43,0x01,0x00,0x00,0x8d,0x81,0xb9,0xfe,0xff,0xff,0x83,0xf8,0x0a,0x0f,0x87,0xdf
    .byte 0x00,0x00,0x00,0x2e,0xff,0x24,0x85
    .long ptr_0042dba0
ptr_0042e476:
    .byte 0x85,0xed,0x7e,0x12,0xb9,0xfd,0xff,0xff,0xff,0x89,0xac,0x24,0x98,0x00,0x00,0x00
    .byte 0x4d,0xe9,0x16,0x01,0x00,0x00,0x85,0xff,0x0f,0x8e,0x0e,0x01,0x00,0x00,0xb9,0xfc
    .byte 0xff,0xff,0xff,0x4f,0xe9,0x03,0x01,0x00,0x00
ptr_0042e49f:
    .byte 0x3b,0x6c,0x24,0x40,0x7d,0x18,0x3b,0x6c,0x24,0x3c,0x7d,0x12,0xb9,0xfd,0xff,0xff
    .byte 0xff,0x89,0xac,0x24,0x98,0x00,0x00,0x00,0x45,0xe9,0xe5,0x00,0x00,0x00,0x8b,0x84
    .byte 0x24,0xa8,0x00,0x00,0x00,0x8b,0x9c,0x24,0xa4,0x00,0x00,0x00,0x01,0xf8,0x39,0xd8
    .byte 0x0f,0x8d,0xcd,0x00,0x00,0x00,0xb9,0xfc,0xff,0xff,0xff,0x47,0xe9,0xc2,0x00,0x00
    .byte 0x00
ptr_0042e4e0:
    .byte 0x85,0xff,0x0f,0x8e,0xba,0x00,0x00,0x00,0x2b,0xbc,0x24,0xa8,0x00,0x00,0x00,0x85
    .byte 0xff,0x7d,0x02,0x31,0xff,0xb9,0xfc,0xff,0xff,0xff,0xe9,0xa3,0x00,0x00,0x00
ptr_0042e4ff:
    .byte 0x8b,0x84,0x24,0x9c,0x00,0x00,0x00,0x39,0xc7,0x0f,0x8d,0x94,0x00,0x00,0x00,0x03
    .byte 0xbc,0x24,0xa8,0x00,0x00,0x00,0x39,0xc7,0x7e,0x02,0x89,0xc7,0xb9,0xfc,0xff,0xff
    .byte 0xff,0xe9,0x7d,0x00,0x00,0x00
ptr_0042e525:
    .byte 0x85,0xff,0x0f,0x8e,0x75,0x00,0x00,0x00,0xb9,0xfc,0xff,0xff,0xff,0x31,0xff,0xe9
    .byte 0x69,0x00,0x00,0x00
ptr_0042e539:
    .byte 0x8b,0x84,0x24,0x9c,0x00,0x00,0x00,0x39,0xc7,0x7d,0x5e,0xb9,0xfc,0xff,0xff,0xff
    .byte 0x89,0xc7,0xeb,0x55
ptr_0042e54d:
    .byte 0x8b,0x84,0x24,0xa4,0x00,0x00,0x00,0x3b,0x84,0x24,0xa8,0x00,0x00,0x00,0x7e,0x45
    .byte 0x83,0xf9,0x61,0x7c,0x05,0x83,0xf9,0x7a,0x7e,0x0a,0x83,0xf9,0x41,0x7c,0x36,0x83
    .byte 0xf9,0x5a,0x7f,0x31,0x8b,0x9c,0x24,0xa4,0x00,0x00,0x00,0x8b,0x54,0x24,0x7c,0x89
    .byte 0xc8,0xe8,0x2d,0x19,0x00,0x00,0x89,0xc1,0x83,0xf8,0xff,0x74,0x18,0x8b,0x9c,0x24
    .byte 0x9c,0x00,0x00,0x00,0x89,0xc7,0x39,0xd8,0x7e,0x02,0x89,0xdf,0x89,0xcd,0xb9,0xfc
    .byte 0xff,0xff,0xff,0x29,0xfd,0x83,0xf9,0xfc,0x0f,0x85,0xd8,0x01,0x00,0x00,0xa1
    .long d_0045c46c
    .byte 0x8a,0x80
    .long d_00495390
    .byte 0x8b,0x5c,0x24,0x5c,0x25,0xff,0x00,0x00,0x00,0x8b,0x94,0x24,0xa0,0x00,0x00,0x00
    .byte 0x50,0x89,0xf1,0x8b,0x84,0x24,0x90,0x00,0x00,0x00,0xe8,0x87,0x44,0x01,0x00,0x8b
    .byte 0x5c,0x24,0x7c,0x8b,0x84,0x24,0xa4,0x00,0x00,0x00,0x8d,0x14,0xbd,0x00,0x00,0x00
    .byte 0x00,0x8b,0x8c,0x24,0xa8,0x00,0x00,0x00,0x01,0xda,0x39,0xc8,0x7d,0x25,0x8b,0x44
    .byte 0x24,0x50,0x50,0x8b,0x9c,0x24,0x94,0x00,0x00,0x00,0x53,0x8b,0x8c,0x24,0x80,0x00
    .byte 0x00,0x00,0x8b,0x84,0x24,0x88,0x00,0x00,0x00,0x51,0x8b,0x9c,0x24,0xb0,0x00,0x00
    .byte 0x00,0xeb,0x23,0x8b,0x44,0x24,0x50,0x50,0x8b,0x9c,0x24,0x94,0x00,0x00,0x00,0x53
    .byte 0x8b,0x8c,0x24,0x80,0x00,0x00,0x00,0x8b,0x84,0x24,0x88,0x00,0x00,0x00,0x51,0x8b
    .byte 0x9c,0x24,0xb4,0x00,0x00,0x00,0x8b,0x8c,0x24,0xac,0x00,0x00,0x00,0xe8,0x8c,0xe8
    .byte 0x00,0x00,0xff,0x15
    .long d_0045c37c
    .byte 0x89,0xc3,0xff,0x15
    .long d_0045c37c
    .byte 0x0f,0xaf,0xc5,0x0f,0xaf,0xc6,0x8b,0x94,0x24,0x8c,0x00,0x00,0x00,0x89,0xf1,0x01
    .byte 0xd0,0x8b,0x94,0x24,0xa0,0x00,0x00,0x00,0xe8,0xb5,0x45,0x01,0x00,0x8b,0x84,0x24
    .byte 0xa4,0x00,0x00,0x00,0x3b,0x84,0x24,0xa8,0x00,0x00,0x00,0x0f,0x8e,0xe5,0x00,0x00
    .byte 0x00,0xa1
    .long d_0045c46c
    .byte 0x8a,0x80
    .long d_00495390
    .byte 0x25,0xff,0x00,0x00,0x00,0x50,0x8b,0x84,0x24,0x98,0x00,0x00,0x00,0x0f,0xaf,0xc6
    .byte 0x8b,0x5c,0x24,0x58,0x8b,0x4c,0x24,0x50,0x89,0xda,0x01,0xc8,0x89,0xf1,0xe8,0xa7
    .byte 0x43,0x01,0x00,0xff,0x15
    .long d_0045c37c
    .byte 0x8b,0x54,0x24,0x5c,0x01,0xc0,0x29,0xc2,0x8d,0x42,0xf0,0x2b,0x84,0x24,0x88,0x00
    .byte 0x00,0x00,0x8d,0x50,0xff,0x0f,0xaf,0xd7,0x8b,0x9c,0x24,0x9c,0x00,0x00,0x00,0x89
    .byte 0xd0,0xc1,0xfa,0x1f,0xf7,0xfb,0x8b,0x8c,0x24,0x90,0x00,0x00,0x00,0x89,0xc2,0xff
    .byte 0x15
    .long d_0045c37c
    .byte 0x01,0xc8,0x83,0xc0,0x07,0x01,0xd0,0x89,0x84,0x24,0x94,0x00,0x00,0x00,0xa1
    .long d_0045c474
    .byte 0x8a,0x80
    .long d_00495390
    .byte 0x25,0xff,0x00,0x00,0x00,0x50,0xa1
    .long d_0045c470
    .byte 0x8a,0x80
    .long d_00495390
    .byte 0x25,0xff,0x00,0x00,0x00,0x8b,0x94,0x24,0x8c,0x00,0x00,0x00,0x50,0x8b,0x84,0x24
    .byte 0x9c,0x00,0x00,0x00,0x01,0xd0,0x8b,0x5c,0x24,0x34,0x50,0x8b,0x8c,0x24,0xa0,0x00
    .byte 0x00,0x00,0x89,0xf2,0x53,0x8b,0x44,0x24,0x58,0x8b,0x5c,0x24,0x54,0xe8,0xc0,0x3c
    .byte 0x01,0x00,0x8b,0x84,0x24,0x94,0x00,0x00,0x00,0x0f,0xaf,0xc6,0x8b,0x9c,0x24,0x88
    .byte 0x00,0x00,0x00,0x8b,0x4c,0x24,0x4c,0x89,0xda,0x01,0xc8,0x89,0xf1,0xe8,0xbc,0x44
    .byte 0x01,0x00,0x8b,0x54,0x24,0x70,0x8b,0x84,0x24,0x84,0x00,0x00,0x00,0x31,0xdb,0xe8
    .byte 0x52,0xed,0x00,0x00,0xe9,0xe9,0xfb,0xff,0xff,0x83,0xf9,0xfd,0x0f,0x85,0xe0,0xfb
    .byte 0xff,0xff,0x8b,0x44,0x24,0x70,0x8b,0x4c,0x24,0x78,0x8b,0x00,0x01,0xc8,0x8b,0x94
    .byte 0x24,0xa0,0x00,0x00,0x00,0x89,0x04,0x24,0x01,0xd0,0x8b,0x9c,0x24,0x98,0x00,0x00
    .byte 0x00,0x89,0x44,0x24,0x08,0x83,0xfb,0xff,0x0f,0x84,0xec,0x00,0x00,0x00,0x8b,0x54
    .byte 0x24,0x70,0x8b,0x52,0x04,0xff,0x15
    .long d_0045c37c
    .byte 0x0f,0xaf,0xc3,0x03,0x94,0x24,0x90,0x00,0x00,0x00,0x01,0xc2,0x89,0x54,0x24,0x04
    .byte 0xff,0x15
    .long d_0045c37c
    .byte 0x8b,0x54,0x24,0x04,0x01,0xc2,0xa1
    .long d_0045c46c
    .byte 0x89,0x54,0x24,0x0c,0x8a,0x80
    .long d_00495390
    .byte 0x25,0xff,0x00,0x00,0x00,0x50,0x8b,0x8c,0x24,0x9c,0x00,0x00,0x00,0xff,0x15
    .long d_0045c37c
    .byte 0x89,0xc3,0xff,0x15
    .long d_0045c37c
    .byte 0x0f,0xaf,0xc1,0x0f,0xaf,0xc6,0x8b,0x94,0x24,0x90,0x00,0x00,0x00,0x89,0xf1,0x01
    .byte 0xd0,0x8b,0x94,0x24,0xa4,0x00,0x00,0x00,0xe8,0x34,0x42,0x01,0x00,0xf6,0x84,0x24
    .byte 0xc5,0x00,0x00,0x00,0xff,0x74,0x1d,0x8b,0x44,0x24,0x30,0x8b,0x80
    .long d_0045c068
    .byte 0x8a,0x80
    .long d_00495390
    .byte 0x8b,0x5c,0x24,0x28,0x25,0xff,0x00,0x00,0x00,0x09,0xd8,0xeb,0x07,0x8b,0x84,0x24
    .byte 0xc4,0x00,0x00,0x00,0x50,0x8b,0x84,0x24,0x9c,0x00,0x00,0x00,0x01,0xf8,0x8b,0x8c
    .byte 0x24,0x80,0x00,0x00,0x00,0xc1,0xe0,0x02,0x01,0xc8,0x8b,0x9c,0x24,0x9c,0x00,0x00
    .byte 0x00,0x8b,0x10,0xff,0x15
    .long d_0045c37c
    .byte 0x0f,0xaf,0xc3,0x0f,0xaf,0xc6,0x8b,0x8c,0x24,0x90,0x00,0x00,0x00,0x89,0xf3,0x01
    .byte 0xc8,0x89,0xf1,0xff,0x15
    .long d_0045c378
    .byte 0x89,0xe2,0x8b,0x84,0x24,0x84,0x00,0x00,0x00,0x31,0xdb,0xe8,0x2c,0xec,0x00,0x00
    .byte 0x83,0xfd,0xff,0x0f,0x84,0xbf,0xfa,0xff,0xff,0x8b,0x54,0x24,0x70,0x8b,0x84,0x24
    .byte 0x90,0x00,0x00,0x00,0x8b,0x52,0x04,0x01,0xc2,0xff,0x15
    .long d_0045c37c
    .byte 0x0f,0xaf,0xc5,0x01,0xc2,0x89,0x54,0x24,0x04,0xff,0x15
    .long d_0045c37c
    .byte 0x8b,0x54,0x24,0x04,0x01,0xc2,0x89,0x54,0x24,0x0c,0xff,0x15
    .long d_0045c37c
    .byte 0x89,0xc3,0xff,0x15
    .long d_0045c37c
    .byte 0x0f,0xaf,0xc5,0x0f,0xaf,0xc6,0x8b,0x94,0x24,0x8c,0x00,0x00,0x00,0x89,0xf1,0x01
    .byte 0xd0,0x8b,0x94,0x24,0xa0,0x00,0x00,0x00,0xe8,0x21,0x43,0x01,0x00,0x89,0xe2,0x8b
    .byte 0x84,0x24,0x84,0x00,0x00,0x00,0x31,0xdb,0xe8,0xb9,0xeb,0x00,0x00,0xe9,0x50,0xfa
    .byte 0xff,0xff
loc_0042e91c:
    mov eax, dword ptr [esp + 0x80]
    call sub_0043c960
    mov eax, dword ptr [esp + 0x74]
loc_0042e92c:
    add esp, 0xac
    pop ebp
    pop edi
    pop esi
    ret 0x10
sub_0042e938:
    push esi
    push edi
    push ebp
    sub esp, 0x14
    mov dword ptr [esp + 8], eax
    mov dword ptr [esp + 0x10], edx
    mov ebp, ebx
    mov dword ptr [esp + 4], ecx
    cmp dword ptr [d_0045c468], 0
    jne loc_0042e95f
    mov eax, 0xffffffff
    jmp loc_0042eb4b
loc_0042e95f:
    mov eax, ebx
    mov edx, dword ptr [esp + 0x10]
    call dword ptr [d_0045c380]
    lea esi, [eax + 0xc]
    inc edx
    call dword ptr [d_0045c394]
    imul eax, edx
    cmp esi, eax
    jge loc_0042e987
    mov esi, edx
    call dword ptr [d_0045c394]
    imul esi, eax
loc_0042e987:
    add esi, 0x10
    cmp esi, 0xa0
    jge loc_0042e997
    mov esi, 0xa0
loc_0042e997:
    call dword ptr [d_0045c37c]
    push 0x14
    mov edx, dword ptr [esp + 0x28]
    lea edi, [eax*4]
    mov ebx, esi
    add edi, eax
    push 0x100
    add edi, 0x10
    mov eax, dword ptr [esp + 0xc]
    mov ecx, edi
    mov dword ptr [esp + 0x14], edi
    call sub_0043c734
    mov edi, eax
    cmp eax, -1
    je loc_0042eb4b
    call sub_0043ca60
    mov eax, edi
    call sub_0043dd7c
    mov eax, dword ptr [eax + 0x2c]
    mov dword ptr [esp], eax
    mov eax, dword ptr [d_0045c46c]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    call dword ptr [d_0045c37c]
    lea ebx, [eax + 2]
    lea edx, [esi - 0x1c]
    call dword ptr [d_0045c37c]
    add eax, 0xe
    imul eax, esi
    mov ecx, dword ptr [esp + 4]
    add ecx, 0xe
    add eax, ecx
    mov ecx, esi
    call sub_00442a5c
    mov eax, dword ptr [d_0045c47c]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    lea edx, [esi*8]
    push eax
    mov eax, dword ptr [esp + 4]
    mov ecx, esi
    add eax, 8
    mov ebx, esi
    add eax, edx
    mov edx, ebp
    call dword ptr [d_0045c378]
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    call dword ptr [d_0045c37c]
    add eax, eax
    add eax, 0x10
    push eax
    lea eax, [esi - 0xe]
    push eax
    mov ebx, 0xe
    call dword ptr [d_0045c37c]
    lea ecx, [eax + 0xe]
    mov edx, esi
    mov eax, dword ptr [esp + 0x10]
    call sub_0044240c
    push 0
    push offset d_0045aab4
    mov ebp, dword ptr [esp + 0x14]
    push 0xd
    sub ebp, 8
    push -1
    mov ebx, ebp
    mov edx, esi
    push -1
    sar edx, 0x1f
    call dword ptr [d_0045c37c]
    sub ebx, eax
    mov eax, esi
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov ecx, 0xffffffff
    mov esi, eax
    lea edx, [eax - 0x48]
    sub ebx, 6
    mov eax, edi
    call sub_00432298
    push 0
    push offset d_0045aabc
    push 0x1b
    push -1
    push -1
    mov ecx, 0xffffffff
    mov ebx, ebp
    call dword ptr [d_0045c37c]
    sub ebx, eax
    lea edx, [esi + 8]
    sub ebx, 6
    mov eax, edi
    call sub_00432298
    mov eax, edi
    call sub_0043d454
    mov eax, dword ptr [d_0045c46c]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c478]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov ecx, 0x10
    call dword ptr [d_0045c37c]
    add eax, 0x10
    mov ebx, dword ptr [esp + 0x18]
    push eax
    mov edx, dword ptr [esp + 0x14]
    mov eax, edi
    call sub_0042ff1c
    mov edx, eax
    mov eax, edi
    call sub_0043c960
    mov eax, edx
loc_0042eb4b:
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    ret 4
    push esi
    push edi
    push ebp
    sub esp, 0x20
    mov dword ptr [esp + 0x14], eax
    mov dword ptr [esp + 0x18], edx
    mov ebp, ebx
    mov edi, ecx
    xor edx, edx
    mov ebx, dword ptr [d_0045c468]
    mov dword ptr [esp + 0x10], edx
    test ebx, ebx
    jne loc_0042eb80
    mov eax, 0xffffffff
    jmp loc_0042edd4
loc_0042eb80:
    lea edx, [ebp + 3]
    call dword ptr [d_0045c37c]
    imul eax, edx
    add eax, 0x1c
    mov edx, ebp
    mov dword ptr [esp + 0x1c], eax
    mov eax, dword ptr [esp + 0x18]
    call sub_0042fef0
    lea esi, [eax + 0x10]
    mov eax, dword ptr [esp + 0x14]
    call dword ptr [d_0045c380]
    add eax, 0x10
    cmp eax, esi
    jle loc_0042ebb4
    mov esi, eax
loc_0042ebb4:
    mov eax, dword ptr [d_004a3be8]
    mov ecx, dword ptr [d_004a3be0]
    add esi, 0x10
    sub eax, ecx
    lea edx, [esi + edi]
    inc eax
    cmp edx, eax
    jle loc_0042ebd0
    mov esi, eax
    sub esi, edi
loc_0042ebd0:
    push 0x14
    mov ecx, dword ptr [esp + 0x20]
    mov edx, dword ptr [esp + 0x34]
    push 0x100
    mov ebx, esi
    mov eax, edi
    call sub_0043c734
    mov edi, eax
    mov dword ptr [esp + 0xc], eax
    cmp eax, -1
    je loc_0042edd4
    call sub_0043ca60
    mov eax, edi
    call sub_0043dd7c
    mov eax, dword ptr [eax + 0x2c]
    mov dword ptr [esp], eax
    lea eax, [esi*8]
    add eax, 8
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [d_0045c478]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    mov edx, dword ptr [esp + 8]
    or eax, 0x10000
    mov ecx, esi
    push eax
    mov eax, dword ptr [esp + 4]
    mov ebx, esi
    add eax, edx
    mov edx, dword ptr [esp + 0x18]
    call dword ptr [d_0045c378]
    call dword ptr [d_0045c37c]
    add eax, 8
    imul eax, esi
    mov ebx, dword ptr [esp + 8]
    add eax, 8
    add ebx, eax
    mov eax, dword ptr [d_0045c46c]
    mov dword ptr [esp + 8], ebx
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    call dword ptr [d_0045c37c]
    imul eax, ebp
    lea ebx, [eax + 7]
    lea eax, [esi - 0x18]
    mov ecx, dword ptr [esp + 4]
    mov dword ptr [esp + 8], eax
    add ecx, dword ptr [esp + 0xc]
    lea edx, [esi*4]
    lea eax, [ecx - 4]
    sub edx, esi
    mov ecx, esi
    sub eax, edx
    mov edx, dword ptr [esp + 8]
    mov dword ptr [esp + 0xc], eax
    call sub_00442a5c
    mov edx, dword ptr [esp + 0x34]
    push edx
    call dword ptr [d_0045c37c]
    add eax, 0x10
    push eax
    mov ebx, ebp
    xor ecx, ecx
    push 0x10
    mov edx, dword ptr [esp + 0x24]
    mov eax, edi
    call sub_0043ced4
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    call dword ptr [d_0045c37c]
    imul eax, ebp
    add eax, 7
    mov ebx, dword ptr [esp + 0xc]
    push eax
    mov edx, esi
    xor ecx, ecx
    push ebx
    mov eax, dword ptr [esp + 0x18]
    xor ebx, ebx
    call sub_0044240c
    mov edx, esi
    mov eax, esi
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov ebp, dword ptr [esp + 0x1c]
    sub ebp, 8
    mov ecx, dword ptr [esp + 0x38]
    mov esi, eax
    test ecx, ecx
    jne loc_0042ed46
    push ecx
    push offset d_0045aab4
    push 0x1b
    push -1
    push -1
    mov ebx, ebp
    lea edx, [esi - 0x20]
    call dword ptr [d_0045c37c]
    sub ebx, eax
    mov ecx, 0xffffffff
    jmp loc_0042ed9b
loc_0042ed46:
    mov eax, ecx
    call dword ptr [d_0045c380]
    push 0
    push ecx
    push 0x400
    push -1
    push -1
    mov ebx, ebp
    mov edx, eax
    call dword ptr [d_0045c37c]
    sub ebx, eax
    mov eax, esi
    sub eax, edx
    mov ecx, 0xffffffff
    lea edx, [eax - 0x20]
    sub ebx, 6
    mov eax, edi
    call sub_00432298
    push 0
    push offset d_0045aab4
    push 0x1b
    push -1
    push -1
    mov ecx, 0xffffffff
    mov ebx, ebp
    call dword ptr [d_0045c37c]
    sub ebx, eax
    lea edx, [esi + 0x10]
loc_0042ed9b:
    sub ebx, 6
    mov eax, edi
    call sub_00432298
    mov eax, dword ptr [esp + 0xc]
    call sub_0043d454
loc_0042edae:
    call sub_0043a508
    cmp eax, 0x1b
    je loc_0042edc7
    cmp eax, 0x400
    jne loc_0042edae
    mov dword ptr [esp + 0x10], 1
loc_0042edc7:
    mov eax, dword ptr [esp + 0xc]
    call sub_0043c960
    mov eax, dword ptr [esp + 0x10]
loc_0042edd4:
    add esp, 0x20
    pop ebp
    pop edi
    pop esi
    ret 0xc
    .byte 0x8d,0x40,0x00
sub_0042ede0:
    push esi
    push edi
    push ebp
    sub esp, 8
    mov ebp, eax
    mov edi, edx
    mov dword ptr [esp + 4], ecx
    mov edx, ebx
    cmp dword ptr [d_0045c468], 0
    jne loc_0042ee03
    mov eax, 0xffffffff
    jmp loc_0042ef50
loc_0042ee03:
    call dword ptr [d_0045c37c]
    mov ebx, eax
    shl eax, 2
    sub eax, ebx
    add eax, 0x10
    mov dword ptr [esp], eax
    mov eax, ebp
    call dword ptr [d_0045c380]
    lea esi, [eax + 0x10]
    cmp esi, 0x90
    jge loc_0042ee2e
    mov esi, 0x90
loc_0042ee2e:
    push 0x14
    mov ecx, dword ptr [esp + 4]
    add esi, 0x10
    push 0x100
    mov eax, edi
    mov ebx, esi
    call sub_0043c734
    mov edx, eax
    mov edi, eax
    cmp eax, -1
    je loc_0042ef50
    call sub_0043ca60
    mov eax, edx
    call sub_0043dd7c
    mov ecx, dword ptr [eax + 0x2c]
    lea eax, [esi*8]
    lea ebx, [eax + 0x10]
    test byte ptr [esp + 5], 0xff
    je loc_0042ee95
    mov eax, dword ptr [esp + 4]
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    xor edx, edx
    mov dl, byte ptr [eax + d_00495390]
    mov eax, dword ptr [esp + 4]
    xor ax, ax
    or eax, edx
    jmp loc_0042ee99
loc_0042ee95:
    mov eax, dword ptr [esp + 4]
loc_0042ee99:
    push eax
    lea eax, [ecx + ebx]
    mov edx, ebp
    mov ecx, esi
    mov ebx, esi
    call dword ptr [d_0045c378]
    push 0
    push offset d_0045aac4
    mov ebp, dword ptr [esp + 8]
    push 0x79
    sub ebp, 8
    push -1
    mov ebx, ebp
    mov edx, esi
    push -1
    sar edx, 0x1f
    call dword ptr [d_0045c37c]
    sub ebx, eax
    mov eax, esi
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov ecx, 0xffffffff
    mov esi, eax
    lea edx, [eax - 0x40]
    sub ebx, 6
    mov eax, edi
    call sub_00432298
    push 0
    push offset d_0045aac8
    push 0x6e
    push -1
    push -1
    mov ecx, 0xffffffff
    mov ebx, ebp
    call dword ptr [d_0045c37c]
    sub ebx, eax
    lea edx, [esi + 0x10]
    sub ebx, 6
    mov eax, edi
    call sub_00432298
    mov eax, edi
    call sub_0043d454
loc_0042ef16:
    call sub_0043a508
    cmp eax, 0x1b
    je loc_0042ef2a
    cmp eax, 0x6e
    je loc_0042ef2a
    cmp eax, 0x4e
    jne loc_0042ef2e
loc_0042ef2a:
    xor edx, edx
    jmp loc_0042ef47
loc_0042ef2e:
    cmp eax, 0xd
    je loc_0042ef42
    cmp eax, 0x20
    je loc_0042ef42
    cmp eax, 0x79
    je loc_0042ef42
    cmp eax, 0x59
    jne loc_0042ef16
loc_0042ef42:
    mov edx, 1
loc_0042ef47:
    mov eax, edi
    call sub_0043c960
    mov eax, edx
loc_0042ef50:
    add esp, 8
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x90
sub_0042ef58:
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov ebp, eax
    mov edi, edx
    mov dword ptr [esp + 8], ecx
    mov edx, ebx
    cmp dword ptr [d_0045c468], 0
    jne loc_0042ef7b
    mov eax, 0xffffffff
    jmp loc_0042f07b
loc_0042ef7b:
    call dword ptr [d_0045c37c]
    mov esi, eax
    shl eax, 2
    sub eax, esi
    add eax, 0x10
    mov dword ptr [esp + 4], eax
    mov eax, ebp
    call dword ptr [d_0045c380]
    lea esi, [eax + 0x10]
    cmp esi, 0x50
    jge loc_0042efa4
    mov esi, 0x50
loc_0042efa4:
    push 0x14
    mov ecx, dword ptr [esp + 8]
    add esi, 0x10
    push 0x100
    mov eax, edi
    mov ebx, esi
    call sub_0043c734
    mov edx, eax
    mov edi, eax
    cmp eax, -1
    je loc_0042f07b
    call sub_0043ca60
    mov eax, edx
    call sub_0043dd7c
    mov edx, dword ptr [eax + 0x2c]
    lea eax, [esi*8]
    add eax, 0x10
    mov dword ptr [esp], eax
    test byte ptr [esp + 9], 0xff
    je loc_0042f011
    mov eax, dword ptr [esp + 8]
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    mov al, byte ptr [eax + d_00495390]
    mov ebx, dword ptr [esp + 8]
    and eax, 0xff
    xor bx, bx
    or eax, ebx
    jmp loc_0042f015
loc_0042f011:
    mov eax, dword ptr [esp + 8]
loc_0042f015:
    push eax
    mov ecx, esi
    mov eax, dword ptr [esp + 4]
    mov ebx, esi
    add eax, edx
    mov edx, ebp
    call dword ptr [d_0045c378]
    push 0
    push offset d_0045aab4
    push 0x1b
    push -1
    mov edx, dword ptr [esp + 0x14]
    push -1
    sub edx, 8
    call dword ptr [d_0045c37c]
    sub edx, eax
    lea ebx, [edx - 6]
    mov edx, esi
    mov eax, esi
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    lea edx, [eax - 0x20]
    mov ecx, 0xffffffff
    mov eax, edi
    call sub_00432298
    mov eax, edi
    call sub_0043d454
loc_0042f068:
    call sub_0043a508
    cmp eax, 0x1b
    jne loc_0042f068
    mov eax, edi
    call sub_0043c960
    xor eax, eax
loc_0042f07b:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    ret
    .byte 0x8b,0xc0
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov esi, eax
    mov edi, edx
    cmp dword ptr [d_0045c468], 0
    jne loc_0042f09e
    mov eax, 0xffffffff
    jmp loc_0042f0ea
loc_0042f09e:
    mov eax, esp
    push eax
    mov eax, dword ptr [d_0045c46c]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov ebp, dword ptr [esp + 0x28]
    push ebp
    mov edx, edi
    mov eax, esi
    call sub_0042f0f4
    cmp eax, -1
    je loc_0042f0ea
    push -1
    mov edx, dword ptr [d_0045c46c]
    push 0
    mov dl, byte ptr [edx + d_00495390]
    and edx, 0xff
    push edx
    mov ecx, edi
    push ebp
    mov ebx, esi
    lea edx, [esp + 0x10]
    call sub_0042f1c4
loc_0042f0ea:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    ret 4
    .byte 0x90
sub_0042f0f4:
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov dword ptr [esp + 4], eax
    mov ebp, edx
    mov esi, ebx
    mov dword ptr [esp], ecx
    call dword ptr [d_0045c37c]
    imul eax, edx
    add eax, 0x10
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 4]
    call sub_0042fef0
    mov edx, dword ptr [esp + 8]
    lea edi, [eax + 4]
    cmp edx, 2
    jl loc_0042f12f
    cmp edi, 2
    jge loc_0042f139
loc_0042f12f:
    mov esi, 0xffffffff
    jmp loc_0042f1b9
loc_0042f139:
    push 0x14
    mov ebx, dword ptr [esp + 0x24]
    mov ecx, edx
    mov eax, esi
    push ebx
    mov edx, dword ptr [esp + 8]
    mov ebx, edi
    call sub_0043c734
    mov esi, eax
    cmp eax, -1
    je loc_0042f1b9
    mov ecx, dword ptr [esp + 0x1c]
    push ecx
    push 8
    mov edx, dword ptr [esp + 0xc]
    push 2
    mov ebx, ebp
    lea ecx, [edi - 4]
    call sub_0043ced4
    xor eax, eax
    mov al, byte ptr [d_00495390]
    lea ecx, [edi - 1]
    push eax
    mov eax, dword ptr [esp + 0xc]
    xor ebx, ebx
    dec eax
    xor edx, edx
    push eax
    mov eax, esi
    mov ebp, dword ptr [esp + 0x24]
    call sub_0043d080
    mov eax, dword ptr [esp + 8]
    mov ebx, 1
    push ebp
    sub eax, 2
    lea ecx, [edi - 2]
    push eax
    mov edx, ebx
    mov eax, esi
    call sub_0043d080
    mov eax, esi
    mov edx, dword ptr [esp + 0x24]
    call sub_0043d454
    mov eax, esi
    call sub_0043de44
loc_0042f1b9:
    mov eax, esi
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    ret 0xc
sub_0042f1c4:
    push esi
    push edi
    push ebp
    sub esp, 0x44
    mov dword ptr [esp + 0x34], eax
    mov dword ptr [esp + 0x38], edx
    mov dword ptr [esp + 0x2c], ebx
    mov dword ptr [esp + 0x24], ecx
    mov edx, 0xffffffff
    mov ebx, dword ptr [esp + 0x5c]
    mov dword ptr [esp + 0x20], edx
    mov esi, edx
    test ebx, ebx
    je loc_0042f308
    mov eax, dword ptr [ebx]
    call sub_0043dd7c
    mov eax, dword ptr [eax + 0x2c]
    mov edx, dword ptr [esp + 0x60]
    mov dword ptr [esp + 0x18], eax
    lea eax, [edx*8]
    add eax, edx
    shl eax, 2
    lea edx, [ebx + eax]
    mov eax, dword ptr [edx + 0x18]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [edx + 0x1c]
    mov dword ptr [esp + 4], eax
    mov ebx, dword ptr [edx + 0x24]
    sub ebx, eax
    mov eax, dword ptr [esp + 0x5c]
    mov ecx, dword ptr [esp + 8]
    mov edi, dword ptr [edx + 0x20]
    mov eax, dword ptr [eax]
    sub edi, ecx
    call sub_0043de0c
    mov ecx, eax
    mov eax, dword ptr [esp + 0x5c]
    inc edi
    mov dl, byte ptr [eax + 0x235]
    inc ebx
    test dl, 0xff
    je loc_0042f277
    mov eax, dword ptr [eax + 0x234]
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    xor edx, edx
    mov dl, byte ptr [eax + d_00495390]
    mov eax, dword ptr [esp + 0x5c]
    mov eax, dword ptr [eax + 0x234]
    xor ax, ax
    or eax, edx
    jmp loc_0042f27d
loc_0042f277:
    mov eax, dword ptr [eax + 0x234]
loc_0042f27d:
    mov dword ptr [esp + 0x10], eax
    mov eax, dword ptr [esp + 0x5c]
    test byte ptr [eax + 0x239], 0xff
    je loc_0042f2bc
    mov eax, dword ptr [eax + 0x238]
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    mov al, byte ptr [eax + d_00495390]
    mov edx, dword ptr [esp + 0x5c]
    mov edx, dword ptr [edx + 0x238]
    xor dx, dx
    and eax, 0xff
    or eax, edx
    jmp loc_0042f2c2
loc_0042f2bc:
    mov eax, dword ptr [eax + 0x238]
loc_0042f2c2:
    mov edx, dword ptr [esp + 0x18]
    mov dword ptr [esp + 0xc], eax
    push eax
    add edx, dword ptr [esp + 0xc]
    mov eax, dword ptr [esp + 8]
    imul eax, ecx
    mov ebp, dword ptr [esp + 0x14]
    push ebp
    add eax, edx
    mov edx, edi
    call sub_00442c6c
    mov edx, dword ptr [esp + 0x60]
    lea eax, [edx*8]
    add eax, edx
    mov edx, dword ptr [esp + 0x5c]
    shl eax, 2
    add edx, 0x18
    add edx, eax
    mov eax, dword ptr [esp + 0x5c]
    mov eax, dword ptr [eax]
    call sub_0043d478
loc_0042f308:
    mov eax, dword ptr [esp + 0x34]
    mov edx, dword ptr [esp + 0x38]
    call sub_0043dd7c
    mov ebx, dword ptr [eax + 0x2c]
    mov eax, dword ptr [esp + 0x38]
    mov ecx, dword ptr [edx]
    mov eax, dword ptr [eax + 8]
    sub eax, ecx
    inc eax
    mov edi, dword ptr [edx + 4]
    mov dword ptr [esp + 0x28], eax
    mov eax, dword ptr [edx + 0xc]
    sub eax, edi
    mov ebp, 0xfffffffc
    lea ecx, [eax + 1]
    lea edx, [esp + 4]
    lea eax, [esp + 8]
    mov edi, 4
    call sub_00431804
loc_0042f34a:
    call sub_0043a508
    mov dword ptr [esp + 0x3c], eax
    cmp eax, -1
    jne loc_0042f395
    lea edx, [esp + 0xc]
    lea eax, [esp + 0x10]
    call sub_00431804
    mov eax, dword ptr [esp + 8]
    mov edx, dword ptr [esp + 0x10]
    add eax, ebp
    cmp eax, edx
    jg loc_0042f395
    mov eax, dword ptr [esp + 8]
    add eax, edi
    cmp eax, edx
    jl loc_0042f395
    mov eax, dword ptr [esp + 4]
    mov edx, dword ptr [esp + 0xc]
    add eax, ebp
    cmp eax, edx
    jg loc_0042f395
    mov eax, dword ptr [esp + 4]
    add eax, edi
    cmp eax, edx
    jge loc_0042f34a
loc_0042f395:
    mov eax, dword ptr [esp + 0x28]
    add ebx, 2
    sub eax, 4
    sub ecx, 0x10
    mov dword ptr [esp + 0x30], eax
    mov eax, dword ptr [esp + 0x24]
    mov dword ptr [esp], ebx
    dec eax
    mov dword ptr [esp + 0x1c], ecx
    mov dword ptr [esp + 0x40], eax
loc_0042f3b6:
    lea edx, [esp + 0xc]
    lea eax, [esp + 0x10]
    mov ebx, dword ptr [esp + 0x3c]
    call sub_00431804
    cmp ebx, -2
    # jne 0x42f44b
    .byte 0x0f,0x85
    .long loc_0042f44b - . - 4
    mov ecx, dword ptr [esp + 0x5c]
    test ecx, ecx
    # je 0x42f44b
    .byte 0x0f,0x84
    .long loc_0042f44b - . - 4
    mov ebx, dword ptr [esp + 0x5c]
    mov edx, dword ptr [esp + 0x5c]
    mov eax, dword ptr [esp + 0x5c]
    mov ecx, dword ptr [ecx + 0x10]
    mov ebx, dword ptr [ebx + 0xc]
    mov edx, dword ptr [edx + 8]
    mov eax, dword ptr [eax + 4]
    call sub_0043175c
    test eax, eax
    je loc_0042f44b
    mov eax, dword ptr [esp + 0x5c]
    mov edi, dword ptr [eax + 0x14]
    xor ebp, ebp
    test edi, edi
    jle loc_0042f430
    mov edi, eax
loc_0042f40c:
    mov ecx, dword ptr [edi + 0x24]
    mov ebx, dword ptr [edi + 0x20]
    mov edx, dword ptr [edi + 0x1c]
    mov eax, dword ptr [edi + 0x18]
    call sub_0043175c
    test eax, eax
    jne loc_0042f430
    mov eax, dword ptr [esp + 0x5c]
    inc ebp
    mov edx, dword ptr [eax + 0x14]
    add edi, 0x24
    cmp ebp, edx
    jl loc_0042f40c
loc_0042f430:
    mov eax, dword ptr [esp + 0x5c]
    cmp ebp, dword ptr [eax + 0x14]
    jge loc_0042f44b
    cmp ebp, dword ptr [esp + 0x60]
    je loc_0042f44b
    mov esi, 0xfffffffe
    sub esi, ebp
    jmp loc_0042f694
loc_0042f44b:
    call sub_004318c4
    test al, 0x10
    jne loc_0042f466
    call sub_004318c4
    test al, 1
    je loc_0042f495
    call sub_004318c4
    test al, 4
    jne loc_0042f495
loc_0042f466:
    mov ecx, dword ptr [esp + 0x38]
    mov ebx, dword ptr [esp + 0x38]
    mov edx, dword ptr [esp + 0x38]
    mov eax, dword ptr [esp + 0x38]
    mov ecx, dword ptr [ecx + 0xc]
    mov ebx, dword ptr [ebx + 8]
    mov edx, dword ptr [edx + 4]
    mov eax, dword ptr [eax]
    sub ecx, 9
    add edx, 8
    call sub_0043175c
    test eax, eax
    je loc_0042f49e
    jmp loc_0042f694
loc_0042f495:
    mov edi, dword ptr [esp + 0x3c]
    cmp edi, 0x1b
    jne loc_0042f4a8
loc_0042f49e:
    mov esi, 0xffffffff
    jmp loc_0042f694
loc_0042f4a8:
    cmp edi, 0xd
    je loc_0042f694
    cmp edi, 0x14b
    jne loc_0042f4e1
    cmp dword ptr [esp + 0x5c], 0
    je loc_0042f607
    mov ecx, dword ptr [esp + 0x60]
    test ecx, ecx
    jle loc_0042f607
    mov eax, 0xfffffffe
    lea esi, [ecx - 1]
    sub eax, esi
    mov esi, eax
    jmp loc_0042f694
loc_0042f4e1:
    cmp edi, 0x14d
    jne loc_0042f516
    mov ebp, dword ptr [esp + 0x5c]
    test ebp, ebp
    je loc_0042f607
    mov eax, dword ptr [ebp + 0x14]
    mov edx, dword ptr [esp + 0x60]
    dec eax
    cmp eax, edx
    jle loc_0042f607
    mov eax, 0xfffffffe
    lea esi, [edx + 1]
    sub eax, esi
    mov esi, eax
    jmp loc_0042f694
loc_0042f516:
    mov ebx, dword ptr [esp + 0x2c]
    lea eax, [esi*4]
    add eax, ebx
    cmp edi, 0x148
    jne loc_0042f54b
    xor ebx, ebx
loc_0042f52d:
    test esi, esi
    jle loc_0042f53e
    mov edx, dword ptr [eax - 4]
    sub eax, 4
    mov cl, byte ptr [edx]
    dec esi
    cmp bl, cl
    je loc_0042f52d
loc_0042f53e:
    mov dword ptr [esp + 0x3c], 0xfffffffd
    jmp loc_0042f607
loc_0042f54b:
    cmp edi, 0x150
    jne loc_0042f575
    mov edi, dword ptr [esp + 0x40]
loc_0042f557:
    cmp esi, edi
    jge loc_0042f568
    mov edx, dword ptr [eax + 4]
    add eax, 4
    mov bh, byte ptr [edx]
    inc esi
    test bh, bh
    je loc_0042f557
loc_0042f568:
    mov dword ptr [esp + 0x3c], 0xfffffffd
    jmp loc_0042f607
loc_0042f575:
    mov eax, dword ptr [esp + 0x10]
    cmp eax, dword ptr [esp + 8]
    jne loc_0042f58d
    mov eax, dword ptr [esp + 0xc]
    cmp eax, dword ptr [esp + 4]
    # je 0x42f607
    .byte 0x0f,0x84
    .long loc_0042f607 - . - 4
loc_0042f58d:
    mov eax, dword ptr [esp + 0x38]
    mov ecx, dword ptr [eax + 0xc]
    mov ebx, dword ptr [eax + 8]
    mov edx, dword ptr [eax + 4]
    sub ecx, 9
    add edx, 8
    mov eax, dword ptr [eax]
    call sub_0043175c
    test eax, eax
    je loc_0042f607
    mov eax, dword ptr [esp + 0x38]
    mov edx, dword ptr [esp + 0xc]
    sub edx, dword ptr [eax + 4]
    call dword ptr [d_0045c37c]
    sub edx, 8
    mov ebx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov ecx, dword ptr [esp + 0x20]
    mov dword ptr [esp + 0x3c], eax
    cmp eax, ecx
    je loc_0042f5f7
    mov esi, dword ptr [esp + 0x2c]
    shl eax, 2
    add eax, esi
    mov eax, dword ptr [eax]
    cmp byte ptr [eax], 0
    je loc_0042f5ea
    mov esi, dword ptr [esp + 0x3c]
    jmp loc_0042f5ef
loc_0042f5ea:
    mov esi, 0xffffffff
loc_0042f5ef:
    mov dword ptr [esp + 0x3c], 0xfffffffd
loc_0042f5f7:
    mov eax, dword ptr [esp + 0x10]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 0xc]
    mov dword ptr [esp + 4], eax
loc_0042f607:
    cmp dword ptr [esp + 0x3c], -3
    jne loc_0042f686
    mov ebx, dword ptr [esp + 0x58]
    mov ecx, dword ptr [esp + 0x1c]
    mov edx, 2
    push ebx
    mov eax, dword ptr [esp + 0x38]
    mov ebx, 8
    push ecx
    mov ecx, dword ptr [esp + 0x38]
    mov edi, dword ptr [esp + 0x5c]
    call sub_0043d1c0
    push edi
    push 8
    mov ecx, dword ptr [esp + 0x38]
    mov ebx, dword ptr [esp + 0x2c]
    push 2
    mov edx, dword ptr [esp + 0x38]
    mov eax, dword ptr [esp + 0x40]
    call sub_0043ced4
    cmp esi, -1
    je loc_0042f67d
    call dword ptr [d_0045c37c]
    mov ebx, eax
    call dword ptr [d_0045c37c]
    imul eax, esi
    mov ebp, dword ptr [esp + 0x28]
    add eax, 8
    imul eax, ebp
    mov edx, dword ptr [esp]
    mov ecx, ebp
    add eax, edx
    mov edx, dword ptr [esp + 0x30]
    call sub_00442c28
loc_0042f67d:
    mov eax, dword ptr [esp + 0x34]
    call sub_0043d454
loc_0042f686:
    call sub_0043a508
    mov dword ptr [esp + 0x3c], eax
    jmp loc_0042f3b6
loc_0042f694:
    mov eax, dword ptr [esp + 0x34]
    mov ebx, dword ptr [esp + 0x5c]
    call sub_0043c960
    test ebx, ebx
    je loc_0042f7c0
    mov eax, dword ptr [ebx]
    call sub_0043dd7c
    mov eax, dword ptr [eax + 0x2c]
    mov edx, dword ptr [esp + 0x60]
    mov dword ptr [esp + 0x14], eax
    lea eax, [edx*8]
    add eax, edx
    shl eax, 2
    lea edx, [ebx + eax]
    mov eax, dword ptr [edx + 0x18]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [edx + 0x1c]
    mov dword ptr [esp + 4], eax
    mov ebx, dword ptr [edx + 0x24]
    sub ebx, eax
    mov eax, dword ptr [esp + 0x5c]
    mov ecx, dword ptr [esp + 8]
    mov edi, dword ptr [edx + 0x20]
    mov eax, dword ptr [eax]
    sub edi, ecx
    call sub_0043de0c
    mov ecx, eax
    mov eax, dword ptr [esp + 0x5c]
    inc edi
    mov dl, byte ptr [eax + 0x235]
    inc ebx
    test dl, 0xff
    je loc_0042f72f
    mov eax, dword ptr [eax + 0x234]
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    xor edx, edx
    mov dl, byte ptr [eax + d_00495390]
    mov eax, dword ptr [esp + 0x5c]
    mov eax, dword ptr [eax + 0x234]
    xor ax, ax
    or eax, edx
    jmp loc_0042f735
loc_0042f72f:
    mov eax, dword ptr [eax + 0x234]
loc_0042f735:
    mov dword ptr [esp + 0x10], eax
    mov eax, dword ptr [esp + 0x5c]
    test byte ptr [eax + 0x239], 0xff
    je loc_0042f774
    mov eax, dword ptr [eax + 0x238]
    and eax, 0xffff
    mov eax, dword ptr [eax*4 + d_0045c068]
    mov al, byte ptr [eax + d_00495390]
    mov edx, dword ptr [esp + 0x5c]
    mov edx, dword ptr [edx + 0x238]
    xor dx, dx
    and eax, 0xff
    or eax, edx
    jmp loc_0042f77a
loc_0042f774:
    mov eax, dword ptr [eax + 0x238]
loc_0042f77a:
    mov edx, dword ptr [esp + 0x14]
    mov dword ptr [esp + 0xc], eax
    push eax
    add edx, dword ptr [esp + 0xc]
    mov eax, dword ptr [esp + 8]
    imul eax, ecx
    mov ebp, dword ptr [esp + 0x14]
    push ebp
    add eax, edx
    mov edx, edi
    call sub_00442c6c
    mov edx, dword ptr [esp + 0x60]
    lea eax, [edx*8]
    add eax, edx
    mov edx, dword ptr [esp + 0x5c]
    shl eax, 2
    add edx, 0x18
    add edx, eax
    mov eax, dword ptr [esp + 0x5c]
    mov eax, dword ptr [eax]
    call sub_0043d478
loc_0042f7c0:
    mov eax, esi
    add esp, 0x44
    pop ebp
    pop edi
    pop esi
    ret 0x10
    .byte 0x90
ptr_0042f7cc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov dword ptr [esp + 8], eax
    cmp dword ptr [d_0045c468], 0
    jne loc_0042f7ec
    mov eax, 0xffffffff
    jmp loc_0042fb10
loc_0042f7ec:
    call dword ptr [d_0045c37c]
    mov ebx, dword ptr [d_0045c300]
    mov edi, eax
    mov esi, eax
    cmp ebx, -1
    jne loc_0042f9d4
    push 4
    mov ecx, 0xc0
    mov edx, 0x50
    push 0x100
    mov ebx, 0x12c
    mov eax, edx
    call sub_0043c734
    mov dword ptr [d_0045c300], eax
    cmp eax, -1
    je loc_0042fb10
    call sub_0043ca60
    mov eax, dword ptr [d_0045c300]
    mov ebx, 8
    call sub_0043dd7c
    push 0x101
    mov ecx, 0x11c
    mov edx, ebx
    push edi
    mov ebp, dword ptr [eax + 0x2c]
    mov eax, dword ptr [d_0045c300]
    call sub_0043d1c0
    push 0x2000104
    push 8
    mov eax, offset d_0045aacc
    mov edx, 0x12c
    call dword ptr [d_0045c380]
    sub edx, eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    xor ebx, ebx
    mov edx, dword ptr [d_0045c300]
    mov ecx, eax
    mov dword ptr [esp + 8], edx
    mov edx, offset d_0045aacc
    mov eax, dword ptr [esp + 8]
    call sub_0043cd44
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    lea eax, [edi + 8]
    push eax
    mov ecx, 8
    mov edx, 0x12c
    push 0x123
    mov ebx, ecx
    mov eax, ebp
    call sub_0044240c
    push 0x101
    mov ecx, 0x11a
    mov ebx, 0x1a
    push 0x87
    mov edx, 9
    mov eax, dword ptr [d_0045c300]
    call sub_0043d1c0
    mov eax, dword ptr [d_0045c470]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    mov eax, dword ptr [d_0045c474]
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    lea eax, [edi + 0x91]
    push eax
    mov ecx, 0x19
    mov ebx, 8
    push 0x123
    mov edx, 0x12c
    mov eax, ebp
    call sub_0044240c
    push 0
    push offset d_0045aad4
    push -1
    mov ecx, 9
    mov ebp, 0x1a
    push -1
    mov eax, offset d_0045aad4
    mov edx, 0x12c
    push -1
    mov dword ptr [d_0049d7ac], ecx
    mov dword ptr [d_0049d7a8], ebp
    call dword ptr [d_0045c380]
    sub edx, eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov ebx, 0xb8
    sub ebx, edi
    mov ecx, 0xffffffff
    sub ebx, 6
    mov ebp, dword ptr [d_0045c300]
    mov edx, eax
    mov eax, ebp
    call sub_00432298
    push offset ptr_0042fb1c
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    call sub_004326e0
    push 0x10
    push 0
    push 0
    push 0
    push -1
    push -1
    push -1
    push -1
    mov ecx, 0x11c
    mov ebx, 8
    push edi
    mov eax, dword ptr [d_0045c300]
    mov edx, ebx
    call sub_004321f0
loc_0042f9d4:
    xor ah, ah
    mov byte ptr [esp + 0xd], ah
    mov eax, dword ptr [esp + 8]
    cmp byte ptr [eax], 0
    je loc_0042fb04
    mov edi, 0x86
    sub edi, esi
    lea ebp, [esi*4]
    add ebp, esi
    shl ebp, 2
    mov eax, ebp
    shl ebp, 4
    dec edi
    sub ebp, eax
loc_0042fa02:
    mov edx, dword ptr [esp + 8]
    xor eax, eax
    mov al, byte ptr [edx]
    call dword ptr [d_0045c384]
    mov bl, byte ptr [edx]
    mov dword ptr [esp + 4], eax
    cmp bl, 0xa
    je loc_0042fa28
    add eax, dword ptr [d_0049d7ac]
    cmp eax, 0x123
    jle loc_0042fa41
loc_0042fa28:
    mov ecx, dword ptr [d_0049d7a8]
    mov ebx, 9
    add ecx, esi
    mov dword ptr [d_0049d7ac], ebx
    mov dword ptr [d_0049d7a8], ecx
loc_0042fa41:
    mov eax, 0xa0
    mov edx, dword ptr [d_0049d7a8]
    sub eax, edx
    cmp eax, esi
    jge loc_0042faaa
    mov eax, dword ptr [d_0045c300]
    call sub_0043dd7c
    mov eax, dword ptr [eax + 0x2c]
    push 0x12c
    add eax, 0x1e81
    push eax
    push 0x12c
    push edi
    push 0x11a
    add eax, ebp
    push eax
    call sub_004428b4
    add esp, 0x18
    mov ecx, 0x11a
    mov ebx, dword ptr [d_0049d7a8]
    push 0x101
    mov edx, 9
    sub ebx, esi
    push esi
    mov eax, dword ptr [d_0045c300]
    mov dword ptr [d_0049d7a8], ebx
    call sub_0043d1c0
    jmp loc_0042fa41
loc_0042faaa:
    mov eax, dword ptr [esp + 8]
    mov bh, byte ptr [eax]
    cmp bh, 0xa
    je loc_0042faf1
    push 0x2000104
    mov ecx, dword ptr [d_0049d7ac]
    mov eax, dword ptr [d_0045c300]
    mov byte ptr [esp + 0x10], bh
    mov ebx, edx
    push edx
    xor ebx, edx
    lea edx, [esp + 0x14]
    call sub_0043cd44
    call dword ptr [d_0045c38c]
    mov ecx, dword ptr [esp + 4]
    mov edx, dword ptr [d_0049d7ac]
    add eax, ecx
    add edx, eax
    mov dword ptr [d_0049d7ac], edx
loc_0042faf1:
    mov eax, dword ptr [esp + 8]
    inc eax
    mov dh, byte ptr [eax]
    mov dword ptr [esp + 8], eax
    test dh, dh
    jne loc_0042fa02
loc_0042fb04:
    mov eax, dword ptr [d_0045c300]
    call sub_0043d454
    xor eax, eax
loc_0042fb10:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8b,0xc0
ptr_0042fb1c:
    mov eax, dword ptr [d_0045c300]
    mov edx, 0xffffffff
    call sub_0043c960
    mov dword ptr [d_0045c300], edx
    ret
    .byte 0x8b,0xc0
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov esi, eax
    mov ebp, edx
    mov edi, ebx
    call sub_0043dd7c
    mov ebx, dword ptr [d_0045c468]
    mov edx, eax
    test ebx, ebx
    je loc_0042fb74
    test eax, eax
    je loc_0042fb74
    cmp dword ptr [eax + 0x3c], 0
    jne loc_0042fb74
    mov eax, dword ptr [edx + 0x18]
    lea ebx, [ecx + ebp]
    cmp ebx, eax
    jg loc_0042fb74
    mov eax, dword ptr [esp + 0x1c]
    add eax, edi
    mov dword ptr [esp + 8], eax
    cmp eax, dword ptr [edx + 0x1c]
    jle loc_0042fb7e
loc_0042fb74:
    mov eax, 0xffffffff
    jmp loc_0042fc1e
loc_0042fb7e:
    mov eax, 0x23c
    call sub_004444b0
    mov dword ptr [edx + 0x3c], eax
    test eax, eax
    jne loc_0042fb9d
    mov eax, 0xffffffff
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    ret 0xc
loc_0042fb9d:
    mov dword ptr [eax], esi
    mov eax, dword ptr [edx + 0x3c]
    mov dword ptr [eax + 4], ebp
    mov eax, dword ptr [edx + 0x3c]
    mov dword ptr [eax + 8], edi
    dec ebx
    mov eax, dword ptr [edx + 0x3c]
    mov dword ptr [esp], ebx
    mov dword ptr [esp + 4], eax
    mov eax, ebx
    mov ebx, dword ptr [esp + 4]
    mov dword ptr [ebx + 0xc], eax
    mov ebx, dword ptr [esp + 8]
    mov eax, dword ptr [edx + 0x3c]
    dec ebx
    mov dword ptr [eax + 0x10], ebx
    mov eax, dword ptr [edx + 0x3c]
    mov dword ptr [eax + 0x14], 0
    mov eax, dword ptr [edx + 0x3c]
    mov dword ptr [esp + 4], ebx
    mov ebx, dword ptr [esp + 0x20]
    mov dword ptr [eax + 0x234], ebx
    mov eax, dword ptr [edx + 0x3c]
    mov edx, dword ptr [esp + 0x24]
    push edx
    mov ebx, dword ptr [esp + 0x20]
    mov dword ptr [eax + 0x238], edx
    push ebx
    mov edx, ebp
    mov eax, esi
    mov ebx, edi
    call sub_0043d1c0
    mov ecx, dword ptr [esp + 0x20]
    mov eax, dword ptr [esp + 4]
    push ecx
    mov ebx, edi
    mov edx, ebp
    push eax
    mov ecx, dword ptr [esp + 8]
    mov eax, esi
    call sub_0043d080
    xor eax, eax
loc_0042fc1e:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    ret 0xc
    .byte 0x90
    push esi
    push edi
    push ebp
    sub esp, 0x14
    mov ebp, eax
    mov dword ptr [esp], edx
    mov edi, ebx
    mov dword ptr [esp + 8], ecx
    call sub_0043dd7c
    mov edx, dword ptr [d_0045c468]
    mov esi, eax
    test edx, edx
    je loc_0042fc5f
    test eax, eax
    je loc_0042fc5f
    mov ebx, dword ptr [eax + 0x3c]
    test ebx, ebx
    je loc_0042fc5f
    mov ecx, dword ptr [ebx + 0x14]
    mov edx, ebx
    cmp ecx, 0xf
    jne loc_0042fc69
loc_0042fc5f:
    mov eax, 0xffffffff
    jmp loc_0042fd87
loc_0042fc69:
    mov eax, dword ptr [esp]
    mov ebx, dword ptr [ebx + 4]
    mov dword ptr [esp + 4], ecx
    add eax, ebx
    mov ecx, dword ptr [edx + 0x10]
    mov dword ptr [esp + 0x10], eax
    mov eax, dword ptr [edx + 8]
    lea edx, [eax + ecx]
    call dword ptr [d_0045c37c]
    sub edx, eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    push 0
    push 0
    push 0
    push 0
    push -1
    mov dword ptr [esp + 0x20], eax
    mov eax, dword ptr [esp + 0x1c]
    push eax
    push -1
    push -1
    mov edx, dword ptr [esp + 0x30]
    call dword ptr [d_0045c37c]
    push eax
    mov eax, edi
    mov ebx, dword ptr [esp + 0x30]
    call dword ptr [d_0045c380]
    mov ecx, eax
    mov eax, ebp
    call sub_004321f0
    cmp eax, -1
    je loc_0042fd87
    mov eax, dword ptr [esi + 0x3c]
    mov eax, dword ptr [eax + 0x234]
    or eax, 0x2000000
    mov edx, dword ptr [esp + 0xc]
    push eax
    mov ecx, dword ptr [esp + 0x14]
    xor ebx, ebx
    push edx
    mov eax, ebp
    mov edx, edi
    call sub_0043cd44
    mov eax, dword ptr [esp + 4]
    lea edx, [eax*8]
    add edx, eax
    mov ebp, dword ptr [esi + 0x3c]
    shl edx, 2
    mov eax, dword ptr [esp + 0x10]
    mov dword ptr [edx + ebp + 0x18], eax
    mov eax, dword ptr [esi + 0x3c]
    mov ebp, dword ptr [esp + 0xc]
    mov dword ptr [edx + eax + 0x1c], ebp
    mov eax, edi
    mov edi, dword ptr [esp + 0x10]
    call dword ptr [d_0045c380]
    add edi, eax
    mov eax, dword ptr [esi + 0x3c]
    dec edi
    mov dword ptr [edx + eax + 0x20], edi
    call dword ptr [d_0045c37c]
    lea edi, [eax + ebp]
    mov eax, dword ptr [esi + 0x3c]
    dec edi
    mov dword ptr [edx + eax + 0x24], edi
    mov eax, dword ptr [esi + 0x3c]
    mov edi, dword ptr [esp + 8]
    mov dword ptr [edx + eax + 0x28], edi
    mov eax, dword ptr [esi + 0x3c]
    mov edi, dword ptr [esp + 0x24]
    mov dword ptr [edx + eax + 0x2c], edi
    mov eax, dword ptr [esi + 0x3c]
    mov edi, dword ptr [esp + 0x28]
    mov dword ptr [edx + eax + 0x30], edi
    mov eax, dword ptr [esi + 0x3c]
    mov edi, dword ptr [esp + 0x2c]
    mov dword ptr [edx + eax + 0x34], edi
    mov eax, dword ptr [esi + 0x3c]
    add eax, edx
    mov edx, dword ptr [esp + 0x30]
    mov dword ptr [eax + 0x38], edx
    mov edx, dword ptr [esi + 0x3c]
    mov ebx, dword ptr [edx + 0x14]
    inc ebx
    xor eax, eax
    mov dword ptr [edx + 0x14], ebx
loc_0042fd87:
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    ret 0x10
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov edi, eax
    call sub_0043dd7c
    mov edx, dword ptr [d_0045c468]
    mov esi, eax
    test edx, edx
    je loc_0042fde8
    test eax, eax
    je loc_0042fde8
    mov ebx, dword ptr [eax + 0x3c]
    test ebx, ebx
    je loc_0042fde8
    mov edx, dword ptr [ebx + 0x10]
    mov ebp, dword ptr [ebx + 8]
    mov ecx, dword ptr [eax + 0x20]
    sub edx, ebp
    push ecx
    inc edx
    mov eax, ebx
    push edx
    mov edx, dword ptr [ebx + 0xc]
    sub edx, dword ptr [ebx + 4]
    lea ecx, [edx + 1]
    mov ebx, ebp
    mov edx, dword ptr [eax + 4]
    mov eax, edi
    call sub_0043d1c0
    mov eax, dword ptr [esi + 0x3c]
    call sub_00444630
    mov dword ptr [esi + 0x3c], 0
loc_0042fde8:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0042fdf0:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x14
    mov ebp, eax
    mov edi, edx
    cmp dword ptr [d_0045c304], 0
    je loc_0042fe0f
    mov eax, 0xffffffff
    jmp loc_0042fea7
loc_0042fe0f:
    mov dword ptr [d_0045c304], eax
    add eax, 0x18
    mov dword ptr [esp + 0x10], eax
loc_0042fe1b:
    imul esi, edi, 0x24
    mov ebx, dword ptr [esp + 0x10]
    mov eax, esp
    add esi, ebx
    push eax
    mov ecx, dword ptr [esi + 0x20]
    mov eax, dword ptr [esi + 0x1c]
    mov ebx, dword ptr [esi]
    push ecx
    mov edx, dword ptr [esi + 0x14]
    mov ecx, dword ptr [ebp + 0x10]
    push eax
    inc ecx
    mov eax, dword ptr [esi + 0x18]
    call sub_0042f0f4
    cmp eax, -1
    jne loc_0042fe56
    xor esi, esi
    mov dword ptr [d_0045c304], esi
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_0042fe56:
    push edi
    push ebp
    mov edx, dword ptr [esi + 0x20]
    push edx
    mov ebx, dword ptr [esi + 0x1c]
    mov ecx, dword ptr [esi + 0x14]
    push ebx
    lea edx, [esp + 0x10]
    mov ebx, dword ptr [esi + 0x18]
    call sub_0042f1c4
    mov edx, eax
    cmp eax, -1
    jge loc_0042fe7d
    mov edi, 0xfffffffe
    sub edi, eax
loc_0042fe7d:
    cmp edx, -1
    jl loc_0042fe1b
    je loc_0042fe9d
    call sub_0043a68c
    mov eax, edx
    call sub_0043a594
    lea eax, [edi*8]
    add eax, edi
    mov edx, dword ptr [ebp + eax*4 + 0x28]
loc_0042fe9d:
    xor ecx, ecx
    mov eax, edx
    mov dword ptr [d_0045c304], ecx
loc_0042fea7:
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    push ecx
    push esi
    push edi
    mov ecx, eax
    mov esi, ebx
    cmp eax, 0x41
    jl loc_0042fec4
    cmp eax, 0x5a
    jg loc_0042fec4
    lea ecx, [eax + 0x20]
loc_0042fec4:
    xor eax, eax
    test esi, esi
    jle loc_0042fee7
    lea edi, [ecx - 0x20]
loc_0042fecd:
    mov ebx, dword ptr [edx]
    mov bl, byte ptr [ebx]
    and ebx, 0xff
    cmp ebx, ecx
    je loc_0042feec
    cmp ebx, edi
    je loc_0042feec
    inc eax
    add edx, 4
    cmp eax, esi
    jl loc_0042fecd
loc_0042fee7:
    mov eax, 0xffffffff
loc_0042feec:
    pop edi
    pop esi
    pop ecx
    ret
sub_0042fef0:
    push ebx
    push ecx
    push esi
    mov esi, edx
    xor ecx, ecx
    xor edx, edx
    test esi, esi
    jle loc_0042ff15
    mov ebx, eax
loc_0042feff:
    mov eax, dword ptr [ebx]
    call dword ptr [d_0045c380]
    cmp eax, ecx
    jle loc_0042ff0d
    mov ecx, eax
loc_0042ff0d:
    inc edx
    add ebx, 4
    cmp edx, esi
    jl loc_0042feff
loc_0042ff15:
    mov eax, ecx
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_0042ff1c:
    push esi
    push edi
    push ebp
    sub esp, 0x30
    mov dword ptr [esp + 0x2c], edx
    mov dword ptr [esp + 0x1c], ebx
    mov dword ptr [esp + 0x14], ecx
    call sub_0043dd7c
    mov ebp, eax
    mov eax, dword ptr [eax + 0x2c]
    mov edx, 1
    add eax, ecx
    mov ecx, ebp
    mov dword ptr [esp + 0x20], edx
    mov edx, dword ptr [esp + 0x40]
    imul edx, dword ptr [ecx + 0x18]
    add eax, edx
    mov dword ptr [esp + 0x24], eax
    call dword ptr [d_0045c37c]
    mov edi, dword ptr [esp + 0x2c]
    mov dword ptr [esp + 0x18], eax
    mov dword ptr [esp + 0x10], eax
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov eax, dword ptr [esp + 0x2c]
    add eax, ecx
    mov ebx, dword ptr [esp + 0x18]
    mov byte ptr [eax], 0x5f
    mov esi, ecx
    mov byte ptr [eax + 1], 0
    mov eax, dword ptr [esp + 0x2c]
    mov ecx, ebp
    call dword ptr [d_0045c380]
    mov edi, eax
    mov eax, dword ptr [esp + 0x48]
    mov ecx, dword ptr [ecx + 0x18]
    push eax
    mov edx, edi
    mov eax, dword ptr [esp + 0x28]
    call sub_00442a5c
    mov edx, dword ptr [esp + 0x44]
    mov eax, dword ptr [esp + 0x24]
    mov ecx, ebp
    mov ebx, edi
    push edx
    mov ecx, dword ptr [ecx + 0x18]
    mov edx, dword ptr [esp + 0x30]
    call dword ptr [d_0045c378]
    mov eax, ebp
    mov ebx, dword ptr [esp + 0x14]
    mov eax, dword ptr [eax + 8]
    add eax, ebx
    mov dword ptr [esp], eax
    mov eax, ebp
    mov ecx, dword ptr [esp + 0x40]
    mov eax, dword ptr [eax + 0xc]
    add eax, ecx
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esp]
    add eax, edi
    mov edi, dword ptr [esp + 0x18]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 4]
    mov edx, esp
    add eax, edi
    xor ebx, ebx
    mov dword ptr [esp + 0xc], eax
    mov eax, ebp
    call sub_0043d4d0
    mov edx, dword ptr [esp + 0x1c]
    cmp esi, edx
    jg loc_00430214
loc_00430008:
    call sub_0043a508
    mov dword ptr [esp + 0x28], eax
    cmp eax, -1
    je loc_00430206
    mov edx, dword ptr [esp + 0x2c]
    add edx, esi
    cmp eax, 0x1b
    jne loc_00430032
    mov eax, 0xffffffff
    mov byte ptr [edx], 0
    jmp loc_0043021d
loc_00430032:
    cmp eax, 8
    jne loc_0043014e
    test esi, esi
    jle loc_00430206
    mov eax, dword ptr [esp + 0x2c]
    mov ebx, dword ptr [esp + 0x20]
    call dword ptr [d_0045c380]
    mov edi, eax
    mov dword ptr [esp + 0x28], eax
    test ebx, ebx
    je loc_004300bf
    mov ecx, dword ptr [esp + 0x48]
    mov ebx, dword ptr [esp + 0x10]
    mov edx, eax
    mov eax, dword ptr [esp + 0x24]
    push ecx
    mov ecx, dword ptr [ebp + 0x18]
    mov esi, dword ptr [esp + 0x18]
    call sub_00442a5c
    mov eax, dword ptr [ebp + 8]
    add eax, esi
    mov dword ptr [esp], eax
    mov edx, dword ptr [esp + 0x40]
    mov eax, dword ptr [ebp + 0xc]
    add eax, edx
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esp]
    add eax, edi
    mov ebx, dword ptr [esp + 0x10]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 4]
    add eax, ebx
    mov edx, esp
    mov dword ptr [esp + 0xc], eax
    xor ebx, ebx
    mov eax, ebp
    call sub_0043d4d0
    mov eax, dword ptr [esp + 0x2c]
    mov byte ptr [eax], 0x5f
    mov esi, 1
    mov byte ptr [eax + 1], 0
    jmp loc_004300c6
loc_004300bf:
    mov byte ptr [edx - 1], 0x5f
    mov byte ptr [edx], 0x20
loc_004300c6:
    mov ecx, dword ptr [esp + 0x48]
    mov ebx, dword ptr [esp + 0x10]
    mov edx, dword ptr [esp + 0x28]
    mov eax, dword ptr [esp + 0x24]
    push ecx
    mov ecx, dword ptr [ebp + 0x18]
    mov edi, dword ptr [esp + 0x48]
    call sub_00442a5c
    mov ebx, dword ptr [esp + 0x28]
    mov edx, dword ptr [esp + 0x2c]
    push edi
    mov eax, dword ptr [esp + 0x28]
    mov ecx, dword ptr [ebp + 0x18]
    call dword ptr [d_0045c378]
    mov edx, dword ptr [esp + 0x14]
    mov eax, dword ptr [ebp + 8]
    add eax, edx
    mov dword ptr [esp], eax
    mov ebx, dword ptr [esp + 0x40]
    mov eax, dword ptr [ebp + 0xc]
    add eax, ebx
    mov ecx, dword ptr [esp + 0x28]
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esp]
    add eax, ecx
    mov edi, dword ptr [esp + 0x10]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 4]
    mov edx, esp
    add eax, edi
    xor ebx, ebx
    mov dword ptr [esp + 0xc], eax
    mov eax, ebp
    call sub_0043d4d0
    mov eax, dword ptr [esp + 0x2c]
    mov byte ptr [esi + eax], 0
    xor eax, eax
    sub esi, 2
    mov dword ptr [esp + 0x20], eax
    jmp loc_00430207
loc_0043014e:
    cmp eax, 0xd
    je loc_00430214
    mov ecx, dword ptr [esp + 0x1c]
    cmp esi, ecx
    jne loc_00430167
    lea esi, [ecx - 1]
    jmp loc_00430207
loc_00430167:
    test eax, eax
    jle loc_00430206
    cmp eax, 0x100
    jge loc_00430206
    mov al, byte ptr [esp + 0x28]
    mov byte ptr [edx + 1], 0x5f
    mov ebx, dword ptr [esp + 0x10]
    mov byte ptr [edx], al
    mov eax, dword ptr [esp + 0x2c]
    mov byte ptr [edx + 2], 0
    call dword ptr [d_0045c380]
    mov edi, eax
    mov eax, dword ptr [esp + 0x48]
    mov ecx, dword ptr [ebp + 0x18]
    push eax
    mov edx, edi
    mov eax, dword ptr [esp + 0x28]
    call sub_00442a5c
    mov edx, dword ptr [esp + 0x44]
    mov eax, dword ptr [esp + 0x24]
    mov ebx, edi
    push edx
    mov ecx, dword ptr [ebp + 0x18]
    mov edx, dword ptr [esp + 0x30]
    call dword ptr [d_0045c378]
    mov ebx, dword ptr [esp + 0x14]
    mov eax, dword ptr [ebp + 8]
    add eax, ebx
    mov dword ptr [esp], eax
    mov ecx, dword ptr [esp + 0x40]
    mov eax, dword ptr [ebp + 0xc]
    add eax, ecx
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esp]
    add eax, edi
    mov edi, dword ptr [esp + 0x10]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [esp + 4]
    mov edx, esp
    add eax, edi
    xor ebx, ebx
    mov dword ptr [esp + 0xc], eax
    mov eax, ebp
    call sub_0043d4d0
    xor eax, eax
    mov dword ptr [esp + 0x20], eax
    jmp loc_00430207
loc_00430206:
    dec esi
loc_00430207:
    mov ebx, dword ptr [esp + 0x1c]
    inc esi
    cmp esi, ebx
    jle loc_00430008
loc_00430214:
    add esi, dword ptr [esp + 0x2c]
    xor eax, eax
    mov byte ptr [esi], 0
loc_0043021d:
    add esp, 0x30
    pop ebp
    pop edi
    pop esi
    ret 0xc
    .byte 0x8b,0xc0
    push esi
    push edi
    push ebp
    sub esp, 0x38
    mov esi, eax
    mov dword ptr [esp + 0x2c], edx
    mov dword ptr [esp + 0x30], ebx
    mov dword ptr [esp + 0x14], ecx
    cmp dword ptr [d_0045c468], 0
    jne loc_0043024f
    mov eax, 0xffffffff
    jmp loc_004304f3
loc_0043024f:
    cmp ebx, dword ptr [esp + 0x2c]
    jge loc_00430263
    mov eax, 0xffffffff
    add esp, 0x38
    pop ebp
    pop edi
    pop esi
    ret 0xc
loc_00430263:
    mov ecx, dword ptr [esp + 0x2c]
    mov eax, dword ptr [esi]
    cmp eax, ecx
    jl loc_00430271
    cmp eax, ebx
    jle loc_00430283
loc_00430271:
    mov ebp, dword ptr [esp + 0x30]
    cmp ebp, dword ptr [esi]
    jge loc_0043027d
    mov dword ptr [esi], ebp
    jmp loc_00430283
loc_0043027d:
    mov eax, dword ptr [esp + 0x2c]
    mov dword ptr [esi], eax
loc_00430283:
    mov eax, dword ptr [esi]
    mov edx, dword ptr [esp + 0x2c]
    mov dword ptr [esp + 0x1c], eax
    test edx, edx
    setl al
    mov edx, dword ptr [esp + 0x30]
    mov byte ptr [esp + 0x34], al
    mov eax, dword ptr [esp + 0x2c]
    call sub_004304fc
    mov ecx, eax
    mov dword ptr [esp + 0x18], eax
    cmp eax, -1
    je loc_004304f3
    call dword ptr [d_0045c394]
    imul ecx, eax
    mov eax, dword ptr [esp + 0x48]
    mov dword ptr [esp + 0xc], ecx
    call dword ptr [d_0045c380]
    mov ebp, eax
    cmp eax, ecx
    jge loc_004302d1
    mov ebp, ecx
loc_004302d1:
    add ebp, 0x10
    cmp ebp, 0xa0
    jge loc_004302e1
    mov ebp, 0xa0
loc_004302e1:
    call dword ptr [d_0045c37c]
    mov edx, eax
    shl eax, 2
    add eax, edx
    add eax, 0x10
    mov ecx, dword ptr [esp + 0xc]
    mov dword ptr [esp + 4], eax
    mov eax, ebp
    sub eax, ecx
    sar eax, 1
    mov ebx, ebp
    mov dword ptr [esp + 0x28], eax
    call dword ptr [d_0045c37c]
    add eax, 0xe
    mov edx, dword ptr [esp + 0x50]
    mov dword ptr [esp + 0x24], eax
    call dword ptr [d_0045c37c]
    push 0x14
    mov ecx, dword ptr [esp + 8]
    add eax, 2
    push 0x100
    mov dword ptr [esp + 0x10], eax
    mov eax, dword ptr [esp + 0x54]
    call sub_0043c734
    mov edi, eax
    cmp eax, -1
    je loc_004304f3
    call sub_0043ca60
    push 0x101
    mov edx, dword ptr [esp + 0xc]
    mov ecx, dword ptr [esp + 0x10]
    mov ebx, dword ptr [esp + 0x28]
    push edx
    mov eax, edi
    mov edx, dword ptr [esp + 0x30]
    call sub_0043d1c0
    push 0x105
    mov ecx, 8
    mov edx, dword ptr [esp + 0x4c]
    push 8
    lea ebx, [ebp - 0x10]
    mov eax, edi
    call sub_0043cd44
    mov eax, edi
    call sub_0043dda4
    mov edx, dword ptr [d_0045c470]
    mov dl, byte ptr [edx + d_00495390]
    and edx, 0xff
    push edx
    mov edx, dword ptr [d_0045c474]
    mov dl, byte ptr [edx + d_00495390]
    and edx, 0xff
    mov ebx, dword ptr [esp + 0xc]
    push edx
    mov edx, dword ptr [esp + 0x2c]
    add edx, ebx
    dec edx
    mov ecx, dword ptr [esp + 0x14]
    push edx
    mov edx, dword ptr [esp + 0x34]
    mov ebx, dword ptr [esp + 0x34]
    add edx, ecx
    sub ebx, 2
    inc edx
    mov ecx, dword ptr [esp + 0x30]
    push edx
    sub ecx, 2
    mov edx, ebp
    call sub_0044240c
    push 0
    push offset d_0045aab4
    push 0xd
    mov edx, dword ptr [esp + 0x10]
    mov ecx, 0xffffffff
    push -1
    sar ebp, 1
    sub edx, 8
    push -1
    mov dword ptr [esp + 0x14], edx
    mov ebx, edx
    call dword ptr [d_0045c37c]
    sub ebx, eax
    lea edx, [ebp - 0x48]
    sub ebx, 6
    mov eax, edi
    call sub_00432298
    push 0
    push offset d_0045aabc
    push 0x1b
    push -1
    push -1
    mov ebx, dword ptr [esp + 0x14]
    mov ecx, 0xffffffff
    call dword ptr [d_0045c37c]
    sub ebx, eax
    lea edx, [ebp + 0x10]
    sub ebx, 6
    mov eax, edi
    call sub_00432298
    mov eax, 0x50
    call sub_004444b0
    mov ebp, eax
    test eax, eax
    jne loc_00430457
    mov eax, 0xffffffff
    add esp, 0x38
    pop ebp
    pop edi
    pop esi
    ret 0xc
loc_00430457:
    mov edx, dword ptr [esp + 0x30]
    push edx
    mov ebx, dword ptr [esp + 0x30]
    push ebx
    push offset d_0045aadc
    push eax
    call sub_004518d0
    add esp, 0x10
    mov eax, edi
    call sub_0043d454
    mov eax, dword ptr [esp + 0x50]
    add eax, 0x64
    mov dword ptr [esp + 0x10], eax
    mov eax, dword ptr [esp + 0x4c]
    sub eax, 0x46
    mov dword ptr [esp + 0x20], eax
loc_0043048c:
    mov ecx, dword ptr [esp + 0x24]
    push ecx
    mov eax, dword ptr [esp + 0x2c]
    mov ebx, dword ptr [esp + 0x1c]
    push eax
    xor eax, eax
    mov edx, esi
    mov al, byte ptr [esp + 0x3c]
    xor ecx, ecx
    push eax
    mov cl, byte ptr [esp + 0x20]
    mov eax, edi
    call sub_0043056c
    mov edx, dword ptr [esp + 0x2c]
    mov ecx, eax
    mov eax, dword ptr [esi]
    cmp eax, edx
    jl loc_004304c2
    cmp eax, dword ptr [esp + 0x30]
    jle loc_004304e3
loc_004304c2:
    cmp ecx, -1
    je loc_004304e3
    mov ecx, 0x106
    mov ebx, dword ptr [esp + 0x10]
    mov edx, dword ptr [esp + 0x20]
    mov eax, ebp
    call sub_0042ef58
    mov eax, dword ptr [esp + 0x1c]
    mov dword ptr [esi], eax
    jmp loc_0043048c
loc_004304e3:
    mov eax, ebp
    call sub_00444630
    mov eax, edi
    call sub_0043c960
    mov eax, ecx
loc_004304f3:
    add esp, 0x38
    pop ebp
    pop edi
    pop esi
    ret 0xc
sub_004304fc:
    push ebx
    push ecx
    push esi
    push edi
    mov ebx, eax
    mov esi, edx
    mov eax, 0x11
    call sub_004444b0
    mov edx, eax
    test eax, eax
    jne loc_0043051b
    mov edx, 0xffffffff
    jmp loc_00430565
loc_0043051b:
    push ebx
    push offset d_0045ab08
    push eax
    call sub_004518d0
    add esp, 0xc
    mov edi, edx
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    push esi
    push offset d_0045ab08
    push edx
    call sub_004518d0
    add esp, 0xc
    mov edi, edx
    mov ebx, ecx
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov eax, edx
    call sub_00444630
    cmp ecx, ebx
    jle loc_00430562
    mov edx, ecx
    jmp loc_00430564
loc_00430562:
    mov edx, ebx
loc_00430564:
    inc edx
loc_00430565:
    mov eax, edx
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0043056c:
    push esi
    push edi
    push ebp
    sub esp, 0x30
    mov ebp, eax
    mov dword ptr [esp + 0x14], edx
    mov dword ptr [esp + 0x1c], ebx
    mov edx, 1
    call sub_0043dd7c
    mov dword ptr [esp + 0x28], edx
    test eax, eax
    jne loc_00430598
    mov eax, 0xffffffff
    jmp loc_004308a1
loc_00430598:
    mov eax, dword ptr [esp + 0x14]
    mov eax, dword ptr [eax]
    mov edx, ebx
    mov dword ptr [esp + 0x10], eax
    call dword ptr [d_0045c394]
    imul edx, eax
    call dword ptr [d_0045c37c]
    mov dword ptr [esp + 0x20], eax
    mov eax, ebp
    call sub_0043dda4
    mov eax, ebp
    call sub_0043de0c
    lea eax, [ebx + 1]
    mov dword ptr [esp + 0x24], edx
    call sub_004444b0
    mov dword ptr [esp + 0x2c], eax
    test eax, eax
    jne loc_004305e7
    mov eax, 0xffffffff
    add esp, 0x30
    pop ebp
    pop edi
    pop esi
    ret 0xc
loc_004305e7:
    test cl, cl
    je loc_004305f0
    mov byte ptr [eax], 0
    jmp loc_00430605
loc_004305f0:
    mov edx, dword ptr [esp + 0x14]
    mov ebx, dword ptr [edx]
    push ebx
    push offset d_0045ab08
    push eax
    call sub_004518d0
    add esp, 0xc
loc_00430605:
    mov edi, dword ptr [esp + 0x2c]
    mov ebx, dword ptr [esp + 0x24]
    mov edx, dword ptr [esp + 0x2c]
    sub ecx, ecx
    dec ecx
    xor eax, eax
    repne scasb al, byte ptr es:[edi]
    not ecx
    dec ecx
    mov eax, dword ptr [esp + 0x2c]
    push 0x104
    mov edi, dword ptr [esp + 0x4c]
    add eax, ecx
    mov esi, ecx
    push edi
    mov byte ptr [eax], 0x5f
    mov ecx, dword ptr [esp + 0x4c]
    mov byte ptr [eax + 1], 0
    mov eax, ebp
    call sub_0043cd44
    mov eax, dword ptr [esp + 0x44]
    mov edx, dword ptr [esp + 0x24]
    mov ebx, dword ptr [esp + 0x20]
    mov dword ptr [esp], eax
    add eax, edx
    mov dword ptr [esp + 4], edi
    mov dword ptr [esp + 8], eax
    lea eax, [edi + ebx]
    mov edx, esp
    mov dword ptr [esp + 0xc], eax
    mov eax, ebp
    mov ecx, dword ptr [esp + 0x1c]
    call sub_0043d478
    mov eax, esi
    xor edi, edi
    cmp eax, ecx
    jg loc_00430882
    lea eax, [ecx - 1]
    mov dword ptr [esp + 0x18], eax
loc_0043067f:
    call sub_0043a508
    mov ebx, dword ptr [esp + 0x2c]
    mov edx, eax
    add ebx, esi
    cmp eax, 0xd
    jl loc_004306ae
    jle loc_004307d9
    cmp eax, 0x1b
    jl loc_004307e3
    jle loc_004306cd
    cmp eax, 0x14b
    je loc_004306ee
    jmp loc_004307e3
loc_004306ae:
    cmp eax, -1
    jl loc_004307e3
    jle loc_004306c7
    cmp eax, 8
    je loc_00430756
    jmp loc_004307e3
loc_004306c7:
    dec esi
    jmp loc_00430875
loc_004306cd:
    mov edx, dword ptr [esp + 0x14]
    mov eax, dword ptr [esp + 0x10]
    mov dword ptr [edx], eax
    mov eax, dword ptr [esp + 0x2c]
    call sub_00444630
    mov eax, 0xffffffff
    add esp, 0x30
    pop ebp
    pop edi
    pop esi
    ret 0xc
loc_004306ee:
    test esi, esi
    jle loc_00430810
    mov eax, dword ptr [esp + 0x2c]
    mov edx, dword ptr [esp + 0x20]
    call dword ptr [d_0045c380]
    push 0x101
    mov byte ptr [ebx - 1], 0x5f
    mov ecx, eax
    mov byte ptr [ebx], 0
    mov ebx, dword ptr [esp + 0x4c]
    push edx
    mov eax, ebp
    mov edx, dword ptr [esp + 0x4c]
    call sub_0043d1c0
    push 0x104
    mov ebx, dword ptr [esp + 0x4c]
    mov ecx, dword ptr [esp + 0x48]
    mov edx, dword ptr [esp + 0x30]
    mov eax, ebp
    push ebx
    mov ebx, dword ptr [esp + 0x2c]
    sub esi, 2
    call sub_0043cd44
    mov edx, esp
    mov eax, ebp
    xor ecx, ecx
    call sub_0043d478
    mov dword ptr [esp + 0x28], ecx
    jmp loc_00430871
loc_00430756:
    test esi, esi
    jle loc_00430810
    mov eax, dword ptr [esp + 0x2c]
    call dword ptr [d_0045c380]
    mov edx, eax
    cmp dword ptr [esp + 0x28], 0
    je loc_00430783
    mov eax, dword ptr [esp + 0x2c]
    mov byte ptr [eax], 0x5f
    mov esi, 1
    mov byte ptr [eax + 1], 0
    jmp loc_0043078a
loc_00430783:
    mov byte ptr [ebx - 1], 0x5f
    mov byte ptr [ebx], 0
loc_0043078a:
    push 0x101
    mov ebx, dword ptr [esp + 0x24]
    mov ecx, edx
    mov eax, ebp
    push ebx
    mov edx, dword ptr [esp + 0x4c]
    mov ebx, dword ptr [esp + 0x50]
    call sub_0043d1c0
    push 0x104
    mov ecx, dword ptr [esp + 0x4c]
    mov ebx, dword ptr [esp + 0x28]
    mov edx, dword ptr [esp + 0x30]
    push ecx
    mov eax, ebp
    mov ecx, dword ptr [esp + 0x4c]
    call sub_0043cd44
    mov edx, esp
    mov eax, ebp
    call sub_0043d478
    xor eax, eax
    sub esi, 2
    mov dword ptr [esp + 0x28], eax
    jmp loc_00430871
loc_004307d9:
    mov edi, 1
    jmp loc_00430871
loc_004307e3:
    mov ebx, dword ptr [esp + 0x18]
    cmp esi, ebx
    jne loc_004307f3
    lea esi, [ebx - 1]
    # jmp 0x430871
    .byte 0xe9
    .long loc_00430871 - . - 4
loc_004307f3:
    cmp edx, 0x2d
    jne loc_00430806
    test esi, esi
    jne loc_00430803
    cmp byte ptr [esp + 0x40], 0
    jne loc_00430813
loc_00430803:
    dec esi
    jmp loc_00430871
loc_00430806:
    cmp edx, 0x30
    jl loc_00430810
    cmp edx, 0x39
    jle loc_00430813
loc_00430810:
    dec esi
    jmp loc_00430871
loc_00430813:
    mov eax, dword ptr [esp + 0x2c]
    mov byte ptr [esi + eax + 1], 0x5f
    mov byte ptr [esi + eax + 2], 0
    mov ecx, dword ptr [esp + 0x20]
    mov byte ptr [esi + eax], dl
    call dword ptr [d_0045c380]
    push 0x101
    mov ebx, dword ptr [esp + 0x4c]
    mov edx, dword ptr [esp + 0x48]
    push ecx
    mov ecx, eax
    mov eax, ebp
    call sub_0043d1c0
    push 0x104
    mov eax, dword ptr [esp + 0x4c]
    mov ecx, dword ptr [esp + 0x48]
    mov ebx, dword ptr [esp + 0x28]
    push eax
    mov edx, dword ptr [esp + 0x34]
    mov eax, ebp
    call sub_0043cd44
    mov edx, esp
    mov eax, ebp
    call sub_0043d478
    xor edx, edx
    mov dword ptr [esp + 0x28], edx
loc_00430871:
    test edi, edi
    jne loc_00430882
loc_00430875:
    mov eax, dword ptr [esp + 0x1c]
    inc esi
    cmp esi, eax
    jle loc_0043067f
loc_00430882:
    mov ebx, dword ptr [esp + 0x2c]
    add esi, ebx
    mov edx, dword ptr [esp + 0x14]
    mov eax, ebx
    mov byte ptr [esi], 0
    call sub_004516c1
    mov dword ptr [edx], eax
    mov eax, ebx
    call sub_00444630
    xor eax, eax
loc_004308a1:
    add esp, 0x30
    pop ebp
    pop edi
    pop esi
    ret 0xc
    .byte 0x8b,0xc0
sub_004308ac:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov ebx, 0xffffffff
    mov ecx, 0xbb8
    mov eax, dword ptr [d_004a3be8]
    xor edx, edx
    mov esi, dword ptr [d_004a3bec]
    mov dword ptr [d_0049d7a0], edx
    mov dword ptr [d_0049d798], ebx
    mov dword ptr [d_0049d794], ecx
    sar eax, 1
    mov ecx, dword ptr [d_004a3bec]
    mov edx, dword ptr [d_004a3bec]
    mov dword ptr [d_0049d79c], eax
    sar ecx, 2
    sar edx, 3
    cmp esi, 0x1df
    jge loc_0043090c
    mov eax, 0xa
    mov dword ptr [d_0049d750], eax
    mov dword ptr [d_0049d7a4], eax
    jmp loc_0043091d
loc_0043090c:
    mov edi, 0x10
    mov dword ptr [d_0049d750], edi
    mov dword ptr [d_0049d7a4], edi
loc_0043091d:
    call dword ptr [d_0045c37c]
    mov ebx, dword ptr [d_0049d7a4]
    add ebx, ebx
    add eax, ebx
    mov ebx, edx
    imul edx, edx, 0
    mov dword ptr [d_0049d754], eax
    xor eax, eax
    add edx, ecx
loc_0043093b:
    add eax, 8
    xor ecx, ecx
    mov dword ptr [eax + d_0049d724], edx
    add edx, ebx
    mov dword ptr [eax + d_0049d720], ecx
    cmp eax, 0x28
    jne loc_0043093b
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
    mov dword ptr [d_0049d794], eax
    ret
    .byte 0x8b,0xc0
sub_00430964:
    mov eax, offset ptr_00430b28
    call sub_0043a74c
    cmp dword ptr [d_0049d798], -1
    je loc_00430985
loc_00430977:
    call sub_00430b7c
    cmp dword ptr [d_0049d798], -1
    jne loc_00430977
loc_00430985:
    ret
    .byte 0x8b,0xc0
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov dword ptr [esp + 0xc], eax
    mov dword ptr [esp + 4], edx
    cmp dword ptr [d_0045c468], 0
    jne loc_004309ab
    mov eax, 0xffffffff
    jmp loc_00430b1f
loc_004309ab:
    mov eax, dword ptr [d_0049d7a0]
    cmp eax, dword ptr [d_0049d798]
    jne loc_004309c6
    mov eax, 0xffffffff
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_004309c6:
    mov eax, dword ptr [esp + 0xc]
    call dword ptr [d_0045c380]
    mov ebp, dword ptr [d_0049d750]
    add ebp, ebp
    add ebp, eax
    mov eax, ebp
    mov ecx, dword ptr [d_0049d79c]
    sar eax, 1
    xor esi, esi
    sub ecx, eax
    mov eax, dword ptr [d_0049d754]
    mov dword ptr [esp], ecx
    mov ecx, dword ptr [d_0049d728]
    mov dword ptr [esp + 8], eax
    xor eax, eax
    test ecx, ecx
    jne loc_00430a13
loc_00430a00:
    mov ebx, 1
    mov edi, dword ptr [eax + d_0049d72c]
    mov dword ptr [eax + d_0049d728], ebx
    jmp loc_00430a27
loc_00430a13:
    add eax, 8
    inc esi
    cmp eax, 0x28
    jge loc_00430a27
    cmp dword ptr [eax + d_0049d728], 0
    je loc_00430a00
    jmp loc_00430a13
loc_00430a27:
    cmp esi, 5
    jne loc_00430a3a
    mov eax, 0xffffffff
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
loc_00430a3a:
    push 4
    mov ecx, dword ptr [esp + 0xc]
    mov eax, dword ptr [esp + 4]
    push 0x101
    mov ebx, ebp
    mov edx, edi
    call sub_0043c734
    mov ecx, dword ptr [esp + 4]
    mov edx, dword ptr [esp + 0xc]
    mov edi, eax
    call sub_0043ca60
    push ecx
    mov eax, dword ptr [d_0049d7a4]
    xor ebx, ebx
    push eax
    mov ecx, dword ptr [d_0049d750]
    mov eax, edi
    call sub_0043cd44
    push 0
    push 0
    push 0
    push 0
    push -1
    push -1
    push -1
    mov edx, dword ptr [esp + 0x24]
    push -1
    mov ecx, ebp
    mov eax, edi
    push edx
    xor ebx, ebx
    xor edx, edx
    call sub_004321f0
    push offset ptr_00430ce4
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    call sub_004326e0
    mov eax, edi
    call sub_0043d454
    mov ecx, dword ptr [d_0049d7a0]
    lea eax, [ecx*4]
    sub eax, ecx
    mov dword ptr [eax*4 + d_0049d75c], edi
    call sub_0043acf8
    mov edi, dword ptr [d_0049d7a0]
    mov ecx, eax
    lea eax, [edi*4]
    sub eax, edi
    mov dword ptr [eax*4 + d_0049d758], ecx
    lea ebx, [edi + 1]
    mov dword ptr [eax*4 + d_0049d760], esi
    mov dword ptr [d_0049d7a0], ebx
    cmp ebx, 5
    jne loc_00430b02
    xor ebp, ebp
    mov dword ptr [d_0049d7a0], ebp
    jmp loc_00430b1d
loc_00430b02:
    cmp dword ptr [d_0049d798], -1
    jne loc_00430b1d
    xor edi, edi
    mov eax, offset ptr_00430b28
    mov dword ptr [d_0049d798], edi
    call sub_0043a6fc
loc_00430b1d:
    xor eax, eax
loc_00430b1f:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
ptr_00430b28:
    push ebx
    push ecx
    cmp dword ptr [d_0045c308], 0
    jne loc_00430b78
    mov ebx, 1
    mov ecx, dword ptr [d_0049d798]
    mov dword ptr [d_0045c308], ebx
    cmp ecx, -1
    je loc_00430b71
loc_00430b49:
    imul eax, dword ptr [d_0049d798], 0xc
    mov eax, dword ptr [eax + d_0049d758]
    call sub_0043ad68
    cmp eax, dword ptr [d_0049d794]
    jb loc_00430b71
    call sub_00430b7c
    cmp dword ptr [d_0049d798], -1
    jne loc_00430b49
loc_00430b71:
    xor eax, eax
    mov dword ptr [d_0045c308], eax
loc_00430b78:
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00430b7c:
    push ebx
    push edx
    push esi
    mov ebx, dword ptr [d_0049d798]
    cmp ebx, -1
    je loc_00430bf3
    lea eax, [ebx*4]
    sub eax, ebx
    mov eax, dword ptr [eax*4 + d_0049d75c]
    call sub_0043c960
    mov ebx, dword ptr [d_0049d798]
    mov edx, ebx
    lea eax, [ebx*4]
    sub eax, ebx
    mov eax, dword ptr [eax*4 + d_0049d760]
    xor edx, ebx
    inc ebx
    mov dword ptr [eax*8 + d_0049d728], edx
    cmp ebx, 5
    jne loc_00430bc8
    xor ebx, ebx
loc_00430bc8:
    cmp ebx, dword ptr [d_0049d7a0]
    jne loc_00430bf3
    mov ebx, 0xffffffff
    xor esi, esi
    mov eax, offset ptr_00430b28
    mov dword ptr [d_0049d7a0], esi
    mov dword ptr [d_0049d798], ebx
    call sub_0043a74c
    mov ebx, dword ptr [d_0049d798]
loc_00430bf3:
    mov dword ptr [d_0049d798], ebx
    pop esi
    pop edx
    pop ebx
    ret
    .byte 0x8d,0x40,0x00
sub_00430c00:
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov edx, eax
    cmp dword ptr [d_0049d798], -1
    je loc_00430cdd
    call sub_00430d28
    test eax, eax
    je loc_00430cdd
    mov esi, edx
    lea eax, [esi*4]
    sub eax, esi
    lea esi, [eax*4]
    mov eax, dword ptr [esi + d_0049d75c]
    call sub_0043c960
    mov eax, dword ptr [esi + d_0049d760]
    xor ecx, ecx
    mov esi, dword ptr [d_0049d798]
    mov dword ptr [eax*8 + d_0049d728], ecx
    mov eax, edx
    cmp edx, esi
    je loc_00430c99
loc_00430c59:
    lea edx, [eax - 1]
    test edx, edx
    jge loc_00430c65
    mov edx, 4
loc_00430c65:
    imul esi, edx, 0xc
    imul eax, eax, 0xc
    mov edi, offset d_0049d758
    mov ecx, 0xc
    add esi, offset d_0049d758
    add edi, eax
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
    mov edi, dword ptr [d_0049d798]
    mov eax, edx
    cmp edx, edi
    jne loc_00430c59
loc_00430c99:
    mov ebp, dword ptr [d_0049d798]
    inc ebp
    mov dword ptr [d_0049d798], ebp
    cmp ebp, 5
    jne loc_00430cb3
    xor edx, edx
    mov dword ptr [d_0049d798], edx
loc_00430cb3:
    mov eax, dword ptr [d_0049d798]
    cmp eax, dword ptr [d_0049d7a0]
    jne loc_00430cdd
    mov esi, 0xffffffff
    xor ecx, ecx
    mov eax, offset ptr_00430b28
    mov dword ptr [d_0049d7a0], ecx
    mov dword ptr [d_0049d798], esi
    call sub_0043a74c
loc_00430cdd:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    ret
    .byte 0x90
ptr_00430ce4:
    push ebx
    mov edx, dword ptr [d_0049d798]
    cmp edx, -1
    je loc_00430d26
    call sub_004331ec
    mov ebx, eax
loc_00430cf7:
    imul eax, edx, 0xc
    cmp ebx, dword ptr [eax + d_0049d75c]
    je loc_00430d1f
    inc edx
    cmp edx, 5
    jne loc_00430d0a
    xor edx, edx
loc_00430d0a:
    cmp edx, dword ptr [d_0049d798]
    je loc_00430d26
    mov eax, edx
    call sub_00430d28
    test eax, eax
    je loc_00430d26
    jmp loc_00430cf7
loc_00430d1f:
    mov eax, edx
    call sub_00430c00
loc_00430d26:
    pop ebx
    ret
sub_00430d28:
    push ebx
    push ecx
    mov ebx, dword ptr [d_0049d798]
    mov ecx, dword ptr [d_0049d7a0]
    cmp ebx, ecx
    je loc_00430d54
    jge loc_00430d48
    cmp eax, ebx
    jl loc_00430d44
    cmp eax, ecx
    jl loc_00430d54
loc_00430d44:
    xor eax, eax
    jmp loc_00430d59
loc_00430d48:
    cmp eax, ecx
    jl loc_00430d54
    cmp eax, ebx
    jge loc_00430d54
    xor eax, eax
    jmp loc_00430d59
loc_00430d54:
    mov eax, 1
loc_00430d59:
    mov dword ptr [d_0049d7a0], ecx
    mov dword ptr [d_0049d798], ebx
    pop ecx
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_00430d70:
    push ebx
    push ecx
    push edx
    xor edx, edx
    mov ecx, 1
    mov dword ptr [d_0049d7dc], edx
    mov dword ptr [d_0049d7d0], edx
    mov dword ptr [d_0049d7b4], ecx
    call sub_00430e4c
    push edx
    push edx
    xor ebx, ebx
    push edx
    xor ecx, ecx
    xor eax, eax
    call sub_00430edc
    cmp eax, -1
    je loc_00430e04
    call sub_00444848
    cmp eax, 1
    je loc_00430db7
    mov eax, 0xffffffff
    pop edx
    pop ecx
    pop ebx
    ret
loc_00430db7:
    mov edx, dword ptr [d_004a3be8]
    mov dword ptr [d_0049d7dc], eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov edx, dword ptr [d_004a3bec]
    mov dword ptr [d_0049d7cc], eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [d_0049d7c8], eax
    mov eax, dword ptr [d_0049d7cc]
    mov dword ptr [d_0049d7b8], eax
    mov eax, dword ptr [d_0049d7c8]
    mov dword ptr [d_0049d7c0], eax
    call sub_0043acf8
    mov dword ptr [d_0049d7f4], eax
    xor eax, eax
loc_00430e04:
    pop edx
    pop ecx
    pop ebx
    ret
sub_00430e08:
    push ebx
    push ecx
    push edx
    push esi
    call sub_00444874
    mov edx, dword ptr [d_0045c354]
    test edx, edx
    je loc_00430e22
    mov eax, edx
    call sub_00444630
loc_00430e22:
    xor ebx, ebx
    mov ecx, dword ptr [d_0045c35c]
    mov dword ptr [d_0045c354], ebx
    test ecx, ecx
    je loc_00430e3e
    mov eax, offset ptr_00431100
    call sub_0043a74c
loc_00430e3e:
    xor esi, esi
    mov dword ptr [d_0045c35c], esi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x90
sub_00430e4c:
    push edx
    xor eax, eax
loc_00430e4f:
    mov dl, byte ptr [eax + d_0045c310]
    cmp dl, 0xf
    jne loc_00430e62
    mov dl, byte ptr [d_0049d38f]
    jmp loc_00430e85
loc_00430e62:
    cmp dl, 1
    jne loc_00430e7b
    mov dl, byte ptr [d_00497498]
    mov byte ptr [eax + d_0045c310], dl
    inc eax
    cmp eax, 0x40
    jl loc_00430e4f
    pop edx
    ret
loc_00430e7b:
    test dl, dl
    jne loc_00430e8b
    mov dl, byte ptr [d_00495390]
loc_00430e85:
    mov byte ptr [eax + d_0045c310], dl
loc_00430e8b:
    inc eax
    cmp eax, 0x40
    jl loc_00430e4f
    pop edx
    ret
    .byte 0x90
    push esi
    mov esi, dword ptr [d_0045c358]
    mov dword ptr [eax], esi
    mov eax, dword ptr [d_0049d7e4]
    mov dword ptr [edx], eax
    mov eax, dword ptr [d_0049d7bc]
    mov dword ptr [ebx], eax
    mov eax, dword ptr [d_0049d7e0]
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
    xor eax, eax
    pop esi
    ret 0xc
    .byte 0x8d,0x40,0x00
sub_00430edc:
    push esi
    push edi
    push ebp
    sub esp, 0x18
    mov ebp, dword ptr [esp + 0x28]
    mov edi, dword ptr [esp + 0x2c]
    mov esi, eax
    test eax, eax
    jne loc_00430f12
    mov esi, offset d_0045c310
    mov edx, 8
    mov ebp, 1
    mov al, byte ptr [d_00495390]
loc_00430f04:
    mov ebx, edx
    mov ecx, edx
    mov edi, ebp
    mov byte ptr [esp + 0x30], al
    test esi, esi
    je loc_00430f04
loc_00430f12:
    mov eax, dword ptr [d_0049d7b4]
    mov dword ptr [esp + 0x14], eax
    test eax, eax
    jne loc_00430f47
    cmp dword ptr [d_0049d7dc], 0
    je loc_00430f47
    cmp dword ptr [esp + 0x14], 0
    jne loc_00430f47
    mov dword ptr [d_0049d7b4], 1
    mov eax, esp
    call sub_004317c8
    mov eax, esp
    call sub_0043da90
loc_00430f47:
    cmp edx, dword ptr [d_0049d7e4]
    jne loc_00430f57
    cmp ebx, dword ptr [d_0049d7bc]
    je loc_00430f96
loc_00430f57:
    mov eax, edx
    imul eax, ebx
    call sub_004444b0
    mov dword ptr [esp + 0x10], eax
    test eax, eax
    jne loc_00430f7f
    cmp dword ptr [esp + 0x14], 0
    jne loc_00430f75
    call sub_00431178
loc_00430f75:
    mov eax, 0xffffffff
    # jmp 0x431031
    .byte 0xe9
    .long loc_00431031 - . - 4
loc_00430f7f:
    mov eax, dword ptr [d_0045c354]
    test eax, eax
    je loc_00430f8d
    call sub_00444630
loc_00430f8d:
    mov eax, dword ptr [esp + 0x10]
    mov dword ptr [d_0045c354], eax
loc_00430f96:
    mov al, byte ptr [esp + 0x30]
    mov dword ptr [d_0045c358], esi
    mov dword ptr [d_0049d7e4], edx
    mov dword ptr [d_0049d7bc], ebx
    mov dword ptr [d_0049d7e0], ecx
    mov edx, dword ptr [d_0045c35c]
    mov byte ptr [d_0049d800], al
    test edx, edx
    je loc_00430fcb
    mov eax, offset ptr_00431100
    call sub_0043a74c
loc_00430fcb:
    mov eax, dword ptr [d_0049d7f0]
    mov ecx, dword ptr [d_0049d7cc]
    xor ebx, ebx
    mov esi, dword ptr [d_0049d7c8]
    mov dword ptr [d_0045c35c], ebx
    sub eax, ebp
    mov dword ptr [d_0049d7f0], ebp
    add ecx, eax
    mov eax, dword ptr [d_0049d7ec]
    mov dword ptr [d_0049d7cc], ecx
    sub eax, edi
    # mov dword ptr [0x49d7ec], edi
    .byte 0x89,0x3d
    .long d_0049d7ec
