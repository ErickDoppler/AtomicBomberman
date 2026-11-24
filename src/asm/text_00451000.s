# code 0x00451000 - 0x00461000
    .intel_syntax noprefix
    .text
    # je 0x450ff1
    .byte 0x74
    .byte loc_00450ff1 - . - 1
    mov ecx, dword ptr [edx + 0xc]
    mov ebx, dword ptr [edx]
    test ecx, ecx
    je loc_00451013
    mov eax, dword ptr [edx + 8]
    call sub_00452b35
loc_00451013:
    mov eax, edx
    call sub_00452b35
    mov edx, ebx
    # jmp 0x450ffe
    .byte 0xeb
    .byte loc_00450ffe - . - 1
sub_0045101e:
    push ebx
    imul eax, edx
    mov ebx, eax
    call sub_004529cc
    test eax, eax
    je loc_00451034
    xor edx, edx
    call sub_00451940
loc_00451034:
    pop ebx
    ret
sub_00451036:
    # jmp 0x450ff5
    .byte 0xe9
    .long loc_00450ff5 - . - 4
ptr_0045103b:
    .byte 0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x61,0x62,0x63,0x64,0x65,0x66
    .byte 0x67,0x68,0x69,0x6a,0x6b,0x6c,0x6d,0x6e,0x6f,0x70,0x71,0x72,0x73,0x74,0x75,0x76
    .byte 0x77,0x78,0x79,0x7a,0x00
sub_00451060:
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
loc_00451076:
    lea ebx, [esp + 0x24]
    mov dword ptr [esp + 0x24], edi
    xor edx, edx
    div dword ptr [ebx]
    mov dword ptr [ebx], edx
    mov edx, dword ptr [esp + 0x24]
    mov dl, byte ptr cs:[edx + ptr_0045103b]
    mov byte ptr [ecx], dl
    inc ecx
    test eax, eax
    jne loc_00451076
loc_00451096:
    dec ecx
    mov al, byte ptr [ecx]
    mov byte ptr [esi], al
    inc esi
    test al, al
    jne loc_00451096
    mov eax, ebp
    add esp, 0x28
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_004510aa:
    push ecx
    mov ecx, edx
    cmp ebx, 0xa
    jne loc_004510bc
    test eax, eax
    jge loc_004510bc
    neg eax
    mov byte ptr [edx], 0x2d
    inc edx
loc_004510bc:
    call sub_00451060
    mov eax, ecx
    pop ecx
    ret
sub_004510c5:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    mov edx, eax
    mov eax, dword ptr [d_004a5e64]
    mov edx, dword ptr [eax + edx*4]
    mov eax, ebx
    call dword ptr [d_0045c634]
    push edx
    call sub_00457d0c
    cmp eax, 2
    jne loc_004510f8
    mov eax, ebx
    call dword ptr [d_0045c638]
    mov eax, 1
    pop edx
    pop ecx
    pop ebx
    ret
loc_004510f8:
    mov eax, ebx
    call dword ptr [d_0045c638]
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00451106:
    # jmp 0x451181
    .byte 0xe9
    .long loc_00451181 - . - 4
sub_0045110b:
    push edx
    cmp eax, 3
    jbe loc_00451115
    xor eax, eax
    pop edx
    ret
loc_00451115:
    mov edx, eax
    shl eax, 2
    sub eax, edx
    shl eax, 2
    add eax, edx
    add eax, eax
    add eax, offset d_0045ca54
    pop edx
    ret
ptr_0045112a:
    xor eax, eax
    ret
    call dword ptr [d_0045ca48]
    ret
sub_00451134:
    call dword ptr [d_0045ca4c]
    ret
sub_0045113b:
    call dword ptr [d_0045ca50]
    ret
    push ecx
    push esi
    test eax, eax
    je loc_00451158
    mov ecx, dword ptr [eax]
    mov esi, dword ptr [d_0045ca48]
    mov dword ptr [d_0045ca48], ecx
    mov dword ptr [eax], esi
loc_00451158:
    test edx, edx
    je loc_0045116b
    mov eax, dword ptr [edx]
    mov ecx, dword ptr [d_0045ca4c]
    mov dword ptr [d_0045ca4c], eax
    mov dword ptr [edx], ecx
loc_0045116b:
    test ebx, ebx
    je loc_0045117e
    mov eax, dword ptr [ebx]
    mov edx, dword ptr [d_0045ca50]
    mov dword ptr [d_0045ca50], eax
    mov dword ptr [ebx], edx
loc_0045117e:
    pop esi
    pop ecx
    ret
loc_00451181:
    xor eax, eax
    ret
ptr_00451184:
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x10
    mov ecx, dword ptr [ebp + 0x10]
    mov eax, dword ptr [ecx]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ecx + 0x14]
    mov edx, dword ptr [d_004a5e24]
    mov eax, dword ptr [eax]
    mov edi, dword ptr [ecx + 4]
    mov dword ptr [ebp - 4], eax
    test edx, edx
    jne loc_004511da
    mov eax, dword ptr [d_0045ca3c]
    add eax, 3
    and al, 0xfc
    sub esp, eax
    mov esi, esp
    mov ebx, dword ptr [d_0045ca3c]
    mov eax, esi
    call sub_00451940
    mov eax, esi
    call sub_0044f6a7
    test eax, eax
    jne loc_004511da
    mov edx, dword ptr [ebp - 4]
    push edx
    call sub_00457d4e
    jmp loc_0045122a
loc_004511da:
    mov ebx, dword ptr [ebp - 4]
    call dword ptr [d_0045c630]
    mov dword ptr [eax + 0xde], ebx
    mov ebx, dword ptr [ecx + 0xc]
    test ebx, ebx
    je loc_00451201
    mov eax, esp
    sub eax, dword ptr [ecx + 0xc]
    add eax, 0xfff
    xor al, al
    and ah, 0xf0
    mov ebx, eax
loc_00451201:
    call dword ptr [d_0045c630]
    mov dword ptr [eax], ebx
    mov eax, dword ptr [ecx + 0x10]
    push eax
    call sub_00457d06
    lea eax, [ebp - 0x10]
    call sub_0044bd3f
    call dword ptr [d_0045c670]
    mov eax, edi
    call dword ptr [ebp - 8]
    call sub_00451134
loc_0045122a:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
ptr_00451230:
    push esi
    push edi
    push es
    push ebp
    sub esp, 0x40
    mov esi, eax
    mov ebp, ebx
    mov edx, dword ptr [d_0045c62c]
    cmp edx, -1
    jne loc_0045125b
    call sub_0044f65b
    test eax, eax
    jne loc_00451256
    mov eax, edx
    jmp loc_004512fc
loc_00451256:
    call sub_0044f76b
loc_0045125b:
    mov edi, esp
    add ebp, 0xfff
    mov dword ptr [esp + 0x20], esi
    mov dword ptr [esp + 0x24], ecx
    call sub_00457d00
    mov dword ptr [esp + 0x28], eax
    mov eax, ds
    and ebp, 0xfffff000
    mov es, eax
    mov esi, offset d_0045b534
    mov ebx, 0x10
    mov dword ptr [esp + 0x2c], ebp
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsb byte ptr es:[edi], byte ptr [esi]
    call sub_00457d48
    lea edx, [esp + 8]
    call sub_0045002a
    mov eax, esp
    push eax
    push 0
    push 0
    push 0
    call sub_00457cfa
    mov dword ptr [esp + 0x30], eax
    lea eax, [esp + 0x38]
    mov dword ptr [esp + 0x34], eax
    lea eax, [esp + 0x3c]
    push eax
    push 0
    lea eax, [esp + 0x28]
    push eax
    push offset ptr_00451184
    push ebp
    push 0
    call sub_00457cf4
    mov dword ptr [esp + 0x38], eax
    test eax, eax
    jne loc_004512e2
    mov dword ptr [esp + 0x3c], 0xffffffff
    jmp loc_004512ee
loc_004512e2:
    push -1
    mov ebx, dword ptr [esp + 0x34]
    push ebx
    call sub_00457d3c
loc_004512ee:
    mov esi, dword ptr [esp + 0x30]
    push esi
    call sub_00457d4e
    mov eax, dword ptr [esp + 0x3c]
loc_004512fc:
    add esp, 0x40
    pop ebp
    pop es
    pop edi
    pop esi
    ret
ptr_00451304:
    push ecx
    push edx
    call dword ptr [d_0045c674]
    call sub_0044bd7d
    cmp dword ptr [d_004a5e24], 0
    jne loc_00451324
    mov eax, 1
    call sub_0044f6f4
loc_00451324:
    push 0
    call sub_00457cee
    pop edx
    pop ecx
    ret
sub_0045132e:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 4
    mov ebx, eax
    xor eax, eax
    mov al, byte ptr [ebx]
    xor edx, edx
    call sub_00451de9
    mov byte ptr [esp], al
    and eax, 0xff
    cmp eax, 0x72
    je loc_0045136a
    cmp eax, 0x77
    je loc_0045136a
    cmp eax, 0x61
    je loc_0045136a
    mov eax, 9
    call sub_0044c8c3
    xor eax, eax
    jmp loc_004513f7
loc_0045136a:
    xor ecx, ecx
    mov esi, edx
    mov cl, byte ptr [ebx + 1]
    or si, 3
    cmp ecx, 0x2b
    jne loc_0045139f
    xor eax, eax
    mov edx, esi
    mov al, byte ptr [ebx + 2]
    or si, 0x40
    cmp eax, 0x62
    je loc_0045139b
    cmp eax, 0x74
    je loc_004513d9
    cmp dword ptr [d_0045cc5d], 0x200
loc_00451399:
    jne loc_004513d9
loc_0045139b:
    mov edx, esi
    jmp loc_004513d9
loc_0045139f:
    mov eax, edx
    or al, 0x40
    cmp ecx, 0x62
    jne loc_004513bc
    mov edx, eax
    mov bl, byte ptr [ebx + 2]
    and ebx, 0xff
    cmp ebx, 0x2b
    jne loc_004513d9
    or al, 3
    jmp loc_004513d7
loc_004513bc:
    cmp ecx, 0x74
    jne loc_004513cb
    xor eax, eax
    mov al, byte ptr [ebx + 2]
    cmp eax, 0x2b
    jmp loc_00451399
loc_004513cb:
    cmp dword ptr [d_0045cc5d], 0x200
    jne loc_004513d9
loc_004513d7:
    mov edx, eax
loc_004513d9:
    xor eax, eax
    mov al, byte ptr [esp]
    cmp eax, 0x77
    jne loc_004513e8
    or dl, 2
    jmp loc_004513f5
loc_004513e8:
    cmp eax, 0x61
    jne loc_004513f2
    or dl, 0x82
    jmp loc_004513f5
loc_004513f2:
    or dl, 1
loc_004513f5:
    mov eax, edx
loc_004513f7:
    add esp, 4
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004513ff:
    push esi
    mov esi, eax
    mov al, dl
    mov edx, ecx
    mov ecx, dword ptr [esp + 8]
    and byte ptr [ecx + 0xc], 0xfc
    or dword ptr [ecx + 0xc], ebx
    and eax, 0xff
    call sub_00451de9
    and eax, 0xff
    cmp eax, 0x72
    jne loc_00451442
    xor eax, eax
    test bl, 2
    je loc_00451431
    mov eax, 2
loc_00451431:
    test bl, 0x40
    je loc_0045143b
    or ah, 2
    jmp loc_0045143e
loc_0045143b:
    or ah, 1
loc_0045143e:
    push 0
    jmp loc_0045146d
loc_00451442:
    test bl, 1
    setne al
    and eax, 0xff
    add eax, 0x21
    test bl, 0x80
    je loc_00451459
    or al, 0x10
    jmp loc_0045145b
loc_00451459:
    or al, 0x40
loc_0045145b:
    test bl, 0x40
    je loc_00451465
    or ah, 2
    jmp loc_00451468
loc_00451465:
    or ah, 1
loc_00451468:
    push 0x180
loc_0045146d:
    push edx
    push eax
    push esi
    call sub_004530bd
    add esp, 0x10
    mov dword ptr [ecx + 0x10], eax
    cmp dword ptr [ecx + 0x10], -1
    jne loc_0045148e
    mov eax, ecx
    call sub_00453374
    xor eax, eax
    pop esi
    ret 4
loc_0045148e:
    mov dword ptr [ecx + 4], 0
    mov dword ptr [ecx + 8], 0
    mov dword ptr [ecx + 0x14], 0
    test bl, 0x80
    je loc_004514b6
    mov ebx, 2
    mov eax, ecx
    xor edx, edx
    call sub_0044419a
loc_004514b6:
    mov eax, ecx
    call sub_00450d84
    mov eax, ecx
    pop esi
    ret 4
sub_004514c3:
    push ecx
    push esi
    push edi
    mov esi, eax
    mov ecx, ebx
    mov eax, edx
    call sub_0045132e
    mov ebx, eax
    test eax, eax
    je loc_004514f8
    xor eax, eax
    call sub_004532bc
    mov edi, eax
    test eax, eax
    je loc_004514f6
    push eax
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov eax, esi
    call sub_004513ff
    mov edi, eax
loc_004514f6:
    mov eax, edi
loc_004514f8:
    pop edi
    pop esi
    pop ecx
    ret
sub_004514fc:
    push ebx
    xor ebx, ebx
    call sub_004514c3
    pop ebx
    ret
sub_00451506:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    call dword ptr [d_0045c644]
    mov eax, dword ptr [d_004a606c]
loc_00451516:
    test eax, eax
    je loc_00451543
    mov edx, dword ptr [eax + 4]
    cmp ebx, edx
    jne loc_0045153f
    test byte ptr [edx + 0xc], 3
    je loc_00451533
    mov edx, 1
    mov eax, ebx
    call sub_004517f3
loc_00451533:
    call dword ptr [d_0045c648]
    mov eax, ebx
    pop edx
    pop ecx
    pop ebx
    ret
loc_0045153f:
    mov eax, dword ptr [eax]
    jmp loc_00451516
loc_00451543:
    mov edx, offset d_004a6064
loc_00451548:
    mov eax, dword ptr [edx]
    test eax, eax
    je loc_0045156a
    cmp ebx, dword ptr [eax + 4]
    jne loc_00451566
    mov ecx, dword ptr [eax]
    mov dword ptr [edx], ecx
    mov edx, dword ptr [d_004a606c]
    mov dword ptr [d_004a606c], eax
    mov dword ptr [eax], edx
    jmp loc_00451533
loc_00451566:
    mov edx, eax
    jmp loc_00451548
loc_0045156a:
    mov eax, 4
    call sub_0044c8c3
    call dword ptr [d_0045c648]
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
    push ecx
    push esi
    push edi
    push ebp
    mov edi, eax
    mov eax, edx
    call sub_0045132e
    mov ebp, eax
    test eax, eax
    je loc_004515e3
    mov esi, dword ptr [ebx + 0x10]
    mov eax, esi
    call dword ptr [d_0045c634]
    cmp dword ptr [d_0045c96c], 0
    je loc_004515af
    mov eax, esi
    call dword ptr [d_0045c96c]
loc_004515af:
    mov eax, ebx
    call sub_00451506
    mov ebx, eax
    test eax, eax
    je loc_004515d9
    and dword ptr [eax + 0xc], 0x4000
    push eax
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov ebx, ebp
    mov eax, edi
    xor ecx, ecx
    call sub_004513ff
    mov ebx, eax
loc_004515d9:
    mov eax, esi
    call dword ptr [d_0045c638]
    mov eax, ebx
loc_004515e3:
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_004515e8:
    push ebx
    push edx
    mov dl, byte ptr [eax + 0xc]
    and dl, 0xcf
    xor ebx, ebx
    mov byte ptr [eax + 0xc], dl
    xor edx, edx
    call sub_0044419a
    pop edx
    pop ebx
    ret
sub_004515ff:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, eax
    mov ecx, edx
    mov eax, dword ptr [ebx + 0x10]
    mov edx, esi
    call dword ptr [d_0045c634]
    mov ah, byte ptr [ebx + 0xc]
    mov edi, dword ptr [ebx + 0xc]
    and ah, 0xcf
    and edi, 0x30
    mov byte ptr [ebx + 0xc], ah
loc_00451624:
    dec ecx
    test ecx, ecx
    jle loc_00451648
    mov eax, ebx
    call sub_0045266a
    mov dword ptr [esp], eax
    cmp eax, -1
    je loc_00451648
    mov al, byte ptr [esp]
    mov byte ptr [edx], al
    and eax, 0xff
    inc edx
    cmp eax, 0xa
    jne loc_00451624
loc_00451648:
    cmp dword ptr [esp], -1
    jne loc_0045165c
    cmp edx, esi
    je loc_00451658
    test byte ptr [ebx + 0xc], 0x20
    je loc_0045165c
loc_00451658:
    xor esi, esi
    jmp loc_0045165f
loc_0045165c:
    mov byte ptr [edx], 0
loc_0045165f:
    mov ebp, dword ptr [ebx + 0xc]
    or ebp, edi
    mov eax, dword ptr [ebx + 0x10]
    mov dword ptr [ebx + 0xc], ebp
    call dword ptr [d_0045c638]
    mov eax, esi
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0045167a:
    push ebx
    mov bl, dl
loc_0045167d:
    cmp bl, byte ptr [eax]
    je loc_0045168c
    mov edx, eax
    mov bh, byte ptr [edx]
    inc eax
    test bh, bh
    jne loc_0045167d
    xor eax, eax
loc_0045168c:
    pop ebx
    ret
sub_0045168e:
    cmp eax, 0x61
    jl loc_0045169b
    cmp eax, 0x7a
    jg loc_0045169b
    sub eax, 0x20
loc_0045169b:
    ret
sub_0045169c:
    push ecx
    push esi
    mov esi, eax
    jmp loc_004516ad
loc_004516a2:
    mov cl, byte ptr [edx]
    test cl, cl
    je loc_004516b1
    inc edx
    dec ebx
    mov byte ptr [eax], cl
    inc eax
loc_004516ad:
    test ebx, ebx
    jne loc_004516a2
loc_004516b1:
    test ebx, ebx
    je loc_004516bc
    dec ebx
    mov byte ptr [eax], 0
    inc eax
    jmp loc_004516b1
loc_004516bc:
    mov eax, esi
    pop esi
    pop ecx
    ret
sub_004516c1:
    push ebx
    push ecx
    push edx
loc_004516c4:
    mov dl, byte ptr [eax]
    inc dl
    and edx, 0xff
    mov dl, byte ptr [edx + d_0045b608]
    and dl, 2
    and edx, 0xff
    je loc_004516e2
    inc eax
    jmp loc_004516c4
loc_004516e2:
    mov cl, byte ptr [eax]
    mov dl, cl
    cmp edx, 0x2b
    je loc_004516f0
    cmp edx, 0x2d
    jne loc_004516f1
loc_004516f0:
    inc eax
loc_004516f1:
    xor ebx, ebx
loc_004516f3:
    mov dl, byte ptr [eax]
    inc dl
    and edx, 0xff
    mov dl, byte ptr [edx + d_0045b608]
    and dl, 0x20
    and edx, 0xff
    je loc_0045171d
    imul ebx, ebx, 0xa
    xor edx, edx
    mov dl, byte ptr [eax]
    add ebx, edx
    inc eax
    sub ebx, 0x30
    jmp loc_004516f3
loc_0045171d:
    xor eax, eax
    mov al, cl
    cmp eax, 0x2d
    jne loc_00451728
    neg ebx
loc_00451728:
    mov eax, ebx
    pop edx
    pop ecx
    pop ebx
    ret
sub_0045172e:
    push ebx
    push edx
    mov ebx, eax
    call dword ptr [d_0045c644]
    mov eax, dword ptr [d_004a606c]
loc_0045173d:
    test eax, eax
    jne loc_0045174f
    call dword ptr [d_0045c648]
    mov eax, 0xffffffff
    pop edx
    pop ebx
    ret
loc_0045174f:
    cmp ebx, dword ptr [eax + 4]
    je loc_00451758
    mov eax, dword ptr [eax]
    jmp loc_0045173d
loc_00451758:
    call dword ptr [d_0045c648]
    mov edx, 1
    mov eax, ebx
    call sub_0045176d
    pop edx
    pop ebx
    ret
sub_0045176d:
    push ebx
    mov ebx, eax
    call sub_004517f3
    mov edx, eax
    mov eax, ebx
    call sub_00453374
    mov eax, edx
    pop ebx
    ret
sub_00451782:
    add eax, 0x30
    cmp eax, 0x39
    jle loc_0045178d
    add eax, 0x27
loc_0045178d:
    ret
sub_0045178e:
    push ebx
    push ecx
    push esi
    push edi
    mov ecx, eax
    mov edi, edx
    call sub_004533cc
    mov ebx, eax
    lea edx, [ecx + 4]
    mov byte ptr [ecx], 0x74
    mov esi, ecx
loc_004517a5:
    mov eax, ebx
    and eax, 0xf
    call sub_00451782
    mov byte ptr [edx], al
    dec edx
    shr ebx, 4
    cmp edx, esi
    jne loc_004517a5
    mov eax, edi
    sar eax, 4
    and eax, 0xf
    mov byte ptr [ecx + 5], 0x5f
    call sub_00451782
    mov byte ptr [ecx + 6], al
    mov eax, edi
    and eax, 0xf
    call sub_00451782
    mov byte ptr [ecx + 8], 0x2e
    mov byte ptr [ecx + 9], 0x74
    mov byte ptr [ecx + 0xa], 0x6d
    mov byte ptr [ecx + 0xb], 0x70
    mov byte ptr [ecx + 0xc], 0
    mov byte ptr [ecx + 7], al
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004517f3:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    mov ecx, eax
    mov ebp, edx
    cmp dword ptr [eax + 0xc], 0
    jne loc_0045180f
    mov eax, 0xffffffff
    jmp loc_00451895
loc_0045180f:
    mov ah, byte ptr [eax + 0xd]
    xor esi, esi
    test ah, 0x10
    je loc_00451822
    mov eax, ecx
    call sub_0044c7d4
    mov esi, eax
loc_00451822:
    mov eax, dword ptr [ecx + 0x10]
    call dword ptr [d_0045c634]
    mov eax, ecx
    call sub_0044428e
    cmp eax, -1
    je loc_00451845
    mov edx, eax
    mov edi, dword ptr [ecx + 0x10]
    xor ebx, ebx
    mov eax, edi
    call sub_00452c00
loc_00451845:
    test ebp, ebp
    je loc_00451853
    mov eax, dword ptr [ecx + 0x10]
    call sub_004533d6
    or esi, eax
loc_00451853:
    test byte ptr [ecx + 0xc], 8
    je loc_00451868
    mov eax, dword ptr [ecx + 8]
    call sub_00452b35
    mov dword ptr [ecx + 8], 0
loc_00451868:
    test byte ptr [ecx + 0xd], 8
    je loc_00451881
    xor edx, edx
    mov eax, esp
    mov dl, byte ptr [ecx + 0x19]
    call sub_0045178e
    mov eax, esp
    call sub_004443d8
loc_00451881:
    mov eax, dword ptr [ecx + 0x10]
    call dword ptr [d_0045c638]
    mov eax, dword ptr [ecx + 0x10]
    call dword ptr [d_0045c640]
    mov eax, esi
loc_00451895:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0045189e:
    push ecx
    push eax
loc_004518a0:
    mov cl, byte ptr [edx]
    mov byte ptr [eax], cl
    cmp cl, 0
    je loc_004518ba
    mov cl, byte ptr [edx + 1]
    add edx, 2
    mov byte ptr [eax + 1], cl
    add eax, 2
    cmp cl, 0
    jne loc_004518a0
loc_004518ba:
    pop eax
    pop ecx
    ret
ptr_004518bd:
    push ebx
    push ecx
    mov ebx, edx
    mov edx, dword ptr [eax]
    lea ecx, [edx + 1]
    mov dword ptr [eax], ecx
    mov byte ptr [edx], bl
    inc dword ptr [eax + 0x10]
    pop ecx
    pop ebx
    ret
sub_004518d0:
    push ebx
    push ecx
    push edx
    sub esp, 4
    lea eax, [esp + 0x1c]
    mov ecx, offset ptr_004518bd
    mov ebx, esp
    mov edx, dword ptr [esp + 0x18]
    mov dword ptr [esp], eax
    mov eax, dword ptr [esp + 0x14]
    call sub_00450148
    mov edx, dword ptr [esp + 0x14]
    mov byte ptr [edx + eax], 0
    add esp, 4
    pop edx
    pop ecx
    pop ebx
    ret
sub_00451900:
    call dword ptr [d_0045c630]
    add eax, 0xc
    ret
sub_0045190a:
    push edx
    call sub_00451900
    test eax, eax
    je loc_0045192c
    imul edx, dword ptr [eax], 0x41c64e6d
    add edx, 0x3039
    mov dword ptr [eax], edx
    mov eax, edx
    shr eax, 0x10
    and eax, 0x7fff
loc_0045192c:
    pop edx
    ret
sub_0045192e:
    push edx
    mov edx, eax
    call sub_00451900
    test eax, eax
    je loc_0045193c
    mov dword ptr [eax], edx
loc_0045193c:
    pop edx
    ret
    .byte 0x00,0x00
sub_00451940:
    push eax
    push ecx
    mov dh, dl
    shl edx, 8
    mov dl, dh
    shl edx, 8
    mov dl, dh
    mov ecx, ebx
    call sub_004459f0
    pop ecx
    pop eax
    ret
sub_00451958:
    push esi
    push edi
    push ebp
    sub esp, 0xc
    push eax
    push edx
    mov ebp, ecx
    mov eax, dword ptr [ecx + 0x10]
    call dword ptr [d_0045c634]
    test byte ptr [ecx + 0xc], 2
    jne loc_0045198f
    mov eax, 4
    call sub_0044c8c3
    or byte ptr [ecx + 0xc], 0x20
    mov eax, dword ptr [ecx + 0x10]
    call dword ptr [d_0045c638]
    xor eax, eax
    jmp loc_00451b37
loc_0045198f:
    imul ebx, edx
    test ebx, ebx
    jne loc_004519a6
    mov eax, dword ptr [ecx + 0x10]
    call dword ptr [d_0045c638]
    mov eax, ebx
    jmp loc_00451b37
loc_004519a6:
    cmp dword ptr [ecx + 8], 0
    jne loc_004519b3
    mov eax, ebp
    call sub_0044ed40
loc_004519b3:
    mov eax, dword ptr [ebp + 0xc]
    mov dl, byte ptr [ebp + 0xc]
    xor esi, esi
    and eax, 0x30
    and dl, 0xcf
    mov dword ptr [esp + 0xc], esi
    mov dword ptr [esp + 8], eax
    mov byte ptr [ebp + 0xc], dl
    test dl, 0x40
    je loc_00451ab0
    mov dword ptr [esp + 0x10], ebx
loc_004519d9:
    cmp dword ptr [ebp + 4], 0
    jne loc_00451a23
    mov eax, dword ptr [esp + 0x10]
    cmp eax, dword ptr [ebp + 0x14]
    jb loc_00451a23
    mov ebx, eax
    xor bl, al
    and bh, 0xfe
    test ebx, ebx
    jne loc_004519f5
    mov ebx, eax
loc_004519f5:
    mov edx, dword ptr [esp + 4]
    mov eax, dword ptr [ebp + 0x10]
    call sub_0044f98a
    mov edx, eax
    cmp eax, -1
    je loc_00451a1d
    test eax, eax
    # jne 0x451a84
    .byte 0x0f,0x85
    .long loc_00451a84 - . - 4
    call dword ptr [d_0045c630]
    mov dword ptr [eax + 4], 0xc
loc_00451a1d:
    or byte ptr [ebp + 0xc], 0x20
    jmp loc_00451a84
loc_00451a23:
    mov edx, dword ptr [ebp + 0x14]
    mov ebx, dword ptr [ebp + 4]
    mov ecx, dword ptr [esp + 0x10]
    sub edx, ebx
    cmp edx, ecx
    jbe loc_00451a35
    mov edx, ecx
loc_00451a35:
    mov esi, dword ptr [esp + 4]
    mov ecx, edx
    mov edi, dword ptr [ebp]
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
    mov edi, dword ptr [ebp + 4]
    add edi, edx
    mov bh, byte ptr [ebp + 0xd]
    mov dword ptr [ebp + 4], edi
    or bh, 0x10
    mov esi, dword ptr [ebp]
    mov byte ptr [ebp + 0xd], bh
    add esi, edx
    mov eax, dword ptr [ebp + 4]
    mov ebx, dword ptr [ebp + 0x14]
    mov dword ptr [ebp], esi
    cmp eax, ebx
    je loc_00451a7d
    test byte ptr [ebp + 0xd], 4
    je loc_00451a84
loc_00451a7d:
    mov eax, ebp
    call sub_0044c7d4
loc_00451a84:
    mov ecx, dword ptr [esp + 4]
    mov esi, dword ptr [esp + 0xc]
    mov edi, dword ptr [esp + 0x10]
    add ecx, edx
    add esi, edx
    mov dword ptr [esp + 4], ecx
    mov dword ptr [esp + 0xc], esi
    sub edi, edx
    mov dword ptr [esp + 0x10], edi
    je loc_00451b0b
    test byte ptr [ebp + 0xc], 0x20
    je loc_004519d9
    jmp loc_00451b0b
loc_00451ab0:
    mov cl, byte ptr [ebp + 0xd]
    xor edi, edi
    test cl, 4
    je loc_00451acb
    mov ch, cl
    and ch, 0xfa
    mov al, ch
    or al, 1
    mov edi, 1
    mov byte ptr [ebp + 0xd], al
loc_00451acb:
    mov edx, dword ptr [esp + 4]
    xor eax, eax
    mov al, byte ptr [edx]
    inc edx
    mov dword ptr [esp + 4], edx
    mov edx, ebp
    call sub_004527e3
    test byte ptr [ebp + 0xc], 0x30
    jne loc_00451af2
    mov ecx, dword ptr [esp + 0xc]
    inc ecx
    mov dword ptr [esp + 0xc], ecx
    cmp ebx, ecx
    jne loc_00451acb
loc_00451af2:
    test edi, edi
    je loc_00451b0b
    mov dh, byte ptr [ebp + 0xd]
    and dh, 0xfa
    mov bl, dh
    or bl, 4
    mov eax, ebp
    mov byte ptr [ebp + 0xd], bl
    call sub_0044c7d4
loc_00451b0b:
    test byte ptr [ebp + 0xc], 0x20
    je loc_00451b17
    xor edx, edx
    mov dword ptr [esp + 0xc], edx
loc_00451b17:
    mov eax, dword ptr [esp + 8]
    mov ecx, dword ptr [esp]
    mov ebx, dword ptr [ebp + 0xc]
    xor edx, edx
    or ebx, eax
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [ebp + 0xc], ebx
    call dword ptr [d_0045c638]
    mov eax, dword ptr [esp + 0xc]
    div ecx
loc_00451b37:
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    ret
sub_00451b3e:
    push ebx
    push edx
    sub esp, 4
    lea eax, [esp + 0x18]
    mov ebx, esp
    mov edx, dword ptr [esp + 0x14]
    mov dword ptr [esp], eax
    mov eax, dword ptr [esp + 0x10]
    call sub_0044edc8
    add esp, 4
    pop edx
    pop ebx
    ret
sub_00451b5f:
    push esi
    push edi
    push ebp
    sub esp, 8
    push eax
    push edx
    mov ebp, ecx
    mov eax, dword ptr [ecx + 0x10]
    call dword ptr [d_0045c634]
    test byte ptr [ecx + 0xc], 1
    jne loc_00451b9b
    mov eax, 4
    call sub_0044c8c3
    mov dh, byte ptr [ecx + 0xc]
    or dh, 0x20
    mov eax, dword ptr [ecx + 0x10]
    mov byte ptr [ecx + 0xc], dh
    call dword ptr [d_0045c638]
    xor eax, eax
    jmp loc_00451d57
loc_00451b9b:
    imul ebx, edx
    test ebx, ebx
    jne loc_00451bb2
    mov eax, dword ptr [ecx + 0x10]
    call dword ptr [d_0045c638]
    mov eax, ebx
    jmp loc_00451d57
loc_00451bb2:
    cmp dword ptr [ecx + 8], 0
    jne loc_00451bbf
    mov eax, ebp
    call sub_0044ed40
loc_00451bbf:
    xor esi, esi
    mov dl, byte ptr [ebp + 0xc]
    mov dword ptr [esp + 8], esi
    test dl, 0x40
    je loc_00451ccf
    mov dword ptr [esp + 0xc], ebx
loc_00451bd5:
    mov edx, dword ptr [ebp + 4]
    test edx, edx
    je loc_00451c30
    mov ebx, dword ptr [esp + 0xc]
    cmp edx, ebx
    jbe loc_00451be6
    mov edx, ebx
loc_00451be6:
    mov edi, dword ptr [esp + 4]
    mov ecx, edx
    mov esi, dword ptr [ebp]
    mov ebx, dword ptr [esp + 8]
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
    mov eax, dword ptr [esp + 0xc]
    mov ecx, dword ptr [ebp]
    lea esi, [edi + edx]
    add ebx, edx
    mov dword ptr [esp + 4], esi
    mov dword ptr [esp + 8], ebx
    mov edi, dword ptr [ebp + 4]
    add ecx, edx
    sub eax, edx
    sub edi, edx
    mov dword ptr [ebp], ecx
    mov dword ptr [esp + 0xc], eax
    mov dword ptr [ebp + 4], edi
loc_00451c30:
    mov ecx, dword ptr [esp + 0xc]
    test ecx, ecx
    je loc_00451d43
    cmp ecx, dword ptr [ebp + 0x14]
    jae loc_00451c4b
    test byte ptr [ebp + 0xd], 4
    # je 0x451cbb
    .byte 0x0f,0x84
    .long loc_00451cbb - . - 4
loc_00451c4b:
    mov dword ptr [ebp + 4], 0
    mov ebx, dword ptr [esp + 0xc]
    mov eax, dword ptr [ebp + 8]
    mov cl, byte ptr [ebp + 0xd]
    mov dword ptr [ebp], eax
    test cl, 4
    jne loc_00451c71
    cmp ebx, 0x200
    jbe loc_00451c71
    xor bl, bl
    and bh, 0xfe
loc_00451c71:
    mov edx, dword ptr [esp + 4]
    mov eax, dword ptr [ebp + 0x10]
    call sub_00453445
    cmp eax, -1
    jne loc_00451c8b
    or byte ptr [ebp + 0xc], 0x20
    jmp loc_00451d43
loc_00451c8b:
    test eax, eax
    jne loc_00451c98
loc_00451c8f:
    or byte ptr [ebp + 0xc], 0x10
    jmp loc_00451d43
loc_00451c98:
    mov edx, dword ptr [esp + 4]
    mov ebx, dword ptr [esp + 0xc]
    mov ecx, dword ptr [esp + 8]
    add edx, eax
    sub ebx, eax
    add ecx, eax
    mov dword ptr [esp + 4], edx
    mov dword ptr [esp + 0xc], ebx
    mov dword ptr [esp + 8], ecx
    jmp loc_00451bd5
loc_00451cbb:
    mov eax, ebp
    call sub_00452737
    test eax, eax
    # je 0x451d43
    .byte 0x0f,0x84
    .long loc_00451d43 - . - 4
    jmp loc_00451bd5
loc_00451ccf:
    mov edx, dword ptr [esp + 4]
    add ebx, edx
loc_00451cd5:
    cmp dword ptr [ebp + 4], 0
    jne loc_00451ce6
    mov eax, ebp
    call sub_00452737
    test eax, eax
    je loc_00451d43
loc_00451ce6:
    mov ecx, dword ptr [ebp + 4]
    mov eax, dword ptr [ebp]
    dec ecx
    lea esi, [eax + 1]
    mov dword ptr [ebp + 4], ecx
    mov dword ptr [ebp], esi
    mov al, byte ptr [eax]
    and eax, 0xff
    cmp eax, 0xd
    jne loc_00451d2a
    cmp dword ptr [ebp + 4], 0
    jne loc_00451d13
    mov eax, ebp
    call sub_00452737
    test eax, eax
    je loc_00451d43
loc_00451d13:
    mov edi, dword ptr [ebp + 4]
    mov eax, dword ptr [ebp]
    dec edi
    lea esi, [eax + 1]
    mov dword ptr [ebp + 4], edi
    mov dword ptr [ebp], esi
    mov al, byte ptr [eax]
    and eax, 0xff
loc_00451d2a:
    cmp eax, 0x1a
    je loc_00451c8f
    mov byte ptr [edx], al
    mov eax, dword ptr [esp + 8]
    inc eax
    inc edx
    mov dword ptr [esp + 8], eax
    cmp edx, ebx
    jne loc_00451cd5
loc_00451d43:
    mov eax, dword ptr [ebp + 0x10]
    mov esi, dword ptr [esp]
    call dword ptr [d_0045c638]
    xor edx, edx
    mov eax, dword ptr [esp + 8]
    div esi
loc_00451d57:
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    ret
sub_00451d5e:
    push ebx
    push ecx
    mov cl, dl
    xor ebx, ebx
loc_00451d64:
    cmp cl, byte ptr [eax]
    jne loc_00451d6a
    mov ebx, eax
loc_00451d6a:
    mov edx, eax
    mov ch, byte ptr [edx]
    inc eax
    test ch, ch
    jne loc_00451d64
    mov eax, ebx
    pop ecx
    pop ebx
    ret
sub_00451d78:
    push ecx
    push esi
    push edi
    mov esi, edx
    mov edi, eax
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
loc_00451d8b:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_00451da3
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_00451d8b
loc_00451da3:
    pop edi
    pop es
    mov eax, edi
    pop edi
    pop esi
    pop ecx
    ret
sub_00451dab:
    push ecx
    push edi
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
    mov eax, ecx
    pop edi
    pop ecx
    ret
sub_00451dc4:
    push ecx
    push esi
    push edi
    mov ecx, ebx
    mov esi, edx
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
    mov eax, edi
    pop edi
    pop esi
    pop ecx
    ret
sub_00451de9:
    cmp eax, 0x41
    jl loc_00451df6
    cmp eax, 0x5a
    jg loc_00451df6
    add eax, 0x20
loc_00451df6:
    ret
sub_00451df7:
    push ebx
    push ecx
    mov ebx, eax
loc_00451dfb:
    mov al, byte ptr [ebx]
    xor ecx, ecx
    mov ah, byte ptr [edx]
    mov cl, al
    cmp ecx, 0x41
    jl loc_00451e0f
    cmp ecx, 0x5a
    jg loc_00451e0f
    add al, 0x20
loc_00451e0f:
    xor ecx, ecx
    mov cl, ah
    cmp ecx, 0x41
    jl loc_00451e20
    cmp ecx, 0x5a
    jg loc_00451e20
    add ah, 0x20
loc_00451e20:
    cmp al, ah
    jne loc_00451e2c
    test ah, ah
    je loc_00451e2c
    inc ebx
    inc edx
    jmp loc_00451dfb
loc_00451e2c:
    xor edx, edx
    mov dl, al
    mov al, ah
    and eax, 0xff
    sub edx, eax
    mov eax, edx
    pop ecx
    pop ebx
    ret
sub_00451e3e:
    push ebx
    push edx
    sub esp, 0x24
    mov edx, eax
    mov eax, esp
    call sub_004534d4
    cmp eax, 0x1f4
    jl loc_00451e56
    inc dword ptr [esp]
loc_00451e56:
    mov eax, esp
    call sub_00453539
    mov ebx, eax
    test edx, edx
    je loc_00451e65
    mov dword ptr [edx], eax
loc_00451e65:
    mov eax, ebx
    add esp, 0x24
    pop edx
    pop ebx
    ret
sub_00451e6d:
    test eax, eax
    jge loc_00451e73
    neg eax
loc_00451e73:
    ret
sub_00451e74:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ecx, eax
    mov ebx, edx
    mov eax, dword ptr [edx + 0x10]
    call dword ptr [d_0045c634]
    cmp dword ptr [edx + 8], 0
    jne loc_00451e93
    mov eax, ebx
    call sub_0044ed40
loc_00451e93:
    mov ah, byte ptr [ebx + 0xd]
    xor edi, edi
    test ah, 4
    je loc_00451eaf
    mov dl, ah
    and dl, 0xf9
    mov dh, dl
    or dh, 2
    mov edi, 1
    mov byte ptr [ebx + 0xd], dh
loc_00451eaf:
    mov ebp, ecx
    xor esi, esi
loc_00451eb3:
    xor eax, eax
    mov al, byte ptr [ecx]
    test eax, eax
    je loc_00451eca
    mov edx, ebx
    inc ecx
    call sub_004527e3
    cmp eax, -1
    jne loc_00451eb3
    mov esi, eax
loc_00451eca:
    test edi, edi
    je loc_00451ee8
    mov al, byte ptr [ebx + 0xd]
    and al, 0xf9
    mov ah, al
    or ah, 4
    mov byte ptr [ebx + 0xd], ah
    test esi, esi
    jne loc_00451ee8
    mov eax, ebx
    call sub_0044c7d4
    mov esi, eax
loc_00451ee8:
    test esi, esi
    jne loc_00451ef0
    mov esi, ecx
    sub esi, ebp
loc_00451ef0:
    mov eax, dword ptr [ebx + 0x10]
    call dword ptr [d_0045c638]
    mov eax, esi
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sub_00451f10:
    push ebx
    push ecx
    mov ebx, eax
    cmp eax, edx
    je loc_00451f84
loc_00451f18:
    mov eax, dword ptr [ebx]
    mov ecx, dword ptr [edx]
    cmp ecx, eax
    jne loc_00451f89
    not ecx
    add eax, 0xfefefeff
    and eax, ecx
    and eax, 0x80808080
    jne loc_00451f84
    mov eax, dword ptr [ebx + 4]
    mov ecx, dword ptr [edx + 4]
    cmp ecx, eax
    jne loc_00451f89
    not ecx
    add eax, 0xfefefeff
    and eax, ecx
    and eax, 0x80808080
    jne loc_00451f84
    mov eax, dword ptr [ebx + 8]
    mov ecx, dword ptr [edx + 8]
    cmp ecx, eax
    jne loc_00451f89
    not ecx
    add eax, 0xfefefeff
    and eax, ecx
    and eax, 0x80808080
    jne loc_00451f84
    mov eax, dword ptr [ebx + 0xc]
    mov ecx, dword ptr [edx + 0xc]
    cmp ecx, eax
    jne loc_00451f89
    add ebx, 0x10
    add edx, 0x10
    not ecx
    add eax, 0xfefefeff
    and eax, ecx
    and eax, 0x80808080
    je loc_00451f18
loc_00451f84:
    sub eax, eax
    pop ecx
    pop ebx
    ret
loc_00451f89:
    cmp al, cl
    jne loc_00451faa
    cmp al, 0
    je loc_00451f84
    cmp ah, ch
    jne loc_00451faa
    cmp ah, 0
    je loc_00451f84
    shr eax, 0x10
    shr ecx, 0x10
    cmp al, cl
    jne loc_00451faa
    cmp al, 0
    je loc_00451f84
    cmp ah, ch
loc_00451faa:
    sbb eax, eax
    or al, 1
    pop ecx
    pop ebx
    ret
sub_00451fb1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, eax
    mov esi, dword ptr [d_0045cc74]
    test esi, esi
    je loc_00452009
    test eax, eax
    je loc_00452009
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
    mov edi, ecx
    jmp loc_00452003
loc_00451fdd:
    mov ebx, edi
    mov edx, ebp
    mov eax, ecx
    call sub_004528c8
    test eax, eax
    jne loc_00452000
    mov al, byte ptr [ecx + edi]
    and eax, 0xff
    cmp eax, 0x3d
    jne loc_00452000
    lea eax, [edi + 1]
    add eax, ecx
    jmp loc_0045200b
loc_00452000:
    add esi, 4
loc_00452003:
    mov ecx, dword ptr [esi]
    test ecx, ecx
    jne loc_00451fdd
loc_00452009:
    xor eax, eax
loc_0045200b:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00452012:
    push ecx
    push edx
    push eax
    call sub_00457ce8
    pop edx
    pop ecx
    ret
sub_0045201d:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 4
    mov esi, eax
    mov ebx, edx
    cmp byte ptr [edx], 0
    jne loc_00452035
loc_0045202e:
    mov eax, esi
    jmp loc_004520d2
loc_00452035:
    cmp byte ptr [edx + 1], 0
    jne loc_00452057
    mov dl, byte ptr [ebx]
loc_0045203d:
    mov al, byte ptr [esi]
    # cmp al, dl
    .byte 0x3a,0xc2
    je loc_00452055
    cmp al, 0
    je loc_00452053
    inc esi
    mov al, byte ptr [esi]
    # cmp al, dl
    .byte 0x3a,0xc2
    je loc_00452055
    inc esi
    cmp al, 0
    jne loc_0045203d
loc_00452053:
    # sub esi, esi
    .byte 0x2b,0xf6
loc_00452055:
    jmp loc_0045202e
loc_00452057:
    mov ecx, 0xffffffff
    mov edi, esi
    xor al, al
    push es
    jecxz loc_0045206c+2
    mov edx, ds
    mov es, edx
    repne scasb al, byte ptr es:[edi]
    jne loc_0045206c+2
    dec edi
loc_0045206c:
    test ax, 0xcf89
    pop es
    mov dword ptr [esp], edi
    mov edi, ebx
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
    mov ebp, ecx
loc_00452088:
    mov ecx, dword ptr [esp]
    sub ecx, esi
    cmp ecx, ebp
    jb loc_004520d0
    mov edi, esi
    mov al, byte ptr [ebx]
    push es
    jecxz loc_004520a1+2
    mov edx, ds
    mov es, edx
    repne scasb al, byte ptr es:[edi]
    jne loc_004520a1+2
    dec edi
loc_004520a1:
    test ax, 0xcf89
    pop es
    mov edx, edi
    test edi, edi
    je loc_004520d0
    mov ecx, ebp
    mov edi, ebx
    mov esi, edx
    push es
    mov eax, ds
    mov es, eax
    xor eax, eax
    repe cmpsb byte ptr [esi], byte ptr es:[edi]
    je loc_004520c2
    sbb eax, eax
    sbb eax, -1
loc_004520c2:
    pop es
    test eax, eax
    jne loc_004520cb
    mov eax, edx
    jmp loc_004520d2
loc_004520cb:
    lea esi, [edx + 1]
    jmp loc_00452088
loc_004520d0:
    xor eax, eax
loc_004520d2:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004520db:
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
    jne loc_00452101
    mov dword ptr [ebx], eax
    call sub_0044eeb5
    jmp loc_00452141
loc_00452101:
    test edi, edi
    jne loc_0045210a
    mov edi, 0xffffffe7
loc_0045210a:
    mov ebx, esp
    mov edx, edi
    mov eax, ecx
    call sub_0044ef49
    test eax, eax
    jne loc_00452131
    push ecx
    mov dword ptr [esi], 0xffffffff
    call sub_00457dd8
    mov eax, 2
    call sub_0044ee64
    jmp loc_00452141
loc_00452131:
    mov edx, esp
    mov dword ptr [esi], ecx
    mov eax, esi
    mov dword ptr [esi + 4], edi
    call sub_0044ef0e
    xor eax, eax
loc_00452141:
    add esp, 0x140
    pop edi
    pop esi
    pop ecx
    ret
sub_0045214b:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 0x140
    mov esi, eax
    mov eax, esp
    push eax
    mov edx, dword ptr [esi]
    push edx
    call sub_00457dd2
    test eax, eax
    jne loc_0045216d
loc_00452166:
    call sub_0044eeb5
    jmp loc_00452188
loc_0045216d:
    mov ebx, esp
    mov edx, dword ptr [esi + 4]
    mov eax, dword ptr [esi]
    call sub_0044ef49
    test eax, eax
    je loc_00452166
    mov edx, esp
    mov eax, esi
    call sub_0044ef0e
    xor eax, eax
loc_00452188:
    add esp, 0x140
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00452193:
    push ecx
    push edx
    mov edx, dword ptr [eax]
    cmp edx, -1
    je loc_004521ae
    push edx
    call sub_00457dd8
    test eax, eax
    jne loc_004521ae
    call sub_0044eeb5
    pop edx
    pop ecx
    ret
loc_004521ae:
    xor eax, eax
    pop edx
    pop ecx
    ret
sub_004521b3:
    push es
    push ds
    pop es
    movzx edx, cl
    shr ecx, 2
    je loc_004521c9
loc_004521be:
    mov eax, dword ptr [edi]
    xchg dword ptr [esi], eax
    stosd dword ptr es:[edi], eax
    add esi, 4
    dec ecx
    jne loc_004521be
loc_004521c9:
    and dl, 3
    je loc_004521d7
loc_004521ce:
    mov al, byte ptr [edi]
    xchg byte ptr [esi], al
    stosb byte ptr es:[edi], al
    inc esi
    dec edx
    jne loc_004521ce
loc_004521d7:
    pop es
    ret
sub_004521d9:
    push esi
    push edi
    push es
    push fs
    push gs
    .byte 0xc8,0x04,0x00,0x00,0x89,0xc7,0x89,0xd6,0x89,0x4d,0xfc,0xff,0x55,0xfc,0x85,0xc0
    .byte 0x7e,0x1e,0x89,0xda,0x89,0xf8,0xff,0x55,0xfc,0x85,0xc0,0x7e,0x0f,0x89,0xda,0x89
    .byte 0xf0,0xff,0x55,0xfc,0x85,0xc0,0x7f,0x1e
loc_00452208:
    mov eax, ebx
    jmp loc_00452228
loc_0045220c:
    mov eax, edi
    jmp loc_00452228
    mov edx, ebx
    mov eax, edi
    call dword ptr [ebp - 4]
    test eax, eax
    jge loc_0045220c
    mov edx, ebx
    mov eax, esi
    call dword ptr [ebp - 4]
    test eax, eax
    jg loc_00452208
    mov eax, esi
loc_00452228:
    leave
    pop gs
    pop fs
    pop es
    pop edi
    pop esi
    ret
sub_00452231:
    push esi
    push edi
    push es
    push fs
    push gs
    .byte 0xc8,0x44,0x01,0x00,0x50,0x52,0x53,0x09,0xd8,0x89,0x4d,0xf0,0xa8,0x03,0x74,0x07
    .byte 0xb8,0x02,0x00,0x00,0x00,0xeb,0x09
    cmp ebx, 4
    seta al
    movzx eax, al
    mov dword ptr [ebp - 0x1c], eax
    imul eax, dword ptr [ebp - 0x150], 3
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 0x150]
    add eax, eax
    mov dword ptr [ebp - 0x14], 0
    mov dword ptr [ebp - 0x38], eax
loc_00452277:
    cmp dword ptr [ebp - 0x14c], 1
    jbe loc_00452315
    cmp dword ptr [ebp - 0x14c], 0x10
    jae loc_00452344
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x14c]
    imul eax, dword ptr [ebp - 0x150]
    mov edx, dword ptr [ebp - 0x148]
    add edx, eax
    mov dword ptr [ebp - 0x34], edx
    jmp loc_0045230f
loc_004522b1:
    mov eax, dword ptr [ebp - 0x148]
    add eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x24], eax
    jmp loc_00452301
loc_004522bf:
    mov ebx, eax
    jmp loc_004522e3
loc_004522c3:
    cmp dword ptr [ebp - 0x1c], 0
    je loc_004522d8
    mov ecx, dword ptr [ebp - 0x150]
    mov esi, ebx
    call sub_004521b3
    jmp loc_004522e0
loc_004522d8:
    mov edx, dword ptr [edi]
    mov eax, dword ptr [ebx]
    mov dword ptr [ebx], edx
    mov dword ptr [edi], eax
loc_004522e0:
    sub ebx, dword ptr [ebp - 0x18]
loc_004522e3:
    cmp ebx, dword ptr [ebp - 0x148]
    jbe loc_004522fb
    mov edi, ebx
    sub edi, dword ptr [ebp - 0x18]
    mov edx, ebx
    mov eax, edi
    call dword ptr [ebp - 0x10]
    test eax, eax
    jg loc_004522c3
loc_004522fb:
    mov eax, dword ptr [ebp - 0x18]
    add dword ptr [ebp - 0x24], eax
loc_00452301:
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [ebp - 0x34]
    jb loc_004522bf
    mov eax, dword ptr [ebp - 0x38]
    sub dword ptr [ebp - 0x18], eax
loc_0045230f:
    cmp dword ptr [ebp - 0x18], 0
    jg loc_004522b1
loc_00452315:
    cmp dword ptr [ebp - 0x14], 0
    je loc_00452228
    dec dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp + eax*4 - 0x144]
    mov eax, dword ptr [ebp + eax*4 - 0xc4]
    mov dword ptr [ebp - 0x148], edx
    mov dword ptr [ebp - 0x14c], eax
    jmp loc_00452277
loc_00452344:
    mov eax, dword ptr [ebp - 0x14c]
    shr eax, 1
    imul eax, dword ptr [ebp - 0x150]
    mov edi, dword ptr [ebp - 0x148]
    add edi, eax
    cmp dword ptr [ebp - 0x14c], 0x1d
    jbe loc_00452404
    mov esi, dword ptr [ebp - 0x14c]
    dec esi
    imul esi, dword ptr [ebp - 0x150]
    mov eax, dword ptr [ebp - 0x148]
    mov dword ptr [ebp - 0x30], eax
    add esi, eax
    cmp dword ptr [ebp - 0x14c], 0x2a
    jbe loc_004523f3
    mov eax, dword ptr [ebp - 0x14c]
    mov edx, dword ptr [ebp - 0x150]
    shr eax, 3
    imul edx, eax
    mov ebx, dword ptr [ebp - 0x148]
    mov dword ptr [ebp - 0x20], edx
    lea eax, [edx + edx]
    mov ecx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x148]
    mov dword ptr [ebp - 0x40], eax
    add ebx, eax
    mov eax, dword ptr [ebp - 0x148]
    add edx, dword ptr [ebp - 0x20]
    call sub_004521d9
    mov ebx, dword ptr [ebp - 0x20]
    mov ecx, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0x30], eax
    mov edx, edi
    mov eax, edi
    add ebx, edi
    sub eax, dword ptr [ebp - 0x20]
    call sub_004521d9
    mov ecx, dword ptr [ebp - 0x10]
    mov edi, eax
    mov edx, esi
    mov ebx, esi
    mov eax, esi
    sub edx, dword ptr [ebp - 0x20]
    sub eax, dword ptr [ebp - 0x40]
    call sub_004521d9
    mov esi, eax
loc_004523f3:
    mov ecx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x30]
    mov ebx, esi
    mov edx, edi
    call sub_004521d9
    mov edi, eax
loc_00452404:
    cmp dword ptr [ebp - 0x1c], 0
    je loc_00452434
    mov eax, dword ptr [ebp - 0x148]
    mov dword ptr [ebp - 0x28], eax
    je loc_00452424
    mov ecx, dword ptr [ebp - 0x150]
    mov esi, eax
    call sub_004521b3
    jmp loc_0045243f
loc_00452424:
    mov ebx, dword ptr [ebp - 0x148]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [edi]
    mov dword ptr [ebx], eax
    mov dword ptr [edi], edx
    jmp loc_0045243f
loc_00452434:
    lea eax, [ebp - 0x44]
    mov dword ptr [ebp - 0x28], eax
    mov eax, dword ptr [edi]
    mov dword ptr [ebp - 0x44], eax
loc_0045243f:
    mov eax, dword ptr [ebp - 0x14c]
    dec eax
    imul eax, dword ptr [ebp - 0x150]
    mov ebx, dword ptr [ebp - 0x148]
    mov dword ptr [ebp - 0xc], ebx
    lea edx, [ebx + eax]
    mov dword ptr [ebp - 8], edx
    mov dword ptr [ebp - 4], edx
loc_0045245f:
    cmp ebx, dword ptr [ebp - 4]
    ja loc_004524a9
    mov edx, dword ptr [ebp - 0x28]
    mov eax, ebx
    call dword ptr [ebp - 0x10]
    test eax, eax
    jg loc_004524a9
    jne loc_004524a1
    cmp dword ptr [ebp - 0x1c], 0
    je loc_0045248a
    mov ecx, dword ptr [ebp - 0x150]
    mov esi, dword ptr [ebp - 0xc]
    mov edi, ebx
    call sub_004521b3
    jmp loc_00452498
loc_0045248a:
    mov edx, dword ptr [ebp - 0xc]
    mov ecx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebx]
    mov edx, dword ptr [edx]
    mov dword ptr [ecx], eax
    mov dword ptr [ebx], edx
loc_00452498:
    mov eax, dword ptr [ebp - 0x150]
    add dword ptr [ebp - 0xc], eax
loc_004524a1:
    add ebx, dword ptr [ebp - 0x150]
    jmp loc_0045245f
loc_004524a9:
    cmp ebx, dword ptr [ebp - 4]
    ja loc_004524fe
    mov edx, dword ptr [ebp - 0x28]
    mov eax, dword ptr [ebp - 4]
    call dword ptr [ebp - 0x10]
    test eax, eax
    jl loc_004524fe
    jne loc_004524f3
    cmp dword ptr [ebp - 0x1c], 0
    je loc_004524d6
    mov ecx, dword ptr [ebp - 0x150]
    mov edi, dword ptr [ebp - 8]
    mov esi, dword ptr [ebp - 4]
    call sub_004521b3
    jmp loc_004524ea
loc_004524d6:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov ecx, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    mov edx, dword ptr [edx]
    mov dword ptr [ecx], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], edx
loc_004524ea:
    mov eax, dword ptr [ebp - 0x150]
    sub dword ptr [ebp - 8], eax
loc_004524f3:
    mov eax, dword ptr [ebp - 0x150]
    sub dword ptr [ebp - 4], eax
    jmp loc_004524a9
loc_004524fe:
    cmp ebx, dword ptr [ebp - 4]
    ja loc_0045253d
    cmp dword ptr [ebp - 0x1c], 0
    je loc_0045251b
    mov ecx, dword ptr [ebp - 0x150]
    mov edi, dword ptr [ebp - 4]
    mov esi, ebx
    call sub_004521b3
    jmp loc_00452529
loc_0045251b:
    mov edx, dword ptr [ebp - 4]
    mov edx, dword ptr [edx]
    mov eax, dword ptr [ebx]
    mov dword ptr [ebx], edx
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx], eax
loc_00452529:
    mov eax, dword ptr [ebp - 0x150]
    add ebx, dword ptr [ebp - 0x150]
    sub dword ptr [ebp - 4], eax
    jmp loc_0045245f
loc_0045253d:
    mov eax, dword ptr [ebp - 0x14c]
    imul eax, dword ptr [ebp - 0x150]
    mov edx, dword ptr [ebp - 0x148]
    mov ecx, ebx
    add edx, eax
    mov eax, dword ptr [ebp - 0xc]
    sub ecx, dword ptr [ebp - 0xc]
    sub eax, dword ptr [ebp - 0x148]
    mov dword ptr [ebp - 0x2c], edx
    cmp eax, ecx
    jge loc_00452569
    mov ecx, eax
loc_00452569:
    test ecx, ecx
    jbe loc_0045259c
    mov edi, ebx
    mov esi, dword ptr [ebp - 0x148]
    sub edi, ecx
    push es
    push ds
    pop es
    movzx edx, cl
    shr ecx, 2
    je loc_0045258d
loc_00452582:
    mov eax, dword ptr [edi]
    xchg dword ptr [esi], eax
    stosd dword ptr es:[edi], eax
    add esi, 4
    dec ecx
    jne loc_00452582
loc_0045258d:
    and dl, 3
    je loc_0045259b
loc_00452592:
    mov al, byte ptr [edi]
    xchg byte ptr [esi], al
    stosb byte ptr es:[edi], al
    inc esi
    dec edx
    jne loc_00452592
loc_0045259b:
    pop es
loc_0045259c:
    mov eax, dword ptr [ebp - 0x2c]
    mov ecx, dword ptr [ebp - 8]
    sub eax, dword ptr [ebp - 8]
    sub ecx, dword ptr [ebp - 4]
    sub eax, dword ptr [ebp - 0x150]
    cmp ecx, eax
    jb loc_004525b4
    mov ecx, eax
loc_004525b4:
    test ecx, ecx
    jbe loc_004525e4
    mov edi, dword ptr [ebp - 0x2c]
    mov esi, ebx
    sub edi, ecx
    push es
    push ds
    pop es
    movzx edx, cl
    shr ecx, 2
    je loc_004525d5
loc_004525ca:
    mov eax, dword ptr [edi]
    xchg dword ptr [esi], eax
    stosd dword ptr es:[edi], eax
    add esi, 4
    dec ecx
    jne loc_004525ca
loc_004525d5:
    and dl, 3
    je loc_004525e3
loc_004525da:
    mov al, byte ptr [edi]
    xchg byte ptr [esi], al
    stosb byte ptr es:[edi], al
    inc esi
    dec edx
    jne loc_004525da
loc_004525e3:
    pop es
loc_004525e4:
    mov esi, dword ptr [ebp - 8]
    mov ecx, dword ptr [ebp - 0x2c]
    mov edi, ebx
    mov ebx, dword ptr [ebp - 0x14]
    sub edi, dword ptr [ebp - 0xc]
    sub esi, dword ptr [ebp - 4]
    shl ebx, 2
    sub ecx, esi
    cmp esi, edi
    jb loc_00452622
    mov eax, esi
    xor edx, edx
    div dword ptr [ebp - 0x150]
    xor edx, edx
    mov dword ptr [ebx + ebp - 0xc4], eax
    mov eax, edi
    div dword ptr [ebp - 0x150]
    mov dword ptr [ebx + ebp - 0x144], ecx
    jmp loc_0045265c
loc_00452622:
    cmp edi, dword ptr [ebp - 0x150]
    jbe loc_00452315
    mov eax, dword ptr [ebp - 0x148]
    xor edx, edx
    mov dword ptr [ebx + ebp - 0x144], eax
    mov eax, edi
    div dword ptr [ebp - 0x150]
    xor edx, edx
    mov dword ptr [ebx + ebp - 0xc4], eax
    mov eax, esi
    div dword ptr [ebp - 0x150]
    mov dword ptr [ebp - 0x148], ecx
loc_0045265c:
    mov dword ptr [ebp - 0x14c], eax
    inc dword ptr [ebp - 0x14]
    jmp loc_00452277
sub_0045266a:
    push ebx
    push ecx
    push edx
    push esi
    mov edx, eax
    mov eax, dword ptr [eax + 0x10]
    call dword ptr [d_0045c634]
    test byte ptr [edx + 0xc], 1
    jne loc_00452694
    mov eax, 4
    call sub_0044c8c3
    or byte ptr [edx + 0xc], 0x20
    mov ebx, 0xffffffff
    jmp loc_004526b7
loc_00452694:
    mov ebx, dword ptr [edx + 4]
    dec ebx
    mov dword ptr [edx + 4], ebx
    test ebx, ebx
    jge loc_004526aa
    mov eax, edx
    call sub_00452708
    mov ebx, eax
    jmp loc_004526b7
loc_004526aa:
    mov eax, dword ptr [edx]
    mov bl, byte ptr [eax]
    inc eax
    and ebx, 0xff
    mov dword ptr [edx], eax
loc_004526b7:
    test byte ptr [edx + 0xc], 0x40
    jne loc_004526f8
    cmp ebx, 0xd
    jne loc_004526e5
    mov esi, dword ptr [edx + 4]
    dec esi
    mov dword ptr [edx + 4], esi
    test esi, esi
    jge loc_004526d8
    mov eax, edx
    call sub_00452708
    mov ebx, eax
    jmp loc_004526e5
loc_004526d8:
    mov eax, dword ptr [edx]
    mov bl, byte ptr [eax]
    inc eax
    and ebx, 0xff
    mov dword ptr [edx], eax
loc_004526e5:
    cmp ebx, 0x1a
    jne loc_004526f8
    mov ch, byte ptr [edx + 0xc]
    or ch, 0x10
    mov ebx, 0xffffffff
    mov byte ptr [edx + 0xc], ch
loc_004526f8:
    mov eax, dword ptr [edx + 0x10]
    call dword ptr [d_0045c638]
    mov eax, ebx
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00452708:
    push ebx
    push ecx
    push edx
    mov edx, eax
    call sub_00452737
    test eax, eax
    jne loc_0045271f
    mov eax, 0xffffffff
    pop edx
    pop ecx
    pop ebx
    ret
loc_0045271f:
    mov ebx, dword ptr [edx + 4]
    mov ecx, dword ptr [edx]
    dec ebx
    inc ecx
    mov dword ptr [edx + 4], ebx
    mov dword ptr [edx], ecx
    mov al, byte ptr [ecx - 1]
    and eax, 0xff
    pop edx
    pop ecx
    pop ebx
    ret
sub_00452737:
    push ebx
    push ecx
    push edx
    push esi
    mov ecx, eax
    cmp dword ptr [eax + 8], 0
    jne loc_00452748
    call sub_0044ed40
loc_00452748:
    mov ah, byte ptr [ecx + 0xd]
    test ah, 0x20
    je loc_0045275f
    test ah, 6
    je loc_0045275f
    mov eax, 0x2000
    call sub_00453693
loc_0045275f:
    mov edx, dword ptr [ecx + 8]
    mov dword ptr [ecx], edx
    mov dh, byte ptr [ecx + 0xc]
    mov eax, dword ptr [ecx + 0xc]
    and dh, 0xfb
    and eax, 0x2400
    mov byte ptr [ecx + 0xc], dh
    cmp eax, 0x2400
    jne loc_0045279f
    mov ebx, dword ptr [ecx + 0x10]
    test ebx, ebx
    jne loc_0045279f
    mov dword ptr [ecx + 4], ebx
    call sub_004536ce
    mov edx, eax
    cmp eax, -1
    je loc_004527bc
    mov eax, dword ptr [ecx]
    mov byte ptr [eax], dl
    mov dword ptr [ecx + 4], 1
    jmp loc_004527bc
loc_0045279f:
    test byte ptr [ecx + 0xd], 4
    je loc_004527ac
    mov ebx, 1
    jmp loc_004527af
loc_004527ac:
    mov ebx, dword ptr [ecx + 0x14]
loc_004527af:
    mov edx, dword ptr [ecx]
    mov eax, dword ptr [ecx + 0x10]
    call sub_00453445
    mov dword ptr [ecx + 4], eax
loc_004527bc:
    mov esi, dword ptr [ecx + 4]
    test esi, esi
    jg loc_004527db
    jne loc_004527cb
    or byte ptr [ecx + 0xc], 0x10
    jmp loc_004527db
loc_004527cb:
    mov bh, byte ptr [ecx + 0xc]
    mov dword ptr [ecx + 4], 0
    or bh, 0x20
    mov byte ptr [ecx + 0xc], bh
loc_004527db:
    mov eax, dword ptr [ecx + 4]
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004527e3:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebx, eax
    mov eax, dword ptr [edx + 0x10]
    call dword ptr [d_0045c634]
    test byte ptr [edx + 0xc], 2
    jne loc_0045281a
    mov eax, 4
    call sub_0044c8c3
    or byte ptr [edx + 0xc], 0x20
loc_00452807:
    mov eax, dword ptr [edx + 0x10]
    call dword ptr [d_0045c638]
    mov eax, 0xffffffff
    jmp loc_004528a0
loc_0045281a:
    cmp dword ptr [edx + 8], 0
    jne loc_00452827
    mov eax, edx
    call sub_0044ed40
loc_00452827:
    mov ecx, 0x400
    cmp ebx, 0xa
    jne loc_00452864
    mov al, byte ptr [edx + 0xc]
    mov ecx, 0x600
    test al, 0x40
    jne loc_00452864
    or byte ptr [edx + 0xd], 0x10
    mov eax, dword ptr [edx]
    mov byte ptr [eax], 0xd
    mov esi, dword ptr [edx]
    inc esi
    mov edi, dword ptr [edx + 4]
    mov dword ptr [edx], esi
    inc edi
    mov ebp, dword ptr [edx + 0x14]
    mov dword ptr [edx + 4], edi
    cmp edi, ebp
    jne loc_00452864
    mov eax, edx
    call sub_0044c7d4
    test eax, eax
    jne loc_00452807
loc_00452864:
    or byte ptr [edx + 0xd], 0x10
    mov eax, dword ptr [edx]
    mov byte ptr [eax], bl
    mov eax, dword ptr [edx]
    inc eax
    mov esi, dword ptr [edx + 4]
    mov dword ptr [edx], eax
    inc esi
    mov edi, dword ptr [edx + 0xc]
    mov dword ptr [edx + 4], esi
    test ecx, edi
    jne loc_00452884
    cmp esi, dword ptr [edx + 0x14]
    jne loc_00452893
loc_00452884:
    mov eax, edx
    call sub_0044c7d4
    test eax, eax
    jne loc_00452807
loc_00452893:
    mov eax, dword ptr [edx + 0x10]
    call dword ptr [d_0045c638]
    xor eax, eax
    mov al, bl
loc_004528a0:
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004528a6:
    push ebx
    push edx
    sub esp, 4
    lea eax, [esp + 0x14]
    mov ebx, esp
    mov edx, dword ptr [esp + 0x10]
    mov dword ptr [esp], eax
    mov eax, offset d_0045ca6e
    call sub_0044edc8
    add esp, 4
    pop edx
    pop ebx
    ret
sub_004528c8:
    push ecx
    push esi
    mov ecx, eax
    mov esi, ebx
loc_004528ce:
    test esi, esi
    jne loc_004528d7
loc_004528d2:
    xor eax, eax
    pop esi
    pop ecx
    ret
loc_004528d7:
    mov al, byte ptr [ecx]
    xor ebx, ebx
    mov ah, byte ptr [edx]
    mov bl, al
    cmp ebx, 0x41
    jl loc_004528eb
    cmp ebx, 0x5a
    jg loc_004528eb
    add al, 0x20
loc_004528eb:
    xor ebx, ebx
    mov bl, ah
    cmp ebx, 0x41
    jl loc_004528fc
    cmp ebx, 0x5a
    jg loc_004528fc
    add ah, 0x20
loc_004528fc:
    cmp al, ah
    je loc_00452912
    xor edx, edx
    mov dl, al
    mov al, ah
    and eax, 0xff
    sub edx, eax
    mov eax, edx
    pop esi
    pop ecx
    ret
loc_00452912:
    test ah, ah
    je loc_004528d2
    inc ecx
    inc edx
    dec esi
    jmp loc_004528ce
ptr_0045291b:
    push ebx
    push ecx
    mov ebx, edx
    mov edx, dword ptr [eax]
    lea ecx, [edx + 1]
    mov dword ptr [eax], ecx
    mov byte ptr [edx], bl
    inc dword ptr [eax + 0x10]
    pop ecx
    pop ebx
    ret
sub_0045292e:
    push ecx
    push esi
    mov esi, eax
    mov ecx, offset ptr_0045291b
    call sub_00450148
    mov byte ptr [esi + eax], 0
    pop esi
    pop ecx
    ret
sub_00452943:
    test eax, eax
    # jne 0x44c7d4
    .byte 0x0f,0x85
    .long sub_0044c7d4 - . - 4
    call sub_0045368e
    xor eax, eax
    ret
    .byte 0x53,0x51,0x52,0x55,0x89,0xe5,0x83,0xec,0x04,0x89,0xc2,0xb8
    .long d_0045b540
    .byte 0xe8,0x49,0xf6,0xff,0xff,0x89,0xc3,0x85,0xd2,0x75,0x07,0xb8,0x01,0x00,0x00,0x00
    .byte 0xeb,0x37,0xb1,0x01,0x85,0xc0,0x75,0x05,0xbb
    .long d_0045b548
    .byte 0x6a,0x00,0x52,0x31,0xd2,0x8d,0x45,0xfc,0x88,0xca,0xe8,0x61,0x0d,0x00,0x00,0x50
    .byte 0x84,0xc9,0x74,0x07,0xb8
    .long d_0045b55c
    .byte 0xeb,0x05,0xb8
    .long d_0045b560
    .byte 0x50,0x53,0x6a,0x00,0xe8,0x78,0x10,0x00,0x00,0x83,0xc4,0x18,0x89,0xec,0x5d,0x5a
    .byte 0x59,0x5b,0xc3,0x51,0x52,0x50,0xe8,0x27,0x53,0x00,0x00,0x85,0xc0,0x75,0x08,0xe8
    .byte 0xf1,0xc4,0xff,0xff,0x5a,0x59,0xc3,0x31,0xc0,0x5a,0x59,0xc3
sub_004529cc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push es
    push fs
    push gs
    push ebp
    sub esp, 4
    mov esi, eax
    test eax, eax
    je loc_004529e5
    cmp eax, -0x2c
    jbe loc_004529ec
loc_004529e5:
    xor eax, eax
    jmp loc_00452aac
loc_004529ec:
    mov ebp, offset d_0045cc68
    lea edi, [esi + 3]
    xor ah, ah
    xor edx, edx
    mov byte ptr [esp], ah
    and di, 0xfffc
    call dword ptr [d_0045c64c]
loc_00452a05:
    mov eax, edi
    cmp edi, 0xc
    jae loc_00452a11
    mov eax, 0xc
loc_00452a11:
    cmp eax, dword ptr [d_0045cc70]
    jbe loc_00452a31
    mov ecx, dword ptr [d_0045cc6c]
    test ecx, ecx
    jne loc_00452a69
loc_00452a23:
    mov dword ptr [d_0045cc70], ecx
    mov ecx, dword ptr [d_0045cc68]
    jmp loc_00452a69
loc_00452a31:
    xor ecx, ecx
    jmp loc_00452a23
loc_00452a35:
    mov edx, ds
    mov eax, ebp
    mov dword ptr [d_0045cc6c], ecx
    and edx, 0xffff
    mov ebx, ecx
    mov eax, esi
    call sub_00453a38
    mov edx, eax
    test eax, eax
    jne loc_00452a9c
    mov ebx, dword ptr [d_0045cc70]
    mov eax, dword ptr [ecx + 0x14]
    cmp eax, ebx
    jbe loc_00452a66
    mov dword ptr [d_0045cc70], eax
loc_00452a66:
    mov ecx, dword ptr [ecx + 8]
loc_00452a69:
    test ecx, ecx
    jne loc_00452a35
    cmp byte ptr [esp], 0
    jne loc_00452a7e
    mov eax, esi
    call sub_00453cef
    test eax, eax
    jne loc_00452a93
loc_00452a7e:
    mov eax, esi
    call sub_00453d4a
    test eax, eax
    je loc_00452a9c
    xor cl, cl
    mov byte ptr [esp], cl
    jmp loc_00452a05
loc_00452a93:
    mov byte ptr [esp], 1
    jmp loc_00452a05
loc_00452a9c:
    xor ch, ch
    mov byte ptr [d_004a6070], ch
    call dword ptr [d_0045c654]
    mov eax, edx
loc_00452aac:
    add esp, 4
    pop ebp
    pop gs
    pop fs
    pop es
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00452abb:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebx, eax
    mov ecx, edx
    test eax, eax
    jne loc_00452ad1
    mov eax, edx
    call sub_004529cc
    jmp loc_00452b2f
loc_00452ad1:
    test edx, edx
    jne loc_00452ade
    call sub_00452b35
    xor eax, eax
    jmp loc_00452b2f
loc_00452ade:
    call sub_00453d4d
    mov esi, eax
    mov eax, ebx
    call sub_00453d56
    mov ebp, eax
    test eax, eax
    jne loc_00452b2d
    mov eax, ecx
    call sub_004529cc
    mov ebp, eax
    test eax, eax
    je loc_00452b24
    mov ecx, esi
    mov edi, eax
    mov esi, ebx
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
    mov eax, ebx
    call sub_00452b35
    jmp loc_00452b2d
loc_00452b24:
    mov edx, esi
    mov eax, ebx
    call sub_00453d56
loc_00452b2d:
    mov eax, ebp
loc_00452b2f:
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00452b35:
    push ebx
    push ecx
    push edx
    push esi
    push ebp
    mov esi, eax
    test eax, eax
    # je 0x452bbd
    .byte 0x0f,0x84
    .long loc_00452bbd - . - 4
    call dword ptr [d_0045c64c]
    mov ecx, dword ptr [d_004a6068]
    test ecx, ecx
    je loc_00452b5d
    cmp ecx, esi
    ja loc_00452b5d
    cmp esi, dword ptr [ecx + 8]
    jb loc_00452b77
loc_00452b5d:
    mov ecx, dword ptr [d_0045cc68]
    jmp loc_00452b70
loc_00452b65:
    cmp ecx, esi
    ja loc_00452b6d
    cmp esi, ebx
    jb loc_00452b77
loc_00452b6d:
    mov ecx, dword ptr [ecx + 8]
loc_00452b70:
    mov ebx, dword ptr [ecx + 8]
    test ebx, ebx
    jne loc_00452b65
loc_00452b77:
    mov eax, offset d_0045cc68
    mov edx, ds
    and edx, 0xffff
    mov ebx, ecx
    mov eax, esi
    call sub_00453ae0
    mov ebp, dword ptr [d_0045cc6c]
    mov dword ptr [d_004a6068], ecx
    cmp ecx, ebp
    jae loc_00452baf
    mov eax, dword ptr [d_0045cc70]
    mov edx, dword ptr [ecx + 0x14]
    cmp edx, eax
    jbe loc_00452baf
    mov dword ptr [d_0045cc70], edx
loc_00452baf:
    xor ah, ah
    mov byte ptr [d_004a6070], ah
    call dword ptr [d_0045c654]
loc_00452bbd:
    pop ebp
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00452bc3:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    mov edx, eax
    mov eax, dword ptr [d_004a5e64]
    mov edx, dword ptr [eax + edx*4]
    mov eax, ebx
    call dword ptr [d_0045c634]
    push 1
    push 0
    push 0
    push edx
    call sub_00457d18
    mov edx, eax
    cmp eax, -1
    jne loc_00452bf2
    call sub_0044eeb5
loc_00452bf2:
    mov eax, ebx
    call dword ptr [d_0045c638]
    mov eax, edx
    pop edx
    pop ecx
    pop ebx
    ret
sub_00452c00:
    push ecx
    push esi
    mov esi, eax
    mov ecx, edx
    mov edx, dword ptr [d_004a5e64]
    mov edx, dword ptr [edx + eax*4]
    call dword ptr [d_0045c634]
    push ebx
    push 0
    push ecx
    push edx
    call sub_00457d18
    mov edx, eax
    mov ebx, eax
    mov eax, esi
    call dword ptr [d_0045c638]
    cmp edx, -1
    jne loc_00452c35
    call sub_0044eeb5
loc_00452c35:
    mov eax, ebx
    pop esi
    pop ecx
    ret
sub_00452c3a:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x10
    push eax
    push edx
    push ebx
    mov edx, dword ptr [d_004a5e64]
    mov eax, dword ptr [edx + eax*4]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 0x14]
    call sub_00450ddd
    mov edx, eax
    mov ebx, eax
    test eax, eax
    jne loc_00452c76
    mov eax, 4
loc_00452c67:
    call sub_0044c8c3
    mov eax, 0xffffffff
    jmp loc_00452eeb
loc_00452c76:
    test al, 2
    jne loc_00452c81
    mov eax, 6
    jmp loc_00452c67
loc_00452c81:
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045c634]
    test dl, 0x80
    je loc_00452cb6
    push 2
    push 0
    push 0
    mov edx, dword ptr [ebp - 4]
    push edx
    call sub_00457d18
    cmp eax, -1
    jne loc_00452cb6
loc_00452ca3:
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045c638]
    call sub_0044eeb5
    jmp loc_00452eeb
loc_00452cb6:
    test bl, 0x40
    je loc_00452d1e
    cmp dword ptr [d_0045c994], 0
    je loc_00452ce2
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045c968]
    test eax, eax
    je loc_00452ce2
    mov ebx, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x18]
    call dword ptr [d_0045c994]
    mov dword ptr [ebp - 8], eax
    jmp loc_00452cfd
loc_00452ce2:
    push 0
    lea eax, [ebp - 8]
    push eax
    mov ecx, dword ptr [ebp - 0x1c]
    push ecx
    mov esi, dword ptr [ebp - 0x18]
    push esi
    mov edi, dword ptr [ebp - 4]
    push edi
    call sub_00457da2
    test eax, eax
    je loc_00452ca3
loc_00452cfd:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0x1c]
    je loc_00452edf
    mov eax, 0xc
    call sub_0044c8c3
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0x1c], eax
    jmp loc_00452edf
loc_00452d1e:
    call sub_00450e5c
    mov dword ptr [ebp - 0xc], eax
    cmp eax, 0xb0
    jae loc_00452d32
    call sub_00446670
loc_00452d32:
    mov ebx, dword ptr [ebp - 0xc]
    mov esi, 0x200
    cmp ebx, 0x230
    jae loc_00452d47
    mov esi, 0x80
loc_00452d47:
    lea eax, [esi + 3]
    and al, 0xfc
    xor ecx, ecx
    sub esp, eax
    mov edi, esp
    mov dword ptr [ebp - 0xc], ecx
    mov dword ptr [ebp - 0x10], ecx
    mov dword ptr [ebp - 8], ecx
loc_00452d5b:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [ebp - 0x1c]
    jae loc_00452e74
    mov eax, dword ptr [ebp - 0x18]
    add eax, dword ptr [ebp - 0xc]
    mov al, byte ptr [eax]
    and eax, 0xff
    cmp eax, 0xa
    # jne 0x452df9
    .byte 0x0f,0x85
    .long loc_00452df9 - . - 4
    mov eax, dword ptr [ebp - 0x10]
    mov byte ptr [edi + eax], 0xd
    mov ebx, dword ptr [ebp - 0x10]
    inc ebx
    mov dword ptr [ebp - 0x10], ebx
    cmp esi, ebx
    jne loc_00452df9
    cmp dword ptr [d_0045c994], 0
    je loc_00452db2
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045c968]
    test eax, eax
    je loc_00452db2
    mov edx, edi
    call dword ptr [d_0045c994]
    mov dword ptr [ebp - 0x10], eax
    jmp loc_00452dcb
loc_00452db2:
    push 0
    lea eax, [ebp - 0x10]
    push eax
    push esi
    push edi
    mov edx, dword ptr [ebp - 4]
    push edx
    call sub_00457da2
    test eax, eax
    je loc_00452ca3
loc_00452dcb:
    cmp esi, dword ptr [ebp - 0x10]
    je loc_00452dee
loc_00452dd0:
    mov eax, 0xc
    call sub_0044c8c3
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045c638]
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0x10]
    jmp loc_00452eeb
loc_00452dee:
    mov eax, dword ptr [ebp - 0xc]
    xor ecx, ecx
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 0x10], ecx
loc_00452df9:
    mov eax, dword ptr [ebp - 0x18]
    add eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov al, byte ptr [eax]
    mov byte ptr [edx + edi], al
    mov ebx, dword ptr [ebp - 0xc]
    mov ecx, dword ptr [ebp - 0x10]
    inc ebx
    inc ecx
    mov dword ptr [ebp - 0xc], ebx
    mov dword ptr [ebp - 0x10], ecx
    cmp esi, ecx
    jne loc_00452d5b
    cmp dword ptr [d_0045c994], 0
    je loc_00452e42
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045c968]
    test eax, eax
    je loc_00452e42
    mov ebx, ecx
    mov edx, edi
    call dword ptr [d_0045c994]
    mov dword ptr [ebp - 0x10], eax
    jmp loc_00452e5b
loc_00452e42:
    push 0
    lea eax, [ebp - 0x10]
    push eax
    push esi
    push edi
    mov ebx, dword ptr [ebp - 4]
    push ebx
    call sub_00457da2
    test eax, eax
    je loc_00452ca3
loc_00452e5b:
    cmp esi, dword ptr [ebp - 0x10]
    jne loc_00452dd0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 8], eax
    xor eax, eax
    mov dword ptr [ebp - 0x10], eax
    jmp loc_00452d5b
loc_00452e74:
    cmp dword ptr [ebp - 0x10], 0
    je loc_00452edf
    cmp dword ptr [d_0045c994], 0
    je loc_00452ea0
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045c968]
    test eax, eax
    je loc_00452ea0
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, edi
    call dword ptr [d_0045c994]
    mov dword ptr [ebp - 0xc], eax
    jmp loc_00452ebc
loc_00452ea0:
    push 0
    lea eax, [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    push edi
    mov edx, dword ptr [ebp - 4]
    push edx
    call sub_00457da2
    test eax, eax
    je loc_00452ca3
loc_00452ebc:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [ebp - 0x10]
    je loc_00452edf
    mov eax, 0xc
    call sub_0044c8c3
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045c638]
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0xc]
    jmp loc_00452eeb
loc_00452edf:
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045c638]
    mov eax, dword ptr [ebp - 0x1c]
loc_00452eeb:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00452ef2:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x10
    push eax
    mov ebp, edx
    mov edx, dword ptr [d_004a5e64]
    mov eax, dword ptr [edx + eax*4]
    mov dword ptr [esp + 0xc], eax
    mov eax, dword ptr [esp]
    call sub_00450ddd
    mov edx, eax
    mov dword ptr [esp + 8], eax
    test eax, eax
    jne loc_00452f2f
    mov eax, 4
    call sub_0044c8c3
loc_00452f25:
    mov eax, 0xffffffff
    jmp loc_00453091
loc_00452f2f:
    mov eax, dword ptr [esp]
    call dword ptr [d_0045c634]
    test dl, 1
    jne loc_00452f52
    mov eax, 6
    call sub_0044c8c3
    mov eax, dword ptr [esp]
    call dword ptr [d_0045c638]
    jmp loc_00452f25
loc_00452f52:
    test dl, 0x40
    je loc_00452fbc
    cmp dword ptr [d_0045c990], 0
    je loc_00452f7c
    mov eax, dword ptr [esp]
    call dword ptr [d_0045c968]
    test eax, eax
    je loc_00452f7c
    mov edx, ebp
    call dword ptr [d_0045c990]
    mov edi, eax
    jmp loc_00453086
loc_00452f7c:
    push 0
    lea eax, [esp + 8]
    push eax
    push ebx
    push ebp
    mov ebx, dword ptr [esp + 0x1c]
    push ebx
    call sub_00457cdc
    mov edi, dword ptr [esp + 4]
    test eax, eax
    jne loc_00453086
    mov eax, dword ptr [esp]
    call dword ptr [d_0045c638]
    call sub_00457dcc
    cmp eax, 0x6d
    je loc_0045308f
loc_00452fb2:
    call sub_0044eeb5
    jmp loc_00453091
loc_00452fbc:
    mov dword ptr [esp + 0x10], ebx
    xor edi, edi
loc_00452fc2:
    cmp dword ptr [d_0045c990], 0
    je loc_00452fea
    mov eax, dword ptr [esp]
    call dword ptr [d_0045c968]
    test eax, eax
    je loc_00452fea
    mov ebx, dword ptr [esp + 0x10]
    mov edx, ebp
    call dword ptr [d_0045c990]
    mov dword ptr [esp + 4], eax
    jmp loc_0045301e
loc_00452fea:
    push 0
    lea eax, [esp + 8]
    push eax
    mov esi, dword ptr [esp + 0x18]
    push esi
    push ebp
    mov eax, dword ptr [esp + 0x1c]
    push eax
    call sub_00457cdc
    test eax, eax
    jne loc_0045301e
    mov eax, dword ptr [esp]
    call dword ptr [d_0045c638]
    call sub_00457dcc
    cmp eax, 0x6d
    # je 0x45308f
    .byte 0x0f,0x84
    .long loc_0045308f - . - 4
    jmp loc_00452fb2
loc_0045301e:
    cmp dword ptr [esp + 4], 0
    je loc_00453086
    mov eax, ebp
    xor ebx, ebx
    xor edx, edx
    jmp loc_00453063
loc_0045302d:
    xor ecx, ecx
    mov cl, byte ptr [eax]
    cmp ecx, 0x1a
    jne loc_00453055
    sub ebx, dword ptr [esp + 4]
    lea edx, [ebx + 1]
    mov eax, dword ptr [esp]
    mov ebx, 1
    call sub_00452c00
    mov eax, dword ptr [esp]
    call dword ptr [d_0045c638]
    jmp loc_0045308f
loc_00453055:
    cmp ecx, 0xd
    je loc_00453061
    mov esi, edx
    inc edi
    inc edx
    mov byte ptr [esi + ebp], cl
loc_00453061:
    inc eax
    inc ebx
loc_00453063:
    cmp ebx, dword ptr [esp + 4]
    jb loc_0045302d
    mov esi, dword ptr [esp + 0x10]
    mov ah, byte ptr [esp + 9]
    sub esi, edx
    add ebp, edx
    mov dword ptr [esp + 0x10], esi
    test ah, 0x20
    jne loc_00453086
    test esi, esi
    jne loc_00452fc2
loc_00453086:
    mov eax, dword ptr [esp]
    call dword ptr [d_0045c638]
loc_0045308f:
    mov eax, edi
loc_00453091:
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00453099:
    push ebx
    push edx
    lea eax, [esp + 0x14]
    add eax, 4
    mov eax, dword ptr [eax - 4]
    push eax
    push 0
    mov edx, dword ptr [esp + 0x18]
    push edx
    mov ebx, dword ptr [esp + 0x18]
    push ebx
    call sub_004530bd
    add esp, 0x10
    pop edx
    pop ebx
    ret
sub_004530bd:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0xc
    mov ebp, dword ptr [esp + 0x28]
    call sub_0044f11b
    test eax, eax
    je loc_004530e7
    mov eax, 0xb
    call sub_0044c8c3
    mov eax, 0xffffffff
    jmp loc_0045326a
loc_004530e7:
    mov esi, dword ptr [esp + 0x2c]
    lea ebx, [esp + 8]
    and esi, 7
    lea edx, [esp + 4]
    mov eax, esi
    call sub_00453f5b
    mov edx, esp
    mov eax, dword ptr [esp + 0x30]
    call sub_00453f87
    mov edx, dword ptr [d_0045c970]
    mov ebx, 0x80
    test edx, edx
    je loc_0045314c
    mov edx, offset d_0045b568
    mov eax, ebp
    call sub_00451df7
    test eax, eax
    jne loc_0045314c
    call sub_0044f2d8
    call dword ptr [d_0045c63c]
    push -1
    push eax
    push 0
    mov edx, 0x2000
    mov ebx, eax
    call dword ptr [d_0045c970]
    add esp, 0xc
    jmp loc_0045321a
loc_0045314c:
    mov ah, byte ptr [esp + 0x2c]
    test ah, 0x20
    je loc_004531b1
    lea eax, [esp + 0x34]
    add eax, 4
    mov eax, dword ptr [eax - 4]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [d_0045cc7c]
    mov ecx, dword ptr [esp + 8]
    not eax
    and ecx, eax
    mov dword ptr [esp + 8], ecx
    test byte ptr [esp + 9], 1
    je loc_00453187
    test byte ptr [esp + 8], 0x80
    jne loc_00453187
    mov ebx, 1
loc_00453187:
    test byte ptr [esp + 0x2d], 4
    je loc_00453197
    mov edi, 1
    mov eax, edi
    jmp loc_004531bb
loc_00453197:
    test byte ptr [esp + 0x2c], 0x40
    je loc_004531aa
    mov edi, 2
loc_004531a3:
    mov eax, 5
    jmp loc_004531bb
loc_004531aa:
    mov edi, 4
    jmp loc_004531b6
loc_004531b1:
    test ah, 0x40
    jne loc_004531a3
loc_004531b6:
    mov eax, 3
loc_004531bb:
    push 0
    push ebx
    push eax
    push 0
    mov eax, dword ptr [esp + 0x10]
    push eax
    mov edx, dword ptr [esp + 0x18]
    push edx
    push ebp
    call sub_00457d60
    cmp eax, -1
    jne loc_00453202
    test byte ptr [esp + 0x2c], 0x20
    je loc_004531f3
    push 0
    push ebx
    push edi
    push 0
    mov ebx, dword ptr [esp + 0x10]
    push ebx
    mov ecx, dword ptr [esp + 0x18]
    push ecx
    push ebp
    call sub_00457d60
loc_004531f3:
    cmp eax, -1
    jne loc_00453202
    call sub_0044eeb5
    # jmp 0x45326a
    .byte 0xe9
    .long loc_0045326a - . - 4
loc_00453202:
    call dword ptr [d_0045c63c]
    mov ebx, eax
    call sub_004510c5
    xor edx, edx
    test eax, eax
    je loc_0045321a
    mov edx, 0x2000
loc_0045321a:
    cmp esi, 2
    jne loc_00453224
    or dl, 3
    jmp loc_00453235
loc_00453224:
    test esi, esi
    jne loc_0045322d
    or dl, 1
    jmp loc_00453235
loc_0045322d:
    cmp esi, 1
    jne loc_00453235
    or dl, 2
loc_00453235:
    test byte ptr [esp + 0x2c], 0x10
    je loc_0045323f
    or dl, 0x80
loc_0045323f:
    mov eax, edx
    mov ch, byte ptr [esp + 0x2d]
    or al, 0x40
    test ch, 3
    je loc_00453253
    test ch, 2
    je loc_00453261
    jmp loc_0045325f
loc_00453253:
    cmp dword ptr [d_0045cc5d], 0x200
    jne loc_00453261
loc_0045325f:
    mov edx, eax
loc_00453261:
    mov eax, ebx
    call sub_00450e32
    mov eax, ebx
loc_0045326a:
    add esp, 0xc
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00453274:
    push ebx
    push edx
    mov edx, eax
    test eax, eax
    jl loc_00453284
    cmp eax, dword ptr [d_0045c9e4]
    jbe loc_00453298
loc_00453284:
    mov eax, 4
    mov ebx, 0xffffffff
    call sub_0044c8c3
    mov eax, ebx
    pop edx
    pop ebx
    ret
loc_00453298:
    call dword ptr [d_0045c634]
    mov eax, edx
    call sub_004533d6
    mov ebx, eax
    mov eax, edx
    call dword ptr [d_0045c638]
    mov eax, edx
    call dword ptr [d_0045c640]
    mov eax, ebx
    pop edx
    pop ebx
    ret
sub_004532bc:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    call dword ptr [d_0045c644]
    mov esi, dword ptr [d_004a6064]
    test esi, esi
    je loc_004532ea
    mov ecx, dword ptr [esi + 4]
    mov edi, dword ptr [ecx + 0xc]
    mov eax, dword ptr [esi]
    and edi, 0x4003
    mov dword ptr [d_004a6064], eax
    or di, 3
    jmp loc_00453331
loc_004532ea:
    mov ecx, offset d_0045ca54
    jmp loc_00453311
loc_004532f1:
    test byte ptr [ecx + 0xc], 3
    jne loc_0045330e
    mov eax, 8
    call sub_004529cc
    mov esi, eax
    test eax, eax
    je loc_0045335c
    mov edi, 3
    jmp loc_00453331
loc_0045330e:
    add ecx, 0x1a
loc_00453311:
    cmp ecx, offset d_0045cc5c
    jb loc_004532f1
    mov eax, 0x22
    mov edi, 0x4003
    call sub_004529cc
    mov esi, eax
    test eax, eax
    je loc_0045335c
    lea ecx, [eax + 8]
loc_00453331:
    mov ebx, 0x1a
    mov eax, ecx
    xor edx, edx
    call sub_00451940
    mov dword ptr [ecx + 0xc], edi
    mov eax, dword ptr [d_004a606c]
    mov dword ptr [esi + 4], ecx
    mov dword ptr [d_004a606c], esi
    mov dword ptr [esi], eax
    call dword ptr [d_0045c648]
    mov eax, ecx
    jmp loc_0045336e
loc_0045335c:
    mov eax, 5
    call sub_0044c8c3
    call dword ptr [d_0045c648]
    xor eax, eax
loc_0045336e:
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00453374:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    mov edx, offset d_004a606c
loc_0045337e:
    mov eax, dword ptr [edx]
    test eax, eax
    je loc_004533a9
    mov ecx, dword ptr [eax + 4]
    cmp ebx, ecx
    je loc_0045338f
    mov edx, eax
    jmp loc_0045337e
loc_0045338f:
    mov cl, byte ptr [ecx + 0xc]
    or cl, 3
    mov byte ptr [ebx + 0xc], cl
    mov ebx, dword ptr [eax]
    mov dword ptr [edx], ebx
    mov edx, dword ptr [d_004a6064]
    mov dword ptr [d_004a6064], eax
    mov dword ptr [eax], edx
loc_004533a9:
    pop edx
    pop ecx
    pop ebx
    ret
loc_004533ad:
    push edx
loc_004533ae:
    mov edx, dword ptr [d_004a6064]
    test edx, edx
    je loc_004533c9
    mov eax, edx
    mov edx, dword ptr [edx]
    call sub_00452b35
    mov dword ptr [d_004a6064], edx
    jmp loc_004533ae
loc_004533c9:
    pop edx
    ret
    .byte 0x00
sub_004533cc:
    push ecx
    push edx
    call sub_00457b80
    pop edx
    pop ecx
    ret
sub_004533d6:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov ebx, eax
    mov edx, dword ptr [d_004a5e64]
    xor ecx, ecx
    mov edi, dword ptr [edx + eax*4]
    mov edx, dword ptr [d_0045c974]
    xor esi, esi
    test edx, edx
    je loc_00453415
    call dword ptr [d_0045c968]
    mov edx, eax
    test eax, eax
    je loc_00453415
    mov eax, ebx
    call dword ptr [d_0045c96c]
    mov eax, edx
    mov ecx, 1
    call dword ptr [d_0045c974]
loc_00453415:
    test ecx, ecx
    jne loc_00453434
    push edi
    call sub_00457d4e
    test eax, eax
    jne loc_00453434
    mov eax, 4
    mov esi, 0xffffffff
    call sub_0044c8c3
    jmp loc_0045343d
loc_00453434:
    mov eax, ebx
    xor edx, edx
    call sub_00450e32
loc_0045343d:
    mov eax, esi
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00453445:
    push ecx
    push esi
    sub esp, 4
    mov esi, eax
    call dword ptr [d_0045c634]
    cmp dword ptr [d_0045c990], 0
    je loc_0045347b
    mov eax, esi
    call dword ptr [d_0045c968]
    test eax, eax
    je loc_0045347b
    call dword ptr [d_0045c990]
    mov edx, eax
    mov eax, esi
    call dword ptr [d_0045c638]
    mov eax, edx
    jmp loc_004534b3
loc_0045347b:
    mov ecx, dword ptr [d_004a5e64]
    mov eax, esi
    push 0
    mov eax, dword ptr [ecx + eax*4]
    lea ecx, [esp + 4]
    push ecx
    push ebx
    push edx
    push eax
    call sub_00457cdc
    test eax, eax
    jne loc_004534a8
    mov eax, esi
    call dword ptr [d_0045c638]
    call sub_0044eeb5
    jmp loc_004534b3
loc_004534a8:
    mov eax, esi
    call dword ptr [d_0045c638]
    mov eax, dword ptr [esp]
loc_004534b3:
    add esp, 4
    pop esi
    pop ecx
    ret
ptr_004534b9:
    push ebx
    push edx
    mov edx, offset ptr_00454096
    mov ebx, offset ptr_004541df
    mov dword ptr [d_0045c9d0], edx
    mov dword ptr [d_0045c9d4], ebx
    pop edx
    pop ebx
    ret
sub_004534d4:
    push ebx
    push ecx
    push edx
    sub esp, 0x10
    mov ebx, eax
    mov eax, esp
    push eax
    call sub_00457b7a
    xor eax, eax
    mov ax, word ptr [esp]
    sub eax, 0x76c
    mov dword ptr [ebx + 0x14], eax
    xor eax, eax
    mov ax, word ptr [esp + 2]
    dec eax
    mov dword ptr [ebx + 0x10], eax
    xor eax, eax
    mov ax, word ptr [esp + 6]
    mov dword ptr [ebx + 0xc], eax
    xor eax, eax
    mov ax, word ptr [esp + 8]
    mov dword ptr [ebx + 8], eax
    xor eax, eax
    mov ax, word ptr [esp + 0xa]
    mov dword ptr [ebx + 4], eax
    xor eax, eax
    mov ax, word ptr [esp + 0xc]
    mov dword ptr [ebx + 0x20], 0xffffffff
    mov dword ptr [ebx], eax
    xor eax, eax
    mov ax, word ptr [esp + 0xe]
    add esp, 0x10
    pop edx
    pop ecx
    pop ebx
    ret
sub_00453539:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, eax
    mov esi, 0xc
    mov edx, dword ptr [ebp + 0x10]
    mov eax, dword ptr [eax + 0x10]
    sar edx, 0x1f
    idiv esi
    mov ebx, offset d_0045b70c
    mov esi, dword ptr [ebp + 0x14]
    mov edi, edx
    cmp esi, 0xf4fb7ea1
    jge loc_0045356d
loc_00453563:
    mov eax, 0xffffffff
    jmp loc_00453686
loc_0045356d:
    mov eax, dword ptr [ebp + 0x10]
    mov edx, eax
    mov ecx, 0xc
    sar edx, 0x1f
    idiv ecx
    add esi, eax
loc_0045357e:
    test edi, edi
    jge loc_00453588
    dec esi
    add edi, 0xc
    jmp loc_0045357e
loc_00453588:
    test esi, esi
    jl loc_00453563
    lea eax, [esi + 0x76c]
    call sub_004541ed
    test eax, eax
    je loc_004535a0
    mov ebx, offset d_0045b726
loc_004535a0:
    lea ecx, [esi + 3]
    mov eax, esi
    shl eax, 3
    add eax, esi
    shl eax, 3
    add eax, esi
    mov edx, eax
    shl eax, 2
    sar ecx, 2
    add eax, edx
    lea edx, [eax + ecx]
    movsx eax, word ptr [ebx + edi*2]
    mov edi, dword ptr [ebp + 0xc]
    add eax, edx
    add edi, eax
    dec edi
    test esi, esi
    je loc_004535cd
    dec edi
loc_004535cd:
    mov edx, dword ptr [ebp + 8]
    mov eax, edx
    shl eax, 4
    sub eax, edx
    shl eax, 2
    mov edx, dword ptr [ebp + 4]
    add edx, eax
    mov eax, edx
    shl eax, 4
    sub eax, edx
    mov esi, dword ptr [ebp]
    shl eax, 2
    add esi, eax
loc_004535ee:
    test esi, esi
    jge loc_004535fb
    dec edi
    add esi, 0x15180
    jmp loc_004535ee
loc_004535fb:
    mov ecx, ebp
    mov edx, esi
    mov eax, edi
    xor ebx, ebx
    call sub_00454634
    call sub_004548c8
    mov edx, dword ptr [d_0045ccc8]
    mov ebx, dword ptr [ebp + 0x20]
    add esi, edx
    test ebx, ebx
    jge loc_00453623
    mov eax, ebp
    call sub_00454341
loc_00453623:
    cmp dword ptr [ebp + 0x20], 0
    jle loc_0045362f
    sub esi, dword ptr [d_0045cccc]
loc_0045362f:
    test esi, esi
    jge loc_0045363c
    dec edi
    add esi, 0x15180
    jmp loc_0045362f
loc_0045363c:
    cmp edi, 0x63de
    jl loc_00453563
    jne loc_00453666
    mov eax, dword ptr [d_0045ccc8]
    sub esi, 0x15180
    test eax, eax
    jle loc_00453563
    test esi, esi
    jge loc_00453684
    jmp loc_00453563
loc_00453666:
    lea eax, [edi - 0x63df]
    mov edi, eax
    shl edi, 3
    sub edi, eax
    shl edi, 5
    add edi, eax
    shl edi, 7
    mov eax, edi
    shl edi, 2
    sub edi, eax
    add esi, edi
loc_00453684:
    mov eax, esi
loc_00453686:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    .byte 0x00
sub_0045368e:
    mov eax, 0xffffffff
sub_00453693:
    push ebx
    push ecx
    push edx
    mov ecx, eax
    call dword ptr [d_0045c644]
    mov edx, dword ptr [d_004a606c]
    xor ebx, ebx
    jmp loc_004536be
loc_004536a8:
    mov eax, dword ptr [edx + 4]
    test dword ptr [eax + 0xc], ecx
    je loc_004536bc
    inc ebx
    test byte ptr [eax + 0xd], 0x10
    je loc_004536bc
    call sub_0044c7d4
loc_004536bc:
    mov edx, dword ptr [edx]
loc_004536be:
    test edx, edx
    jne loc_004536a8
    call dword ptr [d_0045c648]
    mov eax, ebx
    pop edx
    pop ecx
    pop ebx
    ret
sub_004536ce:
    push ebx
    push edx
    mov ebx, dword ptr [d_0045c948]
    call sub_00454df3
    mov edx, eax
    cmp eax, -1
    je loc_004536eb
    test ebx, ebx
    jne loc_004536eb
    call sub_00454e69
loc_004536eb:
    mov eax, edx
    pop edx
    pop ebx
    ret
    mov byte ptr [eax], 0x2f
    mov byte ptr [eax + 1], 0x63
    mov byte ptr [eax + 2], 0
    ret
    push edx
    xor edx, edx
    call sub_00454ecb
    test eax, eax
    sete al
    movzx eax, al
    pop edx
    ret
    .byte 0x68,0xe0,0x00,0x00,0x00,0xe8,0x29,0x2f,0xff,0xff,0x56,0x57,0x06,0xc8,0xac,0x00
    .byte 0x00,0x50,0x81,0xed,0x82,0x00,0x00,0x00,0x89,0xd6,0x89,0x5d,0x6e,0x89,0xca,0xc6
    .byte 0x45,0x7e,0x00,0x83,0xf8,0x02,0x72,0x14,0xb8,0x09,0x00,0x00,0x00,0xe8,0x83,0x91
    .byte 0xff,0xff,0xb8,0xff,0xff,0xff,0xff,0xe9,0xcc,0x02,0x00,0x00,0x6a,0x00,0x8d,0x45
    .byte 0x56,0x50,0x8d,0x45,0x5a,0x8d,0x4d,0x5e,0x50,0x8d,0x5d,0x62,0x8b,0x45,0x6e,0xe8
    .byte 0xaa,0x17,0x00,0x00,0x89,0x45,0x76,0x83,0xf8,0xff,0x0f,0x84,0xa8,0x02,0x00,0x00
    .byte 0x89,0xf0,0xe8,0x36,0xe6,0xff,0xff,0x8d,0x90,0x0e,0x01,0x00,0x00,0x89,0xd0,0xe8
    .byte 0x4a,0xf2,0xff,0xff,0x89,0x45,0x66,0x85,0xc0,0x75,0x2a,0x8d,0x5a,0x03,0x80,0xe3
    .byte 0xfc,0xe8,0xc8,0xd6,0xff,0xff,0x39,0xc3,0x73,0x08,0x89,0xd8,0x29,0xc4,0x89,0xe0
    .byte 0xeb,0x02,0x31,0xc0,0x89,0x45,0x7a,0x85,0xc0,0x75,0x0d,0x8b,0x45,0x62,0xe8,0x84
    .byte 0xf3,0xff,0xff,0xeb,0x8d,0x89,0x45,0x7a,0x8d,0x45,0x46,0x8d,0x4d,0x4e,0x8d,0x5d
    .byte 0x4a,0x50,0x8d,0x45,0x42,0x81,0xea,0x07,0x01,0x00,0x00,0x50,0x03,0x55,0x7a,0x89
    .byte 0xf0,0xe8,0xdd,0x18,0x00,0x00,0x8d,0x45,0xd6,0xff,0x15
    .long d_0045c9d8
    .byte 0x8b,0x45,0x56,0xe8,0xe7,0xf1,0xff,0xff,0x89,0x45,0x6a,0x85,0xc0,0x75,0x49,0x8b
    .byte 0x55,0x56,0x83,0xc2,0x03,0x80,0xe2,0xfc,0xe8,0x62,0xd6,0xff,0xff,0x39,0xc2,0x73
    .byte 0x0e,0x8b,0x45,0x56,0x83,0xc0,0x03,0x24,0xfc,0x29,0xc4,0x89,0xe0,0xeb,0x02,0x31
    .byte 0xc0,0x89,0x45,0x72,0x85,0xc0,0x75,0x23,0xb8,0x02,0x00,0x00,0x00,0xe8,0xa4,0x90
    .byte 0xff,0xff,0xb8,0x0a,0x00,0x00,0x00,0xc7,0x45,0x76,0xff,0xff,0xff,0xff,0xe8,0xb8
    .byte 0x90,0xff,0xff,0xe9,0xbd,0x01,0x00,0x00,0x89,0x45,0x72,0xff,0x75,0x46,0x8b,0x4d
    .byte 0x42,0x8b,0x5d,0x4e,0x8b,0x55,0x4a,0x8b,0x45,0x7a,0xe8,0x54,0x19,0x00,0x00,0xb8
    .byte 0x01,0x00,0x00,0x00,0xe8,0x6d,0x90,0xff,0xff,0x8b,0x45,0x46,0x80,0x38,0x00,0x74
    .byte 0x48,0xba
    .long d_0045b56c
    .byte 0xe8,0x8f,0xe5,0xff,0xff,0x85,0xc0,0x75,0x19,0x8b,0x45,0x7a,0xc7,0x45,0x76,0xff
    .byte 0xff,0xff,0xff,0xe8,0x81,0xfe,0xff,0xff,0x85,0xc0,0x0f,0x85,0x0c,0x01,0x00,0x00
    .byte 0xeb,0x21,0x31,0xc0,0xe8,0x37,0x90,0xff,0xff,0xff,0x75,0x6e,0xff,0x75,0x62,0xff
    .byte 0x75,0x72,0xff,0x75,0x7a,0xff,0x75,0xd2,0xe8,0xeb,0x1a,0x00,0x00,0x83,0xc4,0x14
    .byte 0x89,0x45,0x76,0xff,0x15
    .long d_0045c630
    .byte 0x83,0x78,0x04,0x01,0x74,0x10,0xff,0x15
    .long d_0045c630
    .byte 0x83,0x78,0x04,0x09,0x0f,0x85,0x30,0x01,0x00,0x00,0x8b,0x45,0x7a,0x8b,0x55,0x7a
    .byte 0xe8,0xde,0xe4,0xff,0xff,0x01,0xc2,0x80,0x7d,0x7e,0x00,0x74,0x0c,0xb8,0x01,0x00
    .byte 0x00,0x00,0xe8,0xe4,0x8f,0xff,0xff,0xeb,0x2c,0x1e,0x07,0x89,0xd7,0xbe
    .long d_0045b571
    .byte 0x31,0xc0,0xa5,0xa4,0xe8,0xd0,0x8f,0xff,0xff,0xff,0x75,0x6e,0xff,0x75,0x62,0xff
    .byte 0x75,0x72,0xff,0x75,0x7a,0xff,0x75,0xd2,0xe8,0x84,0x1a,0x00,0x00,0x83,0xc4,0x14
    .byte 0x89,0x45,0x76,0xff,0x15
    .long d_0045c630
    .byte 0x83,0x78,0x04,0x01,0x74,0x10,0xff,0x15
    .long d_0045c630
    .byte 0x83,0x78,0x04,0x09,0x0f,0x85,0xc9,0x00,0x00,0x00,0x31,0xc0,0xe8,0x93,0x8f,0xff
    .byte 0xff,0x89,0xd7,0x1e,0x07,0xbe
    .long d_0045b576
    .byte 0xff,0x75,0x6e,0xa5,0xa4,0xff,0x75,0x62,0xff,0x75,0x72,0xff,0x75,0x7a,0xff,0x75
    .byte 0xd2,0xe8,0x3c,0x1a,0x00,0x00,0x83,0xc4,0x14,0x89,0x45,0x76,0xff,0x15
    .long d_0045c630
    .byte 0x83,0x78,0x04,0x01,0x74,0x10,0xff,0x15
    .long d_0045c630
    .byte 0x83,0x78,0x04,0x09,0x0f,0x85,0x81,0x00,0x00,0x00,0x31,0xc0,0xe8,0x4b,0x8f,0xff
    .byte 0xff,0x89,0xd7,0x1e,0x07,0xbe
    .long d_0045b56c
    .byte 0x8b,0x45,0x7a,0xa5,0xa4,0xe8,0x71,0xfd,0xff,0xff,0x85,0xc0,0x74,0x63,0x8b,0x45
    .byte 0x62,0xb9,0x01,0x00,0x00,0x00,0x8b,0x5d,0x72,0x8b,0x55,0x6e,0xe8,0x93,0xf1,0xff
    .byte 0xff,0x8b,0x45,0x7a,0xc7,0x45,0x62,0x00,0x00,0x00,0x00,0xe8,0x6d,0x16,0x00,0x00
    .byte 0x6a,0x00,0xff,0x75,0x72,0x0f,0xb6,0x55,0x7e,0xff,0x75,0x7a,0x8d,0x45,0x52,0xe8
    .byte 0x2b,0xfd,0xff,0xff,0x50,0x80,0x7d,0x7e,0x00,0x74,0x07,0xb8
    .long d_0045b583
    .byte 0xeb,0x05,0xb8
    .long d_0045b587
    .byte 0x50,0xb8
    .long d_0045b57b
    .byte 0xe8,0xce,0xe5,0xff,0xff,0x50,0xff,0x75,0xd2,0xe8,0xdd,0x1a,0x00,0x00,0x83,0xc4
    .byte 0x1c,0x89,0x45,0x76,0x8b,0x45,0x6a,0xe8,0x3b,0xf1,0xff,0xff,0x8b,0x45,0x66,0xe8
    .byte 0x33,0xf1,0xff,0xff,0x8b,0x45,0x62,0xe8,0x2b,0xf1,0xff,0xff,0x8d,0x45,0xd6,0xff
    .byte 0x15
    .long d_0045c9dc
    .byte 0x8b,0x45,0x76,0x8d,0xa5,0x82,0x00,0x00,0x00,0x5d,0x07,0x5f,0x5e,0xc3,0x53,0x52
    .byte 0x8d,0x5c,0x24,0x14,0x8b,0x54,0x24,0x10,0x8b,0x44,0x24,0x0c,0xe8,0xb3,0x1a,0x00
    .byte 0x00,0x5a,0x5b,0xc3,0x00
sub_00453a38:
    push esi
    push edi
    push ecx
    push ds
    mov ds, edx
    or eax, eax
    je loc_00453a87
    add eax, 0xb
    jb loc_00453a87
    and al, 0xf8
    mov edx, 0x10
    sub eax, edx
    cmc
    sbb ecx, ecx
    and eax, ecx
    add eax, edx
    cmp eax, dword ptr [ebx + 0x14]
    ja loc_00453a87
    mov esi, dword ptr [ebx + 0xc]
    mov edi, dword ptr [ebx + 0x10]
    cmp eax, edi
    ja loc_00453a6b
    mov esi, dword ptr [ebx + 0x28]
    sub edi, edi
loc_00453a6b:
    mov edx, dword ptr [esi]
    cmp eax, edx
    jbe loc_00453a8b
    sub edi, edx
    cmc
    sbb ecx, ecx
    and edi, ecx
    add edi, edx
    lea edx, [ebx + 0x20]
    mov esi, dword ptr [esi + 8]
    cmp esi, edx
    jne loc_00453a6b
    mov dword ptr [ebx + 0x14], edi
loc_00453a87:
    sub eax, eax
    jmp loc_00453ad6
loc_00453a8b:
    sub edx, eax
    mov dword ptr [ebx + 0x10], edi
    inc dword ptr [ebx + 0x18]
    mov ecx, dword ptr [esi + 8]
    cmp edx, 0x10
    jb loc_00453ab9
    mov edi, esi
    add edi, eax
    mov dword ptr [ebx + 0xc], edi
    mov dword ptr [edi], edx
    mov dword ptr [esi], eax
    mov ebx, dword ptr [esi + 4]
    mov dword ptr [edi + 4], ebx
    mov dword ptr [edi + 8], ecx
    mov dword ptr [ebx + 8], edi
    mov ebx, ecx
    mov dword ptr [ebx + 4], edi
    jmp loc_00453ace
loc_00453ab9:
    dec dword ptr [ebx + 0x1c]
    mov eax, esi
    mov edi, ecx
    mov esi, dword ptr [esi + 4]
    mov dword ptr [esi + 8], edi
    mov dword ptr [edi + 4], esi
    mov dword ptr [ebx + 0xc], esi
    mov esi, eax
loc_00453ace:
    or dword ptr [esi], 1
    mov eax, esi
    add eax, 4
loc_00453ad6:
    pop ds
    pop ecx
    pop edi
    pop esi
    ret
loc_00453adb:
    jmp loc_00453be6
sub_00453ae0:
    push esi
    push edi
    push ecx
    push ds
    mov ds, edx
    or eax, eax
    je loc_00453adb
    mov esi, eax
    sub esi, 4
    mov eax, dword ptr [esi]
    test al, 1
    je loc_00453adb
    and al, 0xfe
    mov edi, esi
    add edi, eax
    test dword ptr [edi], 1
    jne loc_00453b22
    cmp edi, dword ptr [ebx + 0xc]
    jne loc_00453b0b
    mov dword ptr [ebx + 0xc], esi
loc_00453b0b:
    add eax, dword ptr [edi]
    mov dword ptr [esi], eax
    push ebx
    mov ebx, dword ptr [edi + 4]
    mov edi, dword ptr [edi + 8]
    mov dword ptr [ebx + 8], edi
    mov dword ptr [edi + 4], ebx
    pop ebx
    dec dword ptr [ebx + 0x1c]
    jmp loc_00453b9e
loc_00453b22:
    mov dword ptr [esi], eax
    mov edi, dword ptr [ebx + 0xc]
    cmp esi, edi
    jae loc_00453b39
    cmp esi, dword ptr [edi + 4]
    ja loc_00453b9e
    mov edi, dword ptr [ebx + 0x28]
    cmp esi, edi
    jb loc_00453b9e
    jmp loc_00453b48
loc_00453b39:
    mov edi, dword ptr [edi + 8]
    cmp esi, edi
    jb loc_00453b9e
    lea edi, [ebx + 0x20]
    cmp esi, dword ptr [ebx + 0x24]
    ja loc_00453b9e
loc_00453b48:
    sub edx, edx
    mov eax, dword ptr [ebx + 0x18]
    mov ecx, dword ptr [ebx + 0x1c]
    inc ecx
    div ecx
    dec ecx
    cmp eax, ecx
    jae loc_00453b7d
    mov edx, dword ptr [ebx + 0x18]
    sub edx, ecx
    add eax, eax
    cmp edx, ecx
    ja loc_00453b65
    sub eax, eax
loc_00453b65:
    mov edi, esi
    add edi, dword ptr [esi]
loc_00453b69:
    mov edx, dword ptr [edi]
    test dl, 1
    je loc_00453b9e
    cmp edx, -1
    je loc_00453b7d
    and dl, 0xfe
    add edi, edx
    dec eax
    jne loc_00453b69
loc_00453b7d:
    mov edi, dword ptr [ebx + 0xc]
    cmp esi, edi
    jae loc_00453b87
    mov edi, dword ptr [ebx + 0x28]
loc_00453b87:
    cmp esi, edi
    jb loc_00453b9e
    mov edi, dword ptr [edi + 8]
    cmp esi, edi
    jb loc_00453b9e
    mov edi, dword ptr [edi + 8]
    cmp esi, edi
    jb loc_00453b9e
    mov edi, dword ptr [edi + 8]
    jmp loc_00453b87
loc_00453b9e:
    mov edx, dword ptr [edi + 4]
    mov ecx, dword ptr [esi]
    xchg edx, edi
    mov eax, edi
    add eax, dword ptr [edi]
    cmp eax, esi
    jne loc_00453bbd
    add ecx, dword ptr [edi]
    mov dword ptr [edi], ecx
    cmp esi, dword ptr [ebx + 0xc]
    jne loc_00453bb9
    mov dword ptr [ebx + 0xc], edi
loc_00453bb9:
    mov esi, edi
    jmp loc_00453bce
loc_00453bbd:
    inc dword ptr [ebx + 0x1c]
    mov dword ptr [esi + 8], edx
    mov dword ptr [esi + 4], edi
    mov dword ptr [edi + 8], esi
    mov edi, edx
    mov dword ptr [edi + 4], esi
loc_00453bce:
    dec dword ptr [ebx + 0x18]
    cmp esi, dword ptr [ebx + 0xc]
    jae loc_00453bde
    cmp ecx, dword ptr [ebx + 0x10]
    jbe loc_00453bde
    mov dword ptr [ebx + 0x10], ecx
loc_00453bde:
    cmp ecx, dword ptr [ebx + 0x14]
    jbe loc_00453be6
    mov dword ptr [ebx + 0x14], ecx
loc_00453be6:
    pop ds
    pop ecx
    pop edi
    pop esi
    ret
sub_00453beb:
    push ebx
    push edx
    mov edx, eax
    mov eax, dword ptr [d_0045cc68]
    xor ebx, ebx
    jmp loc_00453c01
loc_00453bf8:
    cmp edx, eax
    jb loc_00453c05
    mov ebx, eax
    mov eax, dword ptr [eax + 8]
loc_00453c01:
    test eax, eax
    jne loc_00453bf8
loc_00453c05:
    mov dword ptr [edx + 4], ebx
    mov dword ptr [edx + 8], eax
    test ebx, ebx
    je loc_00453c14
    mov dword ptr [ebx + 8], edx
    jmp loc_00453c1a
loc_00453c14:
    mov dword ptr [d_0045cc68], edx
loc_00453c1a:
    test eax, eax
    je loc_00453c21
    mov dword ptr [eax + 4], edx
loc_00453c21:
    lea ebx, [edx + 0x20]
    mov eax, dword ptr [edx]
    add edx, 0x2c
    mov dword ptr [edx - 0xc], 0
    mov dword ptr [edx - 0x1c], 0
    mov dword ptr [edx - 0x14], 0
    mov dword ptr [edx - 0x10], 0
    mov dword ptr [edx - 8], ebx
    mov dword ptr [edx - 4], ebx
    sub eax, 0x2c
    mov dword ptr [edx - 0x20], ebx
    mov dword ptr [edx], eax
    mov dword ptr [edx + eax], 0xffffffff
    mov eax, edx
    pop edx
    pop ebx
    ret
sub_00453c5f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push eax
    cmp dword ptr [d_0045cd24], 0
    jne loc_00453c75
loc_00453c6e:
    xor eax, eax
    # jmp 0x453ce6
    .byte 0xe9
    .long loc_00453ce6 - . - 4
loc_00453c75:
    cmp dword ptr [d_0045c924], -2
    je loc_00453c6e
    mov eax, esp
    call sub_00453d00
    test eax, eax
    je loc_00453ce6
    push 0x40
    push 0x1000
    mov ecx, dword ptr [esp + 8]
    push ecx
    push 0
    call sub_00457b74
    mov edx, eax
    test eax, eax
    je loc_00453ce6
    mov eax, dword ptr [esp]
    mov esi, dword ptr [esp]
    sub eax, 4
    cmp eax, esi
    ja loc_00453c6e
    mov dword ptr [esp], eax
    cmp eax, 0x38
    jb loc_00453c6e
    mov dword ptr [edx], eax
    mov eax, edx
    call sub_00453beb
    mov ebx, eax
    mov eax, dword ptr [eax]
    mov dword ptr [esp], eax
    or al, 1
    mov dword ptr [ebx], eax
    mov edi, dword ptr [edx + 0x18]
    mov dword ptr [edx + 0x14], 0xffffffff
    inc edi
    lea eax, [ebx + 4]
    mov dword ptr [edx + 0x18], edi
    call sub_00452b35
    mov eax, 1
loc_00453ce6:
    add esp, 4
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00453cef:
    push edx
    mov edx, eax
    call sub_00455516
    mov eax, edx
    call sub_00453c5f
    pop edx
    ret
sub_00453d00:
    push ecx
    push edx
    mov edx, eax
    mov eax, dword ptr [eax]
    add eax, 0xb
    and al, 0xf8
    test eax, eax
    je loc_00453d47
    mov dword ptr [edx], eax
    add eax, 0x3c
    cmp eax, dword ptr [edx]
    jae loc_00453d1d
loc_00453d18:
    xor eax, eax
    pop edx
    pop ecx
    ret
loc_00453d1d:
    mov ecx, dword ptr [d_0045ca44]
    cmp eax, ecx
    jae loc_00453d2b
    mov eax, ecx
    and al, 0xfe
loc_00453d2b:
    mov dword ptr [edx], eax
    add eax, 0xfff
    cmp eax, dword ptr [edx]
    jb loc_00453d18
    xor al, al
    and ah, 0xf0
    mov dword ptr [edx], eax
    test eax, eax
    setne al
    and eax, 0xff
loc_00453d47:
    pop edx
    pop ecx
    ret
sub_00453d4a:
    xor eax, eax
    ret
sub_00453d4d:
    mov eax, dword ptr [eax - 4]
    and al, 0xfe
    sub eax, 4
    ret
sub_00453d56:
    push ebx
    push ecx
    push esi
    sub esp, 4
    mov esi, eax
    mov ebx, edx
    call dword ptr [d_0045c64c]
    mov eax, offset d_0045cc68
    mov edx, ds
    xor eax, eax
    mov ecx, esp
    mov ax, dx
    mov edx, esi
    call sub_00453d90
    test eax, eax
    jne loc_00453f1f
    call dword ptr [d_0045c654]
    mov eax, esi
    jmp loc_00453f27
sub_00453d90:
    push esi
    push edi
    push ebp
    sub esp, 0xc
    push eax
    mov edi, edx
    lea eax, [ebx + 7]
    and al, 0xfc
    cmp eax, ebx
    jae loc_00453da7
    mov eax, 0xffffffff
loc_00453da7:
    cmp eax, 0xc
    jae loc_00453db1
    mov eax, 0xc
loc_00453db1:
    lea edx, [edi - 4]
    mov dword ptr [esp + 4], edx
    mov edx, dword ptr [edx]
    and dl, 0xfe
    cmp eax, edx
    jbe loc_00453ebe
    mov ebx, dword ptr [esp + 4]
    sub eax, edx
    add ebx, edx
loc_00453dcd:
    mov dword ptr [ecx], eax
    mov ebp, dword ptr [ebx]
    cmp ebp, -1
    jne loc_00453de0
    mov ebp, 2
    jmp loc_00453f16
loc_00453de0:
    test ebp, 1
    jne loc_00453eb7
    mov eax, dword ptr [ebx + 8]
    mov dword ptr [esp + 8], eax
    mov eax, dword ptr [ebx + 4]
    mov edx, ds
    mov dword ptr [esp + 0xc], eax
    mov eax, offset d_0045cc68
    cmp dx, word ptr [esp]
    jne loc_00453e21
    mov esi, dword ptr [d_0045cc68]
    jmp loc_00453e1a
loc_00453e0f:
    cmp esi, edi
    ja loc_00453e17
    cmp edi, edx
    jb loc_00453e21
loc_00453e17:
    mov esi, dword ptr [esi + 8]
loc_00453e1a:
    mov edx, dword ptr [esi + 8]
    test edx, edx
    jne loc_00453e0f
loc_00453e21:
    mov edx, dword ptr [esi + 0xc]
    cmp ebx, edx
    jne loc_00453e2e
    mov eax, dword ptr [edx + 4]
    mov dword ptr [esi + 0xc], eax
loc_00453e2e:
    cmp ebp, dword ptr [ecx]
    jb loc_00453e3d
    mov eax, ebp
    mov edx, dword ptr [ecx]
    sub eax, edx
    cmp eax, 0xc
    jae loc_00453e71
loc_00453e3d:
    mov eax, dword ptr [esp + 0xc]
    mov edx, dword ptr [esp + 8]
    mov dword ptr [eax + 8], edx
    mov eax, edx
    mov edx, dword ptr [esp + 0xc]
    mov dword ptr [eax + 4], edx
    mov eax, dword ptr [esp + 4]
    add dword ptr [eax], ebp
    mov eax, dword ptr [esi + 0x1c]
    dec eax
    xor dl, dl
    mov dword ptr [esi + 0x1c], eax
    mov byte ptr [d_004a6071], dl
    mov edx, dword ptr [ecx]
    cmp ebp, edx
    jb loc_00453eac
    jmp loc_00453f14
loc_00453e71:
    add ebx, edx
    mov dword ptr [ebx], eax
    mov eax, dword ptr [esp + 0xc]
    mov dword ptr [ebx + 4], eax
    mov eax, dword ptr [esp + 8]
    mov dword ptr [ebx + 8], eax
    mov eax, dword ptr [esp + 0xc]
    mov dword ptr [eax + 8], ebx
    mov eax, dword ptr [esp + 8]
    mov dword ptr [eax + 4], ebx
    mov edx, dword ptr [esp + 4]
    mov eax, dword ptr [ecx]
    mov edi, dword ptr [edx]
    xor ebp, ebp
    add edi, eax
    xor ah, ah
    mov dword ptr [edx], edi
    mov byte ptr [d_004a6071], ah
    # jmp 0x453f16
    .byte 0xe9
    .long loc_00453f16 - . - 4
loc_00453eac:
    mov eax, edx
    sub eax, ebp
    add ebx, ebp
    jmp loc_00453dcd
loc_00453eb7:
    mov ebp, 1
    jmp loc_00453f16
loc_00453ebe:
    sub edx, eax
    cmp edx, 0xc
    jb loc_00453f14
    mov ebx, eax
    mov ecx, dword ptr [esp + 4]
    or bl, 1
    or dl, 1
    mov dword ptr [ecx], ebx
    lea ebx, [ecx + eax]
    mov eax, offset d_0045cc68
    mov dword ptr [esp + 4], ebx
    mov dword ptr [ebx], edx
    mov edx, ds
    mov ebx, dword ptr [esp]
    cmp dx, bx
    jne loc_00453f05
    mov esi, dword ptr [d_0045cc68]
    jmp loc_00453efe
loc_00453ef3:
    cmp esi, edi
    ja loc_00453efb
    cmp edi, ecx
    jb loc_00453f05
loc_00453efb:
    mov esi, dword ptr [esi + 8]
loc_00453efe:
    mov ecx, dword ptr [esi + 8]
    test ecx, ecx
    jne loc_00453ef3
loc_00453f05:
    inc dword ptr [esi + 0x18]
    mov eax, dword ptr [esp + 4]
    add eax, 4
    call sub_00452b35
loc_00453f14:
    xor ebp, ebp
loc_00453f16:
    mov eax, ebp
    add esp, 0x10
    pop ebp
    pop edi
    pop esi
    ret
loc_00453f1f:
    call dword ptr [d_0045c654]
    xor eax, eax
loc_00453f27:
    add esp, 4
    pop esi
    pop ecx
    pop ebx
    ret
    test al, 1
    je loc_00453f40
    mov dword ptr [edx], 0x80000000
    mov dword ptr [ebx], 1
    jmp loc_00453f4c
loc_00453f40:
    mov dword ptr [edx], 0xc0000000
    mov dword ptr [ebx], 0x80
loc_00453f4c:
    test al, 2
    je loc_00453f53
    or byte ptr [ebx], 2
loc_00453f53:
    test al, 4
    je loc_00453f5a
    or byte ptr [ebx], 4
loc_00453f5a:
    ret
sub_00453f5b:
    cmp eax, 2
    jne loc_00453f6d
    mov dword ptr [edx], 0xc0000000
loc_00453f66:
    mov dword ptr [ebx], 0x80
    ret
loc_00453f6d:
    cmp eax, 1
    jne loc_00453f7a
    mov dword ptr [edx], 0x40000000
    jmp loc_00453f66
loc_00453f7a:
    mov dword ptr [edx], 0x80000000
    mov dword ptr [ebx], 1
    ret
sub_00453f87:
    test eax, eax
    je loc_00453f90
    cmp eax, 0x40
    jne loc_00453f97
loc_00453f90:
    mov dword ptr [edx], 3
    ret
loc_00453f97:
    cmp eax, 0x20
    jne loc_00453fa3
    mov dword ptr [edx], 1
    ret
loc_00453fa3:
    cmp eax, 0x30
    jne loc_00453faf
    mov dword ptr [edx], 2
    ret
loc_00453faf:
    mov dword ptr [edx], 0
    ret
ptr_00453fb6:
    push ebx
    push ecx
    push edx
    mov ah, byte ptr [d_0045ca95]
    and ah, 0xf8
    mov dl, ah
    mov byte ptr [d_0045ca95], ah
    or dl, 4
    mov ecx, offset d_0045ca54
    mov byte ptr [d_0045ca95], dl
    jmp loc_0045401c
loc_00453fda:
    mov eax, 8
    call sub_004529cc
    mov ebx, eax
    test eax, eax
    jne loc_00454009
    mov eax, 8
    call sub_004529cc
    mov ebx, eax
    test eax, eax
    jne loc_00454009
    mov edx, 1
    mov eax, offset d_0045b590
    call sub_0044e083
loc_00454009:
    mov eax, dword ptr [d_004a606c]
    mov dword ptr [ebx + 4], ecx
    mov dword ptr [d_004a606c], ebx
    add ecx, 0x1a
    mov dword ptr [ebx], eax
loc_0045401c:
    mov edx, dword ptr [ecx + 0xc]
    test edx, edx
    jne loc_00453fda
    mov dword ptr [d_004a6064], edx
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0045402d:
    xor eax, eax
    call sub_0045403e
    jmp loc_004533ad
    mov eax, 3
sub_0045403e:
    push ebx
    push ecx
    push edx
    push esi
    mov edx, eax
    shl eax, 2
    sub eax, edx
    shl eax, 2
    add eax, edx
    mov esi, offset d_0045ca54
    add eax, eax
    xor ebx, ebx
    add esi, eax
    mov eax, dword ptr [d_004a606c]
    jmp loc_0045408b
loc_00454060:
    mov ecx, dword ptr [eax]
    mov eax, dword ptr [eax + 4]
    mov edx, 1
    test byte ptr [eax + 0xd], 0x40
    jne loc_00454083
    test byte ptr [eax + 0xd], 8
    jne loc_00454083
    cmp eax, esi
    jb loc_00454089
    cmp eax, offset d_0045caa2
    jae loc_00454083
    xor edx, edx
loc_00454083:
    call sub_0045176d
    inc ebx
loc_00454089:
    mov eax, ecx
loc_0045408b:
    test eax, eax
    jne loc_00454060
    mov eax, ebx
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00454096:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 8
    mov esi, eax
    mov edi, ebx
    mov eax, edx
    mov ebx, ds
    mov dword ptr [edi + 0xc], 0
    mov ecx, esi
    mov dl, byte ptr [edi + 0x15]
    xor ebp, ebp
    cmp dl, 0x47
    jb loc_004540d5
    jbe loc_004540e2
    cmp dl, 0x66
    jb loc_004540cb
    jbe loc_004540f7
    cmp dl, 0x67
    je loc_004540e2
    jmp loc_00454174
loc_004540cb:
    cmp dl, 0x65
    je loc_004540f2
    jmp loc_00454174
loc_004540d5:
    cmp dl, 0x45
    jb loc_00454174
    jbe loc_004540f2
    jmp loc_004540f7
loc_004540e2:
    cmp dword ptr [edi + 8], 0
    jne loc_004540ef
    mov dword ptr [edi + 8], 1
loc_004540ef:
    sub dl, 2
loc_004540f2:
    mov ebp, 1
loc_004540f7:
    mov ecx, dword ptr [eax]
    add ecx, 8
    mov dword ptr [eax], ecx
    mov eax, dword ptr [ecx - 8]
    mov dword ptr [esp], eax
    mov eax, dword ptr [ecx - 4]
    mov dword ptr [esp + 4], eax
    cmp dword ptr [edi + 8], -1
    jne loc_00454118
    mov dword ptr [edi + 8], 6
loc_00454118:
    mov al, byte ptr [edi + 0x15]
    and al, 0x5f
    and eax, 0xff
    push eax
    xor eax, eax
    mov al, dl
    push eax
    push 3
    push ebp
    mov ebx, dword ptr [edi + 8]
    xor ecx, ecx
    push 0xff
    lea edx, [esp + 0x14]
    mov eax, esi
    call sub_00455758
    xor eax, eax
    mov al, byte ptr [esi]
    cmp eax, 0x2a
    jne loc_0045414d
    mov byte ptr [edi + 0x16], 0x2a
loc_0045414d:
    mov byte ptr [esi + 0xff], 0
loc_00454154:
    xor eax, eax
    mov al, byte ptr [esi]
    cmp eax, 0x20
    jne loc_00454160
    inc esi
    jmp loc_00454154
loc_00454160:
    mov edx, edi
    mov eax, esi
    call sub_00454180
    mov ebx, ds
    mov ecx, esi
    mov dword ptr [edi + 8], 0xffffffff
loc_00454174:
    mov edx, ebx
    mov eax, ecx
    add esp, 8
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00454180:
    push ebx
    mov ebx, edx
    mov dl, byte ptr [edx + 0x14]
    and dl, 1
    and edx, 0xff
    jne loc_004541dd
loc_00454191:
    cmp byte ptr [eax], 0
    je loc_004541a7
    xor edx, edx
    mov dl, byte ptr [eax]
    cmp edx, 0x65
    je loc_004541a7
    cmp edx, 0x45
    je loc_004541a7
    inc eax
    jmp loc_00454191
loc_004541a7:
    mov edx, eax
    mov bl, byte ptr [ebx + 0x15]
    and ebx, 0xff
    dec eax
    cmp ebx, 0x47
    je loc_004541bd
    cmp ebx, 0x67
    jne loc_004541c9
loc_004541bd:
    xor ebx, ebx
    mov bl, byte ptr [eax]
    cmp ebx, 0x30
    jne loc_004541c9
    dec eax
    jmp loc_004541bd
loc_004541c9:
    xor ebx, ebx
    mov bl, byte ptr [eax]
    cmp ebx, 0x2e
    je loc_004541d3
    inc eax
loc_004541d3:
    mov bl, byte ptr [edx]
    inc edx
    mov byte ptr [eax], bl
    inc eax
    test bl, bl
    jne loc_004541d3
loc_004541dd:
    pop ebx
    ret
ptr_004541df:
    push ebx
    mov ebx, edx
    xor edx, edx
    call sub_00455992
    fstp qword ptr [ebx]
    pop ebx
    ret
sub_004541ed:
    push ebx
    push ecx
    push edx
    mov ebx, eax
    test bl, 3
    jne loc_00454222
    mov edx, eax
    mov ecx, 0x64
    sar edx, 0x1f
    idiv ecx
    test edx, edx
    je loc_00454210
loc_00454207:
    mov eax, 1
    pop edx
    pop ecx
    pop ebx
    ret
loc_00454210:
    mov ecx, 0x190
    mov edx, ebx
    mov eax, ebx
    sar edx, 0x1f
    idiv ecx
    test edx, edx
    je loc_00454207
loc_00454222:
    xor eax, eax
    pop edx
    pop ecx
    pop ebx
    ret
sub_00454228:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x24
    mov ebx, eax
    mov ecx, dword ptr [eax + 0x20]
    test ecx, ecx
    jne loc_004542f5
    lea eax, [edx + 0x76c]
    call sub_004541ed
    test eax, eax
    je loc_0045425f
    mov eax, dword ptr [ebx + 0x10]
    mov esi, dword ptr [eax*2 + d_0045b726]
    mov eax, dword ptr [eax*2 + d_0045b724]
    jmp loc_00454270
loc_0045425f:
    mov eax, dword ptr [ebx + 0x10]
    mov esi, dword ptr [eax*2 + d_0045b70c]
    mov eax, dword ptr [eax*2 + d_0045b70a]
loc_00454270:
    sar esi, 0x10
    sar eax, 0x10
    sub esi, eax
    xor edi, edi
    mov ecx, 1
    mov dword ptr [esp], edi
    mov dword ptr [esp + 4], edi
    mov dword ptr [esp + 8], edi
    mov dword ptr [esp + 0xc], ecx
    mov eax, dword ptr [ebx + 0x10]
    mov dword ptr [esp + 0x10], eax
    mov dword ptr [esp + 0x14], edx
    mov eax, esp
    mov dword ptr [esp + 0x20], edi
    call sub_00453539
    mov ebp, dword ptr [esp + 0x18]
    mov edx, dword ptr [ebx + 0x18]
    sub edx, ebp
    add edx, 7
    mov ecx, 7
    mov eax, edx
    sar edx, 0x1f
    idiv ecx
    mov eax, dword ptr [ebx + 0xc]
    cmp eax, 5
    jne loc_004542e3
    lea ecx, [eax - 1]
    mov edi, ecx
    shl edi, 3
    lea eax, [edx + 1]
    sub edi, ecx
    add eax, edi
    cmp eax, esi
    jle loc_004542df
    mov eax, dword ptr [ebx + 0xc]
    sub eax, 2
    jmp loc_004542e4
loc_004542df:
    mov eax, ecx
    jmp loc_004542e4
loc_004542e3:
    dec eax
loc_004542e4:
    mov ebx, dword ptr [esp + 0x1c]
    add ebx, edx
    mov edx, eax
    shl eax, 3
    sub eax, edx
    add eax, ebx
    jmp loc_00454304
loc_004542f5:
    cmp ecx, 1
    jne loc_00454301
    mov eax, dword ptr [eax + 0x1c]
    sub eax, ecx
    jmp loc_00454304
loc_00454301:
    mov eax, dword ptr [eax + 0x1c]
loc_00454304:
    add esp, 0x24
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0045430d:
    push ecx
    push esi
    mov ecx, edx
    mov esi, dword ptr [eax + 0x10]
    cmp esi, dword ptr [edx + 0x10]
    jle loc_00454321
loc_00454319:
    mov eax, 1
    pop esi
    pop ecx
    ret
loc_00454321:
    cmp esi, dword ptr [ecx + 0x10]
    jl loc_0045433c
    mov edx, ebx
    call sub_00454228
    mov esi, eax
    mov edx, ebx
    mov eax, ecx
    call sub_00454228
    cmp esi, eax
    jg loc_00454319
loc_0045433c:
    xor eax, eax
    pop esi
    pop ecx
    ret
sub_00454341:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 0x1c
    mov ecx, eax
    mov eax, dword ptr [d_0045cd16]
    mov dl, byte ptr [eax]
    xor edi, edi
    test dl, dl
    je loc_004545f5
    mov edx, offset d_0045cca4
    mov eax, offset d_0045cc80
    mov ebx, dword ptr [ecx + 0x14]
    call sub_0045430d
    mov dword ptr [esp + 0x14], eax
    test eax, eax
    je loc_00454383
    mov esi, offset d_0045cca4
    mov ebx, offset d_0045cc80
    jmp loc_0045438d
loc_00454383:
    mov esi, offset d_0045cc80
    mov ebx, offset d_0045cca4
loc_0045438d:
    mov eax, dword ptr [ecx + 0x14]
    add eax, 0x76c
    mov ebp, dword ptr [ecx + 0x10]
    call sub_004541ed
    mov edx, eax
    lea eax, [ebp + ebp]
    test edx, edx
    je loc_004543b5
    mov edx, dword ptr [eax + d_0045b726]
    mov eax, dword ptr [eax + d_0045b724]
    jmp loc_004543c1
loc_004543b5:
    mov edx, dword ptr [eax + d_0045b70c]
    mov eax, dword ptr [eax + d_0045b70a]
loc_004543c1:
    sar edx, 0x10
    sar eax, 0x10
    sub edx, eax
    mov dword ptr [esp + 0xc], edx
    xor edx, edx
    mov eax, dword ptr [esi + 0x20]
    mov dword ptr [esp + 0x10], edx
    test eax, eax
    jne loc_00454491
    mov eax, dword ptr [esi + 0x10]
    cmp ebp, eax
    jle loc_004543ef
    mov edi, 1
    jmp loc_004544ca
loc_004543ef:
    jne loc_004544ca
    mov edx, dword ptr [ecx + 0x18]
    mov eax, dword ptr [esi + 0x18]
    add edx, 7
    sub edx, eax
    mov dword ptr [esp + 0x18], 7
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [esp + 0x18]
    mov eax, dword ptr [ecx + 0xc]
    sub eax, edx
    mov edx, dword ptr [ecx + 0x18]
    mov dword ptr [esp], eax
    add edx, 6
    sub edx, dword ptr [esi + 0x18]
    mov dword ptr [esp + 0x18], 7
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [esp + 0x18]
    mov eax, dword ptr [ecx + 0xc]
    dec eax
    sub eax, edx
    mov edx, dword ptr [esi + 0xc]
    mov dword ptr [esp + 8], eax
    cmp edx, 5
    jne loc_0045446a
    mov eax, dword ptr [esp + 0xc]
    mov edx, dword ptr [esp]
    sub eax, 7
    cmp eax, edx
    # jge 0x4544ca
    .byte 0x0f,0x8d
    .long loc_004544ca - . - 4
    mov edx, dword ptr [esp + 8]
    mov edi, 1
    cmp eax, edx
    # jl 0x4544ca
    .byte 0x0f,0x8c
    .long loc_004544ca - . - 4
    jmp loc_004544c6
loc_0045446a:
    lea eax, [edx - 1]
    mov dword ptr [esp + 0x18], eax
    mov edx, dword ptr [esp + 0x18]
    shl eax, 3
    sub eax, edx
    mov edx, dword ptr [esp]
    inc eax
    cmp eax, edx
    jg loc_004544ca
    mov edx, dword ptr [esp + 8]
    mov edi, 1
    cmp eax, edx
    jle loc_004544ca
    jmp loc_004544c6
loc_00454491:
    mov edx, dword ptr [esi + 0x1c]
    cmp eax, 1
    jne loc_004544b8
    mov eax, dword ptr [ecx + 0x14]
    add eax, 0x76c
    call sub_004541ed
    test eax, eax
    je loc_004544b7
    mov eax, dword ptr [d_0045b70e]
    sar eax, 0x10
    cmp edx, eax
    jle loc_004544b7
    inc edx
loc_004544b7:
    dec edx
loc_004544b8:
    mov eax, dword ptr [ecx + 0x1c]
    cmp edx, eax
    jg loc_004544ca
    mov edi, 1
    jne loc_004544ca
loc_004544c6:
    mov dword ptr [esp + 0x10], edi
loc_004544ca:
    cmp dword ptr [esp + 0x10], 0
    je loc_004544e7
    mov edx, esi
    mov eax, ecx
    call sub_00454604
    test eax, eax
    sete al
    mov edi, eax
    and edi, 0xff
loc_004544e7:
    test edi, edi
    jne loc_004544fe
    mov edx, dword ptr [esp + 0x14]
    test edx, edx
    je loc_004545f5
    mov edi, edx
    jmp loc_004545f5
loc_004544fe:
    mov eax, dword ptr [ebx + 0x20]
    xor esi, esi
    test eax, eax
    jne loc_004545a1
    mov eax, dword ptr [ebx + 0x10]
    cmp ebp, eax
    jle loc_00454519
    xor edi, edi
    jmp loc_004545da
loc_00454519:
    jne loc_004545da
    mov edx, dword ptr [ecx + 0x18]
    mov ebp, dword ptr [ebx + 0x18]
    add edx, 7
    sub edx, ebp
    mov ebp, 7
    mov eax, edx
    sar edx, 0x1f
    idiv ebp
    mov eax, dword ptr [ecx + 0xc]
    sub eax, edx
    mov edx, dword ptr [ecx + 0x18]
    mov dword ptr [esp + 4], eax
    add edx, 6
    mov eax, dword ptr [ebx + 0x18]
    sub edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv ebp
    mov eax, dword ptr [ecx + 0xc]
    dec eax
    xor edi, edi
    sub eax, edx
    mov ebp, dword ptr [ebx + 0xc]
    mov edx, eax
    cmp ebp, 5
    jne loc_00454582
    mov eax, dword ptr [esp + 0xc]
    mov ebp, dword ptr [esp + 4]
    sub eax, 7
    cmp eax, ebp
    jl loc_0045457c
loc_00454572:
    mov edi, 1
    # jmp 0x4545da
    .byte 0xe9
    .long loc_004545da - . - 4
loc_0045457c:
    cmp edx, eax
    jg loc_004545da
    jmp loc_004545d5
loc_00454582:
    lea eax, [ebp - 1]
    mov dword ptr [esp + 0x18], eax
    mov ebp, dword ptr [esp + 0x18]
    shl eax, 3
    sub eax, ebp
    mov ebp, dword ptr [esp + 4]
    inc eax
    cmp eax, ebp
    jg loc_00454572
    cmp edx, eax
    jge loc_004545da
    jmp loc_004545d5
loc_004545a1:
    mov edx, dword ptr [ebx + 0x1c]
    cmp eax, 1
    jne loc_004545c8
    mov eax, dword ptr [ecx + 0x14]
    add eax, 0x76c
    call sub_004541ed
    test eax, eax
    je loc_004545c7
    mov eax, dword ptr [d_0045b70e]
    sar eax, 0x10
    cmp edx, eax
    jle loc_004545c7
    inc edx
loc_004545c7:
    dec edx
loc_004545c8:
    mov eax, dword ptr [ecx + 0x1c]
    cmp edx, eax
    jg loc_004545da
    xor edi, edi
    cmp edx, eax
    jne loc_004545da
loc_004545d5:
    mov esi, 1
loc_004545da:
    test esi, esi
    je loc_004545e9
    mov edx, ebx
    mov eax, ecx
    call sub_00454604
    mov edi, eax
loc_004545e9:
    mov eax, dword ptr [esp + 0x14]
    test eax, eax
    je loc_004545f5
    sub eax, edi
    mov edi, eax
loc_004545f5:
    mov eax, edi
    mov dword ptr [ecx + 0x20], edi
    add esp, 0x1c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00454604:
    push ebx
    push ecx
    push esi
    push ebp
    mov ecx, dword ptr [eax + 8]
    mov esi, dword ptr [edx + 8]
    xor ebx, ebx
    cmp ecx, esi
    jl loc_00454628
    jne loc_0045462d
    mov ecx, dword ptr [eax + 4]
    mov ebp, dword ptr [edx + 4]
    cmp ecx, ebp
    jl loc_00454628
    jne loc_0045462d
    mov eax, dword ptr [eax]
    cmp eax, dword ptr [edx]
    jge loc_0045462d
loc_00454628:
    mov ebx, 1
loc_0045462d:
    mov eax, ebx
    pop ebp
    pop esi
    pop ecx
    pop ebx
    ret
sub_00454634:
    push esi
    push edi
    push ebp
    mov edi, eax
    mov esi, edx
    mov eax, ebx
    cmp edx, 0xa8c0
    jae loc_00454661
    test ebx, ebx
    jle loc_00454661
    lea esi, [edx + 0x15180]
    sub esi, ebx
    xor edx, edx
    mov ebx, 0x15180
    mov eax, esi
    div ebx
    add edi, eax
    dec edi
    jmp loc_00454670
loc_00454661:
    mov ebx, 0x15180
    sub esi, eax
    xor edx, edx
    mov eax, esi
    div ebx
    add edi, eax
loc_00454670:
    mov ebx, 0x15180
    mov eax, esi
    xor edx, edx
    div ebx
    mov ebx, edx
    mov esi, 0xe10
    mov eax, ebx
    xor edx, edx
    div esi
    xor edx, edx
    mov dword ptr [ecx + 8], eax
    mov eax, ebx
    div esi
    mov ebx, edx
    mov esi, 0x3c
    mov eax, ebx
    xor edx, edx
    div esi
    xor edx, edx
    mov dword ptr [ecx + 4], eax
    mov eax, ebx
    div esi
    mov ebx, 0x16e
    mov eax, edi
    mov dword ptr [ecx], edx
    xor edx, edx
    div ebx
    mov edx, eax
    shl eax, 3
    add eax, edx
    shl eax, 3
    add eax, edx
    mov ebx, eax
    shl eax, 2
    add eax, ebx
    mov ebx, edi
    sub ebx, eax
    test edx, edx
    jbe loc_004546d7
    lea eax, [edx - 1]
    shr eax, 2
    sub ebx, eax
loc_004546d7:
    lea eax, [edx + 0x76c]
    call sub_004541ed
    add eax, 0x16d
loc_004546e7:
    cmp ebx, eax
    jb loc_004546f0
    inc edx
    sub ebx, eax
    jmp loc_004546e7
loc_004546f0:
    mov esi, offset d_0045b70c
    mov dword ptr [ecx + 0x14], edx
    lea eax, [edx + 0x76c]
    mov dword ptr [ecx + 0x1c], ebx
    call sub_004541ed
    test eax, eax
    je loc_0045470f
    mov esi, offset d_0045b726
loc_0045470f:
    mov ebp, 0x1f
    mov eax, ebx
    xor edx, edx
    div ebp
    mov edx, eax
    mov edx, dword ptr [esi + edx*2]
    sar edx, 0x10
    cmp ebx, edx
    jb loc_00454727
    inc eax
loc_00454727:
    mov dword ptr [ecx + 0x10], eax
    movsx eax, word ptr [esi + eax*2]
    sub ebx, eax
    xor edx, edx
    inc ebx
    lea eax, [edi + 1]
    mov dword ptr [ecx + 0xc], ebx
    mov ebx, 7
    div ebx
    mov eax, ecx
    mov dword ptr [ecx + 0x18], edx
    pop ebp
    pop edi
    pop esi
    ret
sub_00454749:
    push ebx
    push ecx
    mov dword ptr [edx + 0x20], 0
    mov ecx, edx
    mov eax, dword ptr [eax]
    xor ebx, ebx
    mov edx, eax
    mov eax, 0x63df
    call sub_00454634
    pop ecx
    pop ebx
    ret
    push ebx
    push edx
    mov ebx, eax
    call dword ptr [d_0045c630]
    lea edx, [eax + 0x14]
    mov eax, ebx
    call sub_00454749
    pop edx
    pop ebx
    ret
    push ebx
    push ecx
    push edx
    mov edx, eax
    mov eax, dword ptr [d_0045cd1a]
    mov cl, byte ptr [d_0045cd1a]
    and eax, 1
    and cl, 0xfe
    mov ebx, eax
    mov byte ptr [d_0045cd1a], cl
    not ebx
    mov ecx, dword ptr [d_0045cd1a]
    and ebx, 1
    or ecx, ebx
    mov dword ptr [d_0045cd1a], ecx
    test edx, edx
    setne dl
    mov ch, byte ptr [d_0045cd1a]
    and edx, 1
    and ch, 0xfd
    mov byte ptr [d_0045cd1a], ch
    add edx, edx
    or dword ptr [d_0045cd1a], edx
    pop edx
    pop ecx
    pop ebx
    ret
loc_004547d2:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 0xac
    mov ah, byte ptr [d_0045cd1a]
    test ah, 1
    je loc_004547f0
    test ah, 2
    jne loc_004548bd
loc_004547f0:
    mov dh, byte ptr [d_0045cd1a]
    mov eax, esp
    or dh, 2
    push eax
    mov byte ptr [d_0045cd1a], dh
    call sub_00457b6e
    cmp eax, 1
    jb loc_004548bd
    jbe loc_00454847
    cmp eax, 2
    jne loc_004548bd
    mov dword ptr [d_0045ccd0], 1
    mov edx, dword ptr [esp + 0xa8]
    mov eax, edx
    shl eax, 4
    sub eax, edx
    shl eax, 2
    mov ebx, eax
    mov dword ptr [d_0045cccc], eax
    neg ebx
    mov dword ptr [d_0045cccc], ebx
    jmp loc_0045484f
loc_00454847:
    xor ecx, ecx
    mov dword ptr [d_0045ccd0], ecx
loc_0045484f:
    mov edx, dword ptr [esp + 0x54]
    mov esi, dword ptr [esp]
    add edx, esi
    mov eax, edx
    shl eax, 4
    sub eax, edx
    mov bl, 0x20
    shl eax, 2
    lea edx, [esp + 4]
    mov dword ptr [d_0045ccc8], eax
    mov eax, offset d_0045ccd4
    jmp loc_00454889
loc_00454874:
    and ebx, 0xff
    cmp ebx, 0x20
    jne loc_00454884
    mov bl, byte ptr [edx]
    mov byte ptr [eax], bl
    inc eax
loc_00454884:
    mov bl, byte ptr [edx]
    add edx, 2
loc_00454889:
    cmp word ptr [edx], 0
    jne loc_00454874
    mov bl, 0x20
    lea edx, [esp + 0x58]
    mov byte ptr [eax], 0
    mov eax, offset d_0045ccf3
    jmp loc_004548b4
loc_0045489f:
    and ebx, 0xff
    cmp ebx, 0x20
    jne loc_004548af
    mov bl, byte ptr [edx]
    mov byte ptr [eax], bl
    inc eax
loc_004548af:
    mov bl, byte ptr [edx]
    add edx, 2
loc_004548b4:
    cmp word ptr [edx], 0
    jne loc_0045489f
    mov byte ptr [eax], 0
loc_004548bd:
    add esp, 0xac
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004548c8:
    mov eax, offset d_0045b5c0
    call sub_00451fb1
    test eax, eax
    je loc_004547d2
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    sub esp, 4
    xor edx, edx
    mov ebx, offset d_0045ccc8
    mov dword ptr [d_0045ccd0], edx
    mov edx, offset d_0045ccd4
    call sub_00454935
    mov ecx, eax
    mov ah, byte ptr [eax]
    test ah, ah
    jne loc_00454b62
    mov byte ptr [d_0045ccf3], ah
    jmp loc_00454c26
sub_00454911:
    push ebx
    push ecx
    mov ecx, edx
    xor ebx, ebx
loc_00454917:
    xor edx, edx
    mov dl, byte ptr [eax]
    cmp edx, 0x30
    jl loc_00454930
    cmp edx, 0x39
    jg loc_00454930
    imul ebx, ebx, 0xa
    add edx, ebx
    inc eax
    lea ebx, [edx - 0x30]
    jmp loc_00454917
loc_00454930:
    mov dword ptr [ecx], ebx
    pop ecx
    pop ebx
    ret
sub_00454935:
    push ecx
    push esi
    push edi
    push ebp
    sub esp, 0x14
    mov ebp, eax
    mov dword ptr [esp + 0x10], edx
    xor eax, eax
    mov al, byte ptr [ebp]
    cmp eax, 0x3a
    jne loc_0045494d
    inc ebp
loc_0045494d:
    mov esi, ebp
loc_0045494f:
    mov dl, byte ptr [ebp]
    test dl, dl
    je loc_00454976
    xor eax, eax
    mov al, dl
    cmp eax, 0x2c
    je loc_00454976
    cmp eax, 0x2d
    je loc_00454976
    cmp eax, 0x2b
    je loc_00454976
    cmp eax, 0x30
    jl loc_00454973
    cmp eax, 0x39
    jle loc_00454976
loc_00454973:
    inc ebp
    jmp loc_0045494f
loc_00454976:
    mov eax, ebp
    sub eax, esi
    mov dword ptr [esp + 0xc], eax
    cmp eax, 0x1e
    jle loc_0045498b
    mov dword ptr [esp + 0xc], 0x1e
loc_0045498b:
    mov ecx, dword ptr [esp + 0xc]
    mov edi, dword ptr [esp + 0x10]
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
    mov ecx, dword ptr [esp + 0xc]
    lea eax, [edi + ecx]
    mov byte ptr [eax], 0
    xor eax, eax
    xor ecx, ecx
    mov al, dl
    lea edx, [ebp + 1]
    cmp eax, 0x2d
    jne loc_004549c8
    mov ecx, 1
    jmp loc_004549cd
loc_004549c8:
    cmp eax, 0x2b
    jne loc_004549cf
loc_004549cd:
    mov ebp, edx
loc_004549cf:
    mov al, byte ptr [ebp]
    and eax, 0xff
    cmp eax, 0x30
    # jl 0x454a54
    .byte 0x0f,0x8c
    .long loc_00454a54 - . - 4
    cmp eax, 0x39
    jg loc_00454a54
    lea edx, [esp + 8]
    xor esi, esi
    mov eax, ebp
    mov dword ptr [esp], esi
    mov dword ptr [esp + 4], esi
    mov dword ptr [esp + 8], esi
    call sub_00454911
    xor edx, edx
    mov dl, byte ptr [eax]
    mov ebp, eax
    cmp edx, 0x3a
    jne loc_00454a27
    lea edx, [esp + 4]
    inc eax
    call sub_00454911
    xor edx, edx
    mov dl, byte ptr [eax]
    mov ebp, eax
    cmp edx, 0x3a
    jne loc_00454a27
    mov edx, esp
    inc eax
    call sub_00454911
    mov ebp, eax
loc_00454a27:
    mov esi, dword ptr [esp + 8]
    mov eax, esi
    shl eax, 4
    sub eax, esi
    mov esi, dword ptr [esp + 4]
    shl eax, 2
    add esi, eax
    mov eax, esi
    shl eax, 4
    sub eax, esi
    mov edx, dword ptr [esp]
    shl eax, 2
    add edx, eax
    mov dword ptr [ebx], edx
    test ecx, ecx
    je loc_00454a54
    neg edx
    mov dword ptr [ebx], edx
loc_00454a54:
    mov eax, ebp
    add esp, 0x14
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00454a5e:
    push ebx
    push ecx
    push esi
    sub esp, 0x10
    mov ebx, eax
    mov ecx, edx
    xor eax, eax
    mov al, byte ptr [ebx]
    mov esi, 0xffffffff
    cmp eax, 0x4a
    jne loc_00454a7d
    mov esi, 1
    add ebx, esi
loc_00454a7d:
    xor eax, eax
    mov al, byte ptr [ebx]
    cmp eax, 0x4d
    jne loc_00454a89
    inc ebx
    xor esi, esi
loc_00454a89:
    lea edx, [esp + 0xc]
    mov eax, ebx
    mov dword ptr [ecx + 0x20], esi
    call sub_00454911
    mov edx, eax
    mov ebx, eax
    test esi, esi
    je loc_00454aa8
    mov eax, dword ptr [esp + 0xc]
    mov dword ptr [ecx + 0x1c], eax
    jmp loc_00454af5
loc_00454aa8:
    mov eax, dword ptr [esp + 0xc]
    dec eax
    mov dword ptr [ecx + 0x10], eax
    xor eax, eax
    mov al, byte ptr [edx]
    cmp eax, 0x2e
    jne loc_00454aee
    lea eax, [edx + 1]
    lea edx, [esp + 0xc]
    call sub_00454911
    mov edx, eax
    mov ebx, eax
    mov eax, dword ptr [esp + 0xc]
    mov dword ptr [ecx + 0xc], eax
    xor eax, eax
    mov al, byte ptr [edx]
    cmp eax, 0x2e
    jne loc_00454aee
    lea eax, [edx + 1]
    lea edx, [esp + 0xc]
    call sub_00454911
    mov ebx, eax
    mov eax, dword ptr [esp + 0xc]
    mov dword ptr [ecx + 0x18], eax
loc_00454aee:
    mov dword ptr [ecx + 0x1c], 0
loc_00454af5:
    mov edx, 2
    xor esi, esi
    xor eax, eax
    mov dword ptr [esp + 8], edx
    mov dword ptr [esp], esi
    mov dword ptr [esp + 4], esi
    mov al, byte ptr [ebx]
    cmp eax, 0x2f
    jne loc_00454b46
    lea edx, [esp + 8]
    lea eax, [ebx + 1]
    call sub_00454911
    xor edx, edx
    mov dl, byte ptr [eax]
    mov ebx, eax
    cmp edx, 0x3a
    jne loc_00454b46
    lea edx, [esp + 4]
    inc eax
    call sub_00454911
    xor edx, edx
    mov dl, byte ptr [eax]
    mov ebx, eax
    cmp edx, 0x3a
    jne loc_00454b46
    mov edx, esp
    inc eax
    call sub_00454911
    mov ebx, eax
loc_00454b46:
    mov eax, dword ptr [esp]
    mov dword ptr [ecx], eax
    mov eax, dword ptr [esp + 4]
    mov dword ptr [ecx + 4], eax
    mov eax, dword ptr [esp + 8]
    mov dword ptr [ecx + 8], eax
    mov eax, ebx
    add esp, 0x10
    pop esi
    pop ecx
    pop ebx
    ret
loc_00454b62:
    mov ebx, 1
    mov edx, offset d_0045ccf3
    mov eax, dword ptr [d_0045ccc8]
    mov dword ptr [d_0045ccd0], ebx
    sub eax, 0xe10
    mov ebx, esp
    mov dword ptr [esp], eax
    mov eax, ecx
    call sub_00454935
    mov ecx, dword ptr [esp]
    mov ebx, dword ptr [d_0045ccc8]
    sub ebx, ecx
    mov dword ptr [d_0045cccc], ebx
    xor ebx, ebx
    mov bl, byte ptr [eax]
    mov edx, eax
    cmp ebx, 0x2c
    jne loc_00454bb1
    mov edx, offset d_0045cc80
    inc eax
    call sub_00454a5e
    mov edx, eax
loc_00454bb1:
    xor eax, eax
    mov al, byte ptr [edx]
    cmp eax, 0x2c
    jne loc_00454c26
    lea eax, [edx + 1]
    mov edx, offset d_0045cca4
    call sub_00454a5e
    mov eax, dword ptr [d_0045cccc]
    mov edx, eax
    mov ebx, 0xe10
    sar edx, 0x1f
    idiv ebx
    mov esi, dword ptr [d_0045ccac]
    sub esi, eax
    mov eax, dword ptr [d_0045cccc]
    mov edx, eax
    mov ebx, 0x3c
    sar edx, 0x1f
    idiv ebx
    mov edx, eax
    sar edx, 0x1f
    idiv ebx
    mov edi, dword ptr [d_0045cca8]
    mov eax, dword ptr [d_0045cccc]
    sub edi, edx
    mov edx, eax
    sar edx, 0x1f
    idiv ebx
    mov ebp, dword ptr [d_0045cca4]
    mov dword ptr [d_0045ccac], esi
    sub ebp, edx
    mov dword ptr [d_0045cca8], edi
    mov dword ptr [d_0045cca4], ebp
loc_00454c26:
    add esp, 4
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00454c30:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    cmp dword ptr [d_0045cc74], 0
    jne loc_00454ce2
    mov edi, dword ptr [d_0045c959]
    xor ecx, ecx
    xor dl, dl
    mov eax, edi
loc_00454c4e:
    cmp dl, byte ptr [eax]
    je loc_00454c64
loc_00454c52:
    mov dh, byte ptr [eax]
    lea ebx, [eax + 1]
    cmp dl, dh
    je loc_00454c5f
    mov eax, ebx
    jmp loc_00454c52
loc_00454c5f:
    inc ecx
    mov eax, ebx
    jmp loc_00454c4e
loc_00454c64:
    sub eax, edi
    jne loc_00454c6d
    mov eax, 1
loc_00454c6d:
    call sub_004529cc
    mov edx, eax
    mov ebx, eax
    test eax, eax
    je loc_00454ce2
    mov eax, ecx
    shl eax, 2
    add eax, 4
    add eax, ecx
    call sub_004529cc
    test eax, eax
    je loc_00454cdb
    mov dword ptr [d_0045cc74], eax
    xor esi, esi
    xor ecx, ecx
    mov eax, edi
loc_00454c98:
    cmp byte ptr [eax], 0
    je loc_00454cb6
    mov edx, dword ptr [d_0045cc74]
    mov dword ptr [ecx + edx], ebx
loc_00454ca6:
    mov dl, byte ptr [eax]
    inc eax
    mov byte ptr [ebx], dl
    inc ebx
    test dl, dl
    jne loc_00454ca6
    add ecx, 4
    inc esi
    jmp loc_00454c98
loc_00454cb6:
    mov edx, dword ptr [d_0045cc74]
    mov dword ptr [ecx + edx], 0
    add ecx, 4
    add edx, ecx
    mov ebx, esi
    mov dword ptr [d_0045cc78], edx
    mov eax, edx
    xor edx, edx
    call sub_00451940
    jmp loc_00454ce2
loc_00454cdb:
    mov eax, edx
    call sub_00452b35
loc_00454ce2:
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00454ce8:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 0x18
    mov ebx, eax
    mov eax, dword ptr [d_0045cd20]
    cmp eax, 1
    jb loc_00454d59
    jbe loc_00454d04
    cmp eax, 2
    je loc_00454d3b
    jmp loc_00454d59
loc_00454d04:
    mov ebx, dword ptr [d_004a607c]
    dec ebx
    mov ecx, dword ptr [d_004a6078]
    mov dword ptr [d_004a607c], ebx
    test ecx, ecx
    je loc_00454d27
    test ebx, ebx
    jne loc_00454d31
    mov dword ptr [d_0045cd20], ebx
    jmp loc_00454d31
loc_00454d27:
    mov dword ptr [d_0045cd20], 2
loc_00454d31:
    mov eax, dword ptr [d_004a6078]
    jmp loc_00454deb
loc_00454d3b:
    cmp dword ptr [d_004a607c], 0
    setne al
    and eax, 0xff
    mov dword ptr [d_0045cd20], eax
    mov eax, dword ptr [d_004a6074]
    jmp loc_00454deb
loc_00454d59:
    lea eax, [esp + 0x14]
    push eax
    push 1
    lea eax, [esp + 8]
    push eax
    push ebx
    call sub_00457b68
    test eax, eax
    # je 0x454de6
    .byte 0x0f,0x84
    .long loc_00454de6 - . - 4
    mov eax, esp
    call sub_0044f070
    test eax, eax
    je loc_00454d59
    xor eax, eax
    mov ax, word ptr [esp + 8]
    dec eax
    mov dword ptr [d_004a607c], eax
    xor eax, eax
    mov al, byte ptr [esp + 0xe]
    mov dword ptr [d_004a6078], eax
    test byte ptr [esp + 0x11], 1
    jne loc_00454da6
    cmp dword ptr [d_004a6078], 0
    jne loc_00454dca
loc_00454da6:
    mov esi, 2
    xor eax, eax
    xor ecx, ecx
    mov ax, word ptr [esp + 0xc]
    mov dword ptr [d_004a6078], ecx
    mov dword ptr [d_0045cd20], esi
    mov dword ptr [d_004a6074], eax
    jmp loc_00454d31
loc_00454dca:
    cmp dword ptr [d_004a607c], 0
    je loc_00454d31
    mov dword ptr [d_0045cd20], 1
    jmp loc_00454d31
loc_00454de6:
    mov eax, 0xffffffff
loc_00454deb:
    add esp, 0x18
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00454df3:
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 4
    mov eax, dword ptr [d_0045c948]
    test eax, eax
    je loc_00454e0d
    xor esi, esi
    mov dword ptr [d_0045c948], esi
    jmp loc_00454e61
loc_00454e0d:
    cmp dword ptr [d_0045c99c], 0
    je loc_00454e26
    call dword ptr [d_0045c968]
    call dword ptr [d_0045c99c]
    mov esi, eax
    jmp loc_00454e5f
loc_00454e26:
    call dword ptr [d_0045c634]
    call sub_0044f105
    mov ebx, eax
    mov eax, esp
    push eax
    push ebx
    call sub_00457b62
    push 0
    push ebx
    call sub_00457b5c
    mov eax, ebx
    call sub_00454ce8
    mov ecx, dword ptr [esp]
    push ecx
    push ebx
    mov esi, eax
    call sub_00457b5c
    xor eax, eax
    call dword ptr [d_0045c638]
loc_00454e5f:
    mov eax, esi
loc_00454e61:
    add esp, 4
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00454e69:
    push ebx
    push ecx
    push edx
    sub esp, 8
    mov ebx, eax
    mov edx, dword ptr [d_0045c9a4]
    mov byte ptr [esp + 4], bl
    test edx, edx
    je loc_00454e94
    mov eax, 1
    mov edx, ebx
    call dword ptr [d_0045c968]
    call dword ptr [d_0045c9a4]
    jmp loc_00454ec2
loc_00454e94:
    mov eax, 1
    call dword ptr [d_0045c634]
    call sub_0044f110
    push edx
    lea edx, [esp + 4]
    push edx
    push 1
    lea edx, [esp + 0x10]
    push edx
    push eax
    call sub_00457b56
    mov eax, 1
    call dword ptr [d_0045c638]
loc_00454ec2:
    mov eax, ebx
    add esp, 8
    pop edx
    pop ecx
    pop ebx
    ret
sub_00454ecb:
    push ebx
    push ecx
    mov ebx, edx
    push eax
    call sub_00457b50
    cmp eax, -1
    jne loc_00454ee2
    call sub_0044eeb5
    pop ecx
    pop ebx
    ret
loc_00454ee2:
    test bl, 2
    je loc_00454ef8
    test al, 1
    je loc_00454ef8
    mov eax, 5
    call sub_0044ee64
    pop ecx
    pop ebx
    ret
loc_00454ef8:
    xor eax, eax
    pop ecx
    pop ebx
    ret
    push ebx
loc_00454efe:
    mov bl, byte ptr [edx]
    mov byte ptr [eax], bl
    test bl, bl
    je loc_00454f0a
    inc eax
    inc edx
    jmp loc_00454efe
loc_00454f0a:
    pop ebx
    ret
    .byte 0x56,0x57,0xc8,0x08,0x00,0x00,0x89,0xc6,0x89,0xd7,0x89,0x5d,0xf8,0x85,0xd2,0x75
    .byte 0x06,0x8b,0x3d
    .long d_0045cc74
    .byte 0x31,0xdb,0x85,0xff,0x74,0x16,0x89,0xfa,0xeb,0x0d,0x8b,0x02,0xe8,0x77,0xce,0xff
    .byte 0xff,0x40,0x83,0xc2,0x04,0x01,0xc3,0x83,0x3a,0x00,0x75,0xee,0x43,0x83,0x7d,0x18
    .byte 0x00,0x74,0x0c,0x8b,0x06,0xe8,0x5e,0xce,0xff,0xff,0x83,0xc0,0x03,0x01,0xc3,0xa1
    .long d_0045ca44
    .byte 0x83,0xc3,0x0f,0x89,0x45,0xfc,0x89,0xd8,0xc7,0x05
    .long d_0045ca44
    .byte 0x10,0x00,0x00,0x00,0xe8,0x5e,0xda,0xff,0xff,0x85,0xc0,0x75,0x31,0x89,0xd8,0xe8
    .byte 0x53,0xda,0xff,0xff,0x85,0xc0,0x75,0x26,0xb8,0x05,0x00,0x00,0x00,0xe8,0x3c,0x79
    .byte 0xff,0xff,0xb8,0x08,0x00,0x00,0x00,0xe8,0x57,0x79,0xff,0xff,0x8b,0x45,0xfc,0xa3
    .long d_0045ca44
    .byte 0xb8,0xff,0xff,0xff,0xff,0xe9,0x75,0x00,0x00,0x00,0x8b,0x55,0xfc,0x89,0x15
    .long d_0045ca44
    .byte 0x8b,0x55,0xf8,0x89,0x02,0x8b,0x55,0x10,0xc7,0x02,0x00,0x00,0x00,0x00,0x89,0x01
    .byte 0x85,0xff,0x74,0x14,0x89,0xf9,0xeb,0x0b,0x8b,0x11,0xe8,0x32,0xff,0xff,0xff,0x40
    .byte 0x83,0xc1,0x04,0x83,0x39,0x00,0x75,0xf0,0xc6,0x00,0x00,0x40,0x83,0x7d,0x18,0x00
    .byte 0x74,0x09,0x40,0x40,0x8b,0x16,0xe8,0xb7,0xc8,0xff,0xff,0x31,0xd2,0x83,0x3e,0x00
    .byte 0x74,0x1a,0x83,0xc6,0x04,0xeb,0x0f,0x85,0xd2,0x74,0x01,0x42,0xe8,0xae,0xcd,0xff
    .byte 0xff,0x83,0xc6,0x04,0x01,0xc2,0x8b,0x06,0x85,0xc0,0x75,0xeb,0x8b,0x45,0x14,0x81
    .byte 0xc2,0x08,0x01,0x00,0x00,0x89,0x10,0x89,0xd8,0xc1,0xe8,0x04,0xc9,0x5f,0x5e,0xc2
    .byte 0x0c,0x00,0x56,0x57,0x89,0xc7,0x89,0xd6,0x89,0xd8,0x85,0xc9,0x75,0x0b,0x89,0xfa
    .byte 0xe8,0xcc,0xfe,0xff,0xff,0xc6,0x00,0x20,0x40,0x83,0x3e,0x00,0x74,0x1f,0x83,0xc6
    .byte 0x04,0x83,0x3e,0x00,0x74,0x17,0x8b,0x16,0x83,0xc6,0x04,0xe8,0xb1,0xfe,0xff,0xff
    .byte 0x89,0xc2,0x83,0x3e,0x00,0x74,0x06,0xc6,0x00,0x20,0x40,0xeb,0xe9,0xc6,0x00,0x00
    .byte 0x5f,0x5e,0xc3,0x56,0x57,0x89,0xd6,0x89,0xdf,0x85,0xc0,0x75,0x05,0x89,0xd0,0x5f
    .byte 0x5e,0xc3,0x89,0x10,0x89,0xca,0x29,0xda,0x81,0xfa,0x07,0x01,0x00,0x00,0x72,0x05
    .byte 0xba,0x06,0x01,0x00,0x00,0x89,0xf8,0xe8,0xfd,0x0a,0x00,0x00,0x89,0xc1,0x89,0xc3
    .byte 0x89,0xfa,0x89,0xf0,0xe8,0xbd,0x0d,0x00,0x00,0x89,0xca,0x89,0xf0,0xe8,0x25,0x0b
    .byte 0x00,0x00,0x89,0xca,0xc6,0x04,0x06,0x00,0x89,0xf0,0xe8,0x18,0x0b,0x00,0x00,0x01
    .byte 0xf0,0x40,0x5f,0x5e,0xc3,0x56,0x57,0x55,0x83,0xec,0x08,0x89,0xc6,0x89,0xd5,0x89
    .byte 0x0c,0x24,0x80,0x38,0x00,0x74,0x2f,0x31,0xc0,0x8a,0x46,0x01,0x83,0xf8,0x3a,0x75
    .byte 0x25,0x85,0xdb,0x74,0x11,0x89,0x13,0x8a,0x06,0xc6,0x42,0x01,0x3a,0xc6,0x42,0x02
    .byte 0x00,0x8d,0x6a,0x03,0x88,0x02,0xba,0x02,0x00,0x00,0x00,0x89,0xf0,0xe8,0x06,0x0b
    .byte 0x00,0x00,0x89,0xc6,0xeb,0x0b,0x85,0xdb,0x74,0x07,0x89,0x2b,0xc6,0x45,0x00,0x00
    .byte 0x45,0x89,0x74,0x24,0x04,0x89,0xf3,0x31,0xff,0x89,0xf0,0xe8,0x19,0x0e,0x00,0x00
    .byte 0x89,0xc2,0x85,0xc0,0x74,0x3b,0x83,0xf8,0x2e,0x75,0x05,0x89,0xf7,0x46,0xeb,0xe9
    .byte 0x83,0x3d
    .long d_0045cd2c
    .byte 0x00,0x74,0x13,0x31,0xc0,0x8a,0x06,0x8a,0x80
    .long d_0045cd31
    .byte 0x24,0x01,0x25,0xff,0x00,0x00,0x00,0xeb,0x02,0x31,0xc0,0x46,0x01,0xc6,0x83,0xfa
    .byte 0x5c,0x74,0x05,0x83,0xfa,0x2f,0x75,0xbe,0x89,0x74,0x24,0x04,0xeb,0xb6,0x8b,0x4c
    .byte 0x24,0x04,0x8b,0x04,0x24,0x89,0xea,0xe8,0x04,0xff,0xff,0xff,0x89,0xc5,0x85,0xff
    .byte 0x75,0x02,0x89,0xf7,0x8b,0x5c,0x24,0x04,0x8b,0x44,0x24,0x18,0x89,0xf9,0x89,0xea
    .byte 0xe8,0xeb,0xfe,0xff,0xff,0x89,0xf1,0x89,0xfb,0x89,0xc2,0x8b,0x44,0x24,0x1c,0xe8
    .byte 0xdc,0xfe,0xff,0xff,0x83,0xc4,0x08,0x5d,0x5f,0x5e,0xc2,0x08,0x00,0x83,0xf8,0x5c
    .byte 0x74,0x05,0x83,0xf8,0x2f,0x75,0x09,0x83,0x3a,0x00,0x75,0x02,0x89,0x02,0x8b,0x02
    .byte 0xc3,0x56,0x57,0x55,0x83,0xec,0x08,0x89,0xc5,0x31,0xf6,0x89,0x04,0x24,0x89,0x74
    .byte 0x24,0x04,0x85,0xd2,0x74,0x0f,0x8a,0x22,0x84,0xe4,0x74,0x09,0x88,0x65,0x00,0x45
    .byte 0xc6,0x45,0x00,0x3a,0x45,0xc6,0x45,0x00,0x00,0x85,0xdb,0x0f,0x84,0xb2,0x00,0x00
    .byte 0x00,0x80,0x3b,0x00,0x0f,0x84,0xa9,0x00,0x00,0x00,0x89,0xd8,0x8d,0x54,0x24,0x04
    .byte 0xe8,0x41,0x0d,0x00,0x00,0xe8,0xa3,0xff,0xff,0xff,0xe8,0x8f,0x0d,0x00,0x00,0x89
    .byte 0xef,0x89,0xc6,0x57,0x8a,0x06,0x88,0x07,0x3c,0x00,0x74,0x10,0x8a,0x46,0x01,0x83
    .byte 0xc6,0x02,0x88,0x47,0x01,0x83,0xc7,0x02,0x3c,0x00,0x75,0xe8,0x5f,0x83,0x3d
    .long d_0045cd2c
    .byte 0x00,0x74,0x14,0x31,0xc0,0x8a,0x45,0x00,0x8a,0x80
    .long d_0045cd31
    .byte 0x24,0x01,0x25,0xff,0x00,0x00,0x00,0xeb,0x02,0x31,0xc0,0x45,0x01,0xc5,0xa1
    .long d_0045cd2c
    .byte 0x85,0xc0,0x74,0x11,0x31,0xc0,0x8a,0x03,0x8a,0x80
    .long d_0045cd31
    .byte 0x24,0x01,0x25,0xff,0x00,0x00,0x00,0x43,0x01,0xc3,0x80,0x3b,0x00,0x75,0x89,0x83
    .byte 0x7c,0x24,0x04,0x00,0x75,0x08,0xc7,0x44,0x24,0x04,0x5c,0x00,0x00,0x00,0x8b,0x04
    .byte 0x24,0x89,0xea,0xe8,0x7e,0x0e,0x00,0x00,0x8a,0x00,0x8b,0x74,0x24,0x04,0x25,0xff
    .byte 0x00,0x00,0x00,0x39,0xf0,0x75,0x03,0x4d,0xeb,0x07,0x8a,0x44,0x24,0x04,0x88,0x45
    .byte 0x00,0x83,0x7c,0x24,0x04,0x00,0x75,0x08,0xc7,0x44,0x24,0x04,0x5c,0x00,0x00,0x00
    .byte 0x8d,0x5d,0x01,0x85,0xc9,0x0f,0x84,0x9d,0x00,0x00,0x00,0x89,0xc8,0x8d,0x54,0x24
    .byte 0x04,0xe8,0x7e,0x0c,0x00,0x00,0xe8,0xe0,0xfe,0xff,0xff,0x8b,0x74,0x24,0x04,0x39
    .byte 0xf0,0x74,0x0b,0x31,0xc0,0x8a,0x45,0x00,0x39,0xf0,0x75,0x02,0x89,0xdd,0x89,0xc8
    .byte 0x8d,0x54,0x24,0x04,0xe8,0x5b,0x0c,0x00,0x00,0xe8,0xbd,0xfe,0xff,0xff,0xe8,0xa9
    .byte 0x0c,0x00,0x00,0x89,0xef,0x89,0xc6,0x57,0x8a,0x06,0x88,0x07,0x3c,0x00,0x74,0x10
    .byte 0x8a,0x46,0x01,0x83,0xc6,0x02,0x88,0x47,0x01,0x83,0xc7,0x02,0x3c,0x00,0x75,0xe8
    .byte 0x5f,0xa1
    .long d_0045cd2c
    .byte 0x85,0xc0,0x74,0x12,0x31,0xc0,0x8a,0x45,0x00,0x8a,0x80
    .long d_0045cd31
    .byte 0x24,0x01,0x25,0xff,0x00,0x00,0x00,0x45,0x8b,0x15
    .long d_0045cd2c
    .byte 0x01,0xc5,0x85,0xd2,0x74,0x13,0x31,0xc0,0x8a,0x01,0x8a,0x80
    .long d_0045cd31
    .byte 0x24,0x01,0x25,0xff,0x00,0x00,0x00,0xeb,0x02,0x31,0xc0,0x41,0x01,0xc1,0x80,0x39
    .byte 0x00,0x75,0x88,0xeb,0x0f,0x31,0xc0,0x8b,0x54,0x24,0x04,0x8a,0x45,0x00,0x39,0xd0
    .byte 0x75,0x02,0x89,0xdd,0x8b,0x5c,0x24,0x18,0x85,0xdb,0x74,0x2e,0x80,0x3b,0x00,0x74
    .byte 0x29,0x8b,0x54,0x24,0x18,0x31,0xc0,0x8a,0x02,0x83,0xf8,0x2e,0x74,0x05,0xc6,0x45
    .byte 0x00,0x2e,0x45,0x8b,0x44,0x24,0x18,0x8a,0x08,0x84,0xc9,0x74,0x0d,0x88,0x4d,0x00
    .byte 0x8d,0x48,0x01,0x45,0x89,0x4c,0x24,0x18,0xeb,0xe9,0xc6,0x45,0x00,0x00,0x83,0xc4
    .byte 0x08,0x5d,0x5f,0x5e,0xc2,0x04,0x00,0x53,0x51,0x52,0x56,0x57,0x55,0x83,0xec,0x58
    .byte 0x8b,0x5c,0x24,0x7c,0x8b,0x94,0x24,0x84,0x00,0x00,0x00,0x8b,0x44,0x24,0x78,0x31
    .byte 0xc9,0xe8,0x74,0xfc,0xff,0xff,0xbb,0x44,0x00,0x00,0x00,0x89,0xe0,0x31,0xd2,0xe8
    .byte 0x88,0xc5,0xff,0xff,0x8d,0x44,0x24,0x44,0x50,0x8d,0x44,0x24,0x04,0x50,0xba,0x01
    .byte 0x00,0x00,0x00,0x6a,0x00,0x66,0x89,0x54,0x24,0x3c,0x8b,0x94,0x24,0x8c,0x00,0x00
    .byte 0x00,0x52,0x6a,0x00,0x6a,0x01,0x6a,0x00,0x6a,0x00,0x8b,0x9c,0x24,0x9c,0x00,0x00
    .byte 0x00,0x53,0x6a,0x00,0xe8,0x5d,0x27,0x00,0x00,0x85,0xc0,0x75,0x2b,0xe8,0xd6,0x29
    .byte 0x00,0x00,0x89,0xc2,0x83,0xf8,0x05,0x74,0x0e,0x3d,0xc1,0x00,0x00,0x00,0x74,0x07
    .byte 0x3d,0xa1,0x00,0x00,0x00,0x75,0x05,0xba,0x02,0x00,0x00,0x00,0x89,0xd0,0xe8,0x4d
    .byte 0x9a,0xff,0xff,0xe9,0xa3,0x00,0x00,0x00,0x83,0x7c,0x24,0x74,0x00,0x0f,0x85,0x78
    .byte 0x00,0x00,0x00,0x66,0xa1
    .long d_0045c961
    .byte 0x30,0xc0,0x80,0xe4,0x80,0x25,0xff,0xff,0x00,0x00,0x74,0x3e,0x68,0xe8,0x03,0x00
    .byte 0x00,0xbd,0x03,0x01,0x00,0x00,0xe8,0xa0,0x28,0x00,0x00,0x89,0x6c,0x24,0x54,0x81
    .byte 0x7c,0x24,0x54,0x03,0x01,0x00,0x00,0x75,0x51,0x6a,0x64,0xe8,0x8b,0x28,0x00,0x00
    .byte 0x8d,0x44,0x24,0x54,0x50,0x8b,0x54,0x24,0x48,0x52,0xe8,0xd8,0x26,0x00,0x00,0x85
    .byte 0xc0,0x75,0xdc,0xe8,0x40,0x9a,0xff,0xff,0xeb,0x48,0x6a,0xff,0x8b,0x74,0x24,0x48
    .byte 0x56,0xe8,0xb9,0x28,0x00,0x00,0x85,0xc0,0x75,0x11,0x8d,0x44,0x24,0x54,0x50,0x8b
    .byte 0x7c,0x24,0x48,0x57,0xe8,0xae,0x26,0x00,0x00,0xeb,0x0f,0xe8,0x18,0x9a,0xff,0xff
    .byte 0xeb,0x04,0x8b,0x44,0x24,0x4c,0x89,0x44,0x24,0x54,0x8b,0x5c,0x24,0x44,0x53,0xe8
    .byte 0x9d,0x28,0x00,0x00,0x8b,0x4c,0x24,0x48,0x51,0xe8,0x93,0x28,0x00,0x00,0x8b,0x44
    .byte 0x24,0x54,0x83,0xc4,0x58,0x5d,0x5f,0x5e,0x5a,0x59,0x5b,0xc3,0x53,0x51,0x52,0x8d
    .byte 0x5c,0x24,0x18,0x8b,0x54,0x24,0x14,0x8b,0x44,0x24,0x10,0x8b,0x0d
    .long d_0045cc74
    .byte 0xe8,0x2b,0xe2,0xff,0xff,0x5a,0x59,0x5b,0xc3,0x51,0x8b,0x0d
    .long d_0045cc74
    .byte 0xe8,0x7a,0x0c,0x00,0x00,0x59,0xc3,0x53,0x52,0x89,0xc3,0xff,0x15
    .long d_0045c64c
    .byte 0x8b,0x15
    .long d_0045cd24
    .byte 0x89,0x1d
    .long d_0045cd24
    .byte 0xff,0x15
    .long d_0045c654
    .byte 0x89,0xd0,0x5a,0x5b,0xc3
sub_00455516:
    push ebx
    push ecx
    push edx
    push esi
    call dword ptr [d_0045c64c]
    mov eax, dword ptr [d_0045cc68]
    jmp loc_004555ca
sub_0045552a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    mov ebx, eax
    push 0x8000
    push 0
    push eax
    mov esi, dword ptr [eax + 8]
    call sub_00457b3e
    test eax, eax
    jne loc_0045554c
    mov eax, 0xffffffff
    jmp loc_00455582
loc_0045554c:
    cmp ebx, dword ptr [d_0045cc6c]
    jne loc_00455570
    test esi, esi
    je loc_00455560
    mov dword ptr [d_0045cc6c], esi
    jmp loc_00455570
loc_00455560:
    mov eax, dword ptr [d_0045cc68]
    mov dword ptr [d_0045cc70], esi
    mov dword ptr [d_0045cc6c], eax
loc_00455570:
    cmp ebx, dword ptr [d_004a6068]
    jne loc_00455580
    xor edi, edi
    mov dword ptr [d_004a6068], edi
loc_00455580:
    xor eax, eax
loc_00455582:
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00455588:
    push ebx
    push edx
    mov ebx, dword ptr [eax + 4]
    mov edx, dword ptr [eax + 8]
    call sub_0045552a
    test eax, eax
    jne loc_004555af
    test ebx, ebx
    jne loc_004555a5
    mov dword ptr [d_0045cc68], edx
    jmp loc_004555a8
loc_004555a5:
    mov dword ptr [ebx + 8], edx
loc_004555a8:
    test edx, edx
    je loc_004555af
    mov dword ptr [edx + 4], ebx
loc_004555af:
    pop edx
    pop ebx
    ret
loc_004555b2:
    mov ecx, dword ptr [eax]
    mov edx, dword ptr [eax + 0x24]
    sub ecx, 0x2c
    mov esi, dword ptr [edx]
    mov ebx, dword ptr [eax + 8]
    cmp ecx, esi
    jne loc_004555c8
    call sub_00455588
loc_004555c8:
    mov eax, ebx
loc_004555ca:
    test eax, eax
    jne loc_004555b2
    call dword ptr [d_0045c654]
    xor eax, eax
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
    mov dword ptr [d_0045cd28], eax
    ret
sub_004555e1:
    push esi
    push edi
    push ebp
    sub esp, 4
    mov edi, eax
    mov esi, edx
    mov dword ptr [esp], ecx
    mov eax, ebx
    test edx, edx
    jge loc_004555fa
    mov cl, 0x2d
    neg esi
    jmp loc_004555fc
loc_004555fa:
    mov cl, 0x2b
loc_004555fc:
    mov ebx, 0x64
    mov edx, 3
    cmp esi, ebx
    jge loc_0045561f
    mov ebx, 0xa
    mov edx, 2
    cmp esi, ebx
    jge loc_0045561f
    mov edx, 1
    mov ebx, edx
loc_0045561f:
    test eax, eax
    jne loc_0045562f
    mov eax, 2
    cmp edx, 3
    jne loc_0045562f
    mov eax, edx
loc_0045562f:
    lea ebp, [eax + 1]
    cmp ebp, dword ptr [esp]
    jg loc_0045567b
    cmp edx, eax
    jg loc_00455678
    mov byte ptr [edi], cl
loc_0045563d:
    inc edi
    cmp eax, edx
    jle loc_00455648
    dec eax
    mov byte ptr [edi], 0x30
    jmp loc_0045563d
loc_00455648:
    mov edx, esi
    mov eax, esi
    sar edx, 0x1f
    idiv ebx
    mov edx, esi
    add eax, 0x30
    sar edx, 0x1f
    mov byte ptr [edi], al
    mov eax, esi
    idiv ebx
    mov esi, edx
    mov eax, ebx
    mov edx, ebx
    mov ebx, 0xa
    sar edx, 0x1f
    idiv ebx
    inc edi
    mov ebx, eax
    test eax, eax
    jne loc_00455648
    jmp loc_0045567b
loc_00455678:
    lea ebp, [edx + 1]
loc_0045567b:
    mov eax, ebp
    add esp, 4
    pop ebp
    pop edi
loc_00455682:
    pop esi
    ret
sub_00455684:
    push esi
    mov esi, ebx
    test ecx, ecx
    jne loc_00455699
    test ebx, ebx
    jg loc_00455699
    mov byte ptr [eax], 0x30
    inc eax
    mov byte ptr [eax], 0x2e
    inc eax
    pop esi
    ret
loc_00455699:
    test esi, esi
    jle loc_004556aa
    mov bl, byte ptr [edx]
    test bl, bl
    je loc_004556aa
    inc edx
    dec esi
    mov byte ptr [eax], bl
    inc eax
    jmp loc_00455699
loc_004556aa:
    test esi, esi
    jle loc_004556b7
loc_004556ae:
    dec esi
    mov byte ptr [eax], 0x30
    inc eax
    test esi, esi
    jg loc_004556ae
loc_004556b7:
    mov byte ptr [eax], 0x2e
    inc eax
    test ecx, ecx
    jle loc_004556cb
loc_004556bf:
    test esi, esi
    je loc_004556cb
    inc esi
    mov byte ptr [eax], 0x30
    inc eax
    dec ecx
    jne loc_004556bf
loc_004556cb:
    test ecx, ecx
    jle loc_00455682
loc_004556cf:
    mov bh, byte ptr [edx]
    test bh, bh
    je loc_004556dc
    inc edx
    mov byte ptr [eax], bh
    inc eax
    dec ecx
    jne loc_004556cf
loc_004556dc:
    test ecx, ecx
    je loc_00455682
    dec ecx
    mov byte ptr [eax], 0x30
    inc eax
    jmp loc_004556dc
sub_004556e7:
    push ebp
    mov ebp, esp
    push ecx
    push esi
    push edi
    sub esp, 8
    mov edi, eax
    mov esi, edx
    cmp edx, ebx
    je loc_00455750
    mov dword ptr [ebp - 0x14], edi
    mov al, byte ptr [eax + 1]
    lea edx, [ebx + edi]
    mov byte ptr [ebp - 0x10], al
    lea eax, [esi + edi]
loc_00455707:
    dec eax
    dec edx
    mov cl, byte ptr [eax]
    dec esi
    mov byte ptr [edx], cl
    mov ecx, dword ptr [ebp - 0x14]
    dec ebx
    cmp eax, ecx
    jne loc_00455707
    xor eax, ecx
    mov al, byte ptr [edi]
    cmp eax, 0x2e
    jne loc_00455726
    dec ebx
    mov byte ptr [edi + ebx], 0x30
    jmp loc_00455744
loc_00455726:
    cmp eax, 0x2b
    je loc_00455730
    cmp eax, 0x2d
    jne loc_00455744
loc_00455730:
    xor eax, eax
    mov al, byte ptr [ebp - 0x10]
    cmp eax, 0x2e
    jne loc_00455744
    mov byte ptr [edi + ebx], 0x30
    dec ebx
    mov dl, byte ptr [edi]
    mov byte ptr [edi + ebx], dl
loc_00455744:
    mov edx, 0x20
    mov eax, edi
    call sub_00451940
loc_00455750:
    lea esp, [ebp - 0xc]
    pop edi
    pop esi
    pop ecx
    pop ebp
    ret
sub_00455758:
    push ebp
    mov ebp, esp
    push esi
    push edi
    sub esp, 0x38
    mov edi, dword ptr [ebp + 8]
    mov dword ptr [ebp - 0xc], eax
    mov ch, cl
    lea eax, [ebp - 0x40]
    push eax
    mov esi, dword ptr [edx + 4]
    push esi
    mov eax, dword ptr [edx]
    push eax
    call sub_004562c7
    test eax, eax
    je loc_00455798
    mov eax, dword ptr [ebp - 0xc]
    xor esi, esi
    jmp loc_0045578b
loc_00455783:
    cmp esi, edi
    jge loc_00455789
    mov byte ptr [eax], dh
loc_00455789:
    inc eax
    inc esi
loc_0045578b:
    mov dh, byte ptr [esi + ebp - 0x40]
    test dh, dh
    jne loc_00455783
    jmp loc_00455975
loc_00455798:
    mov cl, byte ptr [ebp + 0x18]
    mov al, cl
    cmp eax, 0x47
    # jne 0x45580d
    .byte 0x0f,0x85
    .long loc_0045580d - . - 4
    fld qword ptr [edx]
    fabs
    fstp qword ptr [ebp - 0x2c]
    mov esi, dword ptr [ebp - 0x28]
    mov eax, dword ptr [ebp - 0x2c]
    test esi, 0x7fffffff
    jne loc_004557bf
    test eax, eax
    je loc_00455806
loc_004557bf:
    fld qword ptr [ebp - 0x2c]
    call sub_00443fab
    fstp qword ptr [ebp - 0x2c]
    mov eax, dword ptr [ebp - 0x28]
    push eax
    mov esi, dword ptr [ebp - 0x2c]
    push esi
    call sub_00456359
    call sub_00433b38
    fistp dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, -4
    jl loc_004557eb
    cmp ebx, eax
    jg loc_004557ef
loc_004557eb:
    mov cl, 0x45
    jmp loc_0045580d
loc_004557ef:
    fldz
    fcomp qword ptr [ebp - 0x2c]
    fnstsw ax
    sahf
    ja loc_004557fc
    inc dword ptr [ebp - 0x14]
loc_004557fc:
    mov esi, dword ptr [ebp - 0x14]
    sub ebx, esi
    test esi, esi
    jge loc_00455806
    dec ebx
loc_00455806:
    xor esi, esi
    mov cl, 0x46
    mov dword ptr [ebp + 0xc], esi
loc_0045580d:
    xor eax, eax
    mov al, cl
    cmp eax, 0x45
    jne loc_0045583c
    mov eax, ebx
    mov esi, dword ptr [ebp + 0xc]
    neg eax
    cmp eax, esi
    jge loc_00455828
    lea eax, [ebx + 2]
    cmp eax, esi
    jg loc_0045583c
loc_00455828:
    mov edx, 0x2a
    mov eax, dword ptr [ebp - 0xc]
    mov ebx, edi
    call sub_00451940
    jmp loc_00455989
loc_0045583c:
    xor eax, eax
    mov al, byte ptr [ebp + 0x18]
    mov esi, ebx
    cmp eax, 0x45
    jne loc_00455859
    mov eax, dword ptr [ebp + 0xc]
    test eax, eax
    jle loc_00455854
    lea esi, [ebx + 1]
    jmp loc_00455859
loc_00455854:
    jge loc_00455859
    lea esi, [eax + ebx]
loc_00455859:
    mov eax, dword ptr [edx]
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [edx + 4]
    mov ebx, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x20], eax
    test eax, 0x7fffffff
    jne loc_00455872
    test ebx, ebx
    je loc_00455893
loc_00455872:
    xor eax, eax
    mov al, cl
    cmp eax, 0x45
    je loc_00455893
    mov eax, dword ptr [ebp + 0xc]
    test eax, eax
    je loc_00455893
    push eax
    mov ebx, dword ptr [ebp - 0x20]
    push ebx
    mov eax, dword ptr [ebp - 0x24]
    push eax
    call sub_004563d6
    fstp qword ptr [ebp - 0x24]
loc_00455893:
    lea eax, [ebp - 0x40]
    push eax
    xor eax, eax
    mov al, cl
    push eax
    lea eax, [ebp - 0x18]
    push eax
    lea eax, [ebp - 0x1c]
    push eax
    push esi
    mov edx, dword ptr [ebp - 0x20]
    push edx
    mov ebx, dword ptr [ebp - 0x24]
    push ebx
    call sub_004564f3
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x10], eax
    inc eax
    test edx, edx
    je loc_004558cb
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 0x10], eax
    mov byte ptr [edx], 0x2d
    jmp loc_004558d8
loc_004558cb:
    test ch, ch
    je loc_004558d8
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 0x10], eax
    mov byte ptr [edx], 0x2b
loc_004558d8:
    xor edx, edx
    mov dl, cl
    lea eax, [edi + 1]
    cmp edx, 0x45
    jne loc_0045594a
    mov edx, dword ptr [ebp + 0xc]
    mov ecx, esi
    sub ecx, edx
    cmp edi, ecx
    jl loc_00455973
    mov eax, dword ptr [ebp - 0x10]
    mov ebx, edx
    lea edx, [ebp - 0x40]
    call sub_00455684
    mov ebx, dword ptr [ebp - 0xc]
    mov dl, byte ptr [ebp + 0x14]
    mov esi, eax
    mov dword ptr [ebp - 0x10], eax
    sub esi, ebx
    test dl, dl
    je loc_0045591c
    cmp esi, edi
    jge loc_0045591c
    mov byte ptr [eax], dl
    inc eax
    inc esi
    mov dword ptr [ebp - 0x10], eax
loc_0045591c:
    mov ecx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    test ecx, 0x7fffffff
    jne loc_0045592e
    test eax, eax
    je loc_00455934
loc_0045592e:
    mov eax, dword ptr [ebp + 0xc]
    sub dword ptr [ebp - 0x1c], eax
loc_00455934:
    mov ebx, dword ptr [ebp + 0x10]
    mov edx, dword ptr [ebp - 0x1c]
    mov ecx, edi
    mov eax, dword ptr [ebp - 0x10]
    sub ecx, esi
    call sub_004555e1
    add esi, eax
    jmp loc_00455975
loc_0045594a:
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x1c]
    mov ecx, dword ptr [ebp - 0xc]
    inc edx
    sub ebx, ecx
    add edx, esi
    add edx, ebx
    cmp edi, edx
    jl loc_00455973
    mov ebx, dword ptr [ebp - 0x1c]
    lea edx, [ebp - 0x40]
    mov eax, dword ptr [ebp - 0x10]
    mov ecx, esi
    mov esi, dword ptr [ebp - 0xc]
    call sub_00455684
    sub eax, esi
loc_00455973:
    mov esi, eax
loc_00455975:
    cmp esi, edi
    jg loc_00455828
    mov eax, dword ptr [ebp - 0xc]
    mov ebx, edi
    mov edx, esi
    call sub_004556e7
loc_00455989:
    lea esp, [ebp - 8]
    pop edi
    pop esi
    pop ebp
    ret 0x14
sub_00455992:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 0x28
    push edx
    mov dword ptr [ebp - 0x14], eax
loc_004559a0:
    mov bl, byte ptr [eax]
    xor edx, edx
    mov dl, bl
    cmp edx, 0x20
    je loc_004559b5
    cmp edx, 9
    jl loc_004559b8
    cmp edx, 0xd
    jg loc_004559b8
loc_004559b5:
    inc eax
    jmp loc_004559a0
loc_004559b8:
    xor edx, edx
    xor cl, cl
    mov dl, bl
    lea ebx, [eax + 1]
    cmp edx, 0x2b
    je loc_004559cd
    cmp edx, 0x2d
    jne loc_004559cf
    mov cl, 1
loc_004559cd:
    mov eax, ebx
loc_004559cf:
    xor ebx, ebx
    mov dh, 0x30
    mov dword ptr [ebp - 0x1c], ebx
loc_004559d6:
    mov dl, byte ptr [eax]
    mov ch, cl
    movzx esi, dl
    and ch, 8
    inc eax
    cmp esi, 0x2e
    jne loc_004559f2
    movzx esi, ch
    test esi, esi
    jne loc_00455a1f
    or cl, 8
    jmp loc_004559d6
loc_004559f2:
    cmp esi, 0x30
    jl loc_00455a1f
    cmp esi, 0x39
    jg loc_00455a1f
    movzx esi, ch
    test esi, esi
    je loc_00455a06
    inc dword ptr [ebp - 0x1c]
loc_00455a06:
    or dh, dl
    movzx esi, dh
    cmp esi, 0x30
    je loc_00455a1a
    cmp ebx, 0x11
    jge loc_00455a19
    mov byte ptr [ebx + ebp - 0x38], dl
loc_00455a19:
    inc ebx
loc_00455a1a:
    or cl, 4
    jmp loc_004559d6
loc_00455a1f:
    mov dh, cl
    and dh, 4
    movzx edi, dh
    xor esi, esi
    test edi, edi
    je loc_00455ab5
    and edx, 0xff
    cmp edx, 0x65
    je loc_00455a45
    cmp edx, 0x45
    # jne 0x455ab1
    .byte 0x0f,0x85
    .long loc_00455ab1 - . - 4
loc_00455a45:
    lea edx, [eax - 1]
    mov dword ptr [ebp - 0x18], edx
    mov dl, byte ptr [eax]
    lea edi, [eax + 1]
    and edx, 0xff
    cmp edx, 0x2b
    je loc_00455a63
    cmp edx, 0x2d
    jne loc_00455a65
    or cl, 2
loc_00455a63:
    mov eax, edi
loc_00455a65:
    and cl, 0xfb
loc_00455a68:
    mov dl, byte ptr [eax]
    and edx, 0xff
    cmp edx, 0x30
    jl loc_00455a90
    cmp edx, 0x39
    jg loc_00455a90
    cmp esi, 0x3e8
    jge loc_00455a8a
    imul esi, esi, 0xa
    add edx, esi
    lea esi, [edx - 0x30]
loc_00455a8a:
    or cl, 4
    inc eax
    jmp loc_00455a68
loc_00455a90:
    mov dl, cl
    and dl, 2
    and edx, 0xff
    je loc_00455a9f
    neg esi
loc_00455a9f:
    mov dl, cl
    and dl, 4
    and edx, 0xff
    jne loc_00455ab2
    mov eax, dword ptr [ebp - 0x18]
    jmp loc_00455ab2
loc_00455ab1:
    dec eax
loc_00455ab2:
    mov dword ptr [ebp - 0x14], eax
loc_00455ab5:
    sub esi, dword ptr [ebp - 0x1c]
    cmp ebx, 0x11
    jle loc_00455ac7
    sub ebx, 0x11
    add esi, ebx
    mov ebx, 0x11
loc_00455ac7:
    test ebx, ebx
    jle loc_00455ada
    xor eax, eax
    mov al, byte ptr [ebx + ebp - 0x39]
    cmp eax, 0x30
    jne loc_00455ada
    inc esi
    dec ebx
    jmp loc_00455ac7
loc_00455ada:
    test ebx, ebx
    jne loc_00455ae9
    mov dword ptr [ebp - 0x24], ebx
    mov dword ptr [ebp - 0x20], ebx
    jmp loc_00455b6d
loc_00455ae9:
    xor ah, ah
    lea edx, [ebp - 0x24]
    mov byte ptr [ebx + ebp - 0x38], ah
    lea eax, [ebp - 0x38]
    call sub_00456760
    lea eax, [esi + ebx - 1]
    cmp eax, 0x134
    jle loc_00455b2f
    call sub_0044c8d1
    mov al, cl
    and al, 1
    and eax, 0xff
    je loc_00455b1d
    fld qword ptr [d_0045b5e4]
    jmp loc_00455b68
loc_00455b1d:
    mov eax, dword ptr [d_0045b5e4]
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [d_0045b5e8]
    mov dword ptr [ebp - 0x20], eax
    jmp loc_00455b6d
loc_00455b2f:
    cmp eax, 0xfffffecc
    jge loc_00455b45
    xor ecx, ecx
    call sub_0044c8d1
    mov dword ptr [ebp - 0x24], ecx
    mov dword ptr [ebp - 0x20], ecx
    jmp loc_00455b6d
loc_00455b45:
    test esi, esi
    je loc_00455b5a
    push esi
    mov edx, dword ptr [ebp - 0x20]
    push edx
    mov ebx, dword ptr [ebp - 0x24]
    push ebx
    call sub_004563d6
    fstp qword ptr [ebp - 0x24]
loc_00455b5a:
    mov al, cl
    and al, 1
    and eax, 0xff
    je loc_00455b6d
    fld qword ptr [ebp - 0x24]
loc_00455b68:
    fchs
    fstp qword ptr [ebp - 0x24]
loc_00455b6d:
    mov edx, dword ptr [ebp - 0x3c]
    test edx, edx
    je loc_00455b79
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [edx], eax
loc_00455b79:
    fld qword ptr [ebp - 0x24]
    lea esp, [ebp - 0x10]
    pop edi
    pop esi
    pop ecx
    pop ebx
    pop ebp
    ret
    push ebx
    push ecx
    push esi
    push edi
    sub esp, 4
    mov ebx, eax
    cmp dword ptr [d_0045cd2c], 0
    je loc_00455bb9
    xor ecx, ecx
    lea esi, [eax + edx]
loc_00455b9c:
    mov edx, esp
    mov eax, ebx
    call sub_00455fe2
    mov edi, dword ptr [esp]
    mov ebx, eax
    test edi, edi
    je loc_00455bb5
    cmp eax, esi
    ja loc_00455bb5
    inc ecx
    jmp loc_00455b9c
loc_00455bb5:
    mov eax, ecx
    jmp loc_00455bbb
loc_00455bb9:
    mov eax, edx
loc_00455bbb:
    add esp, 4
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00455bc3:
    push ebx
    push ecx
    sub esp, 4
    mov ecx, eax
    mov ebx, edx
    cmp dword ptr [d_0045cd2c], 0
    je loc_00455bec
loc_00455bd5:
    dec ebx
    cmp ebx, -1
    je loc_00455be8
    mov edx, esp
    call sub_00455fe2
    cmp dword ptr [esp], 0
    jne loc_00455bd5
loc_00455be8:
    sub eax, ecx
    jmp loc_00455bee
loc_00455bec:
    mov eax, ebx
loc_00455bee:
    add esp, 4
    pop ecx
    pop ebx
    ret
    push ebx
    mov ebx, eax
    cmp dword ptr [d_0045cd2c], 0
    je loc_00455c09
    call sub_00455bc3
    add eax, ebx
    pop ebx
    ret
loc_00455c09:
    add eax, edx
    pop ebx
    ret
    push ebx
    push esi
    mov esi, dword ptr [d_0045cd2c]
    test esi, esi
    je loc_00455c47
loc_00455c19:
    test edx, edx
    jle loc_00455c49
    test esi, esi
    je loc_00455c36
    xor ebx, ebx
    mov bl, byte ptr [eax]
    mov bl, byte ptr [ebx + d_0045cd31]
    and bl, 1
    and ebx, 0xff
    jmp loc_00455c38
loc_00455c36:
    xor ebx, ebx
loc_00455c38:
    setne bl
    and ebx, 0xff
    inc ebx
    dec edx
    add eax, ebx
    jmp loc_00455c19
loc_00455c47:
    add eax, edx
loc_00455c49:
    mov dword ptr [d_0045cd2c], esi
    pop esi
    pop ebx
    ret
    .byte 0x53,0x51,0x56,0x57,0x89,0xc3,0x89,0xd7,0x06,0x8c,0xd8,0x8e,0xc0,0x29,0xc9,0x49
    .byte 0x31,0xc0,0xf2,0xae,0xf7,0xd1,0x49,0x07,0x8d,0x71,0x01,0x89,0xdf,0x06,0x8c,0xd8
    .byte 0x8e,0xc0,0x29,0xc9,0x49,0x31,0xc0,0xf2,0xae,0xf7,0xd1,0x49,0x07,0x8d,0x3c,0x0b
    .byte 0x89,0xf1,0x89,0xd6,0x06,0x8c,0xd8,0x8e,0xc0,0x57,0x89,0xc8,0xc1,0xe9,0x02,0xf2
    .byte 0xa5,0x8a,0xc8,0x80,0xe1,0x03,0xf2,0xa4,0x5f,0x07,0x89,0xf8,0x5f,0x5e,0x59,0x5b
    .byte 0xc3,0x53,0x51,0x56,0x57,0x89,0xc3,0x89,0xd7,0x06,0x8c,0xd8,0x8e,0xc0,0x29,0xc9
    .byte 0x49,0x31,0xc0,0xf2,0xae,0xf7,0xd1,0x49,0x07,0x89,0xd6,0x41,0x89,0xdf,0xeb,0xc4
    .byte 0x51,0x56,0x57,0x89,0xc6,0x89,0xc7,0x06,0x8c,0xd8,0x8e,0xc0,0x29,0xc9,0x49,0x31
    .byte 0xc0,0xf2,0xae,0xf7,0xd1,0x49,0x07,0x41,0x89,0xc8,0xe8,0xeb,0xcc,0xff,0xff,0x89
    .byte 0xc7,0x85,0xc0,0x74,0x16,0x06,0x8c,0xd8,0x8e,0xc0,0x57,0x89,0xc8,0xc1,0xe9,0x02
    .byte 0xf2,0xa5,0x8a,0xc8,0x80,0xe1,0x03,0xf2,0xa4,0x5f,0x07,0x89,0xf8,0x5f,0x5e,0x59
    .byte 0xc3,0x51,0x56,0x57,0x55,0x89,0xc5,0x89,0xd6,0x83,0x3d
    .long d_0045cd2c
    .byte 0x00,0x74,0x3e,0x89,0xc7,0x06,0x8c,0xd8,0x8e,0xc0,0x29,0xc9,0x49,0x31,0xc0,0xf2
    .byte 0xae,0xf7,0xd1,0x49,0x07,0x8d,0x3c,0x29,0x89,0xda,0x89,0xe8,0xe8,0x91,0xfe,0xff
    .byte 0xff,0x89,0xc1,0x89,0xc3,0x06,0x8c,0xd8,0x8e,0xc0,0x57,0x89,0xc8,0xc1,0xe9,0x02
    .byte 0xf2,0xa5,0x8a,0xc8,0x80,0xe1,0x03,0xf2,0xa4,0x5f,0x07,0xc6,0x04,0x1f,0x00,0xeb
    .byte 0x07,0x89,0xf2,0xe8,0xa3,0x0a,0x00,0x00,0x89,0xe8,0x5d,0x5f,0x5e,0x59,0xc3,0x51
    .byte 0x56,0x57,0x55,0x83,0xec,0x08,0x89,0xc5,0x89,0x54,0x24,0x04,0x89,0x1c,0x24,0x83
    .byte 0x3d
    .long d_0045cd2c
    .byte 0x00,0x0f,0x84,0xc2,0x00,0x00,0x00,0x80,0x38,0x00,0x0f,0x84,0x7e,0x00,0x00,0x00
    .byte 0x89,0xee,0x30,0xd2,0x8a,0x06,0x3a,0xc2,0x74,0x12,0x3c,0x00,0x74,0x0c,0x46,0x8a
    .byte 0x06,0x3a,0xc2,0x74,0x07,0x46,0x3c,0x00,0x75,0xea,0x2b,0xf6,0x8b,0x0d
    .long d_0045cd2c
    .byte 0x8d,0x5e,0xff,0x89,0xe8,0x8b,0x35
    .long d_0045cd2c
    .byte 0x80,0x38,0x00,0x74,0x45,0x39,0xd8,0x75,0x21,0x85,0xc9,0x74,0x15,0x31,0xd2,0x8a
    .byte 0x13,0x8a,0x92
    .long d_0045cd31
    .byte 0x80,0xe2,0x01,0x81,0xe2,0xff,0x00,0x00,0x00,0xeb,0x02,0x31,0xd2,0x74,0x04,0x89
    .byte 0xdd,0xeb,0x20,0x85,0xf6,0x74,0x15,0x31,0xd2,0x8a,0x10,0x8a,0x92
    .long d_0045cd31
    .byte 0x80,0xe2,0x01,0x81,0xe2,0xff,0x00,0x00,0x00,0xeb,0x02,0x31,0xd2,0x40,0x01,0xd0
    .byte 0xeb,0xb6,0x39,0xdd,0x74,0x03,0x8d,0x6b,0x01,0x89,0xef,0x8b,0x74,0x24,0x04,0x06
    .byte 0x8c,0xd8,0x8e,0xc0,0x29,0xc9,0x49,0x31,0xc0,0xf2,0xae,0xf7,0xd1,0x49,0x07,0x8d
    .byte 0x3c,0x29,0x8b,0x0c,0x24,0x06,0x8c,0xd8,0x8e,0xc0,0x57,0x89,0xc8,0xc1,0xe9,0x02
    .byte 0xf2,0xa5,0x8a,0xc8,0x80,0xe1,0x03,0xf2,0xa4,0x5f,0x07,0x8b,0x04,0x24,0xc6,0x04
    .byte 0x07,0x00,0xeb,0x09,0x8b,0x54,0x24,0x04,0xe8,0xb4,0x09,0x00,0x00,0x89,0xe8,0x83
    .byte 0xc4,0x08,0x5d,0x5f,0x5e,0x59,0xc3,0x51,0x56,0x89,0xc1,0x89,0xd6,0x89,0xda,0x89
    .byte 0xf0,0xe8,0x62,0xfd,0xff,0xff,0x89,0xc3,0x89,0xf2,0x89,0xc8,0xe8,0x05,0x00,0x00
    .byte 0x00,0x89,0xc8,0x5e,0x59,0xc3,0x51,0x56,0x57,0x55,0x89,0xc5,0x83,0x3d
    .long d_0045cd2c
    .byte 0x00,0x0f,0x84,0x97,0x00,0x00,0x00,0x89,0xd7,0x06,0x8c,0xd8,0x8e,0xc0,0x29,0xc9
    .byte 0x49,0x31,0xc0,0xf2,0xae,0xf7,0xd1,0x49,0x07,0x8b,0x35
    .long d_0045cd2c
    .byte 0x85,0xf6,0x74,0x0f,0x0f,0xb6,0x34,0x1a,0x8a,0x86
    .long d_0045cd31
    .byte 0x24,0x01,0x0f,0xb6,0xf0,0x85,0xf6,0x74,0x05,0x39,0xcb,0x7d,0x01,0x4b,0x8d,0x41
    .byte 0x01,0x39,0xd8,0x7d,0x21,0x89,0xc1,0x89,0xd6,0x89,0xef,0x06,0x8c,0xd8,0x8e,0xc0
    .byte 0x57,0x89,0xc8,0xc1,0xe9,0x02,0xf2,0xa5,0x8a,0xc8,0x80,0xe1,0x03,0xf2,0xa4,0x5f
    .byte 0x07,0xe9,0x79,0xfe,0xff,0xff,0x89,0xd6,0x89,0xef,0x57,0x8a,0x06,0x88,0x07,0x3c
    .byte 0x00,0x74,0x10,0x8a,0x46,0x01,0x83,0xc6,0x02,0x88,0x47,0x01,0x83,0xc7,0x02,0x3c
    .byte 0x00,0x75,0xe8,0x5f,0x39,0xd9,0x0f,0x84,0x53,0xfe,0xff,0xff,0x89,0xc8,0x29,0xd8
    .byte 0x31,0xd2,0x89,0xc3,0x8d,0x04,0x29,0xe8,0x2a,0xba,0xff,0xff,0xe9,0x3e,0xfe,0xff
    .byte 0xff,0xe8,0x7c,0xb7,0xff,0xff,0xe9,0x34,0xfe,0xff,0xff,0x52,0x8b,0x15
    .long d_0045cd2c
    .byte 0x85,0xd2,0x74,0x13,0x31,0xd2,0x8a,0x10,0x8a,0x92
    .long d_0045cd31
    .byte 0x80,0xe2,0x01,0x81,0xe2,0xff,0x00,0x00,0x00,0x85,0xd2,0x74,0x13,0x31,0xd2,0x8a
    .byte 0x10,0xc1,0xe2,0x08,0x8a,0x40,0x01,0x25,0xff,0x00,0x00,0x00,0x09,0xd0,0x5a,0xc3
    .byte 0x8a,0x00,0x25,0xff,0x00,0x00,0x00,0x5a,0xc3,0x53,0x89,0xc3,0x89,0xd0,0xf6,0xc7
    .byte 0xff,0x74,0x0c,0x89,0xda,0x88,0x58,0x01,0xc1,0xea,0x08,0x88,0x10,0x5b,0xc3,0x88
    .byte 0x1a,0x5b,0xc3,0x52,0xf6,0xc4,0xff,0x74,0x1a,0x89,0xc2,0xc1,0xea,0x08,0x88,0x15
    .long d_004a6080
    .byte 0x30,0xd2,0xa2
    .long d_004a6081
    .byte 0x88,0x15
    .long d_004a6082
    .byte 0xeb,0x0d,0xa2
    .long d_004a6080
    .byte 0x30,0xe4,0x88,0x25
    .long d_004a6081
    .byte 0xb8
    .long d_004a6080
    .byte 0x5a,0xc3
ptr_00455fb1:
    push ecx
    push edx
    sub esp, 0x14
    mov eax, esp
    push eax
    push 1
    call sub_00457b38
    test eax, eax
    je loc_00455fdc
    cmp byte ptr [esp + 6], 0
    jne loc_00455fd2
    cmp byte ptr [esp + 7], 0
    je loc_00455fdc
loc_00455fd2:
    mov dword ptr [d_0045cd2c], 1
loc_00455fdc:
    add esp, 0x14
    pop edx
    pop ecx
    ret
sub_00455fe2:
    push ebx
    push ecx
    push edi
    mov ecx, dword ptr [d_0045cd2c]
    lea ebx, [eax + 1]
    test ecx, ecx
    je loc_00456040
    xor ecx, ecx
    mov cl, byte ptr [eax]
    mov dword ptr [edx], ecx
    test ecx, ecx
    je loc_0045604b
    mov edi, dword ptr [d_0045cd2c]
    mov eax, ebx
    test edi, edi
    je loc_0045601d
    xor ebx, ebx
    mov bl, byte ptr [edx]
    mov bl, byte ptr [ebx + d_0045cd31]
    and bl, 1
    and ebx, 0xff
    jmp loc_0045601f
loc_0045601d:
    xor ebx, ebx
loc_0045601f:
    je loc_0045604b
    mov bl, byte ptr [eax]
    test bl, bl
    je loc_00456039
    mov ecx, dword ptr [edx]
    xor ebx, ebx
    shl ecx, 8
    mov bl, byte ptr [eax]
    or ecx, ebx
    inc eax
    mov dword ptr [edx], ecx
    pop edi
    pop ecx
    pop ebx
    ret
loc_00456039:
    dec eax
    mov byte ptr [eax], bl
    pop edi
    pop ecx
    pop ebx
    ret
loc_00456040:
    mov al, byte ptr [eax]
    and eax, 0xff
    mov dword ptr [edx], eax
    mov eax, ebx
loc_0045604b:
    pop edi
    pop ecx
    pop ebx
    ret
    push ebx
    push edx
    mov edx, dword ptr [d_0045cd2c]
    test edx, edx
    je loc_0045609a
    xor edx, edx
    mov dl, byte ptr [eax]
    test edx, edx
    je loc_0045609c
    mov ebx, dword ptr [d_0045cd2c]
    inc eax
    test ebx, ebx
    je loc_00456081
    xor ebx, ebx
    mov bl, dl
    mov bl, byte ptr [ebx + d_0045cd31]
    and bl, 1
    and ebx, 0xff
loc_00456081:
    test ebx, ebx
    je loc_0045609c
    cmp byte ptr [eax], 0
    je loc_0045609c
    mov ebx, edx
    xor edx, edx
    shl ebx, 8
    mov dl, byte ptr [eax]
    or edx, ebx
    mov eax, edx
    pop edx
    pop ebx
    ret
loc_0045609a:
    mov dl, byte ptr [eax]
loc_0045609c:
    mov eax, edx
    pop edx
    pop ebx
    ret
    push ebx
    push edx
    mov edx, dword ptr [d_0045cd2c]
    lea ebx, [eax + 1]
    test edx, edx
    je loc_004560e2
    xor edx, edx
    mov dl, byte ptr [eax]
    test edx, edx
    je loc_004560e4
    mov eax, ebx
    cmp dword ptr [d_0045cd2c], 0
    je loc_004560da
    and edx, 0xff
    mov dl, byte ptr [edx + d_0045cd31]
    and dl, 1
    and edx, 0xff
    jmp loc_004560dc
loc_004560da:
    xor edx, edx
loc_004560dc:
    je loc_004560e4
    inc eax
    pop edx
    pop ebx
    ret
loc_004560e2:
    mov eax, ebx
loc_004560e4:
    pop edx
    pop ebx
    ret
    push ebx
    push esi
    push edi
    mov esi, dword ptr [d_0045cd2c]
    mov ebx, eax
    mov edi, edx
    cmp eax, edx
    jb loc_004560ff
    xor edx, edx
    # jmp 0x456161
    .byte 0xe9
    .long loc_00456161 - . - 4
loc_004560ff:
    dec edx
    test esi, esi
    je loc_00456161
    mov eax, edx
    je loc_00456121
    mov dl, byte ptr [edx]
    and edx, 0xff
    mov dl, byte ptr [edx + d_0045cd31]
    and dl, 1
    and edx, 0xff
    jmp loc_00456123
loc_00456121:
    xor edx, edx
loc_00456123:
    je loc_0045612a
    lea edx, [eax - 1]
    jmp loc_00456161
loc_0045612a:
    dec eax
    cmp ebx, eax
    ja loc_0045614c
    test esi, esi
    je loc_00456148
    xor edx, edx
    mov dl, byte ptr [eax]
    mov dl, byte ptr [edx + d_0045cd31]
    and dl, 1
    and edx, 0xff
    jmp loc_0045614a
loc_00456148:
    xor edx, edx
loc_0045614a:
    jne loc_0045612a
loc_0045614c:
    mov edx, edi
    sub edx, eax
    mov ebx, 2
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    dec edi
    sub edi, edx
    mov edx, edi
loc_00456161:
    mov eax, edx
    mov dword ptr [d_0045cd2c], esi
    pop edi
    pop esi
    pop ebx
    ret
    .byte 0x68,0x2c,0x01,0x00,0x00,0xe8,0xca,0x04,0xff,0xff,0x56,0x57,0xc8,0x18,0x01,0x00
    .byte 0x50,0x89,0xd6,0x89,0x5d,0xf0,0x89,0x4d,0xf4,0xe8,0x83,0xd5,0xff,0xff,0x89,0xc2
    .byte 0x83,0xf8,0xff,0x0f,0x85,0x2b,0x01,0x00,0x00,0xff,0x15
    .long d_0045c630
    .byte 0x83,0x78,0x04,0x01,0x74,0x10,0xff,0x15
    .long d_0045c630
    .byte 0x83,0x78,0x04,0x09,0x0f,0x85,0x0f,0x01,0x00,0x00,0x0f,0xb6,0x06,0x83,0xf8,0x5c
    .byte 0x0f,0x84,0x03,0x01,0x00,0x00,0x80,0x3e,0x00,0x0f,0x84,0xfa,0x00,0x00,0x00,0x0f
    .byte 0xb6,0x46,0x01,0x83,0xf8,0x3a,0x0f,0x84,0xed,0x00,0x00,0x00,0xb8
    .long d_0045b5c4
    .byte 0xe8,0xd3,0xbd,0xff,0xff,0x89,0xc1,0x85,0xc0,0x0f,0x84,0xd9,0x00,0x00,0x00,0x89
    .byte 0xf0,0xe8,0xbc,0xbb,0xff,0xff,0x40,0x89,0x45,0xf8,0xb8,0x04,0x01,0x00,0x00,0x2b
    .byte 0x45,0xf8,0x89,0x45,0xec,0x80,0x39,0x00,0x0f,0x84,0xba,0x00,0x00,0x00,0xba,0x3b
    .byte 0x00,0x00,0x00,0x89,0xc8,0xe8,0x67,0xb4,0xff,0xff,0x89,0xc7,0x85,0xc0,0x75,0x0a
    .byte 0x89,0xc8,0xe8,0x8b,0xbb,0xff,0xff,0x8d,0x3c,0x01,0x89,0xf8,0x29,0xc8,0x89,0x45
    .byte 0xfc,0x3b,0x45,0xec,0x76,0x1d,0xb8,0x02,0x00,0x00,0x00,0xe8,0x8a,0x66,0xff,0xff
    .byte 0xb8,0x0a,0x00,0x00,0x00,0xe8,0xa5,0x66,0xff,0xff,0xb8,0xff,0xff,0xff,0xff,0xc9
    .byte 0x5f,0x5e,0xc3,0x89,0xc3,0x89,0xca,0x8d,0x85,0xe8,0xfe,0xff,0xff,0xe8,0x69,0xbb
    .byte 0xff,0xff,0x8d,0x85,0xe8,0xfe,0xff,0xff,0x03,0x45,0xfc,0x0f,0xb6,0x50,0xff,0x83
    .byte 0xfa,0x5c,0x74,0x04,0xc6,0x00,0x5c,0x40,0x8b,0x5d,0xf8,0x89,0xf2,0x8b,0x4d,0xf4
    .byte 0xe8,0x46,0xbb,0xff,0xff,0x8b,0x5d,0xf0,0x8d,0x95,0xe8,0xfe,0xff,0xff,0x8b,0x85
    .byte 0xe4,0xfe,0xff,0xff,0xe8,0x7c,0xd4,0xff,0xff,0x89,0xc2,0x83,0xf8,0xff,0x75,0x28
    .byte 0xff,0x15
    .long d_0045c630
    .byte 0x83,0x78,0x04,0x01,0x74,0x0c,0xff,0x15
    .long d_0045c630
    .byte 0x83,0x78,0x04,0x09,0x75,0x10,0x0f,0xb6,0x07,0x83,0xf8,0x3b,0x75,0x08,0x8d,0x4f
    .byte 0x01,0xe9,0x3d,0xff,0xff,0xff,0x89,0xd0,0xc9,0x5f,0x5e,0xc3
sub_004562c7:
    push ebx
    push edx
    sub esp, 8
    mov ebx, dword ptr [esp + 0x1c]
    mov eax, dword ptr [esp + 0x14]
    mov dword ptr [esp], eax
    mov eax, dword ptr [esp + 0x18]
    mov dword ptr [esp + 4], eax
    mov eax, dword ptr [esp + 6]
    and eax, 0x7ff0
    and eax, 0xffff
    cmp eax, 0x7ff0
    jne loc_0045634f
    mov edx, dword ptr [esp + 6]
    xor dl, dl
    mov eax, ebx
    and dh, 0x80
    and edx, 0xffff
    je loc_0045630d
    lea eax, [ebx + 1]
    mov byte ptr [ebx], 0x2d
loc_0045630d:
    xor ebx, ebx
    xor edx, edx
    mov bx, word ptr [esp + 2]
    mov dx, word ptr [esp]
    or ebx, edx
    xor edx, edx
    mov dx, word ptr [esp + 4]
    or edx, ebx
    mov ebx, dword ptr [esp + 6]
    xor bh, bh
    and bl, 0xf
    and ebx, 0xffff
    or edx, ebx
    jne loc_00456340
    mov edx, dword ptr [d_0045b5cc]
    jmp loc_00456346
loc_00456340:
    mov edx, dword ptr [d_0045b5d0]
loc_00456346:
    mov dword ptr [eax], edx
    mov eax, 1
    jmp loc_00456351
loc_0045634f:
    xor eax, eax
loc_00456351:
    add esp, 8
    pop edx
    pop ebx
    ret 0xc
sub_00456359:
    push ebp
    mov ebp, esp
    push eax
    push ebx
    push edx
    sub esp, 8
    lea eax, [ebp - 0x14]
    push eax
    mov edx, dword ptr [ebp + 0xc]
    push edx
    mov ebx, dword ptr [ebp + 8]
    push ebx
    call sub_0045683c
    fldz
    fcompp
    fnstsw ax
    sahf
    jbe loc_00456388
    fld qword ptr [ebp - 0x14]
    fadd qword ptr [d_0045b5d4]
    fstp qword ptr [ebp - 0x14]
loc_00456388:
    fld qword ptr [ebp - 0x14]
    lea esp, [ebp - 0xc]
    pop edx
    pop ebx
    pop eax
    pop ebp
    ret 8
sub_00456395:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx
    push esi
    mov ecx, dword ptr [ebp + 0x10]
    mov ebx, dword ptr [ebp + 0x14]
    cmp eax, ecx
    je loc_004563bb
    mov edx, ecx
    sub edx, eax
    push edx
    mov edx, dword ptr [ebp + 0xc]
    push edx
    mov esi, dword ptr [ebp + 8]
    push esi
    call sub_004563d6
    fstp qword ptr [ebp + 8]
loc_004563bb:
    lea eax, [ebp + 8]
    mov edx, ebx
    call sub_00456890
    mov edx, ebx
    mov eax, ecx
    call sub_00456856
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop ebp
    ret 0x10
sub_004563d6:
    push eax
    push ebx
    push ecx
    push edx
    push esi
    sub esp, 8
    mov ecx, dword ptr [esp + 0x28]
    fld qword ptr [esp + 0x20]
    fcomp qword ptr [d_0045b740]
    fnstsw ax
    sahf
    jne loc_00456401
    mov eax, dword ptr [d_0045b750]
    mov dword ptr [esp + 0x20], eax
    mov eax, dword ptr [d_0045b754]
    jmp loc_0045641e
loc_00456401:
    fld qword ptr [esp + 0x20]
    fcomp qword ptr [d_0045b748]
    fnstsw ax
    sahf
    jne loc_00456422
    mov eax, dword ptr [d_0045b758]
    mov dword ptr [esp + 0x20], eax
    mov eax, dword ptr [d_0045b75c]
loc_0045641e:
    mov dword ptr [esp + 0x24], eax
loc_00456422:
    mov eax, offset d_0045b760
    test ecx, ecx
    jge loc_00456465
    mov edx, ecx
    neg edx
    cmp edx, 0x134
    jle loc_00456483
    fld qword ptr [esp + 0x20]
    test byte ptr [d_0045c564], 1
    je loc_00456457
    push dword ptr [d_0045b766]
    push dword ptr [d_0045b762]
    call sub_0044c548
    jmp loc_0045645d
loc_00456457:
    fdiv qword ptr [d_0045b762]
loc_0045645d:
    sub edx, 0xd8
    jmp loc_0045647f
loc_00456465:
    mov edx, ecx
    cmp ecx, 0x134
    jle loc_00456483
    fld qword ptr [esp + 0x20]
    fmul qword ptr [d_0045b762]
    lea edx, [ecx - 0xd8]
loc_0045647f:
    fstp qword ptr [esp + 0x20]
loc_00456483:
    xor ebx, ebx
    mov esi, 0x3ff00000
    mov dword ptr [esp], ebx
    mov dword ptr [esp + 4], esi
loc_00456491:
    movsx ebx, word ptr [eax]
    cmp edx, ebx
    jl loc_004564a3
    fld qword ptr [esp]
    fmul qword ptr [eax + 2]
    sub edx, ebx
    fstp qword ptr [esp]
loc_004564a3:
    test edx, edx
    je loc_004564b4
    movsx ebx, word ptr [eax]
    cmp ebx, 1
    je loc_00456491
    add eax, 0xa
    jmp loc_00456491
loc_004564b4:
    test ecx, ecx
    jge loc_004564d9
    fld qword ptr [esp + 0x20]
    test byte ptr [d_0045c564], 1
    je loc_004564d4
    push dword ptr [esp + 4]
    push dword ptr [esp + 4]
    call sub_0044c548
    jmp loc_004564e0
loc_004564d4:
    fdiv qword ptr [esp]
    jmp loc_004564e0
loc_004564d9:
    fld qword ptr [esp + 0x20]
    fmul qword ptr [esp]
loc_004564e0:
    fstp qword ptr [esp + 0x20]
    fld qword ptr [esp + 0x20]
    add esp, 8
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret 0xc
sub_004564f3:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx
    push esi
    push edi
    sub esp, 0x2c
    mov ebx, dword ptr [ebp + 0x10]
    mov ecx, dword ptr [ebp + 0x14]
    mov esi, dword ptr [ebp + 0x18]
    mov edx, dword ptr [ebp + 0x20]
    push edx
    mov edi, dword ptr [ebp + 0xc]
    push edi
    mov eax, dword ptr [ebp + 8]
    mov dword ptr [esi], 0
    push eax
    mov dword ptr [ecx], 0
    call sub_004562c7
    test eax, eax
    je loc_0045652f
    mov eax, edx
    jmp loc_004566c4
loc_0045652f:
    xor edx, edx
    xor edi, edi
    mov word ptr [ebp - 0x2c], dx
    mov word ptr [ebp - 0x2a], di
    mov word ptr [ebp - 0x28], dx
    mov word ptr [ebp - 0x26], dx
    mov edx, dword ptr [ebp + 0xc]
    mov edi, dword ptr [ebp + 8]
    test edx, 0x7fffffff
    jne loc_00456559
    test edi, edi
    je loc_00456681
loc_00456559:
    fldz
    fcomp qword ptr [ebp + 8]
    fnstsw ax
    sahf
    jbe loc_00456571
    fld qword ptr [ebp + 8]
    fchs
    mov dword ptr [esi], 0xffffffff
    fstp qword ptr [ebp + 8]
loc_00456571:
    push ecx
    mov eax, dword ptr [ebp + 0xc]
    push eax
    mov edx, dword ptr [ebp + 8]
    push edx
    call sub_00456a1c
    mov edx, dword ptr [ecx]
    fstp st(0)
    test edx, edx
    jge loc_00456589
    neg edx
loc_00456589:
    mov eax, edx
    shl edx, 2
    sub edx, eax
    add edx, 5
    mov edi, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv edi
    mov edi, dword ptr [ecx]
    mov edx, eax
    test edi, edi
    jge loc_004565a9
    neg edx
loc_004565a9:
    mov eax, dword ptr [ebp + 0x1c]
    mov dword ptr [ecx], edx
    cmp eax, 0x46
    jne loc_004565b5
    add ebx, edx
loc_004565b5:
    test ebx, ebx
    jl loc_0045664f
    cmp ebx, 0x10
    jle loc_004565c7
    mov ebx, 0x10
loc_004565c7:
    xor ah, ah
    mov byte ptr [ebp - 0x18], ah
    lea eax, [ebp - 0x24]
    push eax
    mov edi, dword ptr [ebp + 0xc]
    push edi
    mov eax, dword ptr [ebp + 8]
    push eax
    call sub_0045683c
    fldz
    fcompp
    fnstsw ax
    sahf
    jne loc_004565f1
    cmp ebx, edx
    jle loc_004565f1
    mov al, 1
    mov ebx, edx
    mov byte ptr [ebp - 0x18], al
loc_004565f1:
    lea eax, [ebp - 0x2c]
    push eax
    push ebx
    mov edi, dword ptr [ebp + 0xc]
    push edi
    mov eax, dword ptr [ebp + 8]
    push eax
    mov eax, dword ptr [ecx]
    call sub_00456395
    mov edi, eax
    test eax, eax
    je loc_0045664f
    add dword ptr [ecx], eax
    cmp dword ptr [ebp + 0x1c], 0x46
    je loc_00456619
    cmp byte ptr [ebp - 0x18], 0
    je loc_0045661b
loc_00456619:
    add ebx, edi
loc_0045661b:
    cmp ebx, 1
    jge loc_00456627
    mov ebx, 1
    jmp loc_00456631
loc_00456627:
    cmp ebx, 0x10
    jle loc_00456631
    mov ebx, 0x10
loc_00456631:
    lea eax, [ebp - 0x2c]
    push eax
    push ebx
    mov edi, dword ptr [ebp + 0xc]
    push edi
    mov eax, dword ptr [ebp + 8]
    push eax
    mov eax, dword ptr [ecx]
    call sub_00456395
    test eax, eax
    jle loc_0045664f
    mov edi, dword ptr [ecx]
    inc edi
    inc ebx
    mov dword ptr [ecx], edi
loc_0045664f:
    mov eax, dword ptr [ebp - 0x2c]
    sar eax, 0x10
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x2e]
    mov edi, dword ptr [ebp - 0x1c]
    sar eax, 0x10
    or eax, edi
    mov edi, dword ptr [ebp - 0x2a]
    sar edi, 0x10
    or eax, edi
    mov edi, dword ptr [ebp - 0x28]
    sar edi, 0x10
    or eax, edi
    jne loc_00456681
    mov dword ptr [esi], eax
    mov dword ptr [ecx], eax
    cmp dword ptr [ebp + 0x1c], 0x46
    jne loc_00456681
    sub ebx, edx
loc_00456681:
    cmp ebx, 1
    jge loc_0045668d
    mov ebx, 1
    jmp loc_00456697
loc_0045668d:
    cmp ebx, 0x11
    jle loc_00456697
    mov ebx, 0x11
loc_00456697:
    lea edx, [ebp - 0x40]
    lea eax, [ebp - 0x2c]
    lea esi, [ebp - 0x40]
    mov edi, dword ptr [ebp + 0x20]
    call sub_004568fb
    push edi
loc_004566a9:
    mov al, byte ptr [esi]
    mov byte ptr [edi], al
    cmp al, 0
    je loc_004566c1
    mov al, byte ptr [esi + 1]
    add esi, 2
    mov byte ptr [edi + 1], al
    add edi, 2
    cmp al, 0
    jne loc_004566a9
loc_004566c1:
    pop edi
    mov eax, edi
loc_004566c4:
    lea esp, [ebp - 0x14]
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop ebp
    ret 0x1c
    push ebp
    push esi
    push edi
    push ecx
    push ebx
    mov esi, edx
    mov ebp, eax
    mov eax, dword ptr [ebp]
    mov edx, dword ptr [ebp + 4]
    xchg esi, ebp
    mov dword ptr [ebp], eax
    mov dword ptr [ebp + 4], edx
    mov ecx, edx
    and ecx, 0x7ff00000
    je loc_004566fb
    cmp ecx, 0x43300000
    jb loc_00456709
    xchg ebp, esi
loc_004566fb:
    sub eax, eax
    mov dword ptr [ebp + 4], eax
    mov dword ptr [ebp], eax
    pop ebx
    pop ecx
    pop edi
    pop esi
    pop ebp
    ret
loc_00456709:
    mov edi, ecx
    shr ecx, 0x14
    sub cx, 0x3ff
    jb loc_004566fb
    push edx
    sub eax, eax
    mov edx, 0xfff00000
    cmp cl, 0x14
    jbe loc_0045672e
    sar edx, 0x15
    rcr eax, 1
    sub cl, 0x15
    sar eax, cl
    jmp loc_00456730
loc_0045672e:
    sar edx, cl
loc_00456730:
    and dword ptr [ebp + 4], edx
    and dword ptr [ebp], eax
    not edx
    not eax
    mov ebp, esi
    and edx, dword ptr [ebp + 4]
    and eax, dword ptr [ebp]
    call sub_004567ab
    pop esi
    or edx, edx
    je loc_00456754
    and esi, 0x80000000
    or edx, esi
loc_00456754:
    mov dword ptr [ebp + 4], edx
    mov dword ptr [ebp], eax
    pop ebx
    pop ecx
    pop edi
    pop esi
    pop ebp
    ret
sub_00456760:
    push ebp
    push esi
    push edi
    push ecx
    push ebx
    push edx
    mov esi, eax
    sub edx, edx
    sub ecx, ecx
    sub eax, eax
loc_0045676e:
    mov al, byte ptr [esi]
    cmp al, 0
    je loc_00456792
    mov edi, edx
    mov ebx, ecx
    add ecx, ecx
    adc edx, edx
    add ecx, ecx
    adc edx, edx
    add ecx, ebx
    adc edx, edi
    add ecx, ecx
    adc edx, edx
    and al, 0xf
    add ecx, eax
    adc edx, 0
    inc esi
    jmp loc_0045676e
loc_00456792:
    mov eax, ecx
    mov edi, 0x43300000
    call sub_004567ab
    pop ebp
    mov dword ptr [ebp + 4], edx
    mov dword ptr [ebp], eax
    pop ebx
    pop ecx
    pop edi
    pop esi
    pop ebp
    ret
sub_004567ab:
    sub esi, esi
    or esi, eax
    or esi, edx
    je loc_004567fb
    test edx, 0xfff00000
    jne loc_004567cf
loc_004567bb:
    sub edi, 0x100000
    add eax, eax
    adc edx, edx
    test edx, 0xfff00000
    je loc_004567bb
    jmp loc_004567f3
loc_004567cf:
    test edx, 0xffe00000
    je loc_004567f3
loc_004567d7:
    add edi, 0x100000
    shr edx, 1
    rcr eax, 1
    rcr esi, 1
    test edx, 0xffe00000
    jne loc_004567d7
    adc esi, esi
    adc eax, 0
    adc edx, 0
loc_004567f3:
    and edx, 0xfffff
    or edx, edi
loc_004567fb:
    ret
    .byte 0x51,0x56,0x57,0x55,0x89,0xc5,0x89,0xd6,0xb9,0xff,0xff,0xff,0xff,0x89,0xef,0x30
    .byte 0xc0,0x06,0xe3,0x0b,0x8c,0xda,0x8e,0xc2,0xf2,0xae,0x75,0x03,0x4f,0x66,0xa9,0x89
    .byte 0xcf,0x07,0x89,0xf8,0x85,0xdb,0x74,0x0d,0x8a,0x16,0x88,0x10,0x84,0xd2,0x74,0x05
    .byte 0x40,0x46,0x4b,0xeb,0xef,0xc6,0x00,0x00,0x89,0xe8,0x5d,0x5f,0x5e,0x59,0xc3,0x00
sub_0045683c:
    push eax
    fld qword ptr [esp + 8]
    fld st(0)
    call sub_00433b38
    fsub st(1), st(0)
    mov eax, dword ptr [esp + 0x10]
    fstp qword ptr [eax]
    pop eax
    wait
    ret 0xc
    .byte 0x00
sub_00456856:
    push edi
    push ecx
    call sub_00456965
    inc eax
    lea edi, [edi + eax*8]
    mov ecx, dword ptr [edx]
    mov edx, dword ptr [edx + 4]
    sub eax, eax
loc_00456868:
    cmp edx, dword ptr cs:[edi]
    jne loc_00456871
    cmp ecx, dword ptr cs:[edi + 4]
loc_00456871:
    jb loc_00456879
    add edi, 8
    inc eax
    jmp loc_00456868
loc_00456879:
    sub edi, 8
loc_0045687c:
    cmp edx, dword ptr cs:[edi]
    jne loc_00456885
    cmp ecx, dword ptr cs:[edi + 4]
loc_00456885:
    jae loc_0045688d
    sub edi, 8
    dec eax
    jmp loc_0045687c
loc_0045688d:
    pop ecx
    pop edi
    ret
sub_00456890:
    push ebx
    push ecx
    push edx
    push ebp
    push esi
    push edx
    mov ebp, eax
    mov ecx, dword ptr [ebp]
    mov ebx, dword ptr [ebp + 4]
    mov ebp, ebx
    and ebp, 0xfff00000
    xor ebx, ebp
    xor ebx, 0x100000
    shr ebp, 0x14
    sub ebp, 0x433
    je loc_004568ee
    jbe loc_004568c4
loc_004568bb:
    shl ecx, 1
    rcl ebx, 1
    dec ebp
    jne loc_004568bb
    jmp loc_004568ee
loc_004568c4:
    sub eax, eax
    sub esi, esi
loc_004568c8:
    shr ebx, 1
    rcr ecx, 1
    rcr eax, 1
    adc esi, esi
    inc ebp
    jne loc_004568c8
    cmp eax, 0x80000000
    jb loc_004568ee
    jne loc_004568e8
    or esi, esi
    jne loc_004568e8
    test ecx, 1
    je loc_004568ee
loc_004568e8:
    add ecx, 1
    adc ebx, 0
loc_004568ee:
    pop ebp
    mov dword ptr [ebp], ecx
    mov dword ptr [ebp + 4], ebx
    pop esi
    pop ebp
    pop edx
    pop ecx
    pop ebx
    ret
sub_004568fb:
    push ebp
    push edi
    push ecx
    push ebx
    mov ebp, eax
    mov ecx, dword ptr [ebp]
    mov eax, dword ptr [ebp + 4]
    mov ebp, edx
    add ebp, ebx
    mov byte ptr [ebp], 0
    push eax
loc_00456910:
    pop eax
    mov edi, 0x2710
    sub edx, edx
    or eax, eax
    jne loc_00456923
    or ecx, ecx
    jne loc_00456925
    push eax
    jmp loc_0045693b
loc_00456923:
    div edi
loc_00456925:
    xchg ecx, eax
    div edi
    xchg ecx, eax
    push eax
    mov eax, edx
    mov dl, 0x64
    div dl
    mov dl, ah
    mov ah, 0
    .byte 0xd4,0x0a,0x92,0xb4,0x00,0xd4,0x0a
loc_0045693b:
    add ax, 0x3030
    add dx, 0x3030
    sub ebp, 4
    mov byte ptr [ebp + 3], al
    dec ebx
    je loc_0045695f
    mov byte ptr [ebp + 2], ah
    dec ebx
    je loc_0045695f
    mov byte ptr [ebp + 1], dl
    dec ebx
    je loc_0045695f
    mov byte ptr [ebp], dh
    dec ebx
    jne loc_00456910
loc_0045695f:
    pop eax
    pop ebx
    pop ecx
    pop edi
    pop ebp
    ret
sub_00456965:
    call sub_00456a1a
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x0a,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x64,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0xe8,0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x10,0x27,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0xa0,0x86,0x01,0x00,0x00,0x00,0x00,0x00,0x40,0x42,0x0f,0x00
    .byte 0x00,0x00,0x00,0x00,0x80,0x96,0x98,0x00,0x00,0x00,0x00,0x00,0x00,0xe1,0xf5,0x05
    .byte 0x00,0x00,0x00,0x00,0x00,0xca,0x9a,0x3b,0x02,0x00,0x00,0x00,0x00,0xe4,0x0b,0x54
    .byte 0x17,0x00,0x00,0x00,0x00,0xe8,0x76,0x48,0xe8,0x00,0x00,0x00,0x00,0x10,0xa5,0xd4
    .byte 0x18,0x09,0x00,0x00,0x00,0xa0,0x72,0x4e,0xf3,0x5a,0x00,0x00,0x00,0x40,0x7a,0x10
    .byte 0x7e,0x8d,0x03,0x00,0x00,0x80,0xc6,0xa4,0xf2,0x86,0x23,0x00,0x00,0x00,0xc1,0x6f
    .byte 0x78,0x45,0x63,0x01,0x00,0x00,0x8a,0x5d,0xb3,0xb6,0xe0,0x0d,0x00,0x00,0x64,0xa7
    .byte 0x04,0x23,0xc7,0x8a,0x00,0x00,0xe8,0x89,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
sub_00456a1a:
    pop edi
    ret
sub_00456a1c:
    push eax
    push ebx
    push ecx
    push edx
    sub esp, 8
    mov eax, dword ptr [esp + 0x1c]
    mov ecx, dword ptr [esp + 0x1c]
    mov dword ptr [esp], eax
    mov eax, dword ptr [esp + 0x20]
    xor edx, edx
    mov dword ptr [esp + 4], eax
    test eax, 0x7fffffff
    jne loc_00456a43
    test ecx, ecx
    je loc_00456a78
loc_00456a43:
    mov edx, dword ptr [esp + 6]
    and edx, 0x7ff0
    mov ebx, dword ptr [esp + 6]
    and edx, 0xffff
    and ebx, 0x800f
    sar edx, 4
    mov ecx, ebx
    mov word ptr [esp + 6], bx
    or ecx, 0x3fe0
    sub edx, 0x3fe
    mov word ptr [esp + 6], cx
loc_00456a78:
    mov eax, dword ptr [esp + 0x24]
    fld qword ptr [esp]
    mov dword ptr [eax], edx
    add esp, 8
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret 0xc
    .byte 0x00,0x00,0x00,0x00,0x00
ptr_00456a90:
    .long d_0045cff0
    .byte 0x00,0x00,0x00,0x00,0x03,0xff,0x00,0x00,0x00,0x00,0x00,0x00
    .long d_0045cfe0
    .byte 0x04,0x00,0x00,0x00,0x03,0xff,0x00,0x00,0x00,0x00,0x00,0x00
    .long d_0045cfd0
    .byte 0x08,0x00,0x00,0x00,0x03,0xff,0x00,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x0c,0x00,0x00,0x00,0x0c,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x0d,0x00,0x00,0x00,0x0c,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x0e,0x00,0x00,0x00,0x0c,0xff,0x00,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x0f,0x00,0x00,0x00,0x0c,0xff,0x00,0x80,0x00,0x00,0x00,0x00
ptr_00456b00:
    sbb byte ptr [eax], al
    add byte ptr [eax], al
    adc byte ptr [eax], al
    add byte ptr [eax], al
    add al, byte ptr [eax]
    add byte ptr [eax], al
    adc byte ptr [eax], al
    add byte ptr [eax], al
    pop es
    add byte ptr [eax], al
    add byte ptr [eax + 0x456a], dl
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00
ptr_00456b20:
    .long d_0045d000
    .byte 0x00,0x00,0x00,0x00,0x0c,0x00,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x01,0x00,0x00,0x00,0x0c,0x01,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x02,0x00,0x00,0x00,0x0c,0x02,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x03,0x00,0x00,0x00,0x0c,0x03,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x04,0x00,0x00,0x00,0x0c,0x04,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x05,0x00,0x00,0x00,0x0c,0x05,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x06,0x00,0x00,0x00,0x0c,0x06,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x07,0x00,0x00,0x00,0x0c,0x07,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x08,0x00,0x00,0x00,0x0c,0x08,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x09,0x00,0x00,0x00,0x0c,0x09,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x0a,0x00,0x00,0x00,0x0c,0x0a,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x0b,0x00,0x00,0x00,0x0c,0x0b,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x0c,0x00,0x00,0x00,0x0c,0x0c,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x0d,0x00,0x00,0x00,0x0c,0x0d,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x0e,0x00,0x00,0x00,0x0c,0x0e,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x0f,0x00,0x00,0x00,0x0c,0x0f,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x10,0x00,0x00,0x00,0x0c,0x10,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x11,0x00,0x00,0x00,0x0c,0x11,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x12,0x00,0x00,0x00,0x0c,0x12,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x13,0x00,0x00,0x00,0x0c,0x13,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x14,0x00,0x00,0x00,0x0c,0x14,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x15,0x00,0x00,0x00,0x0c,0x15,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x16,0x00,0x00,0x00,0x0c,0x16,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x17,0x00,0x00,0x00,0x0c,0x17,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x18,0x00,0x00,0x00,0x0c,0x18,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x19,0x00,0x00,0x00,0x0c,0x19,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x1a,0x00,0x00,0x00,0x0c,0x1a,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x1b,0x00,0x00,0x00,0x0c,0x1b,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x1c,0x00,0x00,0x00,0x0c,0x1c,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x1d,0x00,0x00,0x00,0x0c,0x1d,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x1e,0x00,0x00,0x00,0x0c,0x1e,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x1f,0x00,0x00,0x00,0x0c,0x1f,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x20,0x00,0x00,0x00,0x0c,0x20,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x21,0x00,0x00,0x00,0x0c,0x21,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x22,0x00,0x00,0x00,0x0c,0x22,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x23,0x00,0x00,0x00,0x0c,0x23,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x24,0x00,0x00,0x00,0x0c,0x24,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x25,0x00,0x00,0x00,0x0c,0x25,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x26,0x00,0x00,0x00,0x0c,0x26,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x27,0x00,0x00,0x00,0x0c,0x27,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x28,0x00,0x00,0x00,0x0c,0x28,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x29,0x00,0x00,0x00,0x0c,0x29,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x2a,0x00,0x00,0x00,0x0c,0x2a,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x2b,0x00,0x00,0x00,0x0c,0x2b,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x2c,0x00,0x00,0x00,0x0c,0x2c,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x2d,0x00,0x00,0x00,0x0c,0x2d,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x2e,0x00,0x00,0x00,0x0c,0x2e,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x2f,0x00,0x00,0x00,0x0c,0x2f,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x30,0x00,0x00,0x00,0x0c,0x30,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x31,0x00,0x00,0x00,0x0c,0x31,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x32,0x00,0x00,0x00,0x0c,0x32,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x33,0x00,0x00,0x00,0x0c,0x33,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x34,0x00,0x00,0x00,0x0c,0x34,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x35,0x00,0x00,0x00,0x0c,0x35,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x36,0x00,0x00,0x00,0x0c,0x36,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x37,0x00,0x00,0x00,0x0c,0x37,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x38,0x00,0x00,0x00,0x0c,0x38,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x39,0x00,0x00,0x00,0x0c,0x39,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x3a,0x00,0x00,0x00,0x0c,0x3a,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x3b,0x00,0x00,0x00,0x0c,0x3b,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x3c,0x00,0x00,0x00,0x0c,0x3c,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x3d,0x00,0x00,0x00,0x0c,0x3d,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x3e,0x00,0x00,0x00,0x0c,0x3e,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x3f,0x00,0x00,0x00,0x0c,0x3f,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x40,0x00,0x00,0x00,0x0c,0x40,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x41,0x00,0x00,0x00,0x0c,0x41,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x42,0x00,0x00,0x00,0x0c,0x42,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x43,0x00,0x00,0x00,0x0c,0x43,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x44,0x00,0x00,0x00,0x0c,0x44,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x45,0x00,0x00,0x00,0x0c,0x45,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x46,0x00,0x00,0x00,0x0c,0x46,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x47,0x00,0x00,0x00,0x0c,0x47,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x48,0x00,0x00,0x00,0x0c,0x48,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x49,0x00,0x00,0x00,0x0c,0x49,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x4a,0x00,0x00,0x00,0x0c,0x4a,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x4b,0x00,0x00,0x00,0x0c,0x4b,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x4c,0x00,0x00,0x00,0x0c,0x4c,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x4d,0x00,0x00,0x00,0x0c,0x4d,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x4e,0x00,0x00,0x00,0x0c,0x4e,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x4f,0x00,0x00,0x00,0x0c,0x4f,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x50,0x00,0x00,0x00,0x0c,0x50,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x51,0x00,0x00,0x00,0x0c,0x51,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x52,0x00,0x00,0x00,0x0c,0x52,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x53,0x00,0x00,0x00,0x0c,0x53,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x54,0x00,0x00,0x00,0x0c,0x54,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x55,0x00,0x00,0x00,0x0c,0x55,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x56,0x00,0x00,0x00,0x0c,0x56,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x57,0x00,0x00,0x00,0x0c,0x57,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x58,0x00,0x00,0x00,0x0c,0x58,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x59,0x00,0x00,0x00,0x0c,0x59,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x5a,0x00,0x00,0x00,0x0c,0x5a,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x5b,0x00,0x00,0x00,0x0c,0x5b,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x5c,0x00,0x00,0x00,0x0c,0x5c,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x5d,0x00,0x00,0x00,0x0c,0x5d,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x5e,0x00,0x00,0x00,0x0c,0x5e,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x5f,0x00,0x00,0x00,0x0c,0x5f,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x60,0x00,0x00,0x00,0x0c,0x60,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x61,0x00,0x00,0x00,0x0c,0x61,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x62,0x00,0x00,0x00,0x0c,0x62,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x63,0x00,0x00,0x00,0x0c,0x63,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x64,0x00,0x00,0x00,0x0c,0x64,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x65,0x00,0x00,0x00,0x0c,0x65,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x66,0x00,0x00,0x00,0x0c,0x66,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x67,0x00,0x00,0x00,0x0c,0x67,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x68,0x00,0x00,0x00,0x0c,0x68,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x69,0x00,0x00,0x00,0x0c,0x69,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x6a,0x00,0x00,0x00,0x0c,0x6a,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x6b,0x00,0x00,0x00,0x0c,0x6b,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x6c,0x00,0x00,0x00,0x0c,0x6c,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x6d,0x00,0x00,0x00,0x0c,0x6d,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x6e,0x00,0x00,0x00,0x0c,0x6e,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x6f,0x00,0x00,0x00,0x0c,0x6f,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x70,0x00,0x00,0x00,0x0c,0x70,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x71,0x00,0x00,0x00,0x0c,0x71,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x72,0x00,0x00,0x00,0x0c,0x72,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x73,0x00,0x00,0x00,0x0c,0x73,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x74,0x00,0x00,0x00,0x0c,0x74,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x75,0x00,0x00,0x00,0x0c,0x75,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x76,0x00,0x00,0x00,0x0c,0x76,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x77,0x00,0x00,0x00,0x0c,0x77,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x78,0x00,0x00,0x00,0x0c,0x78,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x79,0x00,0x00,0x00,0x0c,0x79,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x7a,0x00,0x00,0x00,0x0c,0x7a,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x7b,0x00,0x00,0x00,0x0c,0x7b,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x7c,0x00,0x00,0x00,0x0c,0x7c,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x7d,0x00,0x00,0x00,0x0c,0x7d,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x7e,0x00,0x00,0x00,0x0c,0x7e,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x7f,0x00,0x00,0x00,0x0c,0x7f,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x80,0x00,0x00,0x00,0x0c,0x80,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x81,0x00,0x00,0x00,0x0c,0x81,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x82,0x00,0x00,0x00,0x0c,0x82,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x83,0x00,0x00,0x00,0x0c,0x83,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x84,0x00,0x00,0x00,0x0c,0x84,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x85,0x00,0x00,0x00,0x0c,0x85,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x86,0x00,0x00,0x00,0x0c,0x86,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x87,0x00,0x00,0x00,0x0c,0x87,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x88,0x00,0x00,0x00,0x0c,0x88,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x89,0x00,0x00,0x00,0x0c,0x89,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x8a,0x00,0x00,0x00,0x0c,0x8a,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x8b,0x00,0x00,0x00,0x0c,0x8b,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x8c,0x00,0x00,0x00,0x0c,0x8c,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x8d,0x00,0x00,0x00,0x0c,0x8d,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x8e,0x00,0x00,0x00,0x0c,0x8e,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x8f,0x00,0x00,0x00,0x0c,0x8f,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x90,0x00,0x00,0x00,0x0c,0x90,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x91,0x00,0x00,0x00,0x0c,0x91,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x92,0x00,0x00,0x00,0x0c,0x92,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x93,0x00,0x00,0x00,0x0c,0x93,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x94,0x00,0x00,0x00,0x0c,0x94,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x95,0x00,0x00,0x00,0x0c,0x95,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x96,0x00,0x00,0x00,0x0c,0x96,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x97,0x00,0x00,0x00,0x0c,0x97,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x98,0x00,0x00,0x00,0x0c,0x98,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x99,0x00,0x00,0x00,0x0c,0x99,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x9a,0x00,0x00,0x00,0x0c,0x9a,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x9b,0x00,0x00,0x00,0x0c,0x9b,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x9c,0x00,0x00,0x00,0x0c,0x9c,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x9d,0x00,0x00,0x00,0x0c,0x9d,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x9e,0x00,0x00,0x00,0x0c,0x9e,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0x9f,0x00,0x00,0x00,0x0c,0x9f,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xa0,0x00,0x00,0x00,0x0c,0xa0,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xa1,0x00,0x00,0x00,0x0c,0xa1,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xa2,0x00,0x00,0x00,0x0c,0xa2,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xa3,0x00,0x00,0x00,0x0c,0xa3,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xa4,0x00,0x00,0x00,0x0c,0xa4,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xa5,0x00,0x00,0x00,0x0c,0xa5,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xa6,0x00,0x00,0x00,0x0c,0xa6,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xa7,0x00,0x00,0x00,0x0c,0xa7,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xa8,0x00,0x00,0x00,0x0c,0xa8,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xa9,0x00,0x00,0x00,0x0c,0xa9,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xaa,0x00,0x00,0x00,0x0c,0xaa,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xab,0x00,0x00,0x00,0x0c,0xab,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xac,0x00,0x00,0x00,0x0c,0xac,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xad,0x00,0x00,0x00,0x0c,0xad,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xae,0x00,0x00,0x00,0x0c,0xae,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xaf,0x00,0x00,0x00,0x0c,0xaf,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xb0,0x00,0x00,0x00,0x0c,0xb0,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xb1,0x00,0x00,0x00,0x0c,0xb1,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xb2,0x00,0x00,0x00,0x0c,0xb2,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xb3,0x00,0x00,0x00,0x0c,0xb3,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xb4,0x00,0x00,0x00,0x0c,0xb4,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xb5,0x00,0x00,0x00,0x0c,0xb5,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xb6,0x00,0x00,0x00,0x0c,0xb6,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xb7,0x00,0x00,0x00,0x0c,0xb7,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xb8,0x00,0x00,0x00,0x0c,0xb8,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xb9,0x00,0x00,0x00,0x0c,0xb9,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xba,0x00,0x00,0x00,0x0c,0xba,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xbb,0x00,0x00,0x00,0x0c,0xbb,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xbc,0x00,0x00,0x00,0x0c,0xbc,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xbd,0x00,0x00,0x00,0x0c,0xbd,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xbe,0x00,0x00,0x00,0x0c,0xbe,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xbf,0x00,0x00,0x00,0x0c,0xbf,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xc0,0x00,0x00,0x00,0x0c,0xc0,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xc1,0x00,0x00,0x00,0x0c,0xc1,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xc2,0x00,0x00,0x00,0x0c,0xc2,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xc3,0x00,0x00,0x00,0x0c,0xc3,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xc4,0x00,0x00,0x00,0x0c,0xc4,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xc5,0x00,0x00,0x00,0x0c,0xc5,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xc6,0x00,0x00,0x00,0x0c,0xc6,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xc7,0x00,0x00,0x00,0x0c,0xc7,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xc8,0x00,0x00,0x00,0x0c,0xc8,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xc9,0x00,0x00,0x00,0x0c,0xc9,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xca,0x00,0x00,0x00,0x0c,0xca,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xcb,0x00,0x00,0x00,0x0c,0xcb,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xcc,0x00,0x00,0x00,0x0c,0xcc,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xcd,0x00,0x00,0x00,0x0c,0xcd,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xce,0x00,0x00,0x00,0x0c,0xce,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xcf,0x00,0x00,0x00,0x0c,0xcf,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xd0,0x00,0x00,0x00,0x0c,0xd0,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xd1,0x00,0x00,0x00,0x0c,0xd1,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xd2,0x00,0x00,0x00,0x0c,0xd2,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xd3,0x00,0x00,0x00,0x0c,0xd3,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xd4,0x00,0x00,0x00,0x0c,0xd4,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xd5,0x00,0x00,0x00,0x0c,0xd5,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xd6,0x00,0x00,0x00,0x0c,0xd6,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xd7,0x00,0x00,0x00,0x0c,0xd7,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xd8,0x00,0x00,0x00,0x0c,0xd8,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xd9,0x00,0x00,0x00,0x0c,0xd9,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xda,0x00,0x00,0x00,0x0c,0xda,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xdb,0x00,0x00,0x00,0x0c,0xdb,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xdc,0x00,0x00,0x00,0x0c,0xdc,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xdd,0x00,0x00,0x00,0x0c,0xdd,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xde,0x00,0x00,0x00,0x0c,0xde,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xdf,0x00,0x00,0x00,0x0c,0xdf,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xe0,0x00,0x00,0x00,0x0c,0xe0,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xe1,0x00,0x00,0x00,0x0c,0xe1,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xe2,0x00,0x00,0x00,0x0c,0xe2,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xe3,0x00,0x00,0x00,0x0c,0xe3,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xe4,0x00,0x00,0x00,0x0c,0xe4,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xe5,0x00,0x00,0x00,0x0c,0xe5,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xe6,0x00,0x00,0x00,0x0c,0xe6,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xe7,0x00,0x00,0x00,0x0c,0xe7,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xe8,0x00,0x00,0x00,0x0c,0xe8,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xe9,0x00,0x00,0x00,0x0c,0xe9,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xea,0x00,0x00,0x00,0x0c,0xea,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xeb,0x00,0x00,0x00,0x0c,0xeb,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xec,0x00,0x00,0x00,0x0c,0xec,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xed,0x00,0x00,0x00,0x0c,0xed,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xee,0x00,0x00,0x00,0x0c,0xee,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xef,0x00,0x00,0x00,0x0c,0xef,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xf0,0x00,0x00,0x00,0x0c,0xf0,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xf1,0x00,0x00,0x00,0x0c,0xf1,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xf2,0x00,0x00,0x00,0x0c,0xf2,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xf3,0x00,0x00,0x00,0x0c,0xf3,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xf4,0x00,0x00,0x00,0x0c,0xf4,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xf5,0x00,0x00,0x00,0x0c,0xf5,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xf6,0x00,0x00,0x00,0x0c,0xf6,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xf7,0x00,0x00,0x00,0x0c,0xf7,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xf8,0x00,0x00,0x00,0x0c,0xf8,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xf9,0x00,0x00,0x00,0x0c,0xf9,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xfa,0x00,0x00,0x00,0x0c,0xfa,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xfb,0x00,0x00,0x00,0x0c,0xfb,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xfc,0x00,0x00,0x00,0x0c,0xfc,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xfd,0x00,0x00,0x00,0x0c,0xfd,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xfe,0x00,0x00,0x00,0x0c,0xfe,0x00,0x80,0x00,0x00,0x00,0x00
    .long d_0045d000
    .byte 0xff,0x00,0x00,0x00,0x0c,0xff,0x00,0x80,0x00,0x00,0x00,0x00
ptr_00457b20:
    sbb byte ptr [eax], al
    add byte ptr [eax], al
    adc byte ptr [eax], al
    add byte ptr [eax], al
    add al, byte ptr [eax]
    add byte ptr [eax], al
    add byte ptr [ecx], al
    add byte ptr [eax], al
    add byte ptr [ecx], al
    add byte ptr [eax], al
    and byte ptr [ebx + 0x45], ch
    .byte 0x00
sub_00457b38:
    jmp dword ptr [__imp__GetCPInfo]
sub_00457b3e:
    jmp dword ptr [__imp__VirtualFree]
    jmp dword ptr [__imp__GetExitCodeProcess]
    jmp dword ptr [__imp__CreateProcessA]
sub_00457b50:
    jmp dword ptr [iat_004a741c]
sub_00457b56:
    jmp dword ptr [__imp__WriteConsoleA]
sub_00457b5c:
    jmp dword ptr [__imp__SetConsoleMode]
sub_00457b62:
    jmp dword ptr [__imp__GetConsoleMode]
sub_00457b68:
    jmp dword ptr [__imp__ReadConsoleInputA]
sub_00457b6e:
    jmp dword ptr [__imp__GetTimeZoneInformation]
sub_00457b74:
    jmp dword ptr [__imp__VirtualAlloc]
sub_00457b7a:
    jmp dword ptr [__imp__GetLocalTime]
sub_00457b80:
    jmp dword ptr [__imp__GetCurrentProcessId]
    jmp dword ptr [__imp__GetVersion]
    jmp dword ptr [__imp__EscapeCommFunction]
    jmp dword ptr [__imp__SetCommTimeouts]
    jmp dword ptr [__imp__GetCommTimeouts]
    jmp dword ptr [__imp__GetCommState]
    jmp dword ptr [__imp__SetCommMask]
    jmp dword ptr [__imp__GetCommMask]
    jmp dword ptr [__imp__SetupComm]
    jmp dword ptr [iat_004a7268]
    jmp dword ptr [__imp__ClearCommBreak]
    jmp dword ptr [__imp__SetCommBreak]
    jmp dword ptr [__imp__PeekNamedPipe]
    jmp dword ptr [__imp__PurgeComm]
    jmp dword ptr [__imp__GetOverlappedResult]
    jmp dword ptr [iat_004a72ac]
    jmp dword ptr [__imp__WriteFile]
    jmp dword ptr [__imp__SetCommState]
    jmp dword ptr [__imp__ClearCommError]
    jmp dword ptr [__imp__GetCommModemStatus]
    jmp dword ptr [__imp__GetModuleFileNameA]
    jmp dword ptr [__imp__DefWindowProcA]
    jmp dword ptr [__imp__GetUpdateRect]
    jmp dword ptr [__imp__GetVersionExA]
    jmp dword ptr [__imp__RegisterClassA]
    jmp dword ptr [__imp__GetStockObject]
    jmp dword ptr [__imp__LoadIconA]
    jmp dword ptr [__imp__SetFocus]
    jmp dword ptr [__imp__UpdateWindow]
    jmp dword ptr [__imp__CreateWindowExA]
    jmp dword ptr [__imp__GetSystemMetrics]
    jmp dword ptr [__imp__MessageBoxA]
    jmp dword ptr [iat_004a7188]
    jmp dword ptr [iat_004a7178]
    jmp dword ptr [__imp__LoadCursorA]
    jmp dword ptr [__imp__SetWindowTextA]
    jmp dword ptr [__imp__GetLastError]
    jmp dword ptr [iat_004a726c]
    jmp dword ptr [iat_004a7264]
    jmp dword ptr [__imp__GlobalFree]
    jmp dword ptr [__imp__GlobalAlloc]
    .byte 0xff,0x25
    .long __imp__DispatchMessageA
    .byte 0xff,0x25
    .long __imp__TranslateMessage
    .byte 0xff,0x25
    .long __imp__PeekMessageA
    .byte 0xff,0x25
    .long __imp__CallNextHookEx
    .byte 0xff,0x25
    .long __imp__GetAsyncKeyState
    .byte 0xff,0x25
    .long __imp__timeGetDevCaps
    .byte 0xff,0x25
    .long __imp__timeEndPeriod
    .byte 0xff,0x25
    .long __imp__timeBeginPeriod
    .byte 0xff,0x25
    .long __imp__UnhookWindowsHookEx
    .byte 0xff,0x25
    .long __imp__SetWindowsHookExA
    .byte 0xff,0x25
    .long __imp__timeGetTime
    .byte 0xff,0x25
    .long __imp__GetKeyState
    .byte 0xff,0x25
    .long __imp__joyGetPosEx
    .byte 0xff,0x25
    .long __imp__joyGetNumDevs
    .byte 0xff,0x25
    .long __imp__joyGetDevCapsA
    .byte 0xff,0x25
    .long __imp__timeKillEvent
    .byte 0xff,0x25
    .long __imp__timeSetEvent
sub_00457cdc:
    jmp dword ptr [iat_004a7450]
    jmp dword ptr [__imp__SetCurrentDirectoryA]
sub_00457ce8:
    jmp dword ptr [__imp__Sleep]
sub_00457cee:
    jmp dword ptr [__imp__ExitThread]
sub_00457cf4:
    jmp dword ptr [__imp__CreateThread]
sub_00457cfa:
    jmp dword ptr [__imp__CreateEventA]
sub_00457d00:
    jmp dword ptr [__imp__GetCurrentThread]
sub_00457d06:
    jmp dword ptr [__imp__SetEvent]
sub_00457d0c:
    jmp dword ptr [iat_004a7420]
    jmp dword ptr [__imp__GetTickCount]
sub_00457d18:
    jmp dword ptr [iat_004a7468]
sub_00457d1e:
    jmp dword ptr [__imp__TlsFree]
sub_00457d24:
    jmp dword ptr [__imp__TlsSetValue]
sub_00457d2a:
    jmp dword ptr [__imp__TlsAlloc]
sub_00457d30:
    jmp dword ptr [__imp__TlsGetValue]
sub_00457d36:
    jmp dword ptr [__imp__ReleaseMutex]
sub_00457d3c:
    jmp dword ptr [__imp__WaitForSingleObject]
sub_00457d42:
    jmp dword ptr [iat_004a73cc]
sub_00457d48:
    jmp dword ptr [__imp__GetCurrentThreadId]
sub_00457d4e:
    jmp dword ptr [iat_004a73c0]
sub_00457d54:
    jmp dword ptr [__imp__GetStdHandle]
sub_00457d5a:
    jmp dword ptr [__imp__SetStdHandle]
sub_00457d60:
    jmp dword ptr [iat_004a73c8]
sub_00457d66:
    jmp dword ptr [__imp__LocalFileTimeToFileTime]
sub_00457d6c:
    jmp dword ptr [__imp__DosDateTimeToFileTime]
sub_00457d72:
    jmp dword ptr [__imp__FileTimeToDosDateTime]
sub_00457d78:
    jmp dword ptr [__imp__FileTimeToLocalFileTime]
sub_00457d7e:
    jmp dword ptr [__imp__DeleteFileA]
sub_00457d84:
    jmp dword ptr [__imp__GetModuleHandleA]
sub_00457d8a:
    jmp dword ptr [__imp__GetVersion]
sub_00457d90:
    jmp dword ptr [__imp__GetCommandLineA]
sub_00457d96:
    jmp dword ptr [__imp__GetEnvironmentStrings]
sub_00457d9c:
    jmp dword ptr [__imp__ExitProcess]
sub_00457da2:
    jmp dword ptr [__imp__WriteFile]
sub_00457da8:
    jmp dword ptr [__imp__GetModuleFileNameA]
sub_00457dae:
    jmp dword ptr [__imp__GetProcAddress]
sub_00457db4:
    jmp dword ptr [__imp__LoadLibraryA]
sub_00457dba:
    jmp dword ptr [__imp__GetActiveWindow]
sub_00457dc0:
    jmp dword ptr [__imp__wsprintfA]
sub_00457dc6:
    jmp dword ptr [__imp__SetConsoleCtrlHandler]
sub_00457dcc:
    jmp dword ptr [__imp__GetLastError]
sub_00457dd2:
    jmp dword ptr [iat_004a73f8]
sub_00457dd8:
    jmp dword ptr [iat_004a73f0]
sub_00457dde:
    jmp dword ptr [iat_004a73f4]
sub_00457de4:
    jmp dword ptr [__imp__DirectInputCreateA]
sub_00457dea:
    jmp dword ptr [iat_004a74b4]
sub_00457df0:
    jmp dword ptr [iat_004a74f0]
sub_00457df6:
    jmp dword ptr [iat_004a74f4]
sub_00457dfc:
    jmp dword ptr [iat_004a74f8]
sub_00457e02:
    jmp dword ptr [iat_004a74fc]
sub_00457e08:
    jmp dword ptr [iat_004a7500]
sub_00457e0e:
    jmp dword ptr [iat_004a7504]
sub_00457e14:
    jmp dword ptr [iat_004a7508]
sub_00457e1a:
    jmp dword ptr [iat_004a750c]
sub_00457e20:
    jmp dword ptr [iat_004a7510]
sub_00457e26:
    jmp dword ptr [iat_004a7514]
sub_00457e2c:
    jmp dword ptr [iat_004a7518]
sub_00457e32:
    jmp dword ptr [iat_004a751c]
sub_00457e38:
    jmp dword ptr [__imp__DirectSoundCreate]
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    .byte 0x00,0x00
