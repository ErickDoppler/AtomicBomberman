# code 0x00411000 - 0x00421000
    .intel_syntax noprefix
    .text
    mov dword ptr [d_00460244], 0
    call sub_0040c06a
    test eax, eax
    je loc_0041101c
    call sub_00421198
loc_0041101c:
    call sub_0040c06a
    cmp eax, 2
    jne loc_004110cc
    mov eax, 0x3e8
    call sub_00413cb0
    call bm_assign_slots
    mov dword ptr [ebp - 0x1c], 0
loc_00411040:
    cmp dword ptr [ebp - 0x1c], 0xa
    jl loc_00411050
    jmp loc_00411088
loc_00411048:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_00411040
loc_00411050:
    lea ebx, [ebp - 0x8c]
    lea edx, [ebp - 0x90]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00421dd2
    cmp dword ptr [ebp - 0x90], 0
    je loc_00411086
    mov ebx, dword ptr [ebp - 0x8c]
    mov edx, dword ptr [ebp - 0x90]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0040ee16
    call bm_pump
loc_00411086:
    jmp loc_00411048
loc_00411088:
    call sub_0040ee94
    call bm_pump
    mov dword ptr [ebp - 0x1c], 0
loc_00411099:
    cmp dword ptr [ebp - 0x1c], 0xa
    jl loc_004110a9
    jmp loc_004110c7
loc_004110a1:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_00411099
loc_004110a9:
    mov eax, dword ptr [ebp - 0x1c]
    call sub_004223e7
    mov dword ptr [ebp - 0x94], eax
    mov edx, dword ptr [ebp - 0x94]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0040ee59
    jmp loc_004110a1
loc_004110c7:
    call bm_pump
loc_004110cc:
    call sub_0040c06a
    cmp eax, 1
    jne loc_00411178
    call sub_0040f3a8
    call sub_0041043c
loc_004110e4:
    call bm_pump
    call sub_004102b7
    mov dword ptr [ebp - 0x24], eax
    cmp dword ptr [ebp - 0x24], 0x1b
    jne loc_00411110
    mov dword ptr [d_0046492c], 0xffffffff
    mov dword ptr [d_00464a68], 2
    jmp loc_00411cef
loc_00411110:
    call sub_0040f3c7
    test eax, eax
    je loc_004110e4
    call bm_assign_slots
    mov dword ptr [ebp - 0x1c], 0
loc_00411125:
    cmp dword ptr [ebp - 0x1c], 0xa
    jl loc_00411135
    jmp loc_00411178
loc_0041112d:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_00411125
loc_00411135:
    lea ebx, [ebp - 0x98]
    lea edx, [ebp - 0x9c]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00421dd2
    cmp dword ptr [ebp - 0x9c], 0
    je loc_0041115b
    cmp dword ptr [ebp - 0x9c], 4
    jne loc_0041115d
loc_0041115b:
    jmp loc_00411176
loc_0041115d:
    mov ebx, dword ptr [ebp - 0x98]
    mov edx, dword ptr [ebp - 0x9c]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0040ee16
    call bm_pump
loc_00411176:
    jmp loc_0041112d
loc_00411178:
    call sub_00421793
    call sub_0040a140
    call sub_004148e5
    mov dword ptr [ebp - 0x20], 0
    lea eax, [ebp - 0x10]
    call sub_00451e3e
    call sub_0043acf8
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [d_00464938], 0
    je loc_0041128c
    mov dword ptr [ebp - 0x1c], 0
loc_004111b2:
    cmp dword ptr [ebp - 0x1c], 0xa
    jl loc_004111c2
    jmp loc_004111d0
loc_004111ba:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_004111b2
loc_004111c2:
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00421e33
    jmp loc_004111ba
loc_004111d0:
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    inc edx
    mov dword ptr [ebp - 0xa0], edx
    cmp dword ptr [ebp - 0xa0], 3
    jge loc_004111ff
    mov dword ptr [ebp - 0xa4], 3
    jmp loc_0041120b
loc_004111ff:
    mov eax, dword ptr [ebp - 0xa0]
    mov dword ptr [ebp - 0xa4], eax
loc_0041120b:
    mov eax, dword ptr [ebp - 0xa4]
    mov dword ptr [ebp - 0xa0], eax
    mov dword ptr [ebp - 0x1c], 0
loc_0041121e:
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 0xa0]
    jl loc_00411233
    jmp loc_00411244
loc_0041122b:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_0041121e
loc_00411233:
    xor ebx, ebx
    mov edx, 1
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00421e33
    jmp loc_0041122b
loc_00411244:
    mov eax, 0x23
    call sub_00412135
    cmp eax, 1
    jle loc_00411265
    mov eax, 0x23
    call sub_00412135
    mov dword ptr [ebp - 0xa8], eax
    jmp loc_0041126f
loc_00411265:
    mov dword ptr [ebp - 0xa8], 1
loc_0041126f:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0xa8]
    mov dword ptr [d_00464998], edx
    jmp loc_00411cef
loc_0041128c:
    call sub_0041043c
    mov dword ptr [ebp - 0x18], 0
loc_00411298:
    call bm_pump
    call sub_0040c06a
    cmp eax, 2
    call sub_0040c06a
    cmp eax, 1
    jne loc_004112d3
    call sub_0040f386
    test eax, eax
    jne loc_004112d3
    mov dword ptr [ebp - 0x18], 1
    mov dword ptr [d_00464a68], 2
    call sub_0042a015
    jmp loc_00411cad
loc_004112d3:
    call sub_00415ca4
    call sub_00429790
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, 0x2c2
    call sub_00412135
    push eax
    mov eax, 0x2c1
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2c4
    call sub_00412135
    mov ebx, eax
    mov eax, 0x32
    call sub_004124a4
    mov edx, eax
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov dword ptr [ebp - 0x1c], 0
loc_0041132d:
    cmp dword ptr [ebp - 0x1c], 0xa
    jl loc_00411351
    jmp loc_00411580
loc_00411338:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_0041132d
    .byte 0x90
ptr_00411341:
    mov ch, 0x13
    inc ecx
    add dh, cl
    # adc eax, dword ptr [ecx]
    .byte 0x13,0x41,0x00
    int1
    # adc eax, dword ptr [ecx]
    .byte 0x13,0x41,0x00
    adc al, 0x14
    inc ecx
    .byte 0x00
loc_00411351:
    lea ebx, [ebp - 0xb4]
    lea edx, [ebp - 0xb8]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00421dd2
    mov eax, dword ptr [ebp - 0x1c]
    call sub_004223e7
    mov dword ptr [ebp - 0xb0], eax
    mov eax, dword ptr [ebp - 0xb8]
    dec eax
    mov dword ptr [ebp - 0xac], eax
    cmp dword ptr [ebp - 0xac], 3
    ja loc_00411399
    mov eax, dword ptr [ebp - 0xac]
    shl eax, 2
    jmp dword ptr cs:[eax + ptr_00411341]
loc_00411399:
    mov eax, 0xdc
    call sub_004124a4
    mov edx, eax
    lea eax, [ebp - 0x11c]
    call sub_0045189e
    # jmp 0x41142b
    .byte 0xe9
    .long loc_0041142b - . - 4
ptr_004113b5:
    mov eax, 0xdd
    call sub_004124a4
    mov edx, eax
    lea eax, [ebp - 0x11c]
    call sub_0045189e
    jmp loc_0041142b
ptr_004113ce:
    mov eax, dword ptr [ebp - 0xb4]
    push eax
    mov eax, 0xde
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x11c]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_0041142b
ptr_004113f1:
    mov eax, dword ptr [ebp - 0xb4]
    push eax
    mov eax, 0xdf
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x11c]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_0041142b
ptr_00411414:
    mov eax, 0xe0
    call sub_004124a4
    mov edx, eax
    lea eax, [ebp - 0x11c]
    call sub_0045189e
loc_0041142b:
    # --- patched: original code of 0x0041142b..0x00411430 replaced (see hooks.s)
    call bm_row_append
    mov dword ptr [ebp - 0x120], eax
    mov dword ptr [d_00464964], 0
    lea eax, [ebp - 0x11c]
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    inc eax
    push eax
    mov eax, 0x33
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x88]
    push eax
    call sub_004518d0
    add esp, 0x10
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00416867
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0041672f
    push eax
    mov eax, 0x2c8
    call sub_00412135
    mov edx, dword ptr [ebp - 0x1c]
    imul edx, eax
    mov eax, 0x2c7
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2c6
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2c9
    call sub_00412135
    mov ebx, eax
    lea edx, [ebp - 0x88]
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
    mov eax, dword ptr [ebp - 0x120]
    mov dword ptr [d_00464964], eax
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [ebp - 0x1c]
    jne loc_00411501
    mov eax, 0x2c8
    call sub_00412135
    mov edx, dword ptr [ebp - 0x1c]
    imul edx, eax
    mov eax, 0x2c7
    call sub_00412135
    add eax, 0x10
    add edx, eax
    mov eax, 0x2c6
    call sub_00412135
    sub eax, 0xf
    call sub_00413bd6
loc_00411501:
    cmp dword ptr [d_00464964], 0
    je loc_0041157b
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    mov eax, dword ptr [ebp - 0xb0]
    call sub_004141f8
    push eax
    mov eax, 0x2c8
    call sub_00412135
    mov edx, dword ptr [ebp - 0x1c]
    imul edx, eax
    mov eax, 0x2c7
    call sub_00412135
    add eax, edx
    push eax
    mov eax, 0x2c6
    call sub_00412135
    mov ecx, eax
    mov eax, 0x2c9
    call sub_00412135
    add ecx, eax
    mov eax, 0xe6
    call sub_004124a4
    call dword ptr [d_0045c380]
    mov ebx, eax
    mov eax, 0xe6
    call sub_004124a4
    mov edx, eax
    mov eax, dword ptr [d_00464ae4]
    call sub_0041696c
loc_0041157b:
    jmp loc_00411338
loc_00411580:
    # --- patched: original code of 0x00411580..0x004116df replaced (see hooks.s)
    .fill 351, 1, 0x90
loc_004116df:
    call sub_0040c06a
    cmp eax, 1
    je loc_004116ee
    call sub_00413fb9
loc_004116ee:
    call sub_00415c1f
    lea eax, [ebp - 0x14]
    call sub_00451e3e
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [ebp - 0x10]
    jbe loc_00411709
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 0x10], eax
loc_00411709:
    call bm_setup_key
    mov dword ptr [ebp - 0x24], eax
    cmp dword ptr [ebp - 0x24], -1
    je loc_0041171d
    cmp dword ptr [ebp - 0x24], -2
    jne loc_0041171f
loc_0041171d:
    jmp loc_00411729
loc_0041171f:
    mov eax, 0x14
    call sub_00427961
loc_00411729:
    cmp dword ptr [ebp - 0x24], 0x63
    jb loc_004117f4
    cmp dword ptr [ebp - 0x24], 0x63
    jbe loc_0041186d
    cmp dword ptr [ebp - 0x24], 0x148
    jb loc_004117a8
    cmp dword ptr [ebp - 0x24], 0x148
    jbe loc_004118c9
    cmp dword ptr [ebp - 0x24], 0x14d
    jb loc_00411796
    cmp dword ptr [ebp - 0x24], 0x14d
    jbe loc_00411971
    cmp dword ptr [ebp - 0x24], 0x150
    jb loc_00411791
    cmp dword ptr [ebp - 0x24], 0x150
    jbe loc_004118e1
    cmp dword ptr [ebp - 0x24], 0x385
    je loc_00411b91
    jmp loc_00411c93
loc_00411791:
    jmp loc_00411c93
loc_00411796:
    cmp dword ptr [ebp - 0x24], 0x14b
    je loc_004118f9
    jmp loc_00411c93
loc_004117a8:
    cmp dword ptr [ebp - 0x24], 0x74
    jb loc_004117e5
    cmp dword ptr [ebp - 0x24], 0x74
    jbe loc_004119dd
    cmp dword ptr [ebp - 0x24], 0x120
    jb loc_004117e0
    cmp dword ptr [ebp - 0x24], 0x120
    jbe loc_00411b2b
    cmp dword ptr [ebp - 0x24], 0x13b
    je loc_00411b0b
    jmp loc_00411c93
loc_004117e0:
    jmp loc_00411c93
loc_004117e5:
    cmp dword ptr [ebp - 0x24], 0x6f
    je loc_00411a87
    jmp loc_00411c93
loc_004117f4:
    cmp dword ptr [ebp - 0x24], 0x20
    jb loc_00411843
    cmp dword ptr [ebp - 0x24], 0x20
    jbe loc_00411b4b
    cmp dword ptr [ebp - 0x24], 0x43
    jb loc_00411834
    cmp dword ptr [ebp - 0x24], 0x43
    jbe loc_0041186d
    cmp dword ptr [ebp - 0x24], 0x4f
    jb loc_0041182f
    cmp dword ptr [ebp - 0x24], 0x4f
    jbe loc_00411a87
    cmp dword ptr [ebp - 0x24], 0x54
    je loc_004119dd
    jmp loc_00411c93
loc_0041182f:
    jmp loc_00411c93
loc_00411834:
    cmp dword ptr [ebp - 0x24], 0x30
    je loc_00411a87
    jmp loc_00411c93
loc_00411843:
    cmp dword ptr [ebp - 0x24], 0xd
    jb loc_00411862
    cmp dword ptr [ebp - 0x24], 0xd
    jbe loc_00411b4b
    cmp dword ptr [ebp - 0x24], 0x1b
    je loc_00411ac8
    jmp loc_00411c93
loc_00411862:
    cmp dword ptr [ebp - 0x24], 1
    je loc_00411893
    jmp loc_00411c93
loc_0041186d:
    call sub_0040c06a
    test eax, eax
    jne loc_0041188e
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    cmp dword ptr [ebp - 4], 5
    jne loc_0041188e
    call sub_004015c6
    mov dword ptr [ebp - 4], 0
loc_0041188e:
    jmp loc_00411c93
loc_00411893:
    call sub_0040c06a
    test eax, eax
    jne loc_004118c4
    mov dword ptr [ebp - 0x1c], 0
loc_004118a3:
    cmp dword ptr [ebp - 0x1c], 0xa
    jl loc_004118b3
    jmp loc_004118c4
loc_004118ab:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_004118a3
loc_004118b3:
    xor ebx, ebx
    mov edx, 1
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00421e33
    jmp loc_004118ab
loc_004118c4:
    jmp loc_00411c93
loc_004118c9:
    mov eax, dword ptr [ebp - 0x20]
    dec dword ptr [ebp - 0x20]
    cmp dword ptr [ebp - 0x20], 0
    jge loc_004118dc
    mov dword ptr [ebp - 0x20], 9
loc_004118dc:
    jmp loc_00411c93
loc_004118e1:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    cmp dword ptr [ebp - 0x20], 0xa
    jl loc_004118f4
    mov dword ptr [ebp - 0x20], 0
loc_004118f4:
    jmp loc_00411c93
loc_004118f9:
    lea ebx, [ebp - 0x128]
    lea edx, [ebp - 0x12c]
    mov eax, dword ptr [ebp - 0x20]
    call sub_00421dd2
    cmp dword ptr [ebp - 0x12c], 4
    jne loc_00411922
    mov eax, 0x28
    call sub_00427961
    jmp loc_0041196c
loc_00411922:
    mov dword ptr [ebp - 0x12c], 0
    mov dword ptr [ebp - 0x128], 0
    mov ebx, dword ptr [ebp - 0x128]
    mov edx, dword ptr [ebp - 0x12c]
    mov eax, dword ptr [ebp - 0x20]
    call sub_00421e33
    call sub_0040c06a
    test eax, eax
    je loc_0041196c
    mov ebx, dword ptr [ebp - 0x128]
    mov edx, dword ptr [ebp - 0x12c]
    mov eax, dword ptr [ebp - 0x20]
    call sub_0040ee16
    call bm_pump
loc_0041196c:
    jmp loc_00411c93
loc_00411971:
    lea ebx, [ebp - 0x130]
    lea edx, [ebp - 0x134]
    mov eax, dword ptr [ebp - 0x20]
    call sub_00421dd2
    cmp dword ptr [ebp - 0x134], 4
    jne loc_0041199a
    mov eax, 0x28
    call sub_00427961
    jmp loc_004119d8
loc_0041199a:
    mov eax, dword ptr [ebp - 0x20]
    call sub_00421e80
    lea ebx, [ebp - 0x130]
    lea edx, [ebp - 0x134]
    mov eax, dword ptr [ebp - 0x20]
    call sub_00421dd2
    call sub_0040c06a
    test eax, eax
    je loc_004119d8
    mov ebx, dword ptr [ebp - 0x130]
    mov edx, dword ptr [ebp - 0x134]
    mov eax, dword ptr [ebp - 0x20]
    call sub_0040ee16
    call bm_pump
loc_004119d8:
    jmp loc_00411c93
loc_004119dd:
    call sub_0040c06a
    cmp eax, 1
    jne loc_004119f6
    mov eax, 0x28
    call sub_00427961
    jmp loc_00411a82
loc_004119f6:
    lea ebx, [ebp - 0x138]
    lea edx, [ebp - 0x13c]
    mov eax, dword ptr [ebp - 0x20]
    call sub_00421dd2
    cmp dword ptr [ebp - 0x13c], 0
    je loc_00411a78
    mov eax, dword ptr [ebp - 0x20]
    call sub_004223e7
    mov dword ptr [ebp - 0x140], eax
    cmp dword ptr [ebp - 0x140], 0
    jne loc_00411a36
    mov dword ptr [ebp - 0x144], 1
    jmp loc_00411a40
loc_00411a36:
    mov dword ptr [ebp - 0x144], 0
loc_00411a40:
    mov eax, dword ptr [ebp - 0x144]
    mov dword ptr [ebp - 0x140], eax
    mov edx, dword ptr [ebp - 0x140]
    mov eax, dword ptr [ebp - 0x20]
    call sub_00422437
    call sub_0040c06a
    test eax, eax
    je loc_00411a76
    mov edx, dword ptr [ebp - 0x140]
    mov eax, dword ptr [ebp - 0x20]
    call sub_0040ee59
    call bm_pump
loc_00411a76:
    jmp loc_00411a82
loc_00411a78:
    mov eax, 0x28
    call sub_00427961
loc_00411a82:
    jmp loc_00411c93
loc_00411a87:
    call sub_0040c06a
    cmp eax, 1
    jne loc_00411a9d
    mov eax, 0x28
    call sub_00427961
    jmp loc_00411ac3
loc_00411a9d:
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 0x20]
    call sub_00421e33
    call sub_0040c06a
    test eax, eax
    je loc_00411ac3
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 0x20]
    call sub_0040ee16
    call bm_pump
loc_00411ac3:
    jmp loc_00411c93
loc_00411ac8:
    mov dword ptr [d_0046492c], 0xffffffff
    mov eax, 0xa
    call sub_00427961
    mov dword ptr [d_00464a68], 2
    mov dword ptr [ebp - 0x18], 1
    mov eax, 0x1b
    call sub_0040f064
    call bm_pump
    call sub_0040edc9
    call bm_pump
    jmp loc_00411c93
loc_00411b0b:
    call sub_0040c06a
    cmp eax, 1
    jne loc_00411b21
    mov eax, 0x28
    call sub_00427961
    jmp loc_00411b26
loc_00411b21:
    call sub_0041431c
loc_00411b26:
    jmp loc_00411c93
loc_00411b2b:
    call sub_0040c06a
    cmp eax, 1
    jne loc_00411b41
    mov eax, 0x28
    call sub_00427961
    jmp loc_00411b46
loc_00411b41:
    call sub_00413d45
loc_00411b46:
    jmp loc_00411c93
loc_00411b4b:
    # --- patched: original code of 0x00411b4b..0x00411b64 replaced (see hooks.s)
    call sub_0040c06a
    test eax, eax
    je loc_00411b64
    call bm_setup_lock_key
    jmp loc_00411c93
    .org 0x411b64 - 0x401000, 0x90
loc_00411b64:
    call sub_0043acf8
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0xc]
    jae loc_00411b7a
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0xc], eax
loc_00411b7a:
    call sub_004148ac
    imul eax, eax, 0x3e8
    add eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [ebp - 8]
    jae loc_00411c93
loc_00411b91:
    call sub_0040c06a
    cmp eax, 1
    jne loc_00411ba2
    call sub_00422154
    jmp loc_00411be5
loc_00411ba2:
    call sub_00422085
    test eax, eax
    je loc_00411be5
    call sub_00431178
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2d
    call sub_004124a4
    mov edx, eax
    mov eax, 0x60
    call sub_004124a4
    call sub_00414340
    call sub_00431360
    jmp loc_00411c93
loc_00411be5:
    cmp dword ptr [d_0046489c], 0
    # jne 0x411c69
    .byte 0x0f,0x85
    .long loc_00411c69 - . - 4
    call sub_0042223e
    cmp eax, 2
    jge loc_00411c69
    call sub_00431178
    cmp dword ptr [d_00464964], 0
    je loc_00411c37
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x30
    call sub_004124a4
    mov edx, eax
    mov eax, 0x60
    call sub_004124a4
    call sub_00414340
    jmp loc_00411c62
loc_00411c37:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov eax, 0x2e
    call sub_004124a4
    mov edx, eax
    mov eax, 0x60
    call sub_004124a4
    call sub_00414340
loc_00411c62:
    call sub_00431360
    jmp loc_00411c93
loc_00411c69:
    mov eax, 0xa
    call sub_00427961
    mov dword ptr [ebp - 0x18], 1
    call sub_0040c06a
    cmp eax, 2
    jne loc_00411c93
    mov eax, 0x385
    call sub_0040f064
    call bm_pump
loc_00411c93:
    cmp dword ptr [d_00464a68], 0
    je loc_00411ca3
    mov dword ptr [ebp - 0x18], 1
loc_00411ca3:
    cmp dword ptr [ebp - 0x18], 0
    je loc_00411298
loc_00411cad:
    cmp dword ptr [d_00464a68], 0
    je loc_00411cdb
    call sub_0040c06a
    cmp eax, 2
    jne loc_00411cc5
    call sub_0040ec29
loc_00411cc5:
    call sub_0040c06a
    cmp eax, 1
    jne loc_00411cd4
    call sub_0040edc9
loc_00411cd4:
    call bm_pump
    jmp loc_00411cea
loc_00411cdb:
    call sub_004100b9
    call bm_pump
    call sub_00406dde
loc_00411cea:
    call sub_00401312
loc_00411cef:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00411cf8:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_00460244], 1
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00411d17:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x80
    mov dword ptr [ebp - 0xc], eax
    mov edx, 0x5c
    mov eax, dword ptr [ebp - 0xc]
    call sub_00451d5e
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_00411d44
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0xc], eax
loc_00411d44:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, offset d_00458ebe
    push eax
    call sub_0042c0c8
    add esp, 8
    inc dword ptr [d_004604e8]
    cmp dword ptr [d_004604e8], 5
    jl loc_00411d6f
    mov dword ptr [d_004604e8], 0
loc_00411d6f:
    mov edx, dword ptr [ebp - 0xc]
    lea eax, [ebp - 0x7c]
    call sub_0045189e
    lea eax, [ebp - 0x7c]
    call sub_004129fb
    mov edx, 0x2e
    lea eax, [ebp - 0x7c]
    call sub_0045167a
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_004120ce
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov byte ptr [eax], 0
    mov ebx, 9
    mov edx, dword ptr [ebp - 8]
    lea eax, [ebp - 0x18]
    call sub_0045169c
    mov edx, offset d_00458ecc
    lea eax, [ebp - 0x18]
    call sub_00451f10
    test eax, eax
    jne loc_00411df9
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458ed0
    push eax
    mov eax, offset d_004649a0
    push eax
    mov eax, offset d_00458ed9
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
    jmp loc_004120e5
loc_00411df9:
    mov edx, offset d_00458ee6
    lea eax, [ebp - 0x18]
    call sub_00451f10
    test eax, eax
    jne loc_00411e3d
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458ed0
    push eax
    mov eax, offset d_004649a0
    push eax
    mov eax, offset d_00458ed9
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
    jmp loc_004120e5
loc_00411e3d:
    mov edx, offset d_00458eea
    lea eax, [ebp - 0x18]
    call sub_00451f10
    test eax, eax
    jne loc_00411e81
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458eee
    push eax
    mov eax, offset d_004649a0
    push eax
    mov eax, offset d_00458ef7
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
    jmp loc_004120e5
loc_00411e81:
    mov edx, offset d_00458f04
    lea eax, [ebp - 0x18]
    call sub_00451f10
    test eax, eax
    jne loc_00411ec5
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458eee
    push eax
    mov eax, offset d_004649a0
    push eax
    mov eax, offset d_00458f08
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
    jmp loc_004120e5
loc_00411ec5:
    mov edx, offset d_00458f15
    lea eax, [ebp - 0x18]
    call sub_00451f10
    test eax, eax
    jne loc_00411f67
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458f19
    push eax
    mov eax, offset d_004649a0
    push eax
    mov eax, offset d_00458f24
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
    mov edx, offset d_00458f31
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov ebx, offset d_00460268
    add eax, ebx
    call sub_004514fc
    mov dword ptr [ebp - 0x80], eax
    cmp dword ptr [ebp - 0x80], 0
    je loc_00411f34
    mov eax, dword ptr [ebp - 0x80]
    call sub_0045172e
    jmp loc_00411f62
loc_00411f34:
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458f19
    push eax
    mov eax, offset d_00464a80
    push eax
    mov eax, offset d_00458f24
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
loc_00411f62:
    jmp loc_004120e5
loc_00411f67:
    mov edx, offset d_00458f34
    lea eax, [ebp - 0x18]
    call sub_00451f10
    test eax, eax
    jne loc_00411fab
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458f19
    push eax
    mov eax, offset d_004649a0
    push eax
    mov eax, offset d_00458f24
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
    jmp loc_004120e5
loc_00411fab:
    mov edx, offset d_00458f38
    lea eax, [ebp - 0x18]
    call sub_00451f10
    test eax, eax
    jne loc_00411fef
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458f19
    push eax
    mov eax, offset d_00464a80
    push eax
    mov eax, offset d_00458f24
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
    jmp loc_004120e5
loc_00411fef:
    mov edx, offset d_00458f3c
    lea eax, [ebp - 0x18]
    call sub_00451f10
    test eax, eax
    jne loc_00412033
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458ed0
    push eax
    mov eax, offset d_004649a0
    push eax
    mov eax, offset d_00458f40
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
    jmp loc_004120e5
loc_00412033:
    mov edx, offset d_00458f4d
    lea eax, [ebp - 0x18]
    call sub_00451f10
    test eax, eax
    jne loc_00412074
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458ed0
    push eax
    mov eax, offset d_004649a0
    push eax
    mov eax, offset d_00458f51
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
    jmp loc_004120e5
loc_00412074:
    mov edx, offset d_00458f5e
    lea eax, [ebp - 0x18]
    call sub_00451f10
    test eax, eax
    jne loc_004120b5
    lea eax, [ebp - 0x7c]
    push eax
    mov eax, offset d_00458f62
    push eax
    mov eax, offset d_004649a0
    push eax
    mov eax, offset d_00458f6f
    push eax
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0x14
    jmp loc_004120e5
loc_004120b5:
    lea edx, [ebp - 0x7c]
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov ebx, offset d_00460268
    add eax, ebx
    call sub_0045189e
    jmp loc_004120e5
loc_004120ce:
    lea edx, [ebp - 0x7c]
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov ebx, offset d_00460268
    add eax, ebx
    call sub_0045189e
loc_004120e5:
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    call sub_00412cd6
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
    add eax, edx
    push eax
    mov eax, offset d_00458f7c
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, dword ptr [d_004604e8]
    shl eax, 7
    mov edx, offset d_00460268
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
sub_00412135:
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
    jl loc_00412157
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00460258]
    jl loc_00412159
loc_00412157:
    jmp loc_00412184
loc_00412159:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00460254]
    add eax, edx
    cmp dword ptr [eax], 0xffffcfc7
    je loc_00412184
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00460254]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 4], eax
    jmp loc_004121b3
loc_00412184:
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_00458f82
    push eax
    lea eax, [ebp - 0x6c]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x6c]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
    mov dword ptr [ebp - 4], 0
loc_004121b3:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004121bf:
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
    cmp dword ptr [ebp - 8], 0
    jl loc_004121e3
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00460258]
    jl loc_004121e5
loc_004121e3:
    jmp loc_004121f7
loc_004121e5:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [d_00460254]
    add edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx], eax
loc_004121f7:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004121ff:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x118
    mov dword ptr [ebp - 8], 0
    mov edx, offset d_00458fad
    mov eax, offset d_00458fa0
    call sub_00411d17
    call sub_004514fc
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 0
    je loc_00412403
    mov dword ptr [ebp - 4], 1
loc_0041223c:
    cmp dword ptr [ebp - 4], 2
    jle loc_0041224f
    jmp loc_004123f9
loc_00412247:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041223c
loc_0041224f:
    mov eax, dword ptr [ebp - 0x10]
    call sub_004515e8
    mov dword ptr [d_00460258], 0
loc_00412261:
    mov byte ptr [ebp - 0x114], 0
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, 0xff
    lea eax, [ebp - 0x114]
    call sub_004515ff
    cmp byte ptr [ebp - 0x114], 0
    je loc_0041234f
    mov edx, 0xa
    lea eax, [ebp - 0x114]
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_004122a7
    mov eax, dword ptr [ebp - 0x14]
    mov byte ptr [eax], 0
loc_004122a7:
    mov al, byte ptr [ebp - 0x114]
    inc al
    and eax, 0xff
    test byte ptr [eax + d_0045b608], 0x20
    je loc_0041234f
    lea eax, [ebp - 0x114]
    call sub_004516c1
    mov dword ptr [ebp - 0xc], eax
    mov edx, 0x2c
    lea eax, [ebp - 0x114]
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_0041234f
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_00460258]
    jl loc_00412301
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [d_00460258], eax
loc_00412301:
    cmp dword ptr [ebp - 4], 2
    jne loc_0041234f
loc_00412307:
    mov eax, dword ptr [ebp - 0x14]
    call sub_004516c1
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    mov ebx, dword ptr [d_00460254]
    add eax, ebx
    mov dword ptr [eax], edx
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov edx, 0x2c
    mov eax, dword ptr [ebp - 0x14]
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_00412349
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
loc_00412349:
    cmp dword ptr [ebp - 0x14], 0
    jne loc_00412307
loc_0041234f:
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0xc], 0x10
    je loc_00412261
    add dword ptr [d_00460258], 0x1e
    cmp dword ptr [ebp - 4], 1
    jne loc_004123f4
    cmp dword ptr [d_00460254], 0
    je loc_00412394
    mov ebx, 0xea
    mov edx, offset d_00458fb0
    mov eax, dword ptr [d_00460254]
    call sub_0041863d
    mov dword ptr [d_00460254], 0
loc_00412394:
    mov ecx, 0xed
    mov ebx, offset d_00458fb0
    mov edx, dword ptr [d_00460258]
    mov eax, 4
    call sub_00418511
    mov dword ptr [d_00460254], eax
    mov dword ptr [ebp - 0x118], 0
loc_004123bd:
    mov eax, dword ptr [ebp - 0x118]
    cmp eax, dword ptr [d_00460258]
    jl loc_004123db
    jmp loc_004123f4
loc_004123cd:
    mov eax, dword ptr [ebp - 0x118]
    inc dword ptr [ebp - 0x118]
    jmp loc_004123bd
loc_004123db:
    mov eax, dword ptr [ebp - 0x118]
    shl eax, 2
    mov edx, dword ptr [d_00460254]
    add eax, edx
    mov dword ptr [eax], 0xffffcfc7
    jmp loc_004123cd
loc_004123f4:
    jmp loc_00412247
loc_004123f9:
    mov eax, dword ptr [ebp - 0x10]
    call sub_0045172e
    jmp loc_00412429
loc_00412403:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d38f]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    mov edx, offset d_00458fb7
    mov eax, offset d_00458fd9
    call sub_00414340
    xor eax, eax
    call sub_004128c9
loc_00412429:
    mov dword ptr [d_00464954], 0
    push dword ptr [d_00460258]
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_00458fe8
    push eax
    call sub_0042c0c8
    add esp, 0xc
    cmp dword ptr [d_00464824], 0
    je loc_0041249b
    mov eax, dword ptr [d_00460254]
    mov edx, dword ptr [d_00460254]
    mov eax, dword ptr [eax + 0x24]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [d_00460254]
    mov dword ptr [eax + 0x1a4], 1
    mov eax, dword ptr [d_00460254]
    mov dword ptr [eax + 0x528], 1
    mov eax, dword ptr [d_00460254]
    mov dword ptr [eax + 0xc], 1
    mov eax, dword ptr [d_00460254]
    mov dword ptr [eax + 0x10], 0
loc_0041249b:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004124a4:
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
    jl loc_004124c6
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_0046024c]
    jl loc_004124c8
loc_004124c6:
    jmp loc_004124f0
loc_004124c8:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00460250]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_004124f0
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov edx, dword ptr [d_00460250]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041253b
loc_004124f0:
    inc dword ptr [d_00460555]
    cmp dword ptr [d_00460555], 5
    jl loc_00412509
    mov dword ptr [d_00460555], 0
loc_00412509:
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_00459022
    push eax
    imul eax, dword ptr [d_00460555], 0x15
    mov edx, offset d_004604ec
    add eax, edx
    push eax
    call sub_004518d0
    add esp, 0xc
    imul eax, dword ptr [d_00460555], 0x15
    mov edx, offset d_004604ec
    add edx, eax
    mov dword ptr [ebp - 4], edx
loc_0041253b:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00412547:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x118
    mov dword ptr [ebp - 8], 0
    mov edx, offset d_00458fad
    mov eax, offset d_0045902e
    call sub_004514fc
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 0
    je loc_004126f0
    mov dword ptr [ebp - 4], 1
loc_0041257f:
    cmp dword ptr [ebp - 4], 2
    jle loc_00412592
    jmp loc_004126e6
loc_0041258a:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041257f
loc_00412592:
    mov eax, dword ptr [ebp - 0x10]
    call sub_004515e8
    mov dword ptr [d_0046024c], 0
loc_004125a4:
    mov byte ptr [ebp - 0x114], 0
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, 0xff
    lea eax, [ebp - 0x114]
    call sub_004515ff
    cmp byte ptr [ebp - 0x114], 0
    je loc_004126a9
    mov edx, 0xa
    lea eax, [ebp - 0x114]
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_004125ea
    mov eax, dword ptr [ebp - 0x14]
    mov byte ptr [eax], 0
loc_004125ea:
    mov al, byte ptr [ebp - 0x114]
    inc al
    and eax, 0xff
    test byte ptr [eax + d_0045b608], 0x20
    je loc_004126a9
    lea eax, [ebp - 0x114]
    call sub_004516c1
    mov dword ptr [ebp - 0xc], eax
    mov edx, 0x2c
    lea eax, [ebp - 0x114]
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    # je 0x4126a9
    .byte 0x0f,0x84
    .long loc_004126a9 - . - 4
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x14]
    cmp byte ptr [eax], 0x22
    jne loc_00412668
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov edx, 0x22
    mov eax, dword ptr [ebp - 0x14]
    call sub_00451d5e
    mov dword ptr [ebp - 0x118], eax
    cmp dword ptr [ebp - 0x118], 0
    je loc_00412668
    mov eax, dword ptr [ebp - 0x118]
    mov byte ptr [eax], 0
loc_00412668:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_0046024c]
    jl loc_0041267b
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [d_0046024c], eax
loc_0041267b:
    cmp dword ptr [ebp - 4], 2
    jne loc_004126a9
    mov ebx, 0x158
    mov edx, offset d_00458fb0
    mov eax, dword ptr [ebp - 0x14]
    call sub_004186ac
    mov ebx, dword ptr [ebp - 0xc]
    shl ebx, 2
    mov edx, dword ptr [d_00460250]
    add edx, ebx
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
loc_004126a9:
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0xc], 0x10
    je loc_004125a4
    inc dword ptr [d_0046024c]
    cmp dword ptr [ebp - 4], 1
    jne loc_004126e1
    mov ecx, 0x162
    mov ebx, offset d_00458fb0
    mov edx, dword ptr [d_0046024c]
    mov eax, 4
    call sub_00418511
    mov dword ptr [d_00460250], eax
loc_004126e1:
    jmp loc_0041258a
loc_004126e6:
    mov eax, dword ptr [ebp - 0x10]
    call sub_0045172e
    jmp loc_004126fe
loc_004126f0:
    mov eax, offset d_0045903b
    push eax
    call sub_0042c0c8
    add esp, 4
loc_004126fe:
    push dword ptr [d_0046024c]
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_0045905e
    push eax
    call sub_0042c0c8
    add esp, 0xc
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041271f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_00460254], 0
    je loc_0041275e
    mov ebx, 0x173
    mov edx, offset d_00458fb0
    mov eax, dword ptr [d_00460254]
    call sub_0041863d
    mov dword ptr [d_00460254], 0
    mov dword ptr [d_00460258], 0
loc_0041275e:
    cmp dword ptr [d_00460250], 0
    je loc_004127f6
    mov dword ptr [ebp - 4], 0
loc_00412772:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_0046024c]
    jl loc_00412787
    jmp loc_004127ce
loc_0041277f:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00412772
loc_00412787:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_00460250]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_004127cc
    mov ebx, 0x17c
    mov edx, offset d_00458fb0
    mov ecx, dword ptr [ebp - 4]
    shl ecx, 2
    mov eax, dword ptr [d_00460250]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_0041863d
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov edx, dword ptr [d_00460250]
    add eax, edx
    mov dword ptr [eax], 0
loc_004127cc:
    jmp loc_0041277f
loc_004127ce:
    mov ebx, 0x180
    mov edx, offset d_00458fb0
    mov eax, dword ptr [d_00460250]
    call sub_0041863d
    mov dword ptr [d_00460250], 0
    mov dword ptr [d_0046024c], 0
loc_004127f6:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004127ff:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    call sub_004121ff
    call sub_00412547
    mov eax, offset d_00459094
    call sub_00451fb1
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00412837
    mov eax, dword ptr [ebp - 4]
    call sub_004516c1
    mov dword ptr [d_00460260], eax
loc_00412837:
    mov eax, offset ptr_0041271f
    call sub_00410ebf
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041284a:
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
    cmp dword ptr [d_00460264], 0
    je loc_00412882
    mov dword ptr [d_00460264], 0
    mov eax, offset ptr_0042f7cc
    call sub_0042c098
    mov dword ptr [d_0046025c], 1
loc_00412882:
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, offset d_00459098
    push eax
    call sub_0042c0c8
    add esp, 8
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041289d:
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
    mov eax, offset d_004590a3
    push eax
    call sub_0042c0c8
    add esp, 8
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004128c9:
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
    cmp dword ptr [ebp - 4], 0x1e
    jb loc_004128ee
    cmp dword ptr [ebp - 4], 0x1e
    jbe loc_00412906
    cmp dword ptr [ebp - 4], 0x69
    je loc_004128f6
    jmp loc_00412924
loc_004128ee:
    cmp dword ptr [ebp - 4], 0xa
    je loc_00412916
    jmp loc_00412924
loc_004128f6:
    mov eax, offset d_004590af
    push eax
    call sub_0042c0c8
    add esp, 4
    jmp loc_00412924
loc_00412906:
    mov eax, offset d_004590bf
    push eax
    call sub_0042c0c8
    add esp, 4
    jmp loc_00412924
loc_00412916:
    mov eax, offset d_004590cf
    push eax
    call sub_0042c0c8
    add esp, 4
loc_00412924:
    cmp dword ptr [d_0046025c], 0
    je loc_00412958
    mov eax, 1
    call sub_0042a16f
    call sub_00431178
    xor ecx, ecx
    mov cl, byte ptr [d_0049d0da]
    mov ebx, 0xa
    mov edx, 0xa
    mov eax, offset d_004590de
    call sub_0042ef58
loc_00412958:
    call sub_0043c668
    call sub_00410eff
    call sub_00418713
    push eax
    mov eax, offset d_004590ef
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, dword ptr [ebp - 4]
    call sub_0044c98b
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00412987:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    call sub_00431178
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049a390]
    xor edx, edx
    mov eax, 0xa
    call sub_004124a4
    call sub_0041456c
    mov dword ptr [ebp - 4], eax
    call sub_00431360
    cmp dword ptr [ebp - 4], 1
    jne loc_004129f2
    call sub_00427342
    call sub_00413d01
    test eax, eax
    jne loc_004129eb
    mov eax, 0xa28
    call sub_00427bfb
    mov eax, 0xfa0
    call sub_00452012
loc_004129eb:
    xor eax, eax
    call sub_004128c9
loc_004129f2:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004129fb:
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
loc_00412a0c:
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax], 0
    je loc_00412a32
    mov eax, dword ptr [ebp - 4]
    mov al, byte ptr [eax]
    and eax, 0xff
    call sub_00451de9
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], dl
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00412a0c
loc_00412a32:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00412a3b:
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
loc_00412a4c:
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax], 0
    je loc_00412a72
    mov eax, dword ptr [ebp - 4]
    mov al, byte ptr [eax]
    and eax, 0xff
    call sub_0045168e
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], dl
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00412a4c
loc_00412a72:
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
    # sub esp, 0x28
    .byte 0x81,0xec,0x28,0x00,0x00,0x00
    mov dword ptr [ebp - 0x20], eax
    mov dword ptr [ebp - 0x1c], edx
    mov dword ptr [ebp - 0x18], ebx
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0x20]
    mov dword ptr [ebp - 0x14], eax
loc_00412a9d:
    mov eax, dword ptr [ebp - 0x14]
    cmp byte ptr [eax], 0
    je loc_00412aba
    mov eax, dword ptr [ebp - 0x14]
    mov al, byte ptr [eax]
    inc al
    and eax, 0xff
    test byte ptr [eax + d_0045b608], 2
    jne loc_00412abc
loc_00412aba:
    jmp loc_00412ac4
loc_00412abc:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_00412a9d
loc_00412ac4:
    mov eax, dword ptr [ebp - 0x14]
    cmp byte ptr [eax], 0
    je loc_00412b72
    mov edx, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    shl edx, 2
    add edx, dword ptr [ebp - 0x1c]
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [edx], eax
    mov edx, 0x20
    mov eax, dword ptr [ebp - 0x14]
    call sub_0045167a
    mov dword ptr [ebp - 0x10], eax
    mov edx, 9
    mov eax, dword ptr [ebp - 0x14]
    call sub_0045167a
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0x10], 0
    je loc_00412b0d
    cmp dword ptr [ebp - 0xc], 0
    jne loc_00412b0f
loc_00412b0d:
    jmp loc_00412b2d
loc_00412b0f:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0xc]
    jae loc_00412b1f
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0x24], eax
    jmp loc_00412b25
loc_00412b1f:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 0x24], eax
loc_00412b25:
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x14], eax
    jmp loc_00412b49
loc_00412b2d:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0xc]
    jbe loc_00412b3d
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0x28], eax
    jmp loc_00412b43
loc_00412b3d:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 0x28], eax
loc_00412b43:
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [ebp - 0x14], eax
loc_00412b49:
    cmp dword ptr [ebp - 0x14], 0
    jne loc_00412b57
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00412b7f
loc_00412b57:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov byte ptr [eax], 0
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0x18]
    jl loc_00412b70
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00412b7f
loc_00412b70:
    jmp loc_00412b7a
loc_00412b72:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00412b7f
loc_00412b7a:
    jmp loc_00412a9d
loc_00412b7f:
    mov eax, dword ptr [ebp - 4]
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
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 4], 0
    je loc_00412bcf
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [eax]
    mov ecx, 0x217
    mov ebx, offset d_00458fb0
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax]
    shl edx, 2
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    call sub_004185aa
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], edx
    jmp loc_00412bf4
loc_00412bcf:
    mov ebx, 0x219
    mov edx, offset d_00458fb0
    mov eax, 4
    call sub_004184d0
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], edx
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 1
loc_00412bf4:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00412bfd:
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
    cmp dword ptr [eax + 4], 0
    je loc_00412c9d
    mov dword ptr [ebp - 4], 0
loc_00412c22:
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    cmp eax, dword ptr [edx]
    jl loc_00412c36
    jmp loc_00412c7e
loc_00412c2e:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00412c22
loc_00412c36:
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    add eax, edx
    cmp dword ptr [eax], 0
    je loc_00412c7c
    mov ebx, 0x227
    mov edx, offset d_00458fb0
    mov ecx, dword ptr [ebp - 4]
    shl ecx, 2
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    add eax, ecx
    mov eax, dword ptr [eax]
    call sub_0041863d
    mov edx, dword ptr [ebp - 4]
    shl edx, 2
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    add eax, edx
    mov dword ptr [eax], 0
loc_00412c7c:
    jmp loc_00412c2e
loc_00412c7e:
    mov ebx, 0x22b
    mov edx, offset d_00458fb0
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    call sub_0041863d
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 4], 0
loc_00412c9d:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00412ca6:
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
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    call sub_00451f10
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00412cd6:
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
loc_00412ced:
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax], 0x2f
    jne loc_00412cfb
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], 0x5c
loc_00412cfb:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    cmp byte ptr [eax], 0
    jne loc_00412ced
loc_00412d06:
    mov edx, offset d_0045910a
    mov eax, dword ptr [ebp - 8]
    call sub_0045201d
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_00412d28
    mov edx, dword ptr [ebp - 4]
    inc edx
    mov eax, dword ptr [ebp - 4]
    call sub_0045189e
loc_00412d28:
    cmp dword ptr [ebp - 4], 0
    jne loc_00412d06
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
loc_00412d34:
    mov eax, dword ptr [ebp - 4]
    cmp byte ptr [eax], 0
    je loc_00412d7b
    cmp dword ptr [d_00460248], 0
    je loc_00412d5d
    mov eax, dword ptr [ebp - 4]
    mov al, byte ptr [eax]
    and eax, 0xff
    call sub_0045168e
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], dl
    jmp loc_00412d73
loc_00412d5d:
    mov eax, dword ptr [ebp - 4]
    mov al, byte ptr [eax]
    and eax, 0xff
    call sub_00451de9
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax], dl
loc_00412d73:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00412d34
loc_00412d7b:
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
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460248], eax
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
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 8], ebx
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [edx]
    jl loc_00412dd0
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [edx + 8]
    jle loc_00412dd2
loc_00412dd0:
    jmp loc_00412ddd
loc_00412dd2:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [edx + 4]
    jge loc_00412ddf
loc_00412ddd:
    jmp loc_00412dea
loc_00412ddf:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [edx + 0xc]
    jle loc_00412dec
loc_00412dea:
    jmp loc_00412df5
loc_00412dec:
    mov dword ptr [ebp - 0x14], 1
    jmp loc_00412dfc
loc_00412df5:
    mov dword ptr [ebp - 0x14], 0
loc_00412dfc:
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00412e0c:
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
    mov edx, dword ptr [ebp - 4]
    mov eax, offset d_0045bc5c
    call sub_0045189e
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00412e33:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x28
    .byte 0x81,0xec,0x28,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    call dword ptr [d_0045c37c]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 4]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [d_0045bcc0], -1
    jne loc_00412e99
    push 4
    push 0x100
    mov ecx, dword ptr [ebp - 4]
    shl ecx, 3
    mov ebx, 0x168
    mov edx, 0xc8
    mov eax, 0x96
    call sub_0043c734
    mov dword ptr [d_0045bcc0], eax
    cmp dword ptr [d_0045bcc0], -1
    je loc_00413024
loc_00412e99:
    cmp dword ptr [ebp - 0xc], 0
    jge loc_00412ea6
    mov dword ptr [ebp - 0xc], 0
loc_00412ea6:
    cmp dword ptr [ebp - 0xc], 0x64
    jle loc_00412eb3
    mov dword ptr [ebp - 0xc], 0x64
loc_00412eb3:
    mov eax, dword ptr [d_0045bcc0]
    call sub_0041726b
    mov eax, offset d_0045bc5c
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x24], eax
    mov edx, 0x168
    sub edx, dword ptr [ebp - 0x24]
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x28], eax
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 8]
    push eax
    mov ecx, dword ptr [ebp - 0x28]
    mov ebx, dword ptr [ebp - 0x24]
    mov edx, offset d_0045bc5c
    mov eax, dword ptr [d_0045bcc0]
    call sub_0041696c
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    imul eax, dword ptr [ebp - 4], 6
    add eax, dword ptr [ebp - 8]
    push eax
    mov ecx, 0x14b
    mov ebx, dword ptr [ebp - 4]
    lea ebx, [ebx + ebx*4]
    add ebx, dword ptr [ebp - 8]
    mov edx, 0x1e
    mov eax, dword ptr [d_0045bcc0]
    call sub_0043d080
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, offset d_0045910d
    push eax
    lea eax, [ebp - 0x18]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x18]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x1c], eax
    mov edx, 0x168
    sub edx, dword ptr [ebp - 0x1c]
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x20], eax
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d37a]
    push eax
    mov eax, dword ptr [ebp - 4]
    lea eax, [eax + eax*2]
    add eax, dword ptr [ebp - 8]
    push eax
    mov ecx, dword ptr [ebp - 0x20]
    mov ebx, dword ptr [ebp - 0x1c]
    lea edx, [ebp - 0x18]
    mov eax, dword ptr [d_0045bcc0]
    call sub_0041696c
    xor eax, eax
    mov al, byte ptr [d_0049a624]
    push eax
    mov eax, dword ptr [ebp - 4]
    dec eax
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    lea ecx, [ecx + ecx*2]
    mov eax, dword ptr [ebp - 4]
    lea eax, [eax + eax*4]
    inc eax
    mov ebx, dword ptr [ebp - 8]
    add ebx, eax
    mov edx, 0x1f
    mov eax, dword ptr [d_0045bcc0]
    call sub_0043d1c0
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    mov eax, dword ptr [ebp - 4]
    dec eax
    push eax
    mov ecx, 0x64
    sub ecx, dword ptr [ebp - 0xc]
    lea ecx, [ecx + ecx*2]
    mov eax, dword ptr [ebp - 4]
    lea eax, [eax + eax*4]
    inc eax
    mov ebx, dword ptr [ebp - 8]
    add ebx, eax
    mov edx, dword ptr [ebp - 0xc]
    lea edx, [edx + edx*2]
    add edx, 0x1f
    mov eax, dword ptr [d_0045bcc0]
    call sub_0043d1c0
    mov eax, dword ptr [d_0045bcc0]
    call sub_0043d454
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_00413024
    mov eax, dword ptr [d_0045bcc0]
    call sub_0043c960
    mov dword ptr [d_0045bcc0], 0xffffffff
loc_00413024:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041302d:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x400
    mov dword ptr [ebp - 0x60], eax
    push 4
    push 0x100
    mov ecx, 0x1b8
    mov ebx, 0x258
    mov edx, 0x14
    mov eax, 0x14
    call sub_0043c734
    mov dword ptr [ebp - 0x38], eax
    cmp dword ptr [ebp - 0x38], -1
    je loc_00413ae4
    mov dword ptr [ebp - 8], 0x64
    mov dword ptr [ebp - 4], 0
    mov ecx, 0x2b9
    mov ebx, offset d_00458fb0
    mov edx, dword ptr [ebp - 8]
    mov eax, 0x20
    call sub_00418511
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0xc], eax
    mov edx, offset d_00458fad
    mov eax, dword ptr [ebp - 0x60]
    call sub_004514fc
    mov dword ptr [ebp - 0x2c], eax
    cmp dword ptr [ebp - 0x2c], 0
    je loc_00413320
    mov dword ptr [ebp - 0x54], 0
    mov dword ptr [ebp - 0x40], 1
loc_004130c1:
    cmp dword ptr [ebp - 0x40], 2
    jle loc_004130d4
    jmp loc_00413316
loc_004130cc:
    mov eax, dword ptr [ebp - 0x40]
    inc dword ptr [ebp - 0x40]
    jmp loc_004130c1
loc_004130d4:
    mov eax, dword ptr [ebp - 0x2c]
    call sub_004515e8
    mov dword ptr [ebp - 0x5c], 0
loc_004130e3:
    mov byte ptr [ebp - 0x160], 0
    mov ebx, dword ptr [ebp - 0x2c]
    mov edx, 0xff
    lea eax, [ebp - 0x160]
    call sub_004515ff
    cmp byte ptr [ebp - 0x160], 0
    je loc_004132de
    mov edx, 0xa
    lea eax, [ebp - 0x160]
    call sub_0045167a
    mov dword ptr [ebp - 0x34], eax
    cmp dword ptr [ebp - 0x34], 0
    je loc_00413129
    mov eax, dword ptr [ebp - 0x34]
    mov byte ptr [eax], 0
loc_00413129:
    cmp dword ptr [ebp - 0x40], 2
    jne loc_004132d8
    cmp byte ptr [ebp - 0x160], 0
    jne loc_0041314c
    mov edx, offset d_00459112
    lea eax, [ebp - 0x160]
    call sub_00451d78
loc_0041314c:
    mov dword ptr [ebp - 0x44], 0
    lea eax, [ebp - 0x160]
    mov dword ptr [ebp - 0x34], eax
    lea eax, [ebp - 0x260]
    mov dword ptr [ebp - 0x30], eax
    mov ebx, 0x100
    xor edx, edx
    lea eax, [ebp - 0x260]
    call sub_00451940
loc_00413177:
    mov eax, dword ptr [ebp - 0x34]
    cmp byte ptr [eax], 0
    je loc_004131cf
    mov eax, dword ptr [ebp - 0x34]
    mov al, byte ptr [eax]
    mov byte ptr [ebp - 0x264], al
    cmp byte ptr [ebp - 0x264], 9
    jne loc_004131ad
loc_00413193:
    mov eax, dword ptr [ebp - 0x30]
    inc dword ptr [ebp - 0x30]
    mov byte ptr [eax], 0x20
    mov eax, dword ptr [ebp - 0x44]
    inc dword ptr [ebp - 0x44]
    test dword ptr [ebp - 0x44], 3
    jne loc_00413193
    jmp loc_004131ba
loc_004131ad:
    mov edx, dword ptr [ebp - 0x30]
    inc dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x34]
    mov al, byte ptr [eax]
    mov byte ptr [edx], al
loc_004131ba:
    mov eax, dword ptr [ebp - 0x34]
    inc dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x44]
    inc dword ptr [ebp - 0x44]
    cmp dword ptr [ebp - 0x44], 0xff
    jl loc_00413177
loc_004131cf:
    mov ebx, 0x2e2
    mov edx, offset d_00458fb0
    lea eax, [ebp - 0x260]
    call sub_004186ac
    mov edx, eax
    mov eax, dword ptr [ebp - 0x5c]
    shl eax, 2
    add eax, dword ptr [ebp - 0x58]
    mov dword ptr [eax], edx
loc_004131f1:
    mov edx, offset d_00459114
    lea eax, [ebp - 0x260]
    call sub_0045201d
    mov dword ptr [ebp - 0x268], eax
    cmp dword ptr [ebp - 0x268], 0
    je loc_004132cb
    add dword ptr [ebp - 0x268], 4
    mov edx, 0x3e
    mov eax, dword ptr [ebp - 0x268]
    call sub_0045167a
    mov dword ptr [ebp - 0x34], eax
    cmp dword ptr [ebp - 0x34], 0
    je loc_0041323d
    mov eax, dword ptr [ebp - 0x34]
    inc dword ptr [ebp - 0x34]
    mov byte ptr [eax], 0
loc_0041323d:
    mov ebx, 0x13
    mov edx, dword ptr [ebp - 0x268]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0045169c
    mov eax, dword ptr [ebp - 0x268]
    push eax
    mov eax, offset d_00459119
    push eax
    lea eax, [ebp - 0x2cc]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov ebx, dword ptr [ebp - 0xc]
    add ebx, 0x1c
    mov edx, dword ptr [ebp - 0xc]
    add edx, 0x18
    lea eax, [ebp - 0x2cc]
    call sub_00411d17
    call sub_004150f0
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x14], edx
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x14], 0
    je loc_004132c2
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [ebp - 0xc], 0x20
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 8]
    jl loc_004132c2
    mov eax, offset d_00459120
    call sub_0041284a
    mov eax, 0xa
    call sub_004128c9
loc_004132c2:
    mov eax, dword ptr [ebp - 0x34]
    mov dword ptr [ebp - 0x268], eax
loc_004132cb:
    cmp dword ptr [ebp - 0x268], 0
    jne loc_004131f1
loc_004132d8:
    mov eax, dword ptr [ebp - 0x5c]
    inc dword ptr [ebp - 0x5c]
loc_004132de:
    mov eax, dword ptr [ebp - 0x2c]
    test byte ptr [eax + 0xc], 0x10
    je loc_004130e3
    cmp dword ptr [ebp - 0x40], 1
    jne loc_00413311
    mov eax, dword ptr [ebp - 0x5c]
    mov dword ptr [ebp - 0x54], eax
    mov ecx, 0x304
    mov ebx, offset d_00458fb0
    mov edx, dword ptr [ebp - 0x54]
    mov eax, 4
    call sub_00418511
    mov dword ptr [ebp - 0x58], eax
loc_00413311:
    jmp loc_004130cc
loc_00413316:
    mov eax, dword ptr [ebp - 0x2c]
    call sub_0045172e
    jmp loc_00413378
loc_00413320:
    mov ecx, 0x30a
    mov ebx, offset d_00458fb0
    mov edx, 2
    mov eax, 4
    call sub_00418511
    mov dword ptr [ebp - 0x58], eax
    mov ebx, 0x30b
    mov edx, offset d_00458fb0
    mov eax, offset d_00459133
    call sub_004186ac
    mov edx, eax
    mov eax, dword ptr [ebp - 0x58]
    mov dword ptr [eax], edx
    mov ebx, 0x30c
    mov edx, offset d_00458fb0
    mov eax, dword ptr [ebp - 0x60]
    call sub_004186ac
    mov edx, eax
    mov eax, dword ptr [ebp - 0x58]
    mov dword ptr [eax + 4], edx
    mov dword ptr [ebp - 0x54], 2
loc_00413378:
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043dda4
    mov dword ptr [ebp - 0x20], eax
    mov dword ptr [ebp - 0x28], 0x214
    call dword ptr [d_0045c37c]
    mov ebx, eax
    mov eax, 0x158
    mov edx, 0x158
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x24], eax
    push 0
    mov eax, offset d_00459148
    push eax
    push -1
    push 0x148
    push -1
    mov ecx, 0xffffffff
    mov ebx, 0x184
    mov edx, 0x1e
    mov eax, dword ptr [ebp - 0x38]
    call sub_00432298
    push 0
    mov eax, offset d_0045914a
    push eax
    push -1
    push 0x150
    push -1
    mov ecx, 0xffffffff
    mov ebx, 0x184
    mov edx, 0x3c
    mov eax, dword ptr [ebp - 0x38]
    call sub_00432298
    push 0
    mov eax, offset d_0045914c
    push eax
    push -1
    push 0x149
    push -1
    mov ecx, 0xffffffff
    mov ebx, 0x184
    mov edx, 0x78
    mov eax, dword ptr [ebp - 0x38]
    call sub_00432298
    push 0
    mov eax, offset d_00459153
    push eax
    push -1
    push 0x151
    push -1
    mov ecx, 0xffffffff
    mov ebx, 0x184
    mov edx, 0xbe
    mov eax, dword ptr [ebp - 0x38]
    call sub_00432298
    push 0
    mov eax, offset d_0045915a
    push eax
    push -1
    push 0x1b
    push -1
    mov ecx, 0xffffffff
    mov ebx, 0x184
    mov edx, 0x204
    mov eax, dword ptr [ebp - 0x38]
    call sub_00432298
    mov dword ptr [ebp - 0x3c], 0
    mov dword ptr [ebp - 0x1c], 1
    mov dword ptr [ebp - 0x18], 0
    call sub_004318cc
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_00413491
    call sub_00431178
loc_00413491:
    cmp dword ptr [ebp - 0x1c], 0
    je loc_004138dd
    mov eax, dword ptr [ebp - 0x38]
    call sub_0041726b
    mov eax, dword ptr [ebp - 0x54]
    sub eax, dword ptr [ebp - 0x3c]
    cmp eax, dword ptr [ebp - 0x24]
    jle loc_004134b9
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x2d0], eax
    jmp loc_004134c5
loc_004134b9:
    mov eax, dword ptr [ebp - 0x54]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x2d0], eax
loc_004134c5:
    mov eax, dword ptr [ebp - 0x2d0]
    mov dword ptr [ebp - 0x2d4], eax
    mov dword ptr [ebp - 0x50], 0xfffffff0
loc_004134d8:
    mov eax, dword ptr [ebp - 0x2d4]
    add eax, 0x10
    cmp eax, dword ptr [ebp - 0x50]
    jg loc_004134f3
    jmp loc_004138ce
loc_004134eb:
    mov eax, dword ptr [ebp - 0x50]
    inc dword ptr [ebp - 0x50]
    jmp loc_004134d8
loc_004134f3:
    mov eax, dword ptr [ebp - 0x3c]
    add eax, dword ptr [ebp - 0x50]
    mov dword ptr [ebp - 0x2d8], eax
    cmp dword ptr [ebp - 0x2d8], 0
    jl loc_00413513
    mov eax, dword ptr [ebp - 0x2d8]
    cmp eax, dword ptr [ebp - 0x54]
    jl loc_00413518
loc_00413513:
    jmp loc_004138c9
loc_00413518:
    mov edx, dword ptr [ebp - 0x3c]
    add edx, dword ptr [ebp - 0x50]
    shl edx, 2
    add edx, dword ptr [ebp - 0x58]
    mov edx, dword ptr [edx]
    lea eax, [ebp - 0x3d8]
    call sub_0045189e
    mov edx, offset d_00459114
    lea eax, [ebp - 0x3d8]
    call sub_0045201d
    mov dword ptr [ebp - 0x3dc], eax
    cmp dword ptr [ebp - 0x3dc], 0
    je loc_0041386b
    mov dword ptr [ebp - 0x3e0], 0x22
    mov eax, dword ptr [ebp - 0x28]
    mov dword ptr [ebp - 0x3e4], eax
loc_00413567:
    cmp dword ptr [ebp - 0x3dc], 0
    je loc_004135a4
    mov eax, dword ptr [ebp - 0x3dc]
    mov byte ptr [eax], 0
    add dword ptr [ebp - 0x3dc], 4
    mov edx, 0x3e
    mov eax, dword ptr [ebp - 0x3dc]
    call sub_0045167a
    mov dword ptr [ebp - 0x34], eax
    cmp dword ptr [ebp - 0x34], 0
    je loc_004135a2
    mov eax, dword ptr [ebp - 0x34]
    inc dword ptr [ebp - 0x34]
    mov byte ptr [eax], 0
loc_004135a2:
    jmp loc_004135ab
loc_004135a4:
    mov dword ptr [ebp - 0x34], 0
loc_004135ab:
    call dword ptr [d_0045c37c]
    imul eax, dword ptr [ebp - 0x50]
    add eax, 0x22
    mov dword ptr [ebp - 0x3e8], eax
    cmp dword ptr [ebp - 0x50], 0
    jl loc_004135cf
    mov eax, dword ptr [ebp - 0x50]
    cmp eax, dword ptr [ebp - 0x2d4]
    jl loc_004135d1
loc_004135cf:
    jmp loc_0041360f
loc_004135d1:
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043de0c
    mov ecx, eax
    mov ebx, dword ptr [ebp - 0x3e4]
    lea edx, [ebp - 0x3d8]
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043de0c
    imul eax, dword ptr [ebp - 0x3e8]
    mov esi, dword ptr [ebp - 0x20]
    add esi, dword ptr [ebp - 0x3e0]
    add eax, esi
    call dword ptr [d_0045c378]
loc_0041360f:
    lea eax, [ebp - 0x3d8]
    call dword ptr [d_0045c380]
    add dword ptr [ebp - 0x3e0], eax
    lea eax, [ebp - 0x3d8]
    call dword ptr [d_0045c380]
    sub dword ptr [ebp - 0x3e4], eax
    cmp dword ptr [ebp - 0x3dc], 0
    je loc_00413820
    mov dword ptr [ebp - 0x4c], 0
loc_00413647:
    mov eax, dword ptr [ebp - 0x4c]
    cmp eax, dword ptr [ebp - 4]
    jl loc_0041365c
    jmp loc_00413820
loc_00413654:
    mov eax, dword ptr [ebp - 0x4c]
    inc dword ptr [ebp - 0x4c]
    jmp loc_00413647
loc_0041365c:
    mov edx, dword ptr [ebp - 0x3dc]
    mov eax, dword ptr [ebp - 0x4c]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    call sub_00451f10
    test eax, eax
    jne loc_0041381b
    mov eax, dword ptr [ebp - 0x4c]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x14]
    mov dword ptr [ebp - 0x3ec], eax
    mov eax, dword ptr [ebp - 0x3e0]
    mov dword ptr [ebp - 0x3f0], eax
    mov edx, dword ptr [ebp - 0x4c]
    shl edx, 5
    add edx, dword ptr [ebp - 0x10]
    call dword ptr [d_0045c37c]
    mov edx, dword ptr [edx + 0x1c]
    sub edx, eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov edx, dword ptr [ebp - 0x3e8]
    sub edx, eax
    mov dword ptr [ebp - 0x3f4], edx
    mov eax, dword ptr [ebp - 0x4c]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x18]
    mov dword ptr [ebp - 0x3f8], eax
    mov eax, dword ptr [ebp - 0x4c]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [ebp - 0x3fc], eax
    mov eax, dword ptr [ebp - 0x3f4]
    add eax, dword ptr [ebp - 0x3fc]
    cmp eax, 0x22
    jl loc_00413820
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043de28
    sub eax, 0x3e
    cmp eax, dword ptr [ebp - 0x3f4]
    jl loc_00413820
    cmp dword ptr [ebp - 0x3f4], 0x22
    jge loc_0041375c
    mov eax, 0x22
    sub eax, dword ptr [ebp - 0x3f4]
    mov dword ptr [ebp - 0x400], eax
    mov eax, dword ptr [ebp - 0x4c]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x400]
    imul edx, dword ptr [eax + 0x18]
    mov eax, edx
    add dword ptr [ebp - 0x3ec], eax
    mov eax, dword ptr [ebp - 0x400]
    sub dword ptr [ebp - 0x3fc], eax
    mov dword ptr [ebp - 0x3f4], 0x22
loc_0041375c:
    mov eax, dword ptr [ebp - 0x3f8]
    cmp eax, dword ptr [ebp - 0x3e4]
    jle loc_00413776
    mov eax, dword ptr [ebp - 0x3e4]
    mov dword ptr [ebp - 0x3f8], eax
loc_00413776:
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043de28
    mov edx, dword ptr [ebp - 0x3f4]
    add edx, dword ptr [ebp - 0x3fc]
    sub eax, 0x3e
    cmp edx, eax
    jle loc_004137a8
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043de28
    sub eax, 0x3e
    sub eax, dword ptr [ebp - 0x3f4]
    mov dword ptr [ebp - 0x3fc], eax
loc_004137a8:
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043de0c
    push eax
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043de0c
    imul eax, dword ptr [ebp - 0x3f4]
    mov edx, dword ptr [ebp - 0x20]
    add edx, dword ptr [ebp - 0x3f0]
    add eax, edx
    push eax
    mov eax, dword ptr [ebp - 0x4c]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    push dword ptr [eax + 0x18]
    mov eax, dword ptr [ebp - 0x3fc]
    push eax
    mov eax, dword ptr [ebp - 0x3f8]
    push eax
    mov eax, dword ptr [ebp - 0x3ec]
    push eax
    call sub_004428e4
    add esp, 0x18
    mov eax, dword ptr [ebp - 0x4c]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x18]
    add dword ptr [ebp - 0x3e0], eax
    mov eax, dword ptr [ebp - 0x4c]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x18]
    sub dword ptr [ebp - 0x3e4], eax
    jmp loc_00413820
loc_0041381b:
    jmp loc_00413654
loc_00413820:
    cmp dword ptr [ebp - 0x34], 0
    je loc_00413855
    mov edx, dword ptr [ebp - 0x34]
    lea eax, [ebp - 0x3d8]
    call sub_0045189e
    cmp dword ptr [ebp - 0x3dc], 0
    je loc_00413853
    mov edx, offset d_00459114
    lea eax, [ebp - 0x3d8]
    call sub_0045201d
    mov dword ptr [ebp - 0x3dc], eax
loc_00413853:
    jmp loc_0041385f
loc_00413855:
    mov dword ptr [ebp - 0x3dc], 0
loc_0041385f:
    cmp dword ptr [ebp - 0x34], 0
    jne loc_00413567
    jmp loc_004138c9
loc_0041386b:
    cmp dword ptr [ebp - 0x50], 0
    jl loc_0041387c
    mov eax, dword ptr [ebp - 0x50]
    cmp eax, dword ptr [ebp - 0x2d4]
    jl loc_0041387e
loc_0041387c:
    jmp loc_004138c9
loc_0041387e:
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043de0c
    mov ecx, eax
    mov ebx, dword ptr [ebp - 0x28]
    mov eax, dword ptr [ebp - 0x3c]
    add eax, dword ptr [ebp - 0x50]
    shl eax, 2
    add eax, dword ptr [ebp - 0x58]
    mov edx, dword ptr [eax]
    call dword ptr [d_0045c37c]
    mov esi, dword ptr [ebp - 0x50]
    imul esi, eax
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043de0c
    add esi, 0x22
    imul eax, esi
    mov esi, dword ptr [ebp - 0x20]
    add esi, 0x22
    add eax, esi
    call dword ptr [d_0045c378]
loc_004138c9:
    jmp loc_004134eb
loc_004138ce:
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043d454
    mov dword ptr [ebp - 0x1c], 0
loc_004138dd:
    call sub_004102b7
    mov dword ptr [ebp - 0x48], eax
    cmp dword ptr [ebp - 0x48], 0x149
    jb loc_00413948
    cmp dword ptr [ebp - 0x48], 0x149
    # jbe 0x413978
    .byte 0x0f,0x86
    .long loc_00413978 - . - 4
    cmp dword ptr [ebp - 0x48], 0x14d
    jb loc_0041393a
    cmp dword ptr [ebp - 0x48], 0x14d
    jbe loc_00413997
    cmp dword ptr [ebp - 0x48], 0x150
    jb loc_00413935
    cmp dword ptr [ebp - 0x48], 0x150
    jbe loc_004139db
    cmp dword ptr [ebp - 0x48], 0x151
    je loc_00413997
    jmp loc_00413a08
loc_00413935:
    jmp loc_00413a08
loc_0041393a:
    cmp dword ptr [ebp - 0x48], 0x14b
    je loc_00413978
    jmp loc_00413a08
loc_00413948:
    cmp dword ptr [ebp - 0x48], 0x1b
    jb loc_00413962
    cmp dword ptr [ebp - 0x48], 0x1b
    jbe loc_0041396c
    cmp dword ptr [ebp - 0x48], 0x148
    je loc_004139c7
    jmp loc_00413a08
loc_00413962:
    cmp dword ptr [ebp - 0x48], 0xd
    jne loc_00413a08
loc_0041396c:
    mov dword ptr [ebp - 0x18], 1
    jmp loc_00413a08
loc_00413978:
    mov eax, dword ptr [ebp - 0x24]
    dec eax
    sub dword ptr [ebp - 0x3c], eax
    cmp dword ptr [ebp - 0x3c], 0
    jge loc_0041398c
    mov dword ptr [ebp - 0x3c], 0
loc_0041398c:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    # jmp 0x413a08
    .byte 0xe9
    .long loc_00413a08 - . - 4
loc_00413997:
    mov eax, dword ptr [ebp - 0x24]
    dec eax
    add dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 0x54]
    sub eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [ebp - 0x3c]
    jge loc_004139b2
    mov eax, dword ptr [ebp - 0x54]
    sub eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x3c], eax
loc_004139b2:
    cmp dword ptr [ebp - 0x3c], 0
    jge loc_004139bf
    mov dword ptr [ebp - 0x3c], 0
loc_004139bf:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_00413a08
loc_004139c7:
    cmp dword ptr [ebp - 0x3c], 0
    je loc_004139d9
    mov eax, dword ptr [ebp - 0x3c]
    dec dword ptr [ebp - 0x3c]
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
loc_004139d9:
    jmp loc_00413a08
loc_004139db:
    mov eax, dword ptr [ebp - 0x3c]
    inc dword ptr [ebp - 0x3c]
    mov eax, dword ptr [ebp - 0x54]
    sub eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [ebp - 0x3c]
    jge loc_004139f5
    mov eax, dword ptr [ebp - 0x54]
    sub eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x3c], eax
loc_004139f5:
    cmp dword ptr [ebp - 0x3c], 0
    jge loc_00413a02
    mov dword ptr [ebp - 0x3c], 0
loc_00413a02:
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
loc_00413a08:
    cmp dword ptr [ebp - 0x18], 0
    je loc_00413491
    cmp dword ptr [ebp - 0x14], 0
    je loc_00413a1d
    call sub_00431360
loc_00413a1d:
    mov dword ptr [ebp - 0x50], 0
loc_00413a24:
    mov eax, dword ptr [ebp - 0x50]
    cmp eax, dword ptr [ebp - 0x54]
    jl loc_00413a36
    jmp loc_00413a52
loc_00413a2e:
    mov eax, dword ptr [ebp - 0x50]
    inc dword ptr [ebp - 0x50]
    jmp loc_00413a24
loc_00413a36:
    mov ebx, 0x3bd
    mov edx, offset d_00458fb0
    mov eax, dword ptr [ebp - 0x50]
    shl eax, 2
    add eax, dword ptr [ebp - 0x58]
    mov eax, dword ptr [eax]
    call sub_0041863d
    jmp loc_00413a2e
loc_00413a52:
    mov ebx, 0x3bf
    mov edx, offset d_00458fb0
    mov eax, dword ptr [ebp - 0x58]
    call sub_0041863d
    mov eax, dword ptr [ebp - 0x38]
    call sub_0043c960
    cmp dword ptr [ebp - 0x10], 0
    # je 0x413ae4
    .byte 0x0f,0x84
    .long loc_00413ae4 - . - 4
    mov dword ptr [ebp - 0x50], 0
loc_00413a7d:
    mov eax, dword ptr [ebp - 0x50]
    cmp eax, dword ptr [ebp - 4]
    jl loc_00413a8f
    jmp loc_00413acb
loc_00413a87:
    mov eax, dword ptr [ebp - 0x50]
    inc dword ptr [ebp - 0x50]
    jmp loc_00413a7d
loc_00413a8f:
    mov eax, dword ptr [ebp - 0x50]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    cmp dword ptr [eax + 0x14], 0
    je loc_00413ac9
    mov ebx, 0x3c7
    mov edx, offset d_00458fb0
    mov eax, dword ptr [ebp - 0x50]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x14]
    call sub_0041863d
    mov eax, dword ptr [ebp - 0x50]
    shl eax, 5
    add eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x14], 0
loc_00413ac9:
    jmp loc_00413a87
loc_00413acb:
    mov ebx, 0x3cb
    mov edx, offset d_00458fb0
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041863d
    mov dword ptr [ebp - 0x10], 0
loc_00413ae4:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00413aed:
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
    and eax, 3
    shl eax, 2
    mov eax, dword ptr [eax + d_0045bcc4]
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
sub_00413b1c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_0045bcd4], 0
    # je 0x413ba7
    .byte 0x0f,0x84
    .long loc_00413ba7 - . - 4
    mov dword ptr [d_0045bcd4], 0
    mov eax, offset d_00464a04
    call sub_004516c1
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 2
    jb loc_00413b62
    cmp dword ptr [ebp - 4], 2
    jbe loc_00413b82
    cmp dword ptr [ebp - 4], 3
    je loc_00413b8e
    jmp loc_00413b68
loc_00413b62:
    cmp dword ptr [ebp - 4], 1
    je loc_00413b7b
loc_00413b68:
    mov dword ptr [d_00460264], 1
    xor eax, eax
    call sub_0042c098
    jmp loc_00413ba7
loc_00413b7b:
    call sub_0042be5c
    jmp loc_00413ba7
loc_00413b82:
    mov eax, offset ptr_0042f7cc
    call sub_0042c098
    jmp loc_00413ba7
loc_00413b8e:
    mov dword ptr [d_00460264], 1
    mov edx, offset d_0045915f
    mov eax, offset d_00464a05
    call sub_0042be98
loc_00413ba7:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00413bb0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_0045bcd4], 1
    xor eax, eax
    call sub_0042c098
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00413bd6:
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
    mov eax, offset d_00459162
    call sub_0041d957
    mov dword ptr [ebp - 8], eax
    lea eax, [ebp - 0x14]
    call sub_00451e3e
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_0046055d]
    jb loc_00413c5e
    mov dword ptr [d_00460559], 1
    mov eax, 0x2b3
    call sub_00412135
    cmp eax, 1
    jle loc_00413c31
    mov eax, 0x2b3
    call sub_00412135
    mov dword ptr [ebp - 0x18], eax
    jmp loc_00413c38
loc_00413c31:
    mov dword ptr [ebp - 0x18], 1
loc_00413c38:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x18]
    add edx, dword ptr [ebp - 0x14]
    mov eax, 0x2b2
    call sub_00412135
    add edx, eax
    mov dword ptr [d_0046055d], edx
    jmp loc_00413c89
loc_00413c5e:
    cmp dword ptr [d_00460559], 0
    je loc_00413c89
    inc dword ptr [d_00460559]
    mov eax, offset d_00459162
    call sub_0041da23
    cmp eax, dword ptr [d_00460559]
    jg loc_00413c89
    mov dword ptr [d_00460559], 0
loc_00413c89:
    mov edx, dword ptr [d_00460559]
    mov eax, dword ptr [ebp - 8]
    call sub_0041daa7
    mov dword ptr [ebp - 4], eax
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00415920
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00413cb0:
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
    mov dword ptr [ebp - 4], 0
loc_00413cc8:
    mov ebx, 0x64
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 8]
    sar edx, 0x1f
    idiv ebx
    cmp eax, dword ptr [ebp - 4]
    jg loc_00413ce7
    jmp loc_00413cf8
loc_00413cdf:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00413cc8
loc_00413ce7:
    mov eax, 0x64
    call sub_00452012
    call sub_0043a56c
    jmp loc_00413cdf
loc_00413cf8:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00413d01:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_00460260]
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
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460260], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00413d45:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x7c
    .byte 0x81,0xec,0x7c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], 0x1c2
    mov dword ptr [ebp - 8], 0x190
    mov eax, 1
    call sub_0042a16f
    push 4
    push 0x100
    mov ecx, 0x12c
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, 0x64
    mov eax, 0x64
    call sub_0043c734
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041726b
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x14
    mov ecx, 0x14
    mov ebx, dword ptr [ebp - 8]
    mov eax, 0x190
    call sub_004124a4
    mov esi, dword ptr [ebp - 0x10]
    mov edx, eax
    mov eax, esi
    call sub_0041696c
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x28
    mov ecx, 0x14
    mov ebx, dword ptr [ebp - 8]
    mov eax, 0x191
    call sub_004124a4
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041696c
    call sub_00428bcb
    push eax
    call sub_00418713
    push eax
    mov eax, 0x195
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0x10
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x46
    mov ecx, 0x14
    mov ebx, dword ptr [ebp - 8]
    lea edx, [ebp - 0x78]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041696c
    call sub_0040fbfd
    push eax
    mov eax, 0x19a
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x5a
    mov ecx, 0x14
    mov ebx, dword ptr [ebp - 8]
    lea edx, [ebp - 0x78]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041696c
    call sub_0040fc22
    push eax
    mov eax, 0x19b
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x6e
    mov ecx, 0x14
    mov ebx, dword ptr [ebp - 8]
    lea edx, [ebp - 0x78]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041696c
    mov dword ptr [ebp - 0x7c], 0
    cmp dword ptr [d_0046495c], 0
    je loc_00413edf
    fild dword ptr [d_00464950]
    fild dword ptr [d_0046495c]
    fdivp st(1)
    fstp dword ptr [ebp - 0x7c]
loc_00413edf:
    fld dword ptr [ebp - 0x7c]
    sub esp, 8
    fstp qword ptr [esp]
    mov eax, 0x19f
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0x10
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x82
    mov ecx, 0x14
    mov ebx, dword ptr [ebp - 8]
    lea edx, [ebp - 0x78]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041696c
    call sub_0042717d
    push eax
    mov eax, 0x1a4
    call sub_004124a4
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x96
    mov ecx, 0x14
    mov ebx, dword ptr [ebp - 8]
    lea edx, [ebp - 0x78]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041696c
    mov eax, dword ptr [ebp - 0x10]
    call sub_0043d454
    mov dword ptr [ebp - 4], 0
loc_00413f7b:
    call bm_pump
    call sub_004102b7
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0xd
    je loc_00413f94
    cmp dword ptr [ebp - 0x14], 0x1b
    jne loc_00413f9b
loc_00413f94:
    mov dword ptr [ebp - 4], 1
loc_00413f9b:
    cmp dword ptr [ebp - 4], 0
    je loc_00413f7b
    mov eax, dword ptr [ebp - 0x10]
    call sub_0043c960
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
sub_00413fb9:
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
    mov al, byte ptr [d_00497f8f]
    push eax
    mov eax, 0x317
    call sub_00412135
    mov ecx, eax
    mov eax, 0x316
    call sub_00412135
    mov ebx, eax
    mov eax, 0x14a
    call sub_004124a4
    mov esi, dword ptr [d_00464ae4]
    mov edx, eax
    mov eax, esi
    call sub_004172ba
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041400f:
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
    mov eax, dword ptr [ebp - 0x14]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 8], eax
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00451f10
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041404b:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x13c
    mov dword ptr [ebp - 0x14], eax
    mov dword ptr [ebp - 0x18], edx
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 8], 0
    lea ebx, [ebp - 0x138]
    xor edx, edx
    mov eax, dword ptr [ebp - 0x14]
    call sub_004520db
    mov dword ptr [ebp - 0xc], eax
loc_0041407f:
    cmp dword ptr [ebp - 0xc], 0
    jne loc_004140f8
    cmp dword ptr [ebp - 0x10], 0
    je loc_004140ab
    mov ecx, 0x4a5
    mov ebx, offset d_00458fb0
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    lea edx, [eax + 4]
    mov eax, dword ptr [ebp - 8]
    call sub_004185aa
    mov dword ptr [ebp - 8], eax
    jmp loc_004140c2
loc_004140ab:
    mov ebx, 0x4a7
    mov edx, offset d_00458fb0
    mov eax, 4
    call sub_004184d0
    mov dword ptr [ebp - 8], eax
loc_004140c2:
    mov ebx, 0x4a9
    mov edx, offset d_00458fb0
    lea eax, [ebp - 0x11a]
    call sub_004186ac
    mov edx, dword ptr [ebp - 0x10]
    shl edx, 2
    add edx, dword ptr [ebp - 8]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    lea eax, [ebp - 0x138]
    call sub_0045214b
    mov dword ptr [ebp - 0xc], eax
    jmp loc_0041407f
loc_004140f8:
    lea eax, [ebp - 0x138]
    call sub_00452193
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [edx], eax
    cmp dword ptr [ebp - 8], 0
    je loc_00414162
    mov dword ptr [ebp - 0x13c], 0
loc_0041411b:
    mov eax, dword ptr [ebp - 0x13c]
    mov edx, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [edx]
    jl loc_00414138
    jmp loc_0041414d
loc_0041412a:
    mov eax, dword ptr [ebp - 0x13c]
    inc dword ptr [ebp - 0x13c]
    jmp loc_0041411b
loc_00414138:
    mov eax, dword ptr [ebp - 0x13c]
    shl eax, 2
    add eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax]
    call sub_00412a3b
    jmp loc_0041412a
loc_0041414d:
    mov ecx, offset ptr_0041400f
    mov ebx, 4
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 8]
    call sub_00452231
loc_00414162:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00414173:
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
    je loc_004141f0
    mov dword ptr [ebp - 4], 0
loc_00414193:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 8]
    jl loc_004141a5
    jmp loc_004141de
loc_0041419d:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00414193
loc_004141a5:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    add eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax], 0
    je loc_004141dc
    mov ebx, 0x4c0
    mov edx, offset d_00458fb0
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    add eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    call sub_0041863d
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    add eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], 0
loc_004141dc:
    jmp loc_0041419d
loc_004141de:
    mov ebx, 0x4c4
    mov edx, offset d_00458fb0
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041863d
loc_004141f0:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_004141f8:
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
    cmp dword ptr [ebp - 8], 0
    je loc_00414219
    mov al, byte ptr [d_0049d0da]
    mov byte ptr [ebp - 0xc], al
    jmp loc_00414221
loc_00414219:
    mov al, byte ptr [d_0049d38f]
    mov byte ptr [ebp - 0xc], al
loc_00414221:
    xor eax, eax
    mov al, byte ptr [ebp - 0xc]
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
sub_00414235:
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
    mov eax, 0xf
    call sub_00412135
    test eax, eax
    je loc_004142e8
    lea edx, [ebp - 8]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041404b
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    je loc_004142bb
loc_0041426c:
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0x64
    push 0x64
    xor ecx, ecx
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, 0x258
    call sub_004124a4
    call sub_0041485a
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], -1
    je loc_004142a8
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    add eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax]
    call sub_0041302d
loc_004142a8:
    cmp dword ptr [ebp - 4], -1
    jne loc_0041426c
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00414173
    jmp loc_004142e6
loc_004142bb:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049d0da]
    mov eax, 4
    call sub_004124a4
    mov edx, eax
    mov eax, 0x5f
    call sub_004124a4
    call sub_00414340
loc_004142e6:
    jmp loc_00414313
loc_004142e8:
    xor ecx, ecx
    mov cl, byte ptr [d_0049d37a]
    xor ebx, ebx
    mov bl, byte ptr [d_0049d0da]
    mov eax, 5
    call sub_004124a4
    mov edx, eax
    mov eax, 0x5f
    call sub_004124a4
    call sub_00414340
loc_00414313:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041431c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, 0x262
    call sub_004124a4
    call sub_00414235
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00414340:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x38
    .byte 0x81,0xec,0x38,0x00,0x00,0x00
    mov dword ptr [ebp - 0x34], eax
    mov dword ptr [ebp - 0x30], edx
    mov dword ptr [ebp - 0x2c], ebx
    mov dword ptr [ebp - 0x28], ecx
    mov dword ptr [ebp - 0x1c], 0
    cmp dword ptr [ebp - 0x34], 0
    je loc_0041436a
    cmp dword ptr [ebp - 0x30], 0
    jne loc_0041436c
loc_0041436a:
    jmp loc_004143b1
loc_0041436c:
    mov eax, dword ptr [ebp - 0x34]
    call dword ptr [d_0045c380]
    mov edx, eax
    mov eax, dword ptr [ebp - 0x30]
    call dword ptr [d_0045c380]
    cmp edx, eax
    jle loc_00414392
    mov eax, dword ptr [ebp - 0x34]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x38], eax
    jmp loc_0041439e
loc_00414392:
    mov eax, dword ptr [ebp - 0x30]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x38], eax
loc_0041439e:
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x1c], eax
    call dword ptr [d_0045c37c]
    add eax, eax
    mov dword ptr [ebp - 0x18], eax
    jmp loc_004143de
loc_004143b1:
    cmp dword ptr [ebp - 0x34], 0
    je loc_004143c3
    mov eax, dword ptr [ebp - 0x34]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x1c], eax
loc_004143c3:
    cmp dword ptr [ebp - 0x30], 0
    je loc_004143d5
    mov eax, dword ptr [ebp - 0x30]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x1c], eax
loc_004143d5:
    call dword ptr [d_0045c37c]
    mov dword ptr [ebp - 0x18], eax
loc_004143de:
    cmp dword ptr [ebp - 0x1c], 0x50
    jge loc_004143eb
    mov dword ptr [ebp - 0x1c], 0x50
loc_004143eb:
    add dword ptr [ebp - 0x1c], 0x40
    call dword ptr [d_0045c37c]
    shl eax, 2
    add eax, 0x40
    add dword ptr [ebp - 0x18], eax
    mov edx, dword ptr [d_00464a70]
    sub edx, dword ptr [ebp - 0x1c]
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x24], eax
    mov edx, dword ptr [d_00464a6c]
    sub edx, dword ptr [ebp - 0x18]
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x20], eax
    push 0x14
    push 0x100
    mov ecx, dword ptr [ebp - 0x18]
    mov ebx, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    call sub_0043c734
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], -1
    je loc_00414566
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041726b
    call dword ptr [d_0045c37c]
    add eax, 0x20
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x1c]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x34], 0
    je loc_00414490
    mov eax, dword ptr [ebp - 0x28]
    push eax
    mov eax, dword ptr [ebp - 0x2c]
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x14]
    call sub_004172ba
loc_00414490:
    call dword ptr [d_0045c37c]
    add eax, 2
    add dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0x30], 0
    je loc_004144bb
    mov eax, dword ptr [ebp - 0x28]
    push eax
    mov eax, dword ptr [ebp - 0x2c]
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x14]
    call sub_004172ba
loc_004144bb:
    call dword ptr [d_0045c37c]
    add eax, 2
    add dword ptr [ebp - 0xc], eax
    push 0
    mov eax, 0x1b
    call sub_004124a4
    push eax
    push 0x1b
    push -1
    push -1
    mov ecx, 0xffffffff
    call dword ptr [d_0045c37c]
    mov edx, dword ptr [ebp - 0x18]
    sub edx, 0x20
    sub edx, eax
    lea ebx, [edx - 6]
    mov eax, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x1c]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    lea edx, [eax - 0x20]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00432298
    mov eax, dword ptr [ebp - 0x14]
    call sub_0043d454
    mov dword ptr [ebp - 4], 0
loc_00414517:
    call sub_004102b7
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], -1
    je loc_0041452b
    cmp dword ptr [ebp - 8], -2
    jne loc_0041452d
loc_0041452b:
    jmp loc_00414537
loc_0041452d:
    mov eax, 0x14
    call sub_00427961
loc_00414537:
    cmp dword ptr [ebp - 8], 0x1b
    jb loc_0041454b
    cmp dword ptr [ebp - 8], 0x1b
    jbe loc_00414551
    cmp dword ptr [ebp - 8], 0x20
    je loc_00414551
    jmp loc_00414558
loc_0041454b:
    cmp dword ptr [ebp - 8], 0xd
    jne loc_00414558
loc_00414551:
    mov dword ptr [ebp - 4], 1
loc_00414558:
    cmp dword ptr [ebp - 4], 0
    je loc_00414517
    mov eax, dword ptr [ebp - 0x14]
    call sub_0043c960
loc_00414566:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0041456c:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x40
    .byte 0x81,0xec,0x40,0x00,0x00,0x00
    mov dword ptr [ebp - 0x3c], eax
    mov dword ptr [ebp - 0x38], edx
    mov dword ptr [ebp - 0x34], ebx
    mov dword ptr [ebp - 0x30], ecx
    mov dword ptr [ebp - 0x24], 0
    cmp dword ptr [ebp - 0x3c], 0
    je loc_00414596
    cmp dword ptr [ebp - 0x38], 0
    jne loc_00414598
loc_00414596:
    jmp loc_004145dd
loc_00414598:
    mov eax, dword ptr [ebp - 0x3c]
    call dword ptr [d_0045c380]
    mov edx, eax
    mov eax, dword ptr [ebp - 0x38]
    call dword ptr [d_0045c380]
    cmp edx, eax
    jle loc_004145be
    mov eax, dword ptr [ebp - 0x3c]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x40], eax
    jmp loc_004145ca
loc_004145be:
    mov eax, dword ptr [ebp - 0x38]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x40], eax
loc_004145ca:
    mov eax, dword ptr [ebp - 0x40]
    mov dword ptr [ebp - 0x24], eax
    call dword ptr [d_0045c37c]
    add eax, eax
    mov dword ptr [ebp - 0x20], eax
    jmp loc_0041460a
loc_004145dd:
    cmp dword ptr [ebp - 0x3c], 0
    je loc_004145ef
    mov eax, dword ptr [ebp - 0x3c]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x24], eax
loc_004145ef:
    cmp dword ptr [ebp - 0x38], 0
    je loc_00414601
    mov eax, dword ptr [ebp - 0x38]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x24], eax
loc_00414601:
    call dword ptr [d_0045c37c]
    mov dword ptr [ebp - 0x20], eax
loc_0041460a:
    cmp dword ptr [ebp - 0x24], 0x50
    jge loc_00414617
    mov dword ptr [ebp - 0x24], 0x50
loc_00414617:
    add dword ptr [ebp - 0x24], 0x40
    call dword ptr [d_0045c37c]
    shl eax, 2
    add eax, 0x40
    add dword ptr [ebp - 0x20], eax
    mov edx, dword ptr [d_00464a70]
    sub edx, dword ptr [ebp - 0x24]
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x2c], eax
    mov edx, dword ptr [d_00464a6c]
    sub edx, dword ptr [ebp - 0x20]
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x28], eax
    push 0x14
    push 0x100
    mov ecx, dword ptr [ebp - 0x20]
    mov ebx, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x28]
    mov eax, dword ptr [ebp - 0x2c]
    call sub_0043c734
    mov dword ptr [ebp - 0x1c], eax
    cmp dword ptr [ebp - 0x1c], -1
    jne loc_00414681
    mov dword ptr [ebp - 4], 0
    jmp loc_00414851
loc_00414681:
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0041726b
    call dword ptr [d_0045c37c]
    add eax, 0x20
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x24]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x3c], 0
    je loc_004146c4
    mov eax, dword ptr [ebp - 0x30]
    push eax
    mov eax, dword ptr [ebp - 0x34]
    push eax
    mov ecx, dword ptr [ebp - 0x14]
    mov ebx, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_004172ba
loc_004146c4:
    call dword ptr [d_0045c37c]
    add eax, 2
    add dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x38], 0
    je loc_004146ef
    mov eax, dword ptr [ebp - 0x30]
    push eax
    mov eax, dword ptr [ebp - 0x34]
    push eax
    mov ecx, dword ptr [ebp - 0x14]
    mov ebx, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x38]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_004172ba
loc_004146ef:
    call dword ptr [d_0045c37c]
    add eax, 2
    add dword ptr [ebp - 0x14], eax
    push 0
    mov eax, 0x1a
    call sub_004124a4
    push eax
    push 0x59
    push -1
    push -1
    mov ecx, 0xffffffff
    call dword ptr [d_0045c37c]
    mov edx, dword ptr [ebp - 0x20]
    sub edx, 0x20
    sub edx, eax
    mov eax, edx
    lea ebx, [eax - 6]
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x24]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    lea edx, [eax - 0x50]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00432298
    push 0
    mov eax, 0x19
    call sub_004124a4
    push eax
    push 0x4e
    push -1
    push -1
    mov ecx, 0xffffffff
    call dword ptr [d_0045c37c]
    mov edx, dword ptr [ebp - 0x20]
    sub edx, 0x20
    sub edx, eax
    lea ebx, [edx - 6]
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x24]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    lea edx, [eax + 0x16]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00432298
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0043d454
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 8], 0
loc_00414795:
    call sub_004102b7
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], -1
    je loc_004147a9
    cmp dword ptr [ebp - 0x10], -2
    jne loc_004147ab
loc_004147a9:
    jmp loc_004147b5
loc_004147ab:
    mov eax, 0x14
    call sub_00427961
loc_004147b5:
    cmp dword ptr [ebp - 0x10], 0x51
    jb loc_004147f3
    cmp dword ptr [ebp - 0x10], 0x51
    # jbe 0x41482b
    .byte 0x0f,0x86
    .long loc_0041482b - . - 4
    cmp dword ptr [ebp - 0x10], 0x6e
    jb loc_004147eb
    cmp dword ptr [ebp - 0x10], 0x6e
    # jbe 0x41482b
    .byte 0x0f,0x86
    .long loc_0041482b - . - 4
    cmp dword ptr [ebp - 0x10], 0x71
    jb loc_004147e9
    cmp dword ptr [ebp - 0x10], 0x71
    jbe loc_0041482b
    cmp dword ptr [ebp - 0x10], 0x79
    je loc_0041481b
    jmp loc_00414839
loc_004147e9:
    jmp loc_00414839
loc_004147eb:
    cmp dword ptr [ebp - 0x10], 0x59
    je loc_0041481b
    jmp loc_00414839
loc_004147f3:
    cmp dword ptr [ebp - 0x10], 0x1b
    jb loc_00414815
    cmp dword ptr [ebp - 0x10], 0x1b
    jbe loc_0041482b
    cmp dword ptr [ebp - 0x10], 0x20
    jb loc_00414813
    cmp dword ptr [ebp - 0x10], 0x20
    jbe loc_0041481b
    cmp dword ptr [ebp - 0x10], 0x4e
    je loc_0041482b
    jmp loc_00414839
loc_00414813:
    jmp loc_00414839
loc_00414815:
    cmp dword ptr [ebp - 0x10], 0xd
    jne loc_00414839
loc_0041481b:
    mov dword ptr [ebp - 0xc], 1
    mov dword ptr [ebp - 8], 1
    jmp loc_00414839
loc_0041482b:
    mov dword ptr [ebp - 0xc], 1
    mov dword ptr [ebp - 8], 0
loc_00414839:
    cmp dword ptr [ebp - 0xc], 0
    je loc_00414795
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0043c960
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
loc_00414851:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0041485a:
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
    call sub_00431178
    mov eax, dword ptr [ebp + 0x18]
    push eax
    mov eax, dword ptr [ebp + 0x14]
    push eax
    mov eax, dword ptr [ebp + 0x10]
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_0042db80
    mov dword ptr [ebp - 8], eax
    call sub_00431360
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0xc
sub_004148ac:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    call sub_0040c06a
    test eax, eax
    jne loc_004148cc
    mov dword ptr [ebp - 4], 1
    jmp loc_004148d9
loc_004148cc:
    mov eax, 0xd
    call sub_00412135
    mov dword ptr [ebp - 4], eax
loc_004148d9:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004148e5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x68
    .byte 0x81,0xec,0x68,0x00,0x00,0x00
    mov eax, 0x10
    call sub_00412135
    cmp eax, 1
    jle loc_00414911
    mov eax, 0x10
    call sub_00412135
    mov dword ptr [ebp - 0x68], eax
    jmp loc_00414918
loc_00414911:
    mov dword ptr [ebp - 0x68], 1
loc_00414918:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x68]
    push edx
    mov eax, offset d_0045916a
    push eax
    lea eax, [ebp - 0x64]
    push eax
    call sub_004518d0
    add esp, 0xc
    call sub_004151ad
    lea eax, [ebp - 0x64]
    call sub_00411d17
    call sub_004151cc
    call sub_00415189
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041495a:
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
loc_0041496f:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0041497f
    jmp loc_004149ac
loc_00414977:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041496f
loc_0041497f:
    mov ebx, 0x3e
    mov edx, offset d_00459178
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov eax, dword ptr [eax + d_00460564]
    call sub_0041863d
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov dword ptr [eax + d_00460564], 0
    jmp loc_00414977
loc_004149ac:
    cmp dword ptr [d_00460bcc], 0
    je loc_004149d3
    mov ebx, 0x42
    mov edx, offset d_00459178
    mov eax, dword ptr [d_00460bcc]
    call sub_0041863d
    mov dword ptr [d_00460bcc], 0
loc_004149d3:
    cmp dword ptr [d_00460bc0], 0
    je loc_004149fa
    mov ebx, 0x46
    mov edx, offset d_00459178
    mov eax, dword ptr [d_00460bc0]
    call sub_0041863d
    mov dword ptr [d_00460bc0], 0
loc_004149fa:
    cmp dword ptr [d_00460bb0], 0
    je loc_00414a21
    mov ebx, 0x4a
    mov edx, offset d_00459178
    mov eax, dword ptr [d_00460bb0]
    call sub_0041863d
    mov dword ptr [d_00460bb0], 0
loc_00414a21:
    cmp dword ptr [d_00460bac], 0
    je loc_00414a48
    mov ebx, 0x4e
    mov edx, offset d_00459178
    mov eax, dword ptr [d_00460bac]
    call sub_0041863d
    mov dword ptr [d_00460bac], 0
loc_00414a48:
    mov eax, dword ptr [d_00464ae4]
    call sub_0043c960
    mov dword ptr [d_00464ae4], 0xffffffff
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00414a65:
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xb0
    mov dword ptr [ebp - 0x3c], eax
    mov dword ptr [ebp - 0x44], edx
    mov dword ptr [ebp - 0x40], ebx
    mov dword ptr [ebp - 0x2c], ecx
    mov al, byte ptr [ebp - 0x44]
    mov edx, dword ptr [ebp - 0x3c]
    mov byte ptr [edx + d_00460bd0], al
    mov al, byte ptr [ebp - 0x40]
    mov edx, dword ptr [ebp - 0x3c]
    mov byte ptr [edx + d_00460bda], al
    mov al, byte ptr [ebp - 0x2c]
    mov edx, dword ptr [ebp - 0x3c]
    mov byte ptr [edx + d_00460be4], al
    mov edx, dword ptr [ebp - 0x3c]
    push edx
    mov edx, offset d_0045917f
    push edx
    lea edx, [ebp - 0xa8]
    push edx
    call sub_004518d0
    add esp, 0xc
    cmp dword ptr [ebp + 0x10], 0
    jne loc_00414b9d
    mov edx, offset d_00459186
    lea eax, [ebp - 0xa8]
    call sub_004514fc
    mov dword ptr [ebp - 0xac], eax
    cmp dword ptr [ebp - 0xac], 0
    je loc_00414b9d
    mov ecx, dword ptr [ebp - 0xac]
    mov ebx, 1
    mov edx, 0x100
    mov eax, dword ptr [ebp - 0x3c]
    shl eax, 2
    mov eax, dword ptr [eax + d_00460564]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0xac]
    call sub_0045266a
    mov edx, eax
    mov eax, dword ptr [ebp - 0x3c]
    mov byte ptr [eax + d_00460bd0], dl
    mov eax, dword ptr [ebp - 0xac]
    call sub_0045266a
    mov edx, eax
    mov eax, dword ptr [ebp - 0x3c]
    mov byte ptr [eax + d_00460bda], dl
    mov eax, dword ptr [ebp - 0xac]
    call sub_0045266a
    mov edx, eax
    mov eax, dword ptr [ebp - 0x3c]
    mov byte ptr [eax + d_00460be4], dl
    mov eax, dword ptr [ebp - 0xac]
    call sub_0045172e
    mov dword ptr [ebp - 0x38], 0
loc_00414b5b:
    cmp dword ptr [ebp - 0x38], 0x100
    jl loc_00414b6e
    jmp loc_00414b98
loc_00414b66:
    mov eax, dword ptr [ebp - 0x38]
    inc dword ptr [ebp - 0x38]
    jmp loc_00414b5b
loc_00414b6e:
    mov eax, dword ptr [ebp - 0x3c]
    shl eax, 2
    mov eax, dword ptr [eax + d_00460564]
    add eax, dword ptr [ebp - 0x38]
    cmp byte ptr [eax], 0
    jne loc_00414b96
    mov eax, dword ptr [ebp - 0x3c]
    shl eax, 2
    mov edx, dword ptr [eax + d_00460564]
    add edx, dword ptr [ebp - 0x38]
    mov al, byte ptr [ebp - 0x38]
    mov byte ptr [edx], al
loc_00414b96:
    jmp loc_00414b66
loc_00414b98:
    jmp loc_00414dec
loc_00414b9d:
    mov eax, dword ptr [ebp - 0x3c]
    shl eax, 2
    mov eax, dword ptr [eax + d_00460564]
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 0x38], 0
    call sub_0042c570
    mov dword ptr [ebp - 0x30], eax
loc_00414bbb:
    cmp dword ptr [ebp - 0x38], 0x100
    jl loc_00414bd8
    jmp loc_00414d56
loc_00414bc9:
    mov eax, dword ptr [ebp - 0x38]
    inc dword ptr [ebp - 0x38]
    mov eax, dword ptr [ebp - 0x30]
    add dword ptr [ebp - 0x30], 3
    jmp loc_00414bbb
loc_00414bd8:
    mov eax, dword ptr [ebp - 0x30]
    mov dl, byte ptr [eax + 1]
    mov eax, dword ptr [ebp - 0x30]
    cmp dl, byte ptr [eax]
    jbe loc_00414bf3
    mov eax, dword ptr [ebp - 0x30]
    mov dl, byte ptr [eax + 1]
    mov eax, dword ptr [ebp - 0x30]
    cmp dl, byte ptr [eax + 2]
    ja loc_00414bf8
loc_00414bf3:
    jmp loc_00414d43
loc_00414bf8:
    xor eax, eax
    mov edx, dword ptr [ebp - 0x30]
    mov al, byte ptr [edx + 1]
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x30]
    xor edx, edx
    mov dl, byte ptr [eax + 2]
    mov eax, dword ptr [ebp - 0x30]
    mov al, byte ptr [eax]
    and eax, 0xff
    add edx, eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x18], eax
    mov edx, dword ptr [ebp - 0x1c]
    sub edx, dword ptr [ebp - 0x18]
    imul edx, dword ptr [ebp - 0x44]
    mov ebx, 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, dword ptr [ebp - 0x18]
    add edx, eax
    mov dword ptr [ebp - 0x28], edx
    mov edx, dword ptr [ebp - 0x1c]
    sub edx, dword ptr [ebp - 0x18]
    imul edx, dword ptr [ebp - 0x40]
    mov ebx, 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, dword ptr [ebp - 0x18]
    add edx, eax
    mov dword ptr [ebp - 0x24], edx
    mov edx, dword ptr [ebp - 0x1c]
    sub edx, dword ptr [ebp - 0x18]
    imul edx, dword ptr [ebp - 0x2c]
    mov ebx, 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, dword ptr [ebp - 0x18]
    add edx, eax
    mov dword ptr [ebp - 0x20], edx
    mov dword ptr [ebp - 0x14], 0x1869f
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0x34], 0
    call sub_0042c570
    mov dword ptr [ebp - 4], eax
loc_00414c99:
    cmp dword ptr [ebp - 0x34], 0x100
    jl loc_00414cb6
    jmp loc_00414d39
loc_00414ca7:
    mov eax, dword ptr [ebp - 0x34]
    inc dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 3
    jmp loc_00414c99
loc_00414cb6:
    mov eax, dword ptr [ebp - 4]
    mov al, byte ptr [eax + 1]
    and eax, 0xff
    sub eax, dword ptr [ebp - 0x24]
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov al, byte ptr [eax + 1]
    and eax, 0xff
    sub eax, dword ptr [ebp - 0x24]
    imul edx, eax
    mov ebx, edx
    mov eax, dword ptr [ebp - 4]
    mov al, byte ptr [eax]
    and eax, 0xff
    sub eax, dword ptr [ebp - 0x28]
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov al, byte ptr [eax]
    and eax, 0xff
    sub eax, dword ptr [ebp - 0x28]
    imul eax, edx
    add ebx, eax
    mov eax, dword ptr [ebp - 4]
    mov al, byte ptr [eax + 2]
    and eax, 0xff
    sub eax, dword ptr [ebp - 0x20]
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov al, byte ptr [eax + 2]
    and eax, 0xff
    sub eax, dword ptr [ebp - 0x20]
    imul eax, edx
    add ebx, eax
    mov dword ptr [ebp - 0xc], ebx
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [ebp - 0x14]
    jge loc_00414d34
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x34]
    mov dword ptr [ebp - 0x10], eax
loc_00414d34:
    jmp loc_00414ca7
loc_00414d39:
    mov al, byte ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 8]
    mov byte ptr [edx], al
    jmp loc_00414d4b
loc_00414d43:
    mov al, byte ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 8]
    mov byte ptr [edx], al
loc_00414d4b:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00414bc9
loc_00414d56:
    mov edx, offset d_00459189
    lea eax, [ebp - 0xa8]
    call sub_004514fc
    mov dword ptr [ebp - 0xb0], eax
    cmp dword ptr [ebp - 0xb0], 0
    je loc_00414dec
    mov ecx, dword ptr [ebp - 0xb0]
    mov ebx, 1
    mov edx, 0x100
    mov eax, dword ptr [ebp - 0x3c]
    shl eax, 2
    mov eax, dword ptr [eax + d_00460564]
    call sub_00451958
    mov edx, dword ptr [ebp - 0xb0]
    mov eax, dword ptr [ebp - 0x3c]
    mov al, byte ptr [eax + d_00460bd0]
    and eax, 0xff
    call sub_004527e3
    mov edx, dword ptr [ebp - 0xb0]
    mov eax, dword ptr [ebp - 0x3c]
    mov al, byte ptr [eax + d_00460bda]
    and eax, 0xff
    call sub_004527e3
    mov edx, dword ptr [ebp - 0xb0]
    mov eax, dword ptr [ebp - 0x3c]
    mov al, byte ptr [eax + d_00460be4]
    and eax, 0xff
    call sub_004527e3
    mov eax, dword ptr [ebp - 0xb0]
    call sub_0045172e
loc_00414dec:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 4
sub_00414df4:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    xor ebx, ebx
    mov edx, offset sub_0044324c
    mov eax, offset ptr_00442e24
    call sub_0043c150
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, offset d_0045918c
    push eax
    call sub_0042c0c8
    add esp, 8
    xor edx, edx
    mov eax, 0xffffffff
    call sub_0043a8bc
    call sub_00431178
    call sub_00431360
    mov ebx, offset d_00460bb8
    mov edx, offset d_00460bb4
    mov eax, offset d_004591a4
    call sub_00411d17
    call sub_004150f0
    mov dword ptr [d_00460bac], eax
    cmp dword ptr [d_00460bac], 0
    jne loc_00414e79
    mov eax, offset d_004591ad
    call sub_0041284a
    mov eax, 0x1e
    call sub_004128c9
loc_00414e79:
    mov ebx, 0xc3
    mov edx, offset d_00459178
    mov eax, 0x2580
    call sub_004184d0
    mov dword ptr [d_00460bb0], eax
    mov dword ptr [d_00460bbc], 0
    mov edx, offset d_00459186
    mov eax, offset d_004591b2
    call sub_004514fc
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 0
    je loc_00414efc
    mov ecx, dword ptr [ebp - 0x10]
    mov ebx, 0x100
    mov edx, 3
    mov eax, offset d_0046059c
    call sub_00451b5f
    mov byte ptr [d_0046059c], 0
    mov byte ptr [d_0046059d], 0
    mov byte ptr [d_0046059e], 0
    mov eax, dword ptr [ebp - 0x10]
    call sub_0045172e
    mov ebx, 0x300
    mov edx, offset d_0046059c
    mov eax, offset d_0046089c
    call sub_00451dc4
loc_00414efc:
    mov dword ptr [d_00464a70], 0x280
    mov dword ptr [d_00464a6c], 0x1e0
    push 1
    xor eax, eax
    mov al, byte ptr [d_00495390]
    push eax
    mov ecx, dword ptr [d_00464a6c]
    mov ebx, dword ptr [d_00464a70]
    xor edx, edx
    xor eax, eax
    call sub_0043c734
    mov dword ptr [d_00464ae4], eax
    cmp dword ptr [d_00464ae4], -1
    jne loc_00414f55
    mov eax, offset d_004591bc
    push eax
    call sub_0042c0c8
    add esp, 4
    mov eax, 1
    call sub_0044c98b
loc_00414f55:
    mov ecx, 0xdb
    mov ebx, offset d_00459178
    mov edx, dword ptr [d_00464a6c]
    mov eax, dword ptr [d_00464a70]
    call sub_00418511
    mov dword ptr [d_00460bcc], eax
    mov eax, dword ptr [d_00464a70]
    mov dword ptr [d_00460bc8], eax
    mov eax, dword ptr [d_00464a6c]
    mov dword ptr [d_00460ba8], eax
    call sub_00415189
    call sub_00415ce3
    mov dword ptr [d_0046058c], 0
    mov dword ptr [d_00460590], 0
    mov eax, dword ptr [d_00464a70]
    mov dword ptr [d_00460594], eax
    mov eax, dword ptr [d_00464a6c]
    mov dword ptr [d_00460598], eax
    mov dword ptr [ebp - 8], 0
loc_00414fc1:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_00414fd1
    jmp loc_0041500d
loc_00414fc9:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_00414fc1
loc_00414fd1:
    mov ebx, 0xe9
    mov edx, offset d_00459178
    mov eax, 0x100
    call sub_004184d0
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov dword ptr [eax + d_00460564], edx
    mov ebx, 0x100
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov eax, dword ptr [eax + d_00460564]
    call sub_00451940
    jmp loc_00414fc9
loc_0041500d:
    mov eax, dword ptr [d_00460564]
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 8], 0
loc_0041501c:
    cmp dword ptr [ebp - 8], 0x100
    jl loc_0041502f
    jmp loc_00415047
loc_00415027:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0041501c
loc_0041502f:
    cmp dword ptr [ebp - 8], 0
    je loc_0041503f
    mov al, byte ptr [ebp - 8]
    add al, 3
    mov edx, dword ptr [ebp - 4]
    mov byte ptr [edx], al
loc_0041503f:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00415027
loc_00415047:
    mov dword ptr [ebp - 8], 0
loc_0041504e:
    cmp dword ptr [ebp - 8], 0xa
    jl loc_0041505e
    jmp loc_004150a0
loc_00415056:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0041504e
loc_0041505e:
    push 0
    mov eax, dword ptr [ebp - 8]
    lea eax, [eax + eax*4]
    add eax, 0xca
    call sub_00412135
    mov ecx, eax
    mov eax, dword ptr [ebp - 8]
    lea eax, [eax + eax*4]
    add eax, 0xc9
    call sub_00412135
    mov ebx, eax
    mov eax, dword ptr [ebp - 8]
    lea eax, [eax + eax*4]
    add eax, 0xc8
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    call sub_00414a65
    jmp loc_00415056
loc_004150a0:
    mov eax, 6
    call sub_00431e9c
    mov eax, offset ptr_0041495a
    call sub_00410ebf
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004150bd:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov ebx, 0x300
    mov edx, offset d_0046089c
    mov eax, offset d_0046059c
    call sub_00451dc4
    mov eax, offset d_0046059c
    call sub_0042c534
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004150f0:
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
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041be63
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00415120:
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
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041bda4
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00415150:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov ebx, 0x300
    call sub_0041bff5
    mov ecx, offset d_0046059c
    mov edx, eax
    mov eax, ecx
    call sub_00451dc4
    mov dword ptr [ebp - 4], offset d_0046059c
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00415189:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_00464ae4]
    call sub_0043dda4
    mov dword ptr [d_00460bc4], eax
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004151ad:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_00460bcc]
    mov dword ptr [d_00460bc4], eax
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004151cc:
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
    lea ebx, [ebp - 4]
    lea edx, [ebp - 8]
    mov eax, dword ptr [ebp - 0x10]
    call sub_004150f0
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    je loc_00415224
    mov eax, dword ptr [d_00464a70]
    imul eax, dword ptr [d_00464a6c]
    mov edx, dword ptr [ebp - 0xc]
    mov ecx, dword ptr [d_00460bc4]
    mov ebx, eax
    mov eax, ecx
    call sub_00451dc4
    mov ebx, 0x13d
    mov edx, offset d_00459178
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041863d
loc_00415224:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041522d:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x314
    mov dword ptr [ebp - 0x14], eax
    lea ebx, [ebp - 0xc]
    lea edx, [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00415120
    mov dword ptr [ebp - 8], eax
    mov ebx, 0x300
    call sub_00415150
    mov edx, eax
    lea eax, [ebp - 0x314]
    call sub_00451dc4
    mov dword ptr [ebp - 4], 0
loc_0041526d:
    cmp dword ptr [ebp - 4], 0x300
    jl loc_00415280
    jmp loc_0041528d
loc_00415278:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041526d
loc_00415280:
    mov eax, dword ptr [ebp - 4]
    shr byte ptr [eax + ebp - 0x314], 2
    jmp loc_00415278
loc_0041528d:
    lea eax, [ebp - 0x314]
    call sub_0042c534
    cmp dword ptr [ebp - 8], 0
    je loc_004152ce
    mov eax, dword ptr [d_00464a70]
    imul eax, dword ptr [d_00464a6c]
    mov edx, dword ptr [ebp - 8]
    mov ecx, dword ptr [d_00460bc4]
    mov ebx, eax
    mov eax, ecx
    call sub_00451dc4
    mov ebx, 0x159
    mov edx, offset d_00459178
    mov eax, dword ptr [ebp - 8]
    call sub_0041863d
loc_004152ce:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004152d7:
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
    push dword ptr [d_00460bc8]
    mov eax, dword ptr [d_00460bc4]
    mov edx, dword ptr [ebp - 0xc]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [d_00460bc8]
    add eax, edx
    push eax
    mov eax, dword ptr [ebp + 0x14]
    push eax
    mov eax, dword ptr [ebp + 0x10]
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_004428b4
    add esp, 0x18
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 8
sub_0041532b:
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
    push dword ptr [d_00460bc8]
    mov eax, dword ptr [d_00460bc4]
    mov edx, dword ptr [ebp - 0xc]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [d_00460bc8]
    add eax, edx
    push eax
    mov eax, dword ptr [ebp + 0x14]
    push eax
    mov eax, dword ptr [ebp + 0x10]
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call sub_004428e4
    add esp, 0x18
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 8
sub_0041537f:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x24
    .byte 0x81,0xec,0x24,0x00,0x00,0x00
    mov dword ptr [ebp - 0x24], eax
    mov dword ptr [ebp - 0x20], edx
    mov dword ptr [ebp - 0x1c], ebx
    lea eax, [ebp - 8]
    push eax
    lea ecx, [ebp - 0xc]
    lea ebx, [ebp - 0x14]
    lea edx, [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0041c5e0
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0xc]
    sub dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [ebp - 8]
    sub dword ptr [ebp - 0x20], eax
    mov eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [d_0046058c]
    jle loc_004154c5
    mov eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_00460590]
    jle loc_004154c5
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [d_00460594]
    jge loc_004154c5
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [d_00460598]
    jge loc_004154c5
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [d_0046058c]
    jge loc_00415429
    mov eax, dword ptr [d_0046058c]
    sub eax, dword ptr [ebp - 0x24]
    add dword ptr [ebp - 4], eax
    mov eax, dword ptr [d_0046058c]
    sub eax, dword ptr [ebp - 0x24]
    sub dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [d_0046058c]
    mov dword ptr [ebp - 0x24], eax
loc_00415429:
    mov eax, dword ptr [ebp - 0x20]
    cmp eax, dword ptr [d_00460590]
    jge loc_00415456
    mov eax, dword ptr [d_00460590]
    sub eax, dword ptr [ebp - 0x20]
    imul eax, dword ptr [ebp - 0x10]
    add dword ptr [ebp - 4], eax
    mov eax, dword ptr [d_00460590]
    sub eax, dword ptr [ebp - 0x20]
    sub dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [d_00460590]
    mov dword ptr [ebp - 0x20], eax
loc_00415456:
    mov eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [d_00460594]
    jle loc_00415473
    mov eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x18]
    sub eax, dword ptr [d_00460594]
    sub dword ptr [ebp - 0x18], eax
loc_00415473:
    mov eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_00460598]
    jle loc_00415490
    mov eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x14]
    sub eax, dword ptr [d_00460598]
    sub dword ptr [ebp - 0x14], eax
loc_00415490:
    push dword ptr [d_00460bc8]
    mov eax, dword ptr [d_00460bc4]
    mov edx, dword ptr [ebp - 0x24]
    add edx, eax
    mov eax, dword ptr [ebp - 0x20]
    imul eax, dword ptr [d_00460bc8]
    add eax, edx
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, dword ptr [ebp - 0x18]
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_004428e4
    add esp, 0x18
loc_004154c5:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_004154cc:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x3c
    .byte 0x81,0xec,0x3c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x2c], eax
    mov dword ptr [ebp - 0x28], edx
    mov dword ptr [ebp - 0x24], ebx
    mov dword ptr [ebp - 0x20], ecx
    lea eax, [ebp - 0xc]
    push eax
    lea ecx, [ebp - 0x10]
    lea ebx, [ebp - 0x18]
    lea edx, [ebp - 0x1c]
    mov eax, dword ptr [ebp - 0x24]
    call sub_0041c5e0
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x10]
    sub dword ptr [ebp - 0x2c], eax
    mov eax, dword ptr [ebp - 0xc]
    sub dword ptr [ebp - 0x28], eax
    mov eax, dword ptr [ebp - 0x2c]
    add eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [d_0046058c]
    jle loc_004156c1
    mov eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [d_00460590]
    jle loc_004156c1
    mov eax, dword ptr [ebp - 0x2c]
    cmp eax, dword ptr [d_00460594]
    jge loc_004156c1
    mov eax, dword ptr [ebp - 0x28]
    cmp eax, dword ptr [d_00460598]
    jge loc_004156c1
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [ebp - 0x2c]
    cmp eax, dword ptr [d_0046058c]
    jge loc_0041558a
    mov eax, dword ptr [d_0046058c]
    sub eax, dword ptr [ebp - 0x2c]
    add dword ptr [ebp - 8], eax
    mov eax, dword ptr [d_0046058c]
    sub eax, dword ptr [ebp - 0x2c]
    add dword ptr [ebp - 4], eax
    mov eax, dword ptr [d_0046058c]
    sub eax, dword ptr [ebp - 0x2c]
    sub dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [d_0046058c]
    mov dword ptr [ebp - 0x2c], eax
loc_0041558a:
    mov eax, dword ptr [ebp - 0x28]
    cmp eax, dword ptr [d_00460590]
    jge loc_004155b7
    mov eax, dword ptr [d_00460590]
    sub eax, dword ptr [ebp - 0x28]
    imul eax, dword ptr [ebp - 0x14]
    add dword ptr [ebp - 8], eax
    mov eax, dword ptr [d_00460590]
    sub eax, dword ptr [ebp - 0x28]
    sub dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [d_00460590]
    mov dword ptr [ebp - 0x28], eax
loc_004155b7:
    mov eax, dword ptr [ebp - 0x2c]
    add eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [d_00460594]
    jle loc_004155e3
    mov eax, dword ptr [ebp - 0x2c]
    add eax, dword ptr [ebp - 0x1c]
    sub eax, dword ptr [d_00460594]
    add dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 0x2c]
    add eax, dword ptr [ebp - 0x1c]
    sub eax, dword ptr [d_00460594]
    sub dword ptr [ebp - 0x1c], eax
loc_004155e3:
    mov eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [d_00460598]
    jle loc_00415600
    mov eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x18]
    sub eax, dword ptr [d_00460598]
    sub dword ptr [ebp - 0x18], eax
loc_00415600:
    cmp dword ptr [ebp - 0x1c], 0
    je loc_0041560c
    cmp dword ptr [ebp - 0x18], 0
    jne loc_00415611
loc_0041560c:
    jmp loc_004156c1
loc_00415611:
    mov ebx, 0x1c3
    mov edx, offset d_00459178
    mov eax, dword ptr [ebp - 0x1c]
    imul eax, dword ptr [ebp - 0x18]
    call sub_004184d0
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x34], eax
loc_00415636:
    dec dword ptr [ebp - 0x34]
    cmp dword ptr [ebp - 0x34], -1
    je loc_0041567c
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x30], eax
loc_00415645:
    dec dword ptr [ebp - 0x30]
    cmp dword ptr [ebp - 0x30], -1
    je loc_00415674
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax], 0
    je loc_00415660
    mov al, byte ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x38]
    mov byte ptr [edx], al
    jmp loc_00415666
loc_00415660:
    mov eax, dword ptr [ebp - 0x38]
    mov byte ptr [eax], 0
loc_00415666:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x38]
    inc dword ptr [ebp - 0x38]
    jmp loc_00415645
loc_00415674:
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 8], eax
    jmp loc_00415636
loc_0041567c:
    push dword ptr [d_00460bc8]
    mov eax, dword ptr [d_00460bc4]
    add eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [ebp - 0x28]
    imul edx, dword ptr [d_00460bc8]
    add eax, edx
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, dword ptr [ebp - 0x18]
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, dword ptr [ebp - 0x3c]
    push eax
    call sub_004428e4
    add esp, 0x18
    mov ebx, 0x1d0
    mov edx, offset d_00459178
    mov eax, dword ptr [ebp - 0x3c]
    call sub_0041863d
loc_004156c1:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_004156c7:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x40
    .byte 0x81,0xec,0x40,0x00,0x00,0x00
    mov dword ptr [ebp - 0x2c], eax
    mov dword ptr [ebp - 0x28], edx
    mov dword ptr [ebp - 0x24], ebx
    mov dword ptr [ebp - 0x20], ecx
    lea eax, [ebp - 0xc]
    push eax
    lea ecx, [ebp - 0x10]
    lea ebx, [ebp - 0x18]
    lea edx, [ebp - 0x1c]
    mov eax, dword ptr [ebp - 0x24]
    call sub_0041c5e0
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x10]
    sub dword ptr [ebp - 0x2c], eax
    mov eax, dword ptr [ebp - 0xc]
    sub dword ptr [ebp - 0x28], eax
    mov eax, dword ptr [ebp - 0x2c]
    add eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [d_0046058c]
    jle loc_004158c9
    mov eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [d_00460590]
    jle loc_004158c9
    mov eax, dword ptr [ebp - 0x2c]
    cmp eax, dword ptr [d_00460594]
    jge loc_004158c9
    mov eax, dword ptr [ebp - 0x28]
    cmp eax, dword ptr [d_00460598]
    jge loc_004158c9
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [ebp - 0x2c]
    cmp eax, dword ptr [d_0046058c]
    jge loc_00415785
    mov eax, dword ptr [d_0046058c]
    sub eax, dword ptr [ebp - 0x2c]
    add dword ptr [ebp - 8], eax
    mov eax, dword ptr [d_0046058c]
    sub eax, dword ptr [ebp - 0x2c]
    add dword ptr [ebp - 4], eax
    mov eax, dword ptr [d_0046058c]
    sub eax, dword ptr [ebp - 0x2c]
    sub dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [d_0046058c]
    mov dword ptr [ebp - 0x2c], eax
loc_00415785:
    mov eax, dword ptr [ebp - 0x28]
    cmp eax, dword ptr [d_00460590]
    jge loc_004157b2
    mov eax, dword ptr [d_00460590]
    sub eax, dword ptr [ebp - 0x28]
    imul eax, dword ptr [ebp - 0x14]
    add dword ptr [ebp - 8], eax
    mov eax, dword ptr [d_00460590]
    sub eax, dword ptr [ebp - 0x28]
    sub dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [d_00460590]
    mov dword ptr [ebp - 0x28], eax
loc_004157b2:
    mov eax, dword ptr [ebp - 0x2c]
    add eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [d_00460594]
    jle loc_004157de
    mov eax, dword ptr [ebp - 0x2c]
    add eax, dword ptr [ebp - 0x1c]
    sub eax, dword ptr [d_00460594]
    add dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 0x2c]
    add eax, dword ptr [ebp - 0x1c]
    sub eax, dword ptr [d_00460594]
    sub dword ptr [ebp - 0x1c], eax
loc_004157de:
    mov eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [d_00460598]
    jle loc_004157fb
    mov eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x18]
    sub eax, dword ptr [d_00460598]
    sub dword ptr [ebp - 0x18], eax
loc_004157fb:
    cmp dword ptr [ebp - 0x1c], 0
    je loc_00415807
    cmp dword ptr [ebp - 0x18], 0
    jne loc_0041580c
loc_00415807:
    jmp loc_004158c9
loc_0041580c:
    mov ebx, 0x203
    mov edx, offset d_00459178
    mov eax, dword ptr [ebp - 0x1c]
    imul eax, dword ptr [ebp - 0x18]
    call sub_004184d0
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp - 0x40]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x34], eax
loc_00415831:
    dec dword ptr [ebp - 0x34]
    cmp dword ptr [ebp - 0x34], -1
    je loc_00415884
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x30], eax
loc_00415840:
    dec dword ptr [ebp - 0x30]
    cmp dword ptr [ebp - 0x30], -1
    je loc_0041587c
    xor eax, eax
    mov edx, dword ptr [ebp - 8]
    mov al, byte ptr [edx]
    mov dword ptr [ebp - 0x38], eax
    cmp dword ptr [ebp - 0x38], 0
    je loc_00415868
    mov eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x38]
    mov dl, byte ptr [eax]
    mov eax, dword ptr [ebp - 0x3c]
    mov byte ptr [eax], dl
    jmp loc_0041586e
loc_00415868:
    mov eax, dword ptr [ebp - 0x3c]
    mov byte ptr [eax], 0
loc_0041586e:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x3c]
    inc dword ptr [ebp - 0x3c]
    jmp loc_00415840
loc_0041587c:
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 8], eax
    jmp loc_00415831
loc_00415884:
    push dword ptr [d_00460bc8]
    mov eax, dword ptr [d_00460bc4]
    add eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [ebp - 0x28]
    imul edx, dword ptr [d_00460bc8]
    add eax, edx
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, dword ptr [ebp - 0x18]
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, dword ptr [ebp - 0x40]
    push eax
    call sub_004428e4
    add esp, 0x18
    mov ebx, 0x214
    mov edx, offset d_00459178
    mov eax, dword ptr [ebp - 0x40]
    call sub_0041863d
loc_004158c9:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_004158cf:
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
    cmp dword ptr [ebp - 4], 0
    jge loc_004158f3
    mov dword ptr [ebp - 4], 0
loc_004158f3:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_00415900
    mov dword ptr [ebp - 4], 9
loc_00415900:
    mov eax, dword ptr [ebp - 4]
    shl eax, 2
    mov ecx, dword ptr [eax + d_00460564]
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00415a1c
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_00415920:
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
    mov eax, dword ptr [d_00460bbc]
    inc dword ptr [d_00460bbc]
    imul eax, eax, 0x18
    mov edx, dword ptr [d_00460bb0]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [d_00460bbc], 0x190
    jle loc_0041596e
    mov eax, offset d_004591d2
    call sub_0041284a
    mov eax, 0xa
    call sub_004128c9
loc_0041596e:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0xc], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
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
    mov eax, dword ptr [d_00460bbc]
    inc dword ptr [d_00460bbc]
    imul eax, eax, 0x18
    mov edx, dword ptr [d_00460bb0]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [d_00460bbc], 0x190
    jle loc_004159e9
    mov eax, offset d_004591d2
    call sub_0041284a
    mov eax, 0xa
    call sub_004128c9
loc_004159e9:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0xc], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x10], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_00415a1c:
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
    mov eax, dword ptr [d_00460bbc]
    inc dword ptr [d_00460bbc]
    imul eax, eax, 0x18
    mov edx, dword ptr [d_00460bb0]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [d_00460bbc], 0x190
    jle loc_00415a6c
    mov eax, offset d_004591d2
    call sub_0041284a
    mov eax, 0xa
    call sub_004128c9
loc_00415a6c:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 2
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0xc], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x14], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_00415a9f:
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
    mov eax, dword ptr [d_00460bbc]
    inc dword ptr [d_00460bbc]
    imul eax, eax, 0x18
    mov edx, dword ptr [d_00460bb0]
    add edx, eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [d_00460bbc], 0x190
    jle loc_00415aef
    mov eax, offset d_004591d2
    call sub_0041284a
    mov eax, 0xa
    call sub_004128c9
loc_00415aef:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 3
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0xc], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x10], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_00415b22:
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
    mov eax, dword ptr [d_00460bb0]
    mov dword ptr [ebp - 4], eax
loc_00415b3f:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00460bbc]
    jl loc_00415b6e
    jmp loc_00415c0c
loc_00415b4f:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x18
    jmp loc_00415b3f
ptr_00415b5e:
    .long ptr_00415b93
    .long ptr_00415bac
    .long ptr_00415bcb
    .long ptr_00415bea
loc_00415b6e:
    inc dword ptr [d_004642a8]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 3
    ja loc_00415c07
    mov eax, dword ptr [ebp - 0xc]
    shl eax, 2
    jmp dword ptr cs:[eax + ptr_00415b5e]
ptr_00415b93:
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    call sub_0041537f
    jmp loc_00415c07
ptr_00415bac:
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    call sub_004154cc
    jmp loc_00415c07
ptr_00415bcb:
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 0x14]
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    call sub_004156c7
    jmp loc_00415c07
ptr_00415bea:
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 4]
    mov ebx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    call sub_004158cf
loc_00415c07:
    jmp loc_00415b4f
loc_00415c0c:
    mov dword ptr [d_00460bbc], 0
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00415c1f:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    inc dword ptr [d_004642a4]
    call sub_00415b22
    mov eax, dword ptr [d_00464ae4]
    call sub_0043d454
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
    mov eax, offset d_0046059c
    call sub_0042c534
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
    sub esp, 0x304
    mov dword ptr [ebp - 4], eax
    mov ebx, 0x300
    xor edx, edx
    lea eax, [ebp - 0x304]
    call sub_00451940
    lea eax, [ebp - 0x304]
    call sub_0042c534
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00415ca4:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_00460bcc], 0
    je loc_00415cdc
    mov eax, dword ptr [d_00464a70]
    imul eax, dword ptr [d_00464a6c]
    mov edx, dword ptr [d_00460bcc]
    mov ecx, dword ptr [d_00460bc4]
    mov ebx, eax
    mov eax, ecx
    call sub_00451dc4
loc_00415cdc:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00415ce3:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_00464a70]
    imul eax, dword ptr [d_00464a6c]
    xor edx, edx
    mov ecx, dword ptr [d_00460bc4]
    mov ebx, eax
    mov eax, ecx
    call sub_00451940
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
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [d_00460bcc], 0
    je loc_00415d93
    mov eax, dword ptr [d_00464a70]
    imul eax, dword ptr [d_00464a6c]
    xor edx, edx
    mov ecx, dword ptr [d_00460bcc]
    mov ebx, eax
    mov eax, ecx
    call sub_00451940
    lea ebx, [ebp - 4]
    lea edx, [ebp - 8]
    mov eax, dword ptr [ebp - 0x10]
    call sub_004150f0
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    je loc_00415d93
    mov eax, dword ptr [d_00464a70]
    imul eax, dword ptr [d_00464a6c]
    mov edx, dword ptr [ebp - 0xc]
    mov ecx, dword ptr [d_00460bcc]
    mov ebx, eax
    mov eax, ecx
    call sub_00451dc4
    mov ebx, 0x2a9
    mov edx, offset d_00459178
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041863d
loc_00415d93:
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
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov dword ptr [d_0046058c], 0
    mov dword ptr [d_00460590], 0
    mov eax, dword ptr [d_00464a70]
    mov dword ptr [d_00460594], eax
    mov eax, dword ptr [d_00464a6c]
    mov dword ptr [d_00460598], eax
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00415dd9:
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
    mov edi, offset d_0046058c
    mov esi, dword ptr [ebp - 4]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    mov eax, dword ptr [d_00460594]
    cmp eax, dword ptr [d_0046058c]
    jge loc_00415e0d
    mov eax, dword ptr [d_0046058c]
    mov dword ptr [d_00460594], eax
loc_00415e0d:
    mov eax, dword ptr [d_00460598]
    cmp eax, dword ptr [d_00460590]
    jge loc_00415e24
    mov eax, dword ptr [d_00460590]
    mov dword ptr [d_00460598], eax
loc_00415e24:
    cmp dword ptr [d_0046058c], 0
    jge loc_00415e37
    mov dword ptr [d_0046058c], 0
loc_00415e37:
    cmp dword ptr [d_00460590], 0
    jge loc_00415e4a
    mov dword ptr [d_00460590], 0
loc_00415e4a:
    mov eax, dword ptr [d_00460594]
    cmp eax, dword ptr [d_00464a70]
    jle loc_00415e61
    mov eax, dword ptr [d_00464a70]
    mov dword ptr [d_00460594], eax
loc_00415e61:
    mov eax, dword ptr [d_00460598]
    cmp eax, dword ptr [d_00464a6c]
    jle loc_00415e78
    mov eax, dword ptr [d_00464a6c]
    mov dword ptr [d_00460598], eax
loc_00415e78:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00415e81:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x74
    .byte 0x81,0xec,0x74,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 4], ebx
    mov dword ptr [ebp - 8], ecx
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, offset d_004591de
    push eax
    lea eax, [ebp - 0x74]
    push eax
    call sub_004518d0
    add esp, 0xc
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, 0x3c
    lea edx, [ebp - 0x74]
    mov eax, dword ptr [d_00460b9c]
    call sub_0043cd44
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_00415ed1:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x68
    .byte 0x81,0xec,0x68,0x00,0x00,0x00
    cmp dword ptr [d_00460ba4], 0
    je loc_00416043
    mov eax, dword ptr [d_00460ba0]
    shl eax, 2
    mov eax, dword ptr [eax + d_00460564]
    mov dword ptr [ebp - 4], eax
    push dword ptr [d_00460ba0]
    push dword ptr [d_00460ba0]
    mov eax, offset d_004591e1
    push eax
    lea eax, [ebp - 0x68]
    push eax
    call sub_004518d0
    add esp, 0x10
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0xa
    mov ecx, 0xa
    mov ebx, 0xc8
    lea edx, [ebp - 0x68]
    mov eax, dword ptr [d_00460b9c]
    call sub_0043cd44
    xor ecx, ecx
    mov cl, byte ptr [d_0049d0da]
    mov ebx, dword ptr [d_00460ba0]
    mov bl, byte ptr [ebx + d_00460bd0]
    and ebx, 0xff
    mov edx, 0x28
    mov eax, 0x32
    call sub_00415e81
    xor ecx, ecx
    mov cl, byte ptr [d_00497f7a]
    mov eax, dword ptr [d_00460ba0]
    xor ebx, ebx
    mov bl, byte ptr [eax + d_00460bda]
    mov edx, 0x50
    mov eax, 0x32
    call sub_00415e81
    xor ecx, ecx
    mov cl, byte ptr [d_00497f8f]
    mov ebx, dword ptr [d_00460ba0]
    mov bl, byte ptr [ebx + d_00460be4]
    and ebx, 0xff
    mov edx, 0x78
    mov eax, 0x32
    call sub_00415e81
    mov eax, dword ptr [d_00460ba0]
    xor edx, edx
    mov dl, byte ptr [eax + d_00460bd0]
    imul edx, edx, 0x1f
    mov ebx, 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    shl eax, 0xa
    mov ebx, eax
    mov eax, dword ptr [d_00460ba0]
    xor edx, edx
    mov dl, byte ptr [eax + d_00460bda]
    imul edx, edx, 0x1f
    mov ecx, 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv ecx
    shl eax, 5
    or ebx, eax
    mov eax, dword ptr [d_00460ba0]
    xor edx, edx
    mov dl, byte ptr [eax + d_00460be4]
    imul edx, edx, 0x1f
    mov ecx, 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv ecx
    or eax, ebx
    mov al, byte ptr [eax + d_00495390]
    and eax, 0xff
    push eax
    push 0x32
    mov ecx, 0x32
    mov ebx, 0x3c
    mov edx, 0xc8
    mov eax, dword ptr [d_00460b9c]
    call sub_0043d1c0
    mov eax, dword ptr [d_00460b9c]
    call sub_0043d454
loc_00416043:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041604c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    push 1
    mov eax, dword ptr [d_00460ba0]
    xor ecx, ecx
    mov cl, byte ptr [eax + d_00460be4]
    mov eax, dword ptr [d_00460ba0]
    xor ebx, ebx
    mov bl, byte ptr [eax + d_00460bda]
    mov eax, dword ptr [d_00460ba0]
    xor edx, edx
    mov dl, byte ptr [eax + d_00460bd0]
    mov eax, dword ptr [d_00460ba0]
    call sub_00414a65
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00416094:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_00460ba0]
    cmp byte ptr [eax + d_00460bd0], 5
    jbe loc_004160be
    mov eax, dword ptr [d_00460ba0]
    sub byte ptr [eax + d_00460bd0], 5
    jmp loc_004160ca
loc_004160be:
    mov eax, dword ptr [d_00460ba0]
    mov byte ptr [eax + d_00460bd0], 0
loc_004160ca:
    call sub_0041604c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_004160d6:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_00460ba0]
    cmp byte ptr [eax + d_00460bd0], 0x64
    jae loc_00416100
    mov eax, dword ptr [d_00460ba0]
    add byte ptr [eax + d_00460bd0], 5
    jmp loc_0041610c
loc_00416100:
    mov eax, dword ptr [d_00460ba0]
    mov byte ptr [eax + d_00460bd0], 0x64
loc_0041610c:
    call sub_0041604c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00416118:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_00460ba0]
    cmp byte ptr [eax + d_00460bda], 5
    jbe loc_00416142
    mov eax, dword ptr [d_00460ba0]
    sub byte ptr [eax + d_00460bda], 5
    jmp loc_0041614e
loc_00416142:
    mov eax, dword ptr [d_00460ba0]
    mov byte ptr [eax + d_00460bda], 0
loc_0041614e:
    call sub_0041604c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041615a:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_00460ba0]
    cmp byte ptr [eax + d_00460bda], 0x64
    jae loc_00416184
    mov eax, dword ptr [d_00460ba0]
    add byte ptr [eax + d_00460bda], 5
    jmp loc_00416190
loc_00416184:
    mov eax, dword ptr [d_00460ba0]
    mov byte ptr [eax + d_00460bda], 0x64
loc_00416190:
    call sub_0041604c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041619c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_00460ba0]
    cmp byte ptr [eax + d_00460be4], 0
    je loc_004161c6
    mov eax, dword ptr [d_00460ba0]
    sub byte ptr [eax + d_00460be4], 5
    jmp loc_004161d2
loc_004161c6:
    mov eax, dword ptr [d_00460ba0]
    mov byte ptr [eax + d_00460be4], 0
loc_004161d2:
    call sub_0041604c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_004161de:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_00460ba0]
    cmp byte ptr [eax + d_00460be4], 0x64
    jae loc_00416208
    mov eax, dword ptr [d_00460ba0]
    add byte ptr [eax + d_00460be4], 5
    jmp loc_00416214
loc_00416208:
    mov eax, dword ptr [d_00460ba0]
    mov byte ptr [eax + d_00460be4], 0x64
loc_00416214:
    call sub_0041604c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00416220:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    dec dword ptr [d_00460ba0]
    cmp dword ptr [d_00460ba0], 0
    jge loc_00416247
    mov dword ptr [d_00460ba0], 9
loc_00416247:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041624e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    inc dword ptr [d_00460ba0]
    cmp dword ptr [d_00460ba0], 0xa
    jl loc_00416275
    mov dword ptr [d_00460ba0], 0
loc_00416275:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041627c:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_00460ba0]
    lea eax, [eax + eax*4]
    add eax, 0xc8
    call sub_00412135
    mov edx, dword ptr [d_00460ba0]
    mov byte ptr [edx + d_00460bd0], al
    mov eax, dword ptr [d_00460ba0]
    lea eax, [eax + eax*4]
    add eax, 0xc9
    call sub_00412135
    mov edx, dword ptr [d_00460ba0]
    mov byte ptr [edx + d_00460bda], al
    mov eax, dword ptr [d_00460ba0]
    lea eax, [eax + eax*4]
    add eax, 0xca
    call sub_00412135
    mov edx, dword ptr [d_00460ba0]
    mov byte ptr [edx + d_00460be4], al
    call sub_0041604c
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004162f0:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [d_00460ba4], 0
    jne loc_00416588
    mov dword ptr [d_00460ba4], 1
    push 0x84
    xor eax, eax
    mov al, byte ptr [d_00497cda]
    push eax
    mov ecx, 0x100
    mov ebx, 0x12c
    mov edx, 0x28
    mov eax, 0x28
    call sub_0043c734
    mov dword ptr [d_00460b9c], eax
    mov eax, dword ptr [d_00460b9c]
    call sub_0043ca60
    push 0
    mov eax, offset d_004591fa
    push eax
    push 0
    push 0
    push 0
    xor ecx, ecx
    mov ebx, 0x28
    mov edx, 0xa
    mov eax, dword ptr [d_00460b9c]
    call sub_00432298
    mov dword ptr [ebp - 4], eax
    mov eax, offset ptr_004160d6
    push eax
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_004326e0
    push 0
    mov eax, offset d_004591fc
    push eax
    push 0
    push 0
    push 0
    xor ecx, ecx
    mov ebx, 0x28
    mov edx, 0x5a
    mov eax, dword ptr [d_00460b9c]
    call sub_00432298
    mov dword ptr [ebp - 4], eax
    mov eax, offset ptr_00416094
    push eax
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_004326e0
    push 0
    mov eax, offset d_004591fa
    push eax
    push 0
    push 0
    push 0
    xor ecx, ecx
    mov ebx, 0x50
    mov edx, 0xa
    mov eax, dword ptr [d_00460b9c]
    call sub_00432298
    mov dword ptr [ebp - 4], eax
    mov eax, offset ptr_0041615a
    push eax
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_004326e0
    push 0
    mov eax, offset d_004591fc
    push eax
    push 0
    push 0
    push 0
    xor ecx, ecx
    mov ebx, 0x50
    mov edx, 0x5a
    mov eax, dword ptr [d_00460b9c]
    call sub_00432298
    mov dword ptr [ebp - 4], eax
    mov eax, offset ptr_00416118
    push eax
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_004326e0
    push 0
    mov eax, offset d_004591fa
    push eax
    push 0
    push 0
    push 0
    xor ecx, ecx
    mov ebx, 0x78
    mov edx, 0xa
    mov eax, dword ptr [d_00460b9c]
    call sub_00432298
    mov dword ptr [ebp - 4], eax
    mov eax, offset ptr_004161de
    push eax
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_004326e0
    push 0
    mov eax, offset d_004591fc
    push eax
    push 0
    push 0
    push 0
    xor ecx, ecx
    mov ebx, 0x78
    mov edx, 0x5a
    mov eax, dword ptr [d_00460b9c]
    call sub_00432298
    mov dword ptr [ebp - 4], eax
    mov eax, offset ptr_0041619c
    push eax
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_004326e0
    push 0
    mov eax, offset d_004591fa
    push eax
    push 0
    push 0
    push 0
    xor ecx, ecx
    mov ebx, 0xe2
    mov edx, 0xa
    mov eax, dword ptr [d_00460b9c]
    call sub_00432298
    mov dword ptr [ebp - 4], eax
    mov eax, offset ptr_0041624e
    push eax
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_004326e0
    push 0
    mov eax, offset d_004591fc
    push eax
    push 0
    push 0
    push 0
    xor ecx, ecx
    mov ebx, 0xe2
    mov edx, 0x28
    mov eax, dword ptr [d_00460b9c]
    call sub_00432298
    mov dword ptr [ebp - 4], eax
    mov eax, offset ptr_00416220
    push eax
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_004326e0
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    push eax
    push 0xe2
    mov ecx, 0x46
    mov ebx, 0xc8
    mov edx, offset d_004591fe
    mov eax, dword ptr [d_00460b9c]
    call sub_0043cd44
    push 0
    mov eax, offset d_00459214
    push eax
    push 0
    push 0
    push 0
    xor ecx, ecx
    mov ebx, 0xba
    mov edx, 0xa
    mov eax, dword ptr [d_00460b9c]
    call sub_00432298
    mov dword ptr [ebp - 4], eax
    mov eax, offset ptr_0041627c
    push eax
    xor ecx, ecx
    xor ebx, ebx
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_004326e0
    call sub_00431178
loc_00416588:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00416591:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_00460ba4], 0
    je loc_004165cb
    mov dword ptr [d_00460ba4], 0
    mov eax, dword ptr [d_00460b9c]
    call sub_0043c960
    mov dword ptr [d_00460b9c], 0
    call sub_00431360
loc_004165cb:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004165d2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_00460ba4], 0
    je loc_004165f0
    call sub_00416591
    jmp loc_004165f5
loc_004165f0:
    call sub_004162f0
loc_004165f5:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004165fc:
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
    cmp dword ptr [d_00460bc0], 0
    je loc_00416634
    mov ebx, 0x371
    mov edx, offset d_00459178
    mov eax, dword ptr [d_00460bc0]
    call sub_0041863d
    mov dword ptr [d_00460bc0], 0
loc_00416634:
    lea ebx, [ebp - 4]
    lea edx, [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_004150f0
    mov dword ptr [d_00460bc0], eax
    cmp dword ptr [d_00460bc0], 0
    jne loc_00416662
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_00416662:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00464a70]
    jne loc_00416678
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00464a6c]
    je loc_00416694
loc_00416678:
    mov eax, offset d_00459229
    call sub_0041284a
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_00416694:
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
    mov eax, dword ptr [d_00460bc0]
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
sub_004166bf:
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
    cmp dword ptr [d_00460bc0], 0
    je loc_00416729
    push dword ptr [d_00464a70]
    mov eax, dword ptr [d_00460bc4]
    mov edx, dword ptr [ebp - 0x10]
    add edx, eax
    mov eax, dword ptr [ebp - 0xc]
    imul eax, dword ptr [d_00464a70]
    add eax, edx
    push eax
    push dword ptr [d_00464a70]
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [d_00460bc0]
    mov edx, dword ptr [ebp - 0x10]
    add edx, eax
    mov eax, dword ptr [ebp - 0xc]
    imul eax, dword ptr [d_00464a70]
    add eax, edx
    push eax
    call sub_004428b4
    add esp, 0x18
loc_00416729:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0041672f:
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
    cmp dword ptr [d_00464964], 0
    je loc_0041675e
    mov eax, dword ptr [ebp - 8]
    call sub_004223e7
    call sub_004141f8
    mov dword ptr [ebp - 4], eax
    jmp loc_0041685b
loc_0041675e:
    mov edx, dword ptr [ebp - 8]
    mov dl, byte ptr [edx + d_00460bd0]
    and edx, 0xff
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    cmp eax, 0x1f
    jge loc_0041679e
    mov edx, dword ptr [ebp - 8]
    mov dl, byte ptr [edx + d_00460bd0]
    and edx, 0xff
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x1c], eax
    jmp loc_004167a5
loc_0041679e:
    mov dword ptr [ebp - 0x1c], 0x1f
loc_004167a5:
    mov edx, dword ptr [ebp - 0x1c]
    shl edx, 0xa
    mov dword ptr [ebp - 0x18], edx
    mov edx, dword ptr [ebp - 8]
    mov dl, byte ptr [edx + d_00460bda]
    and edx, 0xff
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    cmp eax, 0x1f
    jge loc_004167ee
    mov edx, dword ptr [ebp - 8]
    mov dl, byte ptr [edx + d_00460bda]
    and edx, 0xff
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x14], eax
    jmp loc_004167f5
loc_004167ee:
    mov dword ptr [ebp - 0x14], 0x1f
loc_004167f5:
    mov eax, dword ptr [ebp - 0x14]
    shl eax, 5
    mov edx, dword ptr [ebp - 0x18]
    or edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov edx, dword ptr [ebp - 8]
    mov dl, byte ptr [edx + d_00460be4]
    and edx, 0xff
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    cmp eax, 0x1f
    jge loc_00416843
    mov edx, dword ptr [ebp - 8]
    mov dl, byte ptr [edx + d_00460be4]
    and edx, 0xff
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0xc], eax
    jmp loc_0041684a
loc_00416843:
    mov dword ptr [ebp - 0xc], 0x1f
loc_0041684a:
    mov edx, dword ptr [ebp - 0x10]
    or edx, dword ptr [ebp - 0xc]
    xor eax, eax
    mov al, byte ptr [edx + d_00495390]
    mov dword ptr [ebp - 4], eax
loc_0041685b:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00416867:
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
    cmp dword ptr [d_00464964], 0
    je loc_0041688d
    xor eax, eax
    mov al, byte ptr [d_00495390]
    mov dword ptr [ebp - 4], eax
    jmp loc_004168a9
loc_0041688d:
    cmp dword ptr [ebp - 8], 1
    jne loc_0041689f
    xor eax, eax
    mov al, byte ptr [d_0049d38f]
    mov dword ptr [ebp - 4], eax
    jmp loc_004168a9
loc_0041689f:
    xor eax, eax
    mov al, byte ptr [d_00495390]
    mov dword ptr [ebp - 4], eax
loc_004168a9:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004168b5:
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
    mov eax, dword ptr [ebp + 0x10]
    push eax
    mov ecx, dword ptr [d_00460bc8]
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [d_00460bc4]
    mov esi, dword ptr [ebp - 0x10]
    add esi, eax
    mov eax, dword ptr [ebp - 0xc]
    imul eax, dword ptr [d_00460bc8]
    add eax, esi
    call sub_00442a5c
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 4
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
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 8], eax
    call dword ptr [d_0045c37c]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp + 0x18]
    push eax
    mov ecx, dword ptr [ebp - 4]
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp + 0x10]
    mov eax, dword ptr [ebp - 0xc]
    call sub_004168b5
    mov eax, dword ptr [ebp + 0x14]
    or eax, 0x2000000
    push eax
    mov eax, dword ptr [ebp + 0x10]
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_0043cd44
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0xc
sub_0041696c:
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x84
    mov dword ptr [ebp - 0x1c], eax
    mov dword ptr [ebp - 0x18], edx
    mov dword ptr [ebp - 0x14], ebx
    mov dword ptr [ebp - 0x10], ecx
    mov eax, dword ptr [ebp - 0x18]
    call dword ptr [d_0045c380]
    cmp eax, dword ptr [ebp - 0x14]
    jge loc_0041699f
    mov eax, dword ptr [ebp - 0x18]
    call dword ptr [d_0045c380]
    mov dword ptr [ebp - 0x20], eax
    jmp loc_004169a5
loc_0041699f:
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 0x20], eax
loc_004169a5:
    mov eax, dword ptr [ebp - 0x20]
    add eax, 2
    mov dword ptr [ebp - 0xc], eax
    call dword ptr [d_0045c37c]
    add eax, 4
    mov dword ptr [ebp - 8], eax
    mov ebx, 0x3bd
    mov edx, offset d_00459178
    mov eax, dword ptr [ebp - 0xc]
    imul eax, dword ptr [ebp - 8]
    call sub_004184d0
    mov dword ptr [ebp - 4], eax
    mov ebx, dword ptr [ebp - 0xc]
    imul ebx, dword ptr [ebp - 8]
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_00451940
    mov eax, dword ptr [ebp + 0x18]
    or eax, 0x2000000
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0xc]
    sub ebx, 2
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 4]
    call dword ptr [d_0045c378]
    mov eax, dword ptr [ebp + 0x18]
    or eax, 0x2000000
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0xc]
    sub ebx, 2
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0xc]
    add eax, eax
    add eax, dword ptr [ebp - 4]
    add eax, 2
    call dword ptr [d_0045c378]
    mov eax, dword ptr [ebp + 0x18]
    or eax, 0x2000000
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0xc]
    sub ebx, 2
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0xc]
    add eax, eax
    add eax, dword ptr [ebp - 4]
    call dword ptr [d_0045c378]
    mov eax, dword ptr [ebp + 0x18]
    or eax, 0x2000000
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0xc]
    sub ebx, 2
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 4]
    add eax, 2
    call dword ptr [d_0045c378]
    mov eax, dword ptr [ebp + 0x14]
    or eax, 0x2000000
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0xc]
    sub ebx, 2
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0xc]
    inc eax
    call dword ptr [d_0045c378]
    mov edx, dword ptr [ebp - 0x10]
    add edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0043de0c
    cmp edx, eax
    jg loc_00416ab2
    mov edx, dword ptr [ebp + 0x10]
    add edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0043de28
    cmp edx, eax
    jle loc_00416aec
loc_00416ab2:
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp + 0x10]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, offset d_0045924e
    push eax
    lea eax, [ebp - 0x84]
    push eax
    call sub_004518d0
    add esp, 0x18
    lea eax, [ebp - 0x84]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_00416aec:
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0043de0c
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0043de0c
    mov edx, dword ptr [ebp + 0x10]
    imul edx, eax
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0043dda4
    add eax, edx
    add eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 4]
    push eax
    call sub_004428e4
    add esp, 0x18
    mov ebx, 0x3ce
    mov edx, offset d_00459178
    mov eax, dword ptr [ebp - 4]
    call sub_0041863d
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0xc
sub_00416b43:
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x94
    mov dword ptr [ebp - 0x24], eax
    mov dword ptr [ebp - 0x20], edx
    mov dword ptr [ebp - 0x2c], ebx
    mov dword ptr [ebp - 0x28], ecx
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 4], 0
    mov ebx, 3
    mov eax, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x20]
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x1c], eax
    mov ebx, 3
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [ebp - 0x2c]
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x4c], eax
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x48], eax
    mov eax, dword ptr [ebp - 0x1c]
    add eax, eax
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [ebp - 0x18]
    add eax, eax
    mov dword ptr [ebp - 0x40], eax
    mov dword ptr [ebp - 0x14], 0
loc_00416bb7:
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0x14]
    jg loc_00416bcf
    jmp loc_00416c92
loc_00416bc7:
    mov eax, dword ptr [ebp - 0x1c]
    add dword ptr [ebp - 0x14], eax
    jmp loc_00416bb7
loc_00416bcf:
    mov dword ptr [ebp - 0x10], 0
loc_00416bd6:
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 0x10]
    jg loc_00416bee
    jmp loc_00416c8d
loc_00416be6:
    mov eax, dword ptr [ebp - 0x18]
    add dword ptr [ebp - 0x10], eax
    jmp loc_00416bd6
loc_00416bee:
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x1c]
    add edx, eax
    mov dword ptr [ebp - 0x34], edx
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x18]
    add edx, eax
    mov dword ptr [ebp - 0x30], edx
    mov eax, dword ptr [ebp - 0x34]
    cmp eax, dword ptr [ebp + 0x10]
    jl loc_00416c2f
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x54], eax
    jmp loc_00416c38
loc_00416c2f:
    mov eax, dword ptr [ebp - 0x34]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x54], eax
loc_00416c38:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp + 0x14]
    jl loc_00416c4b
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x50], eax
    jmp loc_00416c54
loc_00416c4b:
    mov eax, dword ptr [ebp - 0x30]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x50], eax
loc_00416c54:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    imul eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x3c]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, dword ptr [ebp - 0x50]
    push eax
    mov eax, dword ptr [ebp - 0x54]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    imul eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x4c]
    push eax
    call sub_004428b4
    add esp, 0x18
    jmp loc_00416be6
loc_00416c8d:
    jmp loc_00416bc7
loc_00416c92:
    mov dword ptr [ebp - 0x14], 0
loc_00416c99:
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0x14]
    jg loc_00416cb1
    jmp loc_00416e14
loc_00416ca9:
    mov eax, dword ptr [ebp - 0x1c]
    add dword ptr [ebp - 0x14], eax
    jmp loc_00416c99
loc_00416cb1:
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x4c], eax
    mov dword ptr [ebp - 0x48], 0
    mov eax, dword ptr [ebp - 0x1c]
    add eax, eax
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x1c]
    add edx, eax
    mov dword ptr [ebp - 0x34], edx
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x34]
    cmp eax, dword ptr [ebp + 0x10]
    jl loc_00416d05
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x5c], eax
    jmp loc_00416d0e
loc_00416d05:
    mov eax, dword ptr [ebp - 0x34]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x5c], eax
loc_00416d0e:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp + 0x14]
    jl loc_00416d21
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x58], eax
    jmp loc_00416d2a
loc_00416d21:
    mov eax, dword ptr [ebp - 0x30]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x58], eax
loc_00416d2a:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    imul eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x3c]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, dword ptr [ebp - 0x58]
    push eax
    mov eax, dword ptr [ebp - 0x5c]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    imul eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x4c]
    push eax
    call sub_004428b4
    add esp, 0x18
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x4c], eax
    mov eax, dword ptr [ebp - 0x18]
    add eax, eax
    mov dword ptr [ebp - 0x48], eax
    mov eax, dword ptr [ebp - 0x1c]
    add eax, eax
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [ebp - 0x18]
    lea eax, [eax + eax*2]
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x1c]
    add edx, eax
    mov dword ptr [ebp - 0x34], edx
    mov eax, dword ptr [ebp + 0x14]
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x34]
    cmp eax, dword ptr [ebp + 0x10]
    jl loc_00416db6
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x64], eax
    jmp loc_00416dbf
loc_00416db6:
    mov eax, dword ptr [ebp - 0x34]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x64], eax
loc_00416dbf:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp + 0x14]
    jl loc_00416dd2
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x60], eax
    jmp loc_00416ddb
loc_00416dd2:
    mov eax, dword ptr [ebp - 0x30]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x60], eax
loc_00416ddb:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    imul eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x3c]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, dword ptr [ebp - 0x60]
    push eax
    mov eax, dword ptr [ebp - 0x64]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    imul eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x4c]
    push eax
    call sub_004428b4
    add esp, 0x18
    jmp loc_00416ca9
loc_00416e14:
    mov dword ptr [ebp - 0x10], 0
loc_00416e1b:
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 0x10]
    jg loc_00416e33
    jmp loc_00416f96
loc_00416e2b:
    mov eax, dword ptr [ebp - 0x18]
    add dword ptr [ebp - 0x10], eax
    jmp loc_00416e1b
loc_00416e33:
    mov dword ptr [ebp - 0x4c], 0
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x48], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [ebp - 0x18]
    add eax, eax
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x34], eax
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x18]
    add edx, eax
    mov dword ptr [ebp - 0x30], edx
    mov eax, dword ptr [ebp - 0x34]
    cmp eax, dword ptr [ebp + 0x10]
    jl loc_00416e87
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x6c], eax
    jmp loc_00416e90
loc_00416e87:
    mov eax, dword ptr [ebp - 0x34]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x6c], eax
loc_00416e90:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp + 0x14]
    jl loc_00416ea3
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x68], eax
    jmp loc_00416eac
loc_00416ea3:
    mov eax, dword ptr [ebp - 0x30]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x68], eax
loc_00416eac:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    imul eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x3c]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, dword ptr [ebp - 0x68]
    push eax
    mov eax, dword ptr [ebp - 0x6c]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    imul eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x4c]
    push eax
    call sub_004428b4
    add esp, 0x18
    mov eax, dword ptr [ebp - 0x1c]
    add eax, eax
    mov dword ptr [ebp - 0x4c], eax
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x48], eax
    mov eax, dword ptr [ebp - 0x1c]
    lea eax, [eax + eax*2]
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [ebp - 0x18]
    add eax, eax
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [ebp - 0x34], eax
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x18]
    add edx, eax
    mov dword ptr [ebp - 0x30], edx
    mov eax, dword ptr [ebp - 0x34]
    cmp eax, dword ptr [ebp + 0x10]
    jl loc_00416f38
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x74], eax
    jmp loc_00416f41
loc_00416f38:
    mov eax, dword ptr [ebp - 0x34]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x74], eax
loc_00416f41:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp + 0x14]
    jl loc_00416f54
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x70], eax
    jmp loc_00416f5d
loc_00416f54:
    mov eax, dword ptr [ebp - 0x30]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x70], eax
loc_00416f5d:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    imul eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x3c]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, dword ptr [ebp - 0x70]
    push eax
    mov eax, dword ptr [ebp - 0x74]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    imul eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x4c]
    push eax
    call sub_004428b4
    add esp, 0x18
    jmp loc_00416e2b
loc_00416f96:
    mov dword ptr [ebp - 0x4c], 0
    mov dword ptr [ebp - 0x48], 0
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x34], eax
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x34]
    cmp eax, dword ptr [ebp + 0x10]
    jl loc_00416fe1
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x7c], eax
    jmp loc_00416fea
loc_00416fe1:
    mov eax, dword ptr [ebp - 0x34]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x7c], eax
loc_00416fea:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp + 0x14]
    jl loc_00416ffd
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x78], eax
    jmp loc_00417006
loc_00416ffd:
    mov eax, dword ptr [ebp - 0x30]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x78], eax
loc_00417006:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    imul eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x3c]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, dword ptr [ebp - 0x78]
    push eax
    mov eax, dword ptr [ebp - 0x7c]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    imul eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x4c]
    push eax
    call sub_004428b4
    add esp, 0x18
    mov eax, dword ptr [ebp - 0x1c]
    add eax, eax
    mov dword ptr [ebp - 0x4c], eax
    mov dword ptr [ebp - 0x48], 0
    mov eax, dword ptr [ebp - 0x1c]
    lea eax, [eax + eax*2]
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [ebp - 0x34], eax
    mov eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x34]
    cmp eax, dword ptr [ebp + 0x10]
    jl loc_0041708c
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x84], eax
    jmp loc_00417098
loc_0041708c:
    mov eax, dword ptr [ebp - 0x34]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x84], eax
loc_00417098:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp + 0x14]
    jl loc_004170ab
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x80], eax
    jmp loc_004170b4
loc_004170ab:
    mov eax, dword ptr [ebp - 0x30]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x80], eax
loc_004170b4:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    imul eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x3c]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, dword ptr [ebp - 0x80]
    push eax
    mov eax, dword ptr [ebp - 0x84]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    imul eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x4c]
    push eax
    call sub_004428b4
    add esp, 0x18
    mov dword ptr [ebp - 0x4c], 0
    mov eax, dword ptr [ebp - 0x18]
    add eax, eax
    mov dword ptr [ebp - 0x48], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [ebp - 0x18]
    lea eax, [eax + eax*2]
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x34], eax
    mov eax, dword ptr [ebp + 0x14]
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x34]
    cmp eax, dword ptr [ebp + 0x10]
    jl loc_0041713d
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x8c], eax
    jmp loc_00417149
loc_0041713d:
    mov eax, dword ptr [ebp - 0x34]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x8c], eax
loc_00417149:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp + 0x14]
    jl loc_0041715f
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x88], eax
    jmp loc_0041716b
loc_0041715f:
    mov eax, dword ptr [ebp - 0x30]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x88], eax
loc_0041716b:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    imul eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x3c]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, dword ptr [ebp - 0x88]
    push eax
    mov eax, dword ptr [ebp - 0x8c]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    imul eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x4c]
    push eax
    call sub_004428b4
    add esp, 0x18
    mov eax, dword ptr [ebp - 0x1c]
    add eax, eax
    mov dword ptr [ebp - 0x4c], eax
    mov eax, dword ptr [ebp - 0x18]
    add eax, eax
    mov dword ptr [ebp - 0x48], eax
    mov eax, dword ptr [ebp - 0x1c]
    lea eax, [eax + eax*2]
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [ebp - 0x18]
    lea eax, [eax + eax*2]
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [ebp - 0x34], eax
    mov eax, dword ptr [ebp + 0x14]
    mov dword ptr [ebp - 0x30], eax
    mov eax, dword ptr [ebp - 0x34]
    cmp eax, dword ptr [ebp + 0x10]
    jl loc_004171fb
    mov eax, dword ptr [ebp + 0x10]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x94], eax
    jmp loc_00417207
loc_004171fb:
    mov eax, dword ptr [ebp - 0x34]
    sub eax, dword ptr [ebp - 0x3c]
    mov dword ptr [ebp - 0x94], eax
loc_00417207:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp + 0x14]
    jl loc_0041721d
    mov eax, dword ptr [ebp + 0x14]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x90], eax
    jmp loc_00417229
loc_0041721d:
    mov eax, dword ptr [ebp - 0x30]
    sub eax, dword ptr [ebp - 0x38]
    mov dword ptr [ebp - 0x90], eax
loc_00417229:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    imul eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x28]
    add eax, dword ptr [ebp - 0x3c]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    push eax
    mov eax, dword ptr [ebp - 0x90]
    push eax
    mov eax, dword ptr [ebp - 0x94]
    push eax
    mov eax, dword ptr [ebp - 0x48]
    imul eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x24]
    add eax, dword ptr [ebp - 0x4c]
    push eax
    call sub_004428b4
    add esp, 0x18
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 8
sub_0041726b:
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
    call sub_0043de28
    push eax
    mov eax, dword ptr [ebp - 4]
    call sub_0043de0c
    push eax
    mov eax, dword ptr [ebp - 4]
    call sub_0043dda4
    mov ebx, dword ptr [d_00460bb8]
    mov edx, dword ptr [d_00460bb4]
    mov esi, dword ptr [d_00460bac]
    mov ecx, eax
    mov eax, esi
    call sub_00416b43
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004172ba:
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
    mov eax, dword ptr [ebp - 0x10]
    call dword ptr [d_0045c380]
    add eax, 2
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 4]
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    sub dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp + 0x14]
    push eax
    mov eax, dword ptr [ebp + 0x10]
    push eax
    mov eax, dword ptr [ebp - 8]
    push eax
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041696c
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 8
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    cmp dword ptr [d_00460bcc], 0
    je loc_00417353
    mov eax, dword ptr [d_00460bc8]
    imul eax, dword ptr [d_00460ba8]
    mov ebx, eax
    mov eax, dword ptr [d_00464ae4]
    call sub_0043dda4
    mov ecx, dword ptr [d_00460bcc]
    mov edx, eax
    mov eax, ecx
    call sub_00451dc4
loc_00417353:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041735a:
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
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041d957
    mov dword ptr [ebp - 8], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_0041daa7
    mov dword ptr [ebp - 4], eax
    mov ebx, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00415920
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041739c:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xe4
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x1c], edx
    cmp dword ptr [d_00460c04], 0
    jne loc_00417515
    mov dword ptr [d_00460c04], 1
    mov edx, offset d_004592be
    lea eax, [ebp - 0xe4]
    call sub_0045189e
    mov eax, offset d_004592c6
    call sub_00451fb1
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_004173f7
    mov edx, dword ptr [ebp - 0x14]
    lea eax, [ebp - 0xe4]
    call sub_0045189e
loc_004173f7:
    mov edx, offset d_004592cc
    lea eax, [ebp - 0xe4]
    call sub_004514fc
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_004174f6
loc_00417414:
    mov byte ptr [ebp - 0x80], 0
    mov ebx, dword ptr [ebp - 8]
    mov edx, 0x63
    lea eax, [ebp - 0x80]
    call sub_004515ff
    cmp byte ptr [ebp - 0x80], 0
    je loc_00417466
    mov edx, 0xa
    lea eax, [ebp - 0x80]
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_0041744a
    mov eax, dword ptr [ebp - 0x14]
    mov byte ptr [eax], 0
loc_0041744a:
    lea edx, [ebp - 0x80]
    imul eax, dword ptr [d_00460c08], 0x64
    mov ebx, offset d_00460cd4
    add eax, ebx
    call sub_0045189e
    inc dword ptr [d_00460c08]
loc_00417466:
    mov eax, dword ptr [ebp - 8]
    test byte ptr [eax + 0xc], 0x10
    je loc_00417414
    mov eax, dword ptr [ebp - 8]
    call sub_0045172e
    cmp byte ptr [d_00460c70], 0
    # je 0x4174f4
    .byte 0x0f,0x84
    .long loc_004174f4 - . - 4
    mov dword ptr [ebp - 0x10], 0
loc_0041748b:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_00460c08]
    jl loc_004174a0
    jmp loc_004174f4
loc_00417498:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_0041748b
loc_004174a0:
    mov edx, 0x7e
    imul ebx, dword ptr [ebp - 0x10], 0x64
    mov eax, offset d_00460cd4
    add eax, ebx
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_004174c9
    mov dl, byte ptr [d_00460c70]
    mov eax, dword ptr [ebp - 0x14]
    mov byte ptr [eax], dl
loc_004174c9:
    mov edx, 0x7c
    imul ebx, dword ptr [ebp - 0x10], 0x64
    mov eax, offset d_00460cd4
    add eax, ebx
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_004174f2
    mov dl, byte ptr [d_00460c0c]
    mov eax, dword ptr [ebp - 0x14]
    mov byte ptr [eax], dl
loc_004174f2:
    jmp loc_00417498
loc_004174f4:
    jmp loc_00417515
loc_004174f6:
    lea eax, [ebp - 0xe4]
    push eax
    mov eax, offset d_004592cf
    push eax
    call sub_004528a6
    add esp, 8
    mov eax, 1
    call sub_0044c98b
loc_00417515:
    cmp dword ptr [ebp - 0x18], 0
    jne loc_00417527
    mov dword ptr [ebp - 4], 0
    jmp loc_004175bb
loc_00417527:
    mov eax, dword ptr [ebp - 0x18]
    call sub_00451dab
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 0x10], 0
loc_00417539:
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_00460c08]
    jl loc_0041754e
    jmp loc_004175a8
loc_00417546:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_00417539
loc_0041754e:
    mov edx, 0x3d
    imul ebx, dword ptr [ebp - 0x10], 0x64
    mov eax, offset d_00460cd4
    add eax, ebx
    call sub_0045167a
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [ebp - 0x14], 0
    je loc_004175a6
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x18]
    imul eax, dword ptr [ebp - 0x10], 0x64
    mov ecx, offset d_00460cd4
    add eax, ecx
    call sub_004528c8
    test eax, eax
    jne loc_004175a6
    cmp dword ptr [ebp - 0x1c], 0
    je loc_0041759d
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0045189e
loc_0041759d:
    mov dword ptr [ebp - 4], 0
    jmp loc_004175bb
loc_004175a6:
    jmp loc_00417546
loc_004175a8:
    cmp dword ptr [ebp - 0x1c], 0
    je loc_004175b4
    mov eax, dword ptr [ebp - 0x1c]
    mov byte ptr [eax], 0
loc_004175b4:
    mov dword ptr [ebp - 4], 1
loc_004175bb:
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
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
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
    sub esp, 0x214
    mov eax, dword ptr [d_0045bd4e]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [d_0045bd52]
    mov dword ptr [ebp - 4], eax
    lea eax, [ebp + 0x20]
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp + 0x1c]
    mov dword ptr [ebp - 8], eax
    lea ebx, [ebp - 0x14]
    mov edx, dword ptr [ebp - 8]
    lea eax, [ebp - 0x214]
    call sub_0045292e
    mov byte ptr [ebp - 0x114], 0
    lea eax, [ebp - 0x114]
    mov dword ptr [ebp - 0xc], eax
    lea eax, [ebp - 0x214]
    mov dword ptr [ebp - 0x10], eax
loc_0041762f:
    mov edx, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    xor eax, eax
    mov al, byte ptr [edx]
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 9
    jb loc_00417662
    cmp dword ptr [ebp - 4], 9
    jbe loc_004176f0
    cmp dword ptr [ebp - 4], 0xa
    jbe loc_0041766c
    cmp dword ptr [ebp - 4], 0xd
    je loc_0041766c
    jmp loc_004176f7
    jmp loc_004176f7
loc_00417662:
    cmp dword ptr [ebp - 4], 0
    jne loc_004176f7
loc_0041766c:
    lea eax, [ebp - 0x114]
    call sub_00451dab
    test eax, eax
    je loc_004176d2
    mov eax, dword ptr [d_00460bf4]
    or eax, 0x4000000
    push eax
    push dword ptr [d_00460bfc]
    mov ecx, dword ptr [d_00460bf8]
    lea eax, [ebp - 0x114]
    call dword ptr [d_0045c380]
    mov ebx, eax
    lea edx, [ebp - 0x114]
    mov eax, dword ptr [d_00460bf0]
    call sub_0043cd44
    lea eax, [ebp - 0x114]
    call dword ptr [d_0045c380]
    add dword ptr [d_00460bf8], eax
    mov byte ptr [ebp - 0x114], 0
    lea eax, [ebp - 0x114]
    mov dword ptr [ebp - 0xc], eax
loc_004176d2:
    cmp dword ptr [ebp - 4], 0xa
    jne loc_004176ee
    call dword ptr [d_0045c37c]
    add dword ptr [d_00460bfc], eax
    mov eax, dword ptr [d_0045bd46]
    mov dword ptr [d_00460bf8], eax
loc_004176ee:
    jmp loc_00417708
loc_004176f0:
    mov dword ptr [ebp - 4], 0x3e
loc_004176f7:
    mov edx, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov al, byte ptr [ebp - 4]
    mov byte ptr [edx], al
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax], 0
loc_00417708:
    cmp dword ptr [ebp - 4], 0
    jne loc_0041762f
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
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_00460bf8], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460bfc], eax
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
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    mov eax, dword ptr [d_0045bd46]
    mov dword ptr [d_00460bf8], eax
    mov eax, dword ptr [d_0045bd4a]
    mov dword ptr [d_00460bfc], eax
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
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov dword ptr [ebp - 4], edx
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_0045bd46], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0045bd4a], eax
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
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460bf4], eax
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
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460bf0], eax
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
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460bf8], eax
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
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_00460bfc], eax
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
    mov eax, dword ptr [d_00460bf8]
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
    mov eax, dword ptr [d_00460bfc]
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
    .byte 0x53,0x51,0x52,0x56,0x57,0x55,0x89,0xe5,0x81,0xec,0x10,0x01,0x00,0x00,0x89,0x45
    .byte 0xe0,0xc7,0x45,0xfc,0x00,0x00,0x00,0x00,0x8b,0x55,0xe0,0xb8
    .long d_00460c70
    .byte 0xe8,0x13,0xa0,0x03,0x00,0x80,0x3d
    .long d_00460c0c
    .byte 0x00,0x75,0x0f,0xba
    .long d_00460c70
    .byte 0xb8
    .long d_00460c0c
    .byte 0xe8,0xfb,0x9f,0x03,0x00,0xff,0x35
    .long d_0045bd56
    .byte 0xb8
    .long d_004592fb
    .byte 0x50,0xe8,0xf2,0xaf,0x03,0x00,0x83,0xc4,0x08,0xb8
    .long d_0045ca6e
    .byte 0xe8,0x82,0xb0,0x03,0x00,0xba
    .long d_004592cc
    .byte 0xb8
    .long d_004592be
    .byte 0xe8,0x2c,0x9c,0x03,0x00,0x89,0x45,0xe8,0x83,0x7d,0xe8,0x00,0x74,0x0a,0x8b,0x45
    .byte 0xe8,0xe8,0x4d,0x9e,0x03,0x00,0xeb,0x18,0xb8
    .long d_00459300
    .byte 0x50,0xe8,0xb8,0xaf,0x03,0x00,0x83,0xc4,0x04,0xb8,0x01,0x00,0x00,0x00,0xe8,0x90
    .byte 0x50,0x03,0x00,0xba
    .long d_0045933b
    .byte 0xb8
    .long d_004592be
    .byte 0xe8,0xf2,0x9b,0x03,0x00,0x89,0x45,0xe8,0x83,0x7d,0xe8,0x00,0x74,0x11,0x8b,0x45
    .byte 0xe8,0xe8,0x13,0x9e,0x03,0x00,0xc7,0x45,0xe4,0x00,0x00,0x00,0x00,0xeb,0x07,0xc7
    .byte 0x45,0xe4,0x01,0x00,0x00,0x00,0x83,0x7d,0xe4,0x00,0x0f,0x84,0xca,0x08,0x00,0x00
    .byte 0xb8
    .long d_0045bce2
    .byte 0x50,0xb8
    .long d_0045bcd8
    .byte 0x50,0xb8
    .long d_0045933e
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x7d,0x9f,0x03,0x00,0x83,0xc4,0x10
    .byte 0xc7,0x45,0xe8,0x00,0x00,0x00,0x00,0x83,0x7d,0xe8,0x00,0x74,0x16,0x8b,0x45,0xe8
    .byte 0xe8,0xc3,0x9d,0x03,0x00,0x31,0xd2,0x31,0xc0,0xe8,0x28,0xfa,0xff,0xff,0xe9,0x84
    .byte 0x08,0x00,0x00,0x31,0xdb,0xba
    .long sub_0044324c
    .byte 0xb8
    .long ptr_00442e24
    .byte 0xe8,0xc6,0x47,0x02,0x00,0x6a,0x01,0x31,0xc0,0xa0
    .long d_00497498
    .byte 0x50,0xb9,0xe0,0x01,0x00,0x00,0xbb,0x80,0x02,0x00,0x00,0x31,0xd2,0x31,0xc0,0xe8
    .byte 0x8d,0x4d,0x02,0x00,0xa3
    .long d_00460c00
    .byte 0xa1
    .long d_00460c00
    .byte 0xe8,0x06,0xfe,0xff,0xff,0xa1
    .long d_00460c00
    .byte 0xe8,0xa0,0x50,0x02,0x00,0xba
    .long d_00460c70
    .byte 0x8d,0x85,0xfc,0xfe,0xff,0xff,0xe8,0xce,0x9e,0x03,0x00,0xba,0x5c,0x00,0x00,0x00
    .byte 0x8d,0x85,0xfc,0xfe,0xff,0xff,0xe8,0x7e,0xa3,0x03,0x00,0x89,0x45,0xd4,0x83,0x7d
    .byte 0xd4,0x00,0x74,0x06,0x8b,0x45,0xd4,0xc6,0x00,0x00,0xba
    .long d_0045934b
    .byte 0x8d,0x85,0xfc,0xfe,0xff,0xff,0xe8,0x79,0xa3,0x03,0x00,0x8d,0x9d,0x64,0xff,0xff
    .byte 0xff,0x8d,0x95,0x60,0xff,0xff,0xff,0x8d,0x85,0xfc,0xfe,0xff,0xff,0xe8,0x4d,0x44
    .byte 0x00,0x00,0x89,0x85,0x6c,0xff,0xff,0xff,0xba,0x80,0x02,0x00,0x00,0x2b,0x95,0x60
    .byte 0xff,0xff,0xff,0x89,0xd0,0xc1,0xfa,0x1f,0x2b,0xc2,0xd1,0xf8,0x89,0x85,0x68,0xff
    .byte 0xff,0xff,0x68,0x80,0x02,0x00,0x00,0xa1
    .long d_00460c00
    .byte 0xe8,0x5f,0x63,0x02,0x00,0x69,0x95,0x68,0xff,0xff,0xff,0x81,0x02,0x00,0x00,0x01
    .byte 0xd0,0x50,0x8b,0x85,0x60,0xff,0xff,0xff,0x50,0x8b,0x85,0x64,0xff,0xff,0xff,0x50
    .byte 0x8b,0x85,0x60,0xff,0xff,0xff,0x50,0x8b,0x85,0x6c,0xff,0xff,0xff,0x50,0xe8,0x41
    .byte 0xae,0x02,0x00,0x83,0xc4,0x18,0x8b,0x85,0x68,0xff,0xff,0xff,0x01,0xc0,0x8b,0x95
    .byte 0x64,0xff,0xff,0xff,0x01,0xc2,0x89,0x55,0xf0,0x31,0xc0,0xe8,0x0c,0xa4,0x01,0x00
    .byte 0x8b,0x55,0xf0,0xb8,0x28,0x00,0x00,0x00,0xe8,0xd2,0xfc,0xff,0xff,0xe8,0xa4,0xfc
    .byte 0xff,0xff,0x31,0xc0,0xa0
    .long d_0049d38f
    .byte 0xe8,0xec,0xfc,0xff,0xff,0xff,0x35
    .long d_0045bd56
    .byte 0xb8
    .long d_00459358
    .byte 0x50,0xe8,0x1c,0xfb,0xff,0xff,0x83,0xc4,0x08,0x83,0x45,0xf0,0x3c,0xb8
    .long d_0045935e
    .byte 0x50,0xe8,0x0a,0xfb,0xff,0xff,0x83,0xc4,0x04,0x83,0x45,0xf0,0x14,0xc7,0x45,0xd8
    .byte 0x00,0x00,0x00,0x00,0xc7,0x45,0xf8,0x01,0x00,0x00,0x00,0xe8,0x8d,0x96,0x01,0x00
    .byte 0x8b,0x45,0xf0,0x89,0x45,0xec,0x83,0x7d,0xd8,0x00,0x0f,0x85,0xb1,0x03,0x00,0x00
    .byte 0x83,0x7d,0xf8,0x00,0x0f,0x84,0xb5,0x01,0x00,0x00,0xe8,0x3c,0xfc,0xff,0xff,0x8b
    .byte 0x45,0xec,0xe8,0xee,0xfc,0xff,0xff,0x31,0xc0,0xa0
    .long d_0049d38f
    .byte 0xe8,0x7c,0xfc,0xff,0xff,0xb8
    .long d_0045938d
    .byte 0x50,0xe8,0xb2,0xfa,0xff,0xff,0x83,0xc4,0x04,0x31,0xc0,0xa0
    .long d_0049d37a
    .byte 0xe8,0x62,0xfc,0xff,0xff,0x31,0xc0,0xa0
    .long d_00497498
    .byte 0x50,0xa1
    .long d_00460c00
    .byte 0xe8,0xc2,0x62,0x02,0x00,0x89,0xc1,0xff,0x15
    .long d_0045c37c
    .byte 0x89,0xc3,0xa1
    .long d_00460c00
    .byte 0xe8,0xae,0x62,0x02,0x00,0x89,0xc2,0xe8,0xbd,0xfc,0xff,0xff,0x29,0xc2,0x8d,0x72
    .byte 0xf6,0xa1
    .long d_00460c00
    .byte 0xe8,0x30,0x62,0x02,0x00,0x89,0xc2,0xe8,0xa7,0xfc,0xff,0xff,0x01,0xc2,0x89,0x95
    .byte 0xf8,0xfe,0xff,0xff,0xe8,0xbc,0xfc,0xff,0xff,0x89,0xc2,0xa1
    .long d_00460c00
    .byte 0xe8,0x78,0x62,0x02,0x00,0x0f,0xaf,0xc2,0x03,0x85,0xf8,0xfe,0xff,0xff,0x89,0xf2
    .byte 0xe8,0xb8,0xae,0x02,0x00,0xb8
    .long d_0045bce2
    .byte 0x50,0xb8
    .long d_0045bcd8
    .byte 0x50,0xb8
    .long d_004593a9
    .byte 0x50,0xe8,0x20,0xfa,0xff,0xff,0x83,0xc4,0x0c,0x83,0x7d,0xfc,0x00,0x0f,0x85,0xe1
    .byte 0x00,0x00,0x00,0xc7,0x85,0xf4,0xfe,0xff,0xff,0x28,0x00,0x00,0x00,0xe8,0x6d,0xfc
    .byte 0xff,0xff,0x83,0xc0,0x10,0x89,0x85,0xf0,0xfe,0xff,0xff,0xc7,0x45,0xfc,0x01,0x00
    .byte 0x00,0x00,0x6a,0x00,0xb8
    .long d_004593b0
    .byte 0x50,0x68,0x11,0x27,0x00,0x00,0x6a,0xff,0x6a,0xff,0xb9,0xff,0xff,0xff,0xff,0x8b
    .byte 0x9d,0xf0,0xfe,0xff,0xff,0x8b,0x95,0xf4,0xfe,0xff,0xff,0xa1
    .long d_00460c00
    .byte 0xe8,0x85,0xa6,0x01,0x00,0x6a,0x00,0xb8
    .long d_004593c3
    .byte 0x50,0x68,0x13,0x27,0x00,0x00,0x6a,0xff,0x6a,0xff,0xb9,0xff,0xff,0xff,0xff,0x8b
    .byte 0x9d,0xf0,0xfe,0xff,0xff,0x83,0xc3,0x20,0x8b,0x95,0xf4,0xfe,0xff,0xff,0xa1
    .long d_00460c00
    .byte 0xe8,0x56,0xa6,0x01,0x00,0x6a,0x00,0xb8
    .long d_004593d5
    .byte 0x50,0x68,0x14,0x27,0x00,0x00,0x6a,0xff,0x6a,0xff,0xb9,0xff,0xff,0xff,0xff,0x8b
    .byte 0x9d,0xf0,0xfe,0xff,0xff,0x8b,0x95,0xf4,0xfe,0xff,0xff,0x81,0xc2,0xc8,0x00,0x00
    .byte 0x00,0xa1
    .long d_00460c00
    .byte 0xe8,0x24,0xa6,0x01,0x00,0x6a,0x00,0xb8
    .long d_004593e1
    .byte 0x50,0x68,0x15,0x27,0x00,0x00,0x6a,0xff,0x6a,0xff,0xb9,0xff,0xff,0xff,0xff,0x8b
    .byte 0x9d,0xf0,0xfe,0xff,0xff,0x83,0xc3,0x20,0x8b,0x95,0xf4,0xfe,0xff,0xff,0x81,0xc2
    .byte 0xc8,0x00,0x00,0x00,0xa1
    .long d_00460c00
    .byte 0xe8,0xef,0xa5,0x01,0x00,0xc7,0x45,0xf8,0x00,0x00,0x00,0x00,0xa1
    .long d_00460c00
    .byte 0xe8,0x9a,0x57,0x02,0x00,0xe8,0xf8,0x85,0xff,0xff,0x89,0x45,0xf4,0x81,0x7d,0xf4
    .byte 0x11,0x27,0x00,0x00,0x72,0x43,0x81,0x7d,0xf4,0x11,0x27,0x00,0x00,0x76,0x6b,0x81
    .byte 0x7d,0xf4,0x14,0x27,0x00,0x00,0x72,0x1f,0x81,0x7d,0xf4,0x14,0x27,0x00,0x00,0x0f
    .byte 0x86,0x59,0x01,0x00,0x00,0x81,0x7d,0xf4,0x15,0x27,0x00,0x00,0x0f,0x84,0x81,0x01
    .byte 0x00,0x00,0xe9,0xab,0x01,0x00,0x00,0x81,0x7d,0xf4,0x13,0x27,0x00,0x00,0x0f,0x84
    .byte 0x31,0x01,0x00,0x00,0xe9,0x99,0x01,0x00,0x00,0x83,0x7d,0xf4,0x1b,0x72,0x1c,0x83
    .byte 0x7d,0xf4,0x1b,0x0f,0x86,0x5a,0x01,0x00,0x00,0x81,0x7d,0xf4,0x3b,0x01,0x00,0x00
    .byte 0x0f,0x84,0x18,0x01,0x00,0x00,0xe9,0x77,0x01,0x00,0x00,0x83,0x7d,0xf4,0x0d,0x0f
    .byte 0x84,0x00,0x01,0x00,0x00,0xe9,0x68,0x01,0x00,0x00,0xb8
    .long d_0045bce2
    .byte 0x50,0xb8
    .long d_0045bcd8
    .byte 0x50,0xb8
    .long d_004593ee
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x73,0x9b,0x03,0x00,0x83,0xc4,0x10
    .byte 0x8b,0x45,0xec,0x50,0xb9,0x32,0x00,0x00,0x00,0xbb
    .long d_004593f3
    .byte 0xba,0x28,0x00,0x00,0x00,0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0xba,0x6b,0x01,0x00
    .byte 0x89,0x45,0xdc,0x83,0x7d,0xdc,0x00,0x0f,0x8c,0xad,0x00,0x00,0x00,0xba,0x3a,0x00
    .byte 0x00,0x00,0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0xdf,0x98,0x03,0x00,0x89,0x45,0xd4
    .byte 0x83,0x7d,0xd4,0x00,0x74,0x1b,0x8a,0x85,0x70,0xff,0xff,0xff,0xa2
    .long d_0045bcd8
    .byte 0x8b,0x55,0xd4,0x42,0xb8
    .long d_0045bce2
    .byte 0xe8,0xe1,0x9a,0x03,0x00,0xeb,0x10,0x8d,0x95,0x70,0xff,0xff,0xff,0xb8
    .long d_0045bce2
    .byte 0xe8,0xcf,0x9a,0x03,0x00,0xb8
    .long d_0045bce2
    .byte 0xe8,0xfd,0xae,0xff,0xff,0x80,0x3d
    .long d_0045bce2
    .byte 0x5c,0x74,0x2b,0xba
    .long d_0045bce2
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0xac,0x9a,0x03,0x00,0x8d,0x85,0x70,0xff,0xff
    .byte 0xff,0x50,0xb8
    .long d_00459410
    .byte 0x50,0xb8
    .long d_0045bce2
    .byte 0x50,0xe8,0xc6,0x9a,0x03,0x00,0x83,0xc4,0x0c,0xb8
    .long d_0045bce2
    .byte 0xe8,0x94,0x9f,0x03,0x00,0x80,0xb8
    .long d_0045bce1
    .byte 0x5c,0x75,0x11,0xb8
    .long d_0045bce2
    .byte 0xe8,0x81,0x9f,0x03,0x00,0xc6,0x80
    .long d_0045bce1
    .byte 0x00,0xc7,0x45,0xf8,0x01,0x00,0x00,0x00,0xeb,0x6d,0xc7,0x45,0xd8,0x01,0x00,0x00
    .byte 0x00,0xeb,0x64,0x31,0xc0,0xa0
    .long d_00460c70
    .byte 0x50,0xb8
    .long d_00459414
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x73,0x9a,0x03,0x00,0x83,0xc4,0x0c
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x6b,0xae,0xff,0xff,0x8d,0x85,0x70,0xff,0xff
    .byte 0xff,0xe8,0xb7,0xb1,0xff,0xff,0xeb,0x2f,0x31,0xc9,0x8a,0x0d
    .long d_0049d38f
    .byte 0xbb,0x64,0x00,0x00,0x00,0xba,0x64,0x00,0x00,0x00,0xb8
    .long d_00459423
    .byte 0xe8,0x4c,0x6f,0x01,0x00,0x89,0x45,0xdc,0x83,0x7d,0xdc,0x01,0x75,0x0a,0xb8,0x63
    .byte 0x00,0x00,0x00,0xe8,0xe4,0x4a,0x03,0x00,0xe9,0x45,0xfc,0xff,0xff,0xb8
    .long d_00459442
    .byte 0xe8,0x56,0xaf,0xff,0xff,0x31,0xc0,0xe8,0x76,0xaf,0xff,0xff,0xb8
    .long d_0045bce2
    .byte 0x50,0xb8
    .long d_0045bcd8
    .byte 0x50,0xb8
    .long d_00459450
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0xf5,0x99,0x03,0x00,0x83,0xc4,0x10
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x6a,0xaa,0x03,0x00,0xb8,0x01,0x00,0x00,0x00
    .byte 0xe8,0x40,0xaf,0xff,0xff,0xb8
    .long d_0045bce2
    .byte 0x50,0xb8
    .long d_0045bcd8
    .byte 0x50,0xb8
    .long d_0045945e
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0xbf,0x99,0x03,0x00,0x83,0xc4,0x10
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x34,0xaa,0x03,0x00,0xb8,0x05,0x00,0x00,0x00
    .byte 0xe8,0x0a,0xaf,0xff,0xff,0xb8
    .long d_0045bcd8
    .byte 0x50,0xb8
    .long d_00459476
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x8f,0x99,0x03,0x00,0x83,0xc4,0x0c
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x04,0xaa,0x03,0x00,0xb8
    .long d_0045bce2
    .byte 0xe8,0x5a,0xaa,0x03,0x00,0xb8
    .long d_0045947f
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x65,0x99,0x03,0x00,0x83,0xc4,0x08
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0xda,0xa9,0x03,0x00,0xb8
    .long d_0045948d
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x45,0x99,0x03,0x00,0x83,0xc4,0x08
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0xba,0xa9,0x03,0x00,0xb8
    .long d_0045949f
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x25,0x99,0x03,0x00,0x83,0xc4,0x08
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x9a,0xa9,0x03,0x00,0xb8
    .long d_004594b5
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x05,0x99,0x03,0x00,0x83,0xc4,0x08
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x7a,0xa9,0x03,0x00,0xb8
    .long d_004594cd
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0xe5,0x98,0x03,0x00,0x83,0xc4,0x08
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x5a,0xa9,0x03,0x00,0xb8,0x0a,0x00,0x00,0x00
    .byte 0xe8,0x30,0xae,0xff,0xff,0x31,0xc0,0xa0
    .long d_00460c70
    .byte 0x50,0xb8
    .long d_004594e3
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0xb3,0x98,0x03,0x00,0x83,0xc4,0x0c
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x28,0xa9,0x03,0x00,0xb8,0x14,0x00,0x00,0x00
    .byte 0xe8,0xfe,0xad,0xff,0xff,0x31,0xc0,0xa0
    .long d_00460c70
    .byte 0x50,0xb8
    .long d_00459508
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x81,0x98,0x03,0x00,0x83,0xc4,0x0c
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0xf6,0xa8,0x03,0x00,0xb8,0x1e,0x00,0x00,0x00
    .byte 0xe8,0xcc,0xad,0xff,0xff,0x31,0xc0,0xa0
    .long d_00460c70
    .byte 0x50,0xb8
    .long d_00459535
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x4f,0x98,0x03,0x00,0x83,0xc4,0x0c
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0xc4,0xa8,0x03,0x00,0xb8,0x2d,0x00,0x00,0x00
    .byte 0xe8,0x9a,0xad,0xff,0xff,0x31,0xc0,0xa0
    .long d_00460c70
    .byte 0x50,0xb8
    .long d_0045956f
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0x1d,0x98,0x03,0x00,0x83,0xc4,0x0c
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x92,0xa8,0x03,0x00,0xb8,0x3c,0x00,0x00,0x00
    .byte 0xe8,0x68,0xad,0xff,0xff,0x31,0xc0,0xa0
    .long d_00460c70
    .byte 0x50,0xb8
    .long d_004595a6
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0xeb,0x97,0x03,0x00,0x83,0xc4,0x0c
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x60,0xa8,0x03,0x00,0xb8,0x46,0x00,0x00,0x00
    .byte 0xe8,0x36,0xad,0xff,0xff,0xb8,0x55,0x00,0x00,0x00,0xe8,0x2c,0xad,0xff,0xff,0x31
    .byte 0xc0,0xa0
    .long d_00460c70
    .byte 0x50,0xb8
    .long d_004595e0
    .byte 0x50,0x8d,0x85,0x70,0xff,0xff,0xff,0x50,0xe8,0xaf,0x97,0x03,0x00,0x83,0xc4,0x0c
    .byte 0x8d,0x85,0x70,0xff,0xff,0xff,0xe8,0x24,0xa8,0x03,0x00,0xb8,0x5a,0x00,0x00,0x00
    .byte 0xe8,0xfa,0xac,0xff,0xff,0xba
    .long d_0045960d
    .byte 0xb8
    .long d_004592be
    .byte 0xe8,0xb4,0x93,0x03,0x00,0x89,0x45,0xe8,0x83,0x7d,0xe8,0x00,0x74,0x66,0x31,0xc0
    .byte 0xa0
    .long d_00460c70
    .byte 0x50,0xb8
    .long d_00459610
    .byte 0x50,0x8b,0x45,0xe8,0x50,0xe8,0xd6,0x99,0x03,0x00,0x83,0xc4,0x0c,0xb8
    .long d_0045bce2
    .byte 0x50,0xb8
    .long d_0045bcd8
    .byte 0x50,0xb8
    .long d_0045961d
    .byte 0x50,0x8b,0x45,0xe8,0x50,0xe8,0xb8,0x99,0x03,0x00,0x83,0xc4,0x10,0xb8
    .long d_0045962b
    .byte 0x50,0x8b,0x45,0xe8,0x50,0xe8,0xa6,0x99,0x03,0x00,0x83,0xc4,0x08,0xb8
    .long d_0045963c
    .byte 0x50,0x8b,0x45,0xe8,0x50,0xe8,0x94,0x99,0x03,0x00,0x83,0xc4,0x08,0x8b,0x45,0xe8
    .byte 0xe8,0x79,0x95,0x03,0x00,0xeb,0x18,0xb8
    .long d_0045964a
    .byte 0x50,0xe8,0xe4,0xa6,0x03,0x00,0x83,0xc4,0x04,0xb8,0x01,0x00,0x00,0x00,0xe8,0xbc
    .byte 0x47,0x03,0x00,0xb8,0x5f,0x00,0x00,0x00,0xe8,0x5a,0xac,0xff,0xff,0xb8,0x64,0x00
    .byte 0x00,0x00,0xe8,0x50,0xac,0xff,0xff,0xe8,0x80,0x44,0x02,0x00,0xb8
    .long d_00459676
    .byte 0x50,0xe8,0xb3,0xa6,0x03,0x00,0x83,0xc4,0x04,0x31,0xc0,0xe8,0x8e,0x47,0x03,0x00
    .byte 0xeb,0x09,0x31,0xd2,0x31,0xc0,0xe8,0x94,0xf1,0xff,0xff,0xb8
    .long d_0045ca6e
    .byte 0xe8,0x31,0xa7,0x03,0x00,0xb8,0xe8,0x03,0x00,0x00,0xe8,0x94,0xba,0xff,0xff,0x89
    .byte 0xec,0x5d,0x5f,0x5e,0x5a,0x59,0x5b,0xc3
ptr_00418225:
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
    push eax
    mov eax, offset d_0045969c
    push eax
    call sub_004528a6
    add esp, 8
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
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0045bd5c], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00418279:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    cmp dword ptr [d_0045bd5c], 0
    jne loc_00418299
    mov dword ptr [ebp - 4], 0
    jmp loc_004182ca
loc_00418299:
    lea eax, [ebp + 0x20]
    mov dword ptr [ebp - 8], eax
    lea ebx, [ebp - 8]
    mov edx, dword ptr [ebp + 0x1c]
    mov eax, offset d_00461698
    call sub_0045292e
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], 0
    mov eax, offset d_00461698
    call dword ptr [d_0045bd5c]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
loc_004182ca:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004182d6:
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
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, offset d_0045969f
    push eax
    call sub_00418279
    add esp, 0x18
    mov eax, 1
    call sub_0044c98b
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
ptr_0041831f:
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
    call sub_004529cc
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
ptr_00418347:
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
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00452abb
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
ptr_00418373:
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
    call sub_00452b35
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00418395:
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
    jge loc_004183c4
    mov eax, offset d_004596d3
    push eax
    call sub_00418279
    add esp, 4
    mov eax, 1
    call sub_0044c98b
loc_004183c4:
    mov dword ptr [ebp - 4], 1
    mov eax, dword ptr [ebp - 4]
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
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov dword ptr [ebp - 4], ebx
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [d_0045bd64], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_0045bd68], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0045bd6c], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041840b:
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
    mov dword ptr [ebp - 8], 0
    cmp dword ptr [ebp - 8], 0
    je loc_00418435
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_00418481
loc_00418435:
    mov eax, dword ptr [ebp - 0x14]
    add eax, 4
    call dword ptr [d_0045bd64]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    jne loc_0041845d
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x14]
    mov eax, offset d_004596eb
    call sub_004182d6
loc_0041845d:
    mov eax, dword ptr [ebp - 0x14]
    add dword ptr [d_0045bd60], eax
    mov eax, dword ptr [d_0045bd60]
    call sub_00418395
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp - 8]
    add eax, 4
    mov dword ptr [ebp - 4], eax
loc_00418481:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041848b:
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
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004184bb:
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
sub_004184d0:
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
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041848b
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041840b
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00418511:
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
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041848b
    mov eax, dword ptr [ebp - 0x18]
    imul eax, dword ptr [ebp - 0x14]
    add eax, 4
    call dword ptr [d_0045bd64]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    jne loc_00418563
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x18]
    imul edx, dword ptr [ebp - 0x14]
    mov eax, offset d_004596f2
    call sub_004182d6
loc_00418563:
    mov eax, dword ptr [ebp - 0x18]
    imul eax, dword ptr [ebp - 0x14]
    add dword ptr [d_0045bd60], eax
    mov eax, dword ptr [d_0045bd60]
    call sub_00418395
    mov eax, dword ptr [ebp - 0x18]
    imul eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx], eax
    add dword ptr [ebp - 8], 4
    mov ebx, dword ptr [ebp - 0x18]
    imul ebx, dword ptr [ebp - 0x14]
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_00451940
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_004185aa:
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
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041848b
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax - 4]
    sub dword ptr [d_0045bd60], eax
    mov eax, dword ptr [d_0045bd60]
    call sub_00418395
    mov edx, dword ptr [ebp - 0x14]
    add edx, 4
    mov eax, dword ptr [ebp - 0x18]
    sub eax, 4
    call dword ptr [d_0045bd68]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    jne loc_00418610
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x14]
    mov eax, offset d_004596f9
    call sub_004182d6
loc_00418610:
    mov eax, dword ptr [ebp - 0x14]
    add dword ptr [d_0045bd60], eax
    mov eax, dword ptr [d_0045bd60]
    call sub_00418395
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp - 8]
    add eax, 4
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0041863d:
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
    jne loc_00418678
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, offset d_00459701
    push eax
    call sub_00418279
    add esp, 0xc
    mov eax, 1
    call sub_0044c98b
loc_00418678:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax - 4]
    sub dword ptr [d_0045bd60], eax
    mov eax, dword ptr [d_0045bd60]
    call sub_00418395
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_0041848b
    mov eax, dword ptr [ebp - 0xc]
    sub eax, 4
    call dword ptr [d_0045bd6c]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_004186ac:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x14], edx
    mov dword ptr [ebp - 0x10], ebx
    mov eax, dword ptr [ebp - 0x18]
    call sub_00451dab
    mov dword ptr [ebp - 0xc], eax
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0xc]
    inc eax
    call sub_004184d0
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    jne loc_004186f8
    mov ecx, dword ptr [ebp - 0x10]
    mov ebx, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0xc]
    inc edx
    mov eax, offset d_00459722
    call sub_004182d6
loc_004186f8:
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 8]
    call sub_0045189e
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00418713:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_0045bd60]
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
    mov dword ptr [ebp - 4], 0
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
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_00418777:
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
    call sub_004529cc
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
ptr_0041879f:
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
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00452abb
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
ptr_004187cb:
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
    call sub_00452b35
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004187ed:
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
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [d_0045bd80], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_0045bd84], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0045bd88], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
ptr_00418821:
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
    call sub_00452bc3
    mov dword ptr [ebp - 0xc], eax
    mov ebx, 2
    xor edx, edx
    mov eax, dword ptr [ebp - 0x10]
    call sub_00452c00
    mov dword ptr [ebp - 8], eax
    xor ebx, ebx
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00452c00
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
ptr_0041886e:
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
    call sub_00452bc3
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
ptr_00418896:
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
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00452c3a
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
ptr_004188c6:
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
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00452ef2
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
ptr_004188f6:
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
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    call sub_00453099
    add esp, 8
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
ptr_00418927:
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
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00452c00
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
ptr_00418957:
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
    call sub_00453274
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
    mov dword ptr [ebp - 4], offset d_0045bd8c
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_004189a0:
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
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_004189c3:
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
    cmp dword ptr [ebp - 8], -1
    jne loc_004189e2
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 8], eax
loc_004189e2:
    cmp dword ptr [ebp - 8], 0
    jl loc_004189ee
    cmp dword ptr [ebp - 8], 0x20
    jle loc_004189f5
loc_004189ee:
    mov dword ptr [ebp - 8], 0x20
loc_004189f5:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov eax, dword ptr [eax + d_0045bdb0]
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
sub_00418a10:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x44
    .byte 0x81,0xec,0x44,0x00,0x00,0x00
    mov dword ptr [ebp - 0x38], eax
    mov eax, dword ptr [ebp - 0x38]
    test byte ptr [eax + 0x3c], 0x80
    jne loc_00418fee
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    lea eax, [ebp - 0x30]
    push eax
    lea eax, [ebp - 0x34]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x10]
    mov dword ptr [ebp - 0x2c], eax
    cmp dword ptr [ebp - 0x2c], 0
    jne loc_00418fee
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x74]
    cmp eax, dword ptr [ebp - 0x34]
    ja loc_00418a70
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 0x34]
    sub edx, dword ptr [eax + 0x74]
    mov eax, dword ptr [ebp - 0x38]
    add dword ptr [eax + 0x64], edx
    jmp loc_00418a8e
loc_00418a70:
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x7c]
    mov edx, dword ptr [ebp - 0x38]
    imul eax, dword ptr [edx + 0x78]
    mov edx, eax
    mov eax, dword ptr [ebp - 0x38]
    sub edx, dword ptr [eax + 0x74]
    add edx, dword ptr [ebp - 0x34]
    mov eax, dword ptr [ebp - 0x38]
    add dword ptr [eax + 0x64], edx
loc_00418a8e:
    mov eax, dword ptr [ebp - 0x38]
    test byte ptr [eax + 0x3d], 1
    je loc_00418ac9
    mov eax, dword ptr [ebp - 0x38]
    test byte ptr [eax + 0x44], 0x20
    jne loc_00418ab9
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [eax + 0x64]
    mov eax, dword ptr [ebp - 0x38]
    cmp edx, dword ptr [eax + 0x60]
    jb loc_00418ab7
    mov eax, dword ptr [ebp - 0x38]
    or word ptr [eax + 0x3c], 0x280
loc_00418ab7:
    jmp loc_00418ac9
loc_00418ab9:
    mov eax, dword ptr [ebp - 0x38]
    test byte ptr [eax + 0x3d], 2
    je loc_00418ac9
    mov eax, dword ptr [ebp - 0x38]
    or byte ptr [eax + 0x3c], 0x80
loc_00418ac9:
    mov eax, dword ptr [ebp - 0x34]
    mov edx, dword ptr [ebp - 0x38]
    mov dword ptr [edx + 0x74], eax
loc_00418ad2:
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [eax + 0x64]
    mov eax, dword ptr [ebp - 0x38]
    cmp edx, dword ptr [eax + 0x60]
    jbe loc_00418aee
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [eax + 0x60]
    mov eax, dword ptr [ebp - 0x38]
    sub dword ptr [eax + 0x64], edx
    jmp loc_00418ad2
loc_00418aee:
    xor edx, edx
    mov eax, dword ptr [ebp - 0x34]
    mov ebx, dword ptr [ebp - 0x38]
    div dword ptr [ebx + 0x7c]
    mov dword ptr [ebp - 0x28], eax
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x70]
    cmp eax, dword ptr [ebp - 0x28]
    je loc_00418fee
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x70]
    cmp eax, dword ptr [ebp - 0x28]
    jae loc_00418b24
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [ebp - 0x38]
    sub eax, dword ptr [edx + 0x70]
    mov dword ptr [ebp - 0x1c], eax
    jmp loc_00418b38
loc_00418b24:
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x78]
    mov edx, dword ptr [ebp - 0x38]
    sub eax, dword ptr [edx + 0x70]
    mov edx, dword ptr [ebp - 0x28]
    add edx, eax
    mov dword ptr [ebp - 0x1c], edx
loc_00418b38:
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 0x1c]
    imul edx, dword ptr [eax + 0x7c]
    mov eax, dword ptr [ebp - 0x38]
    cmp edx, dword ptr [eax + 0x6c]
    jb loc_00418b62
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x6c]
    mov edx, dword ptr [ebp - 0x38]
    add eax, dword ptr [edx + 0x7c]
    dec eax
    xor edx, edx
    mov ebx, dword ptr [ebp - 0x38]
    div dword ptr [ebx + 0x7c]
    mov dword ptr [ebp - 0x1c], eax
loc_00418b62:
    mov eax, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x38]
    cmp eax, dword ptr [edx + 0x5c]
    jl loc_00418fee
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x24]
    mov ebx, dword ptr [eax]
    push 0
    lea eax, [ebp - 8]
    push eax
    lea eax, [ebp - 0x14]
    push eax
    lea eax, [ebp - 0xc]
    push eax
    lea eax, [ebp - 0x18]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 0x1c]
    imul edx, dword ptr [eax + 0x7c]
    mov eax, edx
    push eax
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x70]
    mov edx, dword ptr [ebp - 0x38]
    imul eax, dword ptr [edx + 0x7c]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    push dword ptr [eax + 0x24]
    call dword ptr [ebx + 0x2c]
    mov dword ptr [ebp - 0x2c], eax
    cmp dword ptr [ebp - 0x2c], 0x88780096
    jne loc_00418c0b
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 0x38]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x50]
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x24]
    mov ebx, dword ptr [eax]
    push 0
    lea eax, [ebp - 8]
    push eax
    lea eax, [ebp - 0x14]
    push eax
    lea eax, [ebp - 0xc]
    push eax
    lea eax, [ebp - 0x18]
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    imul eax, dword ptr [d_004617a0]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x70]
    mov edx, dword ptr [ebp - 0x38]
    imul eax, dword ptr [edx + 0x7c]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    push dword ptr [eax + 0x24]
    call dword ptr [ebx + 0x2c]
    mov dword ptr [ebp - 0x2c], eax
loc_00418c0b:
    cmp dword ptr [ebp - 0x2c], 0
    jne loc_00418fee
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 0x1c]
    imul edx, dword ptr [eax + 0x7c]
    mov eax, edx
    mov edx, dword ptr [ebp - 0xc]
    add edx, dword ptr [ebp - 8]
    cmp edx, eax
    je loc_00418cb3
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    push dword ptr [eax + 0x7c]
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 0x1c]
    imul edx, dword ptr [eax + 0x7c]
    mov eax, edx
    push eax
    mov eax, offset d_00459a80
    push eax
    call sub_0042c0c8
    add esp, 0x1c
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 8]
    xor edx, edx
    mov ebx, dword ptr [ebp - 0x38]
    div dword ptr [ebx + 0x7c]
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, offset d_00459acc
    push eax
    call sub_0042c0c8
    add esp, 0xc
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 8]
    xor edx, edx
    mov ebx, dword ptr [ebp - 0x38]
    div dword ptr [ebx + 0x7c]
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x38]
    cmp eax, dword ptr [edx + 0x5c]
    jge loc_00418cb3
    mov eax, offset d_00459af1
    push eax
    call sub_0042c0c8
    add esp, 4
    jmp loc_00418fee
loc_00418cb3:
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 0x20], 0
loc_00418cc6:
    dec dword ptr [ebp - 0x1c]
    cmp dword ptr [ebp - 0x1c], -1
    je loc_00418fc4
    mov eax, dword ptr [ebp - 0x38]
    test byte ptr [eax + 0x3d], 2
    je loc_00418cfd
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x7c]
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [ebp - 0x38]
    mov ebx, dword ptr [eax + 0x7c]
    xor edx, edx
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x20]
    call sub_00451940
    jmp loc_00418f3a
loc_00418cfd:
    mov eax, dword ptr [ebp - 0x38]
    cmp dword ptr [eax + 0x58], -1
    je loc_00418d63
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x1c]
    mov edx, dword ptr [ebp - 0x38]
    call dword ptr [edx + 0x14]
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 0x3c]
    add edx, dword ptr [eax + 0x7c]
    mov eax, dword ptr [ebp - 0x38]
    cmp edx, dword ptr [eax + 0x58]
    jbe loc_00418d46
    mov ecx, dword ptr [ebp - 0x38]
    mov ebx, dword ptr [ecx + 0x58]
    sub ebx, dword ptr [ebp - 0x3c]
    mov ecx, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ecx + 0x20]
    mov ecx, dword ptr [ebp - 0x38]
    mov eax, dword ptr [ecx + 0x1c]
    mov ecx, dword ptr [ebp - 0x38]
    call dword ptr [ecx + 8]
    mov dword ptr [ebp - 0x24], eax
    jmp loc_00418d61
loc_00418d46:
    mov ecx, dword ptr [ebp - 0x38]
    mov ebx, dword ptr [ecx + 0x7c]
    mov ecx, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ecx + 0x20]
    mov ecx, dword ptr [ebp - 0x38]
    mov eax, dword ptr [ecx + 0x1c]
    mov ecx, dword ptr [ebp - 0x38]
    call dword ptr [ecx + 8]
    mov dword ptr [ebp - 0x24], eax
loc_00418d61:
    jmp loc_00418d7e
loc_00418d63:
    mov ecx, dword ptr [ebp - 0x38]
    mov ebx, dword ptr [ecx + 0x7c]
    mov ecx, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ecx + 0x20]
    mov ecx, dword ptr [ebp - 0x38]
    mov eax, dword ptr [ecx + 0x1c]
    mov ecx, dword ptr [ebp - 0x38]
    call dword ptr [ecx + 8]
    mov dword ptr [ebp - 0x24], eax
loc_00418d7e:
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x38]
    cmp eax, dword ptr [edx + 0x7c]
    jae loc_00418f3a
    mov eax, dword ptr [ebp - 0x38]
    test byte ptr [eax + 0x3c], 0x20
    je loc_00418d9f
    mov eax, dword ptr [ebp - 0x38]
    test byte ptr [eax + 0x3d], 1
    je loc_00418da4
loc_00418d9f:
    jmp loc_00418f11
loc_00418da4:
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x38]
    cmp eax, dword ptr [edx + 0x7c]
    jae loc_00418f0f
    mov eax, dword ptr [ebp - 0x38]
    cmp dword ptr [eax + 0x50], -1
    jne loc_00418df8
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [eax + 0x54]
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x1c]
    mov ecx, dword ptr [ebp - 0x38]
    call dword ptr [ecx + 0x10]
    mov eax, dword ptr [ebp - 0x38]
    cmp dword ptr [eax + 0x88], 0
    je loc_00418df3
    mov edx, 0x400
    mov ebx, dword ptr [ebp - 0x38]
    mov eax, dword ptr [ebx + 0x84]
    mov ebx, dword ptr [ebp - 0x38]
    call dword ptr [ebx + 0x88]
loc_00418df3:
    jmp loc_00418e8b
loc_00418df8:
    mov eax, dword ptr [ebp - 0x38]
    cmp dword ptr [eax + 0x50], 0
    jle loc_00418e40
    mov eax, dword ptr [ebp - 0x38]
    dec dword ptr [eax + 0x50]
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [eax + 0x54]
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x1c]
    mov ecx, dword ptr [ebp - 0x38]
    call dword ptr [ecx + 0x10]
    mov eax, dword ptr [ebp - 0x38]
    cmp dword ptr [eax + 0x88], 0
    je loc_00418e3e
    mov edx, 0x400
    mov ebx, dword ptr [ebp - 0x38]
    mov eax, dword ptr [ebx + 0x84]
    mov ebx, dword ptr [ebp - 0x38]
    call dword ptr [ebx + 0x88]
loc_00418e3e:
    jmp loc_00418e8b
loc_00418e40:
    mov eax, dword ptr [ebp - 0x38]
    and byte ptr [eax + 0x3c], 0xdf
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [eax + 0x58], 0xffffffff
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [eax + 0x54], 0
    mov eax, dword ptr [ebp - 0x38]
    mov dword ptr [eax + 0x50], 0
    mov eax, dword ptr [ebp - 0x38]
    mov ebx, dword ptr [eax + 0x7c]
    sub ebx, dword ptr [ebp - 0x24]
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [eax + 0x20]
    add edx, dword ptr [ebp - 0x24]
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x1c]
    mov ecx, dword ptr [ebp - 0x38]
    call dword ptr [ecx + 8]
    add dword ptr [ebp - 0x24], eax
    jmp loc_00418f0f
loc_00418e8b:
    mov eax, dword ptr [ebp - 0x38]
    cmp dword ptr [eax + 0x58], -1
    je loc_00418ed6
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x1c]
    mov edx, dword ptr [ebp - 0x38]
    call dword ptr [edx + 0x14]
    mov dword ptr [ebp - 0x3c], eax
    mov edx, dword ptr [ebp - 0x3c]
    add edx, dword ptr [ebp - 0x24]
    mov eax, dword ptr [ebp - 0x38]
    add edx, dword ptr [eax + 0x7c]
    mov eax, dword ptr [ebp - 0x38]
    cmp edx, dword ptr [eax + 0x58]
    jbe loc_00418ec8
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x58]
    sub eax, dword ptr [ebp - 0x3c]
    sub eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x40], eax
    jmp loc_00418ed4
loc_00418ec8:
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x7c]
    sub eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x40], eax
loc_00418ed4:
    jmp loc_00418ee2
loc_00418ed6:
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x7c]
    sub eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x40], eax
loc_00418ee2:
    mov ebx, dword ptr [ebp - 0x40]
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [eax + 0x20]
    add edx, dword ptr [ebp - 0x24]
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x1c]
    mov ecx, dword ptr [ebp - 0x38]
    call dword ptr [ecx + 8]
    mov dword ptr [ebp - 0x44], eax
    mov eax, dword ptr [ebp - 0x44]
    add dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [ebp - 0x44]
    cmp eax, dword ptr [ebp - 0x40]
    jge loc_00418da4
loc_00418f0f:
    jmp loc_00418f3a
loc_00418f11:
    mov eax, dword ptr [ebp - 0x38]
    mov ebx, dword ptr [eax + 0x7c]
    sub ebx, dword ptr [ebp - 0x24]
    xor edx, edx
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x20]
    add eax, dword ptr [ebp - 0x24]
    call sub_00451940
    mov eax, dword ptr [ebp - 0x38]
    or byte ptr [eax + 0x3d], 2
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x7c]
    mov dword ptr [ebp - 0x24], eax
loc_00418f3a:
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [ebp - 4]
    ja loc_00418f61
    mov ebx, dword ptr [ebp - 0x24]
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00451dc4
    mov eax, dword ptr [ebp - 0x24]
    add dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x24]
    sub dword ptr [ebp - 4], eax
    jmp loc_00418fbf
loc_00418f61:
    cmp dword ptr [ebp - 4], 0
    je loc_00418f78
    mov ebx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00451dc4
loc_00418f78:
    cmp dword ptr [ebp - 0x14], 0
    je loc_00418fb1
    mov ebx, dword ptr [ebp - 0x24]
    sub ebx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [eax + 0x20]
    add edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00451dc4
    mov eax, dword ptr [ebp - 0x14]
    add eax, dword ptr [ebp - 0x24]
    sub eax, dword ptr [ebp - 4]
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x24]
    sub eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 8]
    sub edx, eax
    mov dword ptr [ebp - 4], edx
    jmp loc_00418fbf
loc_00418fb1:
    mov eax, offset d_00459b1e
    push eax
    call sub_0042c0c8
    add esp, 4
loc_00418fbf:
    jmp loc_00418cc6
loc_00418fc4:
    mov eax, dword ptr [ebp - 0x38]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x18]
    push eax
    mov eax, dword ptr [ebp - 0x38]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x4c]
    mov eax, dword ptr [ebp - 0x28]
    mov edx, dword ptr [ebp - 0x38]
    mov dword ptr [edx + 0x70], eax
loc_00418fee:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00418ff7:
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xa4
    mov dword ptr [ebp - 0x1c], eax
    mov dword ptr [ebp - 0x14], edx
    mov dword ptr [ebp - 0x10], ebx
    mov dword ptr [ebp - 0xc], ecx
    push 0
    mov eax, offset d_004617c0
    push eax
    push 0
    call sub_00457e38
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    je loc_00419047
    mov dword ptr [d_004617c0], 0
    mov dword ptr [d_004617a4], 8
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419507
loc_00419047:
    mov eax, dword ptr [d_004617c0]
    mov eax, dword ptr [eax]
    push 3
    push dword ptr [d_0045c4d0]
    push dword ptr [d_004617c0]
    call dword ptr [eax + 0x18]
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    je loc_0041907f
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419507
loc_0041907f:
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [d_004617b0], eax
    mov dword ptr [d_004617b8], 1
    mov dword ptr [d_004617b4], 1
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [d_004617a0], eax
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [d_004617a8], eax
    mov ebx, 0x14
    xor edx, edx
    lea eax, [ebp - 0x44]
    call sub_00451940
    mov dword ptr [ebp - 0x44], 0x14
    mov dword ptr [ebp - 0x40], 1
    mov dword ptr [ebp - 0x3c], 0
    mov dword ptr [ebp - 0x34], 0
    mov eax, dword ptr [d_004617c0]
    mov eax, dword ptr [eax]
    push 0
    mov edx, offset d_004617ac
    push edx
    lea edx, [ebp - 0x44]
    push edx
    push dword ptr [d_004617c0]
    call dword ptr [eax + 0xc]
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    je loc_0041924f
    cmp dword ptr [ebp - 0x18], 0x80070057
    jb loc_0041914b
    cmp dword ptr [ebp - 0x18], 0x80070057
    jbe loc_0041919c
    cmp dword ptr [ebp - 0x18], 0x88780064
    jb loc_0041913d
    cmp dword ptr [ebp - 0x18], 0x88780064
    jbe loc_004191f3
    cmp dword ptr [ebp - 0x18], 0x887800aa
    je loc_0041922b
    jmp loc_00419245
loc_0041913d:
    cmp dword ptr [ebp - 0x18], 0x8878000a
    je loc_0041917d
    jmp loc_00419245
loc_0041914b:
    cmp dword ptr [ebp - 0x18], 0x80040110
    jb loc_0041916f
    cmp dword ptr [ebp - 0x18], 0x80040110
    jbe loc_0041920f
    cmp dword ptr [ebp - 0x18], 0x8007000e
    je loc_004191bb
    jmp loc_00419245
loc_0041916f:
    cmp dword ptr [ebp - 0x18], 0x80004001
    je loc_004191d7
    jmp loc_00419245
loc_0041917d:
    mov eax, offset d_00459b6d
    push eax
    mov eax, offset d_00459b7d
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419245
loc_0041919c:
    mov eax, offset d_00459b96
    push eax
    mov eax, offset d_00459b7d
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419245
loc_004191bb:
    mov eax, offset d_00459ba9
    push eax
    mov eax, offset d_00459b7d
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419245
loc_004191d7:
    mov eax, offset d_00459bbb
    push eax
    mov eax, offset d_00459b7d
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419245
loc_004191f3:
    mov eax, offset d_00459bcd
    push eax
    mov eax, offset d_00459b7d
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419245
loc_0041920f:
    mov eax, offset d_00459bdd
    push eax
    mov eax, offset d_00459b7d
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419245
loc_0041922b:
    mov eax, offset d_00459bf1
    push eax
    mov eax, offset d_00459b7d
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
loc_00419245:
    mov eax, 1
    call sub_0044c98b
loc_0041924f:
    mov ebx, 0x12
    xor edx, edx
    lea eax, [ebp - 0x30]
    call sub_00451940
    mov ebx, 0x60
    xor edx, edx
    lea eax, [ebp - 0xa4]
    call sub_00451940
    mov dword ptr [ebp - 0xa4], 0x60
    mov eax, dword ptr [d_004617c0]
    mov eax, dword ptr [eax]
    lea edx, [ebp - 0xa4]
    push edx
    push dword ptr [d_004617c0]
    call dword ptr [eax + 0x10]
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    jne loc_004194dd
    mov word ptr [ebp - 0x30], 1
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [ebp - 0x2c], eax
    test dword ptr [ebp - 0xa0], 8
    je loc_004192be
    mov word ptr [ebp - 0x22], 0x10
    jmp loc_004192c4
loc_004192be:
    mov word ptr [ebp - 0x22], 8
loc_004192c4:
    test dword ptr [ebp - 0xa0], 2
    je loc_004192d8
    mov word ptr [ebp - 0x2e], 2
    jmp loc_004192de
loc_004192d8:
    mov word ptr [ebp - 0x2e], 1
loc_004192de:
    xor eax, eax
    mov ax, word ptr [ebp - 0x2e]
    xor edx, edx
    mov dx, word ptr [ebp - 0x22]
    imul edx, eax
    mov eax, edx
    sar edx, 0x1f
    shl edx, 3
    # sbb eax, edx
    .byte 0x1b,0xc2
    sar eax, 3
    mov word ptr [ebp - 0x24], ax
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [ebp - 0x2c], eax
    xor eax, eax
    mov ax, word ptr [ebp - 0x24]
    mov edx, dword ptr [ebp + 0x10]
    imul edx, eax
    mov dword ptr [ebp - 0x28], edx
    mov word ptr [ebp - 0x20], 0
    mov eax, dword ptr [ebp - 0x2c]
    push eax
    xor eax, eax
    mov ax, word ptr [ebp - 0x2e]
    push eax
    xor eax, eax
    mov ax, word ptr [ebp - 0x22]
    push eax
    mov eax, offset d_00459c05
    push eax
    call sub_0042c0c8
    add esp, 0x10
    mov eax, dword ptr [d_004617ac]
    mov eax, dword ptr [eax]
    lea edx, [ebp - 0x30]
    push edx
    push dword ptr [d_004617ac]
    call dword ptr [eax + 0x38]
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    je loc_00419488
    mov eax, dword ptr [ebp + 0x10]
    push eax
    mov eax, offset d_00459c49
    push eax
    call sub_0042c0c8
    add esp, 8
    cmp dword ptr [ebp - 0x18], 0x80070057
    jb loc_004193b4
    cmp dword ptr [ebp - 0x18], 0x80070057
    jbe loc_00419418
    cmp dword ptr [ebp - 0x18], 0x88780046
    jb loc_004193a6
    cmp dword ptr [ebp - 0x18], 0x88780046
    jbe loc_00419450
    cmp dword ptr [ebp - 0x18], 0x88780064
    je loc_004193dd
    jmp loc_00419486
loc_004193a6:
    cmp dword ptr [ebp - 0x18], 0x88780032
    je loc_004193fc
    jmp loc_00419486
loc_004193b4:
    cmp dword ptr [ebp - 0x18], 0x80004001
    jb loc_004193d8
    cmp dword ptr [ebp - 0x18], 0x80004001
    jbe loc_0041946c
    cmp dword ptr [ebp - 0x18], 0x8007000e
    je loc_00419434
    jmp loc_00419486
loc_004193d8:
    jmp loc_00419486
loc_004193dd:
    mov eax, offset d_00459bcd
    push eax
    mov eax, offset d_00459c70
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419486
loc_004193fc:
    mov eax, offset d_00459c7a
    push eax
    mov eax, offset d_00459c70
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419486
loc_00419418:
    mov eax, offset d_00459b96
    push eax
    mov eax, offset d_00459c70
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419486
loc_00419434:
    mov eax, offset d_00459ba9
    push eax
    mov eax, offset d_00459c70
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419486
loc_00419450:
    mov eax, offset d_00459c8c
    push eax
    mov eax, offset d_00459c70
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
    jmp loc_00419486
loc_0041946c:
    mov eax, offset d_00459bbb
    push eax
    mov eax, offset d_00459c70
    push eax
    mov eax, offset d_00459b8f
    push eax
    call sub_0042c0c8
    add esp, 0xc
loc_00419486:
    jmp loc_004194db
loc_00419488:
    mov eax, dword ptr [d_004617ac]
    mov eax, dword ptr [eax]
    lea edx, [ebp - 8]
    push edx
    push 0x12
    lea edx, [ebp - 0x30]
    push edx
    push dword ptr [d_004617ac]
    call dword ptr [eax + 0x14]
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    jne loc_004194cd
    mov eax, dword ptr [ebp - 0x2c]
    push eax
    xor eax, eax
    mov ax, word ptr [ebp - 0x2e]
    push eax
    xor eax, eax
    mov ax, word ptr [ebp - 0x22]
    push eax
    mov eax, offset d_00459ca2
    push eax
    call sub_0042c0c8
    add esp, 0x10
    jmp loc_004194db
loc_004194cd:
    mov eax, offset d_00459ceb
    push eax
    call sub_0042c0c8
    add esp, 4
loc_004194db:
    jmp loc_004194eb
loc_004194dd:
    mov eax, offset d_00459d12
    push eax
    call sub_0042c0c8
    add esp, 4
loc_004194eb:
    mov eax, 0x7fff
    call sub_0041af93
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_00419507:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 4
sub_00419512:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    call sub_0041b8c4
loc_00419525:
    cmp dword ptr [d_0045bd74], 0
    je loc_0041954e
    mov eax, dword ptr [d_0045bd74]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [d_0045bd74]
    call dword ptr [d_0045bd88]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_0045bd74], eax
    jmp loc_00419525
loc_0041954e:
    cmp dword ptr [d_004617ac], 0
    je loc_00419571
    mov eax, dword ptr [d_004617ac]
    mov eax, dword ptr [eax]
    push dword ptr [d_004617ac]
    call dword ptr [eax + 8]
    mov dword ptr [d_004617ac], 0
loc_00419571:
    cmp dword ptr [d_004617c0], 0
    je loc_00419594
    mov eax, dword ptr [d_004617c0]
    mov eax, dword ptr [eax]
    push dword ptr [d_004617c0]
    call dword ptr [eax + 8]
    mov dword ptr [d_004617c0], 0
loc_00419594:
    mov dword ptr [d_004617b8], 0
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
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
sub_004195bc:
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
    mov eax, 0x94
    call dword ptr [d_0045bd80]
    mov dword ptr [ebp - 0xc], eax
    mov ebx, 0x94
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_00451940
    mov ecx, 8
    mov edi, dword ptr [ebp - 0xc]
    mov esi, offset d_0045bd8c
    rep movsd dword ptr es:[edi], dword ptr [esi]
    mov eax, 0x12
    call dword ptr [d_0045bd80]
    mov dword ptr [ebp - 8], eax
    mov ebx, 0x12
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    call sub_00451940
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax], 1
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 2], 1
    test dword ptr [ebp - 0x10], 8
    je loc_0041963d
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0xe], 0x10
    jmp loc_00419646
loc_0041963d:
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0xe], 8
loc_00419646:
    test dword ptr [ebp - 0x10], 2
    jne loc_00419653
    or dword ptr [ebp - 0x10], 2
loc_00419653:
    mov edx, dword ptr [d_004617b0]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 4], edx
    mov eax, dword ptr [ebp - 8]
    xor ebx, ebx
    mov bx, word ptr [eax + 2]
    mov eax, dword ptr [ebp - 8]
    xor edx, edx
    mov dx, word ptr [eax + 0xe]
    imul edx, ebx
    mov eax, edx
    sar edx, 0x1f
    shl edx, 3
    # sbb eax, edx
    .byte 0x1b,0xc2
    sar eax, 3
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0xc], dx
    mov eax, dword ptr [ebp - 8]
    xor edx, edx
    mov dx, word ptr [eax + 0xc]
    mov eax, dword ptr [d_004617b0]
    imul eax, edx
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0x10], 0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x64], 0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x24], 0
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [edx + 0x3c], eax
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [edx + 0x44], eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x40], 0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x28], 0x14
    mov edx, dword ptr [d_004617a0]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x7c], edx
    mov edx, dword ptr [d_004617a8]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x78], edx
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x78]
    mov edx, dword ptr [ebp - 0xc]
    imul eax, dword ptr [edx + 0x7c]
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [edx + 0x6c], eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x2c], 0x100e0
    test dword ptr [ebp - 0x10], 2
    je loc_00419729
    mov eax, dword ptr [ebp - 0xc]
    or byte ptr [eax + 0x2c], 0x80
loc_00419729:
    test dword ptr [ebp - 0x10], 4
    je loc_00419739
    mov eax, dword ptr [ebp - 0xc]
    or byte ptr [eax + 0x2c], 0x40
loc_00419739:
    test dword ptr [ebp - 0x10], 0x40
    je loc_00419749
    mov eax, dword ptr [ebp - 0xc]
    or byte ptr [eax + 0x2c], 0x20
loc_00419749:
    test dword ptr [ebp - 0x14], 1
    je loc_00419759
    mov eax, dword ptr [ebp - 0xc]
    or byte ptr [eax + 0x2c], 2
loc_00419759:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [edx + 0x38], eax
    test dword ptr [ebp - 0x14], 0x10
    je loc_0041977e
    mov eax, dword ptr [ebp - 0xc]
    or byte ptr [eax + 0x3c], 0x20
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x50], 0xffffffff
    jmp loc_00419788
loc_0041977e:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x50], 0
loc_00419788:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x54], 0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x58], 0xffffffff
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x5c], 1
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x4c], 0x7fff
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041b844
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
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
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 8], ebx
    cmp dword ptr [d_004617b8], 0
    jne loc_004197fb
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419863
loc_004197fb:
    cmp dword ptr [ebp - 0x10], 0
    jne loc_00419815
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419863
loc_00419815:
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x78]
    mov edx, dword ptr [ebp - 0x10]
    imul eax, dword ptr [edx + 0x7c]
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    cmp edx, dword ptr [eax + 0x6c]
    jne loc_0041983f
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x78]
    mov edx, dword ptr [ebp - 0x10]
    imul eax, dword ptr [edx + 0x7c]
    mov edx, dword ptr [ebp - 0x10]
    mov dword ptr [edx + 0x6c], eax
loc_0041983f:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov dword ptr [edx + 0x78], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    mov dword ptr [edx + 0x7c], eax
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_00419863:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041986d:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x28
    .byte 0x81,0xec,0x28,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x14], edx
    cmp dword ptr [d_004617b8], 0
    jne loc_004198a0
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419a89
loc_004198a0:
    cmp dword ptr [ebp - 0x18], 0
    jne loc_004198bd
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419a89
loc_004198bd:
    mov edx, 0x200
    mov eax, dword ptr [ebp - 0x14]
    call dword ptr [d_0045bdac]
    mov ebx, dword ptr [ebp - 0x18]
    call dword ptr [ebx]
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], -1
    je loc_00419a77
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x18]
    call dword ptr [edx + 0x18]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [edx + 0x60], eax
    mov eax, dword ptr [ebp - 0x18]
    test byte ptr [eax + 0x44], 2
    je loc_00419966
    mov eax, dword ptr [ebp - 0x18]
    test byte ptr [eax + 0x3c], 0x20
    jne loc_0041990d
    mov eax, dword ptr [ebp - 0x18]
    or word ptr [eax + 0x3c], 0x120
loc_0041990d:
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x7c]
    mov edx, dword ptr [ebp - 0x18]
    imul eax, dword ptr [edx + 0x78]
    cmp eax, dword ptr [ebp - 8]
    jae loc_00419931
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x7c]
    mov edx, dword ptr [ebp - 0x18]
    imul eax, dword ptr [edx + 0x78]
    mov dword ptr [ebp - 8], eax
    jmp loc_00419964
loc_00419931:
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    mov ebx, dword ptr [ebp - 0x18]
    div dword ptr [ebx + 0x7c]
    mov ebx, eax
    mov eax, dword ptr [ebp - 0x18]
    imul ebx, dword ptr [eax + 0x7c]
    cmp ebx, dword ptr [ebp - 8]
    je loc_00419964
    xor edx, edx
    mov eax, dword ptr [ebp - 8]
    mov ebx, dword ptr [ebp - 0x18]
    div dword ptr [ebx + 0x7c]
    lea ebx, [eax + 1]
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x7c]
    imul eax, ebx
    mov dword ptr [ebp - 8], eax
loc_00419964:
    jmp loc_00419974
loc_00419966:
    mov eax, dword ptr [ebp - 0x18]
    and byte ptr [eax + 0x44], 0xfd
    mov eax, dword ptr [ebp - 0x18]
    or byte ptr [eax + 0x44], 1
loc_00419974:
    mov eax, dword ptr [ebp - 0x10]
    mov ecx, dword ptr [ebp - 0x18]
    mov dword ptr [ecx + 0x1c], eax
    mov eax, dword ptr [ebp - 8]
    call dword ptr [d_0045bd80]
    mov dword ptr [ebp - 0x20], eax
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x10]
    mov ecx, dword ptr [ebp - 0x18]
    call dword ptr [ecx + 8]
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 8]
    # je 0x419a23
    .byte 0x0f,0x84
    .long loc_00419a23 - . - 4
    mov eax, dword ptr [ebp - 0x18]
    test byte ptr [eax + 0x3c], 0x20
    je loc_004199b9
    mov eax, dword ptr [ebp - 0x18]
    test byte ptr [eax + 0x3d], 1
    je loc_004199bb
loc_004199b9:
    jmp loc_00419a10
loc_004199bb:
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x28], eax
    mov eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x1c]
    mov dword ptr [ebp - 0x24], eax
loc_004199ca:
    mov eax, dword ptr [ebp - 0x28]
    cmp eax, dword ptr [ebp - 8]
    jae loc_00419a0e
    mov eax, dword ptr [ebp - 8]
    sub eax, dword ptr [ebp - 0x28]
    cmp eax, dword ptr [ebp - 0x1c]
    jbe loc_004199f9
    mov ebx, dword ptr [ebp - 0x1c]
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    call sub_00451dc4
    mov eax, dword ptr [ebp - 0x1c]
    add dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [ebp - 0x1c]
    add dword ptr [ebp - 0x28], eax
    jmp loc_00419a0c
loc_004199f9:
    mov ebx, dword ptr [ebp - 8]
    sub ebx, dword ptr [ebp - 0x28]
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x24]
    call sub_00451dc4
    jmp loc_00419a0e
loc_00419a0c:
    jmp loc_004199ca
loc_00419a0e:
    jmp loc_00419a23
loc_00419a10:
    mov ebx, dword ptr [ebp - 8]
    sub ebx, dword ptr [ebp - 0x1c]
    xor edx, edx
    mov eax, dword ptr [ebp - 0x20]
    add eax, dword ptr [ebp - 0x1c]
    call sub_00451940
loc_00419a23:
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x18]
    call sub_00419c66
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x20]
    call dword ptr [d_0045bd88]
    mov eax, dword ptr [ebp - 0x18]
    test byte ptr [eax + 0x44], 1
    je loc_00419a5b
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x18]
    call dword ptr [edx + 4]
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x1c], 0xffffffff
    jmp loc_00419a6f
loc_00419a5b:
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x7c]
    call dword ptr [d_0045bd80]
    mov edx, eax
    mov eax, dword ptr [ebp - 0x18]
    mov dword ptr [eax + 0x20], edx
loc_00419a6f:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419a89
loc_00419a77:
    mov dword ptr [d_004617a4], 0x19
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_00419a89:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_00419a94:
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
    je loc_00419ab4
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x24], 0
    jne loc_00419acb
loc_00419ab4:
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    # jmp 0x419b38
    .byte 0xe9
    .long loc_00419b38 - . - 4
loc_00419acb:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    push 0
    mov eax, dword ptr [ebp - 0xc]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x34]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0x88780032
    jb loc_00419afe
    cmp dword ptr [ebp - 8], 0x88780032
    jbe loc_00419b05
    cmp dword ptr [ebp - 8], 0x88780046
    je loc_00419b05
    jmp loc_00419b05
loc_00419afe:
    cmp dword ptr [ebp - 8], 0x80070057
loc_00419b05:
    cmp dword ptr [ebp - 8], 0
    jne loc_00419b26
    mov eax, dword ptr [ebp - 0xc]
    and byte ptr [eax + 0x40], 0xfe
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419b38
loc_00419b26:
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_00419b38:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00419b44:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x24
    .byte 0x81,0xec,0x24,0x00,0x00,0x00
    mov dword ptr [ebp - 0x24], eax
    mov dword ptr [ebp - 0x20], edx
    mov dword ptr [ebp - 0x1c], ebx
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    push 1
    lea eax, [ebp - 8]
    push eax
    lea eax, [ebp - 0x10]
    push eax
    lea eax, [ebp - 0xc]
    push eax
    lea eax, [ebp - 0x14]
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    push 0
    mov eax, dword ptr [ebp - 0x24]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x2c]
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0x88780096
    jne loc_00419bcb
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 0x24]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x50]
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    push 1
    lea eax, [ebp - 8]
    push eax
    lea eax, [ebp - 0x10]
    push eax
    lea eax, [ebp - 0xc]
    push eax
    lea eax, [ebp - 0x14]
    push eax
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    push 0
    mov eax, dword ptr [ebp - 0x24]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x2c]
    mov dword ptr [ebp - 0x18], eax
loc_00419bcb:
    cmp dword ptr [ebp - 0x18], 0
    jne loc_00419c36
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x20]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00451dc4
    cmp dword ptr [ebp - 0x10], 0
    je loc_00419bf6
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x20]
    add edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_00451dc4
loc_00419bf6:
    mov eax, dword ptr [ebp - 0x24]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, dword ptr [ebp - 0x24]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x4c]
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    je loc_00419c34
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419c5c
loc_00419c34:
    jmp loc_00419c4a
loc_00419c36:
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419c5c
loc_00419c4a:
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_00419c5c:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00419c66:
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
    cmp dword ptr [d_004617b8], 0
    jne loc_00419c9b
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419d7e
loc_00419c9b:
    cmp dword ptr [ebp - 0x14], 0
    jne loc_00419cb8
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419d7e
loc_00419cb8:
    mov eax, dword ptr [ebp - 0x14]
    cmp dword ptr [eax + 0x24], 0
    jne loc_00419d6d
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 0x30], eax
    mov eax, dword ptr [d_004617c0]
    mov eax, dword ptr [eax]
    push 0
    mov edx, dword ptr [ebp - 0x14]
    add edx, 0x24
    push edx
    mov edx, dword ptr [ebp - 0x14]
    add edx, 0x28
    push edx
    push dword ptr [d_004617c0]
    call dword ptr [eax + 0xc]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    # je 0x419d6d
    .byte 0x0f,0x84
    .long loc_00419d6d - . - 4
    cmp dword ptr [ebp - 8], 0x80070057
    jb loc_00419d35
    cmp dword ptr [ebp - 8], 0x80070057
    jbe loc_00419d59
    cmp dword ptr [ebp - 8], 0x88780064
    jb loc_00419d2a
    cmp dword ptr [ebp - 8], 0x88780064
    jbe loc_00419d59
    cmp dword ptr [ebp - 8], 0x887800aa
    je loc_00419d59
    jmp loc_00419d59
loc_00419d2a:
    cmp dword ptr [ebp - 8], 0x8878000a
    je loc_00419d59
    jmp loc_00419d59
loc_00419d35:
    cmp dword ptr [ebp - 8], 0x80040110
    jb loc_00419d52
    cmp dword ptr [ebp - 8], 0x80040110
    jbe loc_00419d59
    cmp dword ptr [ebp - 8], 0x8007000e
    je loc_00419d59
    jmp loc_00419d59
loc_00419d52:
    cmp dword ptr [ebp - 8], 0x80004001
loc_00419d59:
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419d7e
loc_00419d6d:
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_00419b44
    mov dword ptr [ebp - 4], eax
loc_00419d7e:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_00419d88:
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
    je loc_00419da8
    mov eax, dword ptr [ebp - 0x14]
    cmp dword ptr [eax + 0x24], 0
    jne loc_00419dbf
loc_00419da8:
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419ebd
loc_00419dbf:
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041a1e2
    test eax, eax
    je loc_00419dd3
    mov eax, dword ptr [ebp - 0x14]
    call sub_00419a94
loc_00419dd3:
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [eax + 0x4c]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041a50d
    mov eax, dword ptr [ebp - 0x14]
    test byte ptr [eax + 0x3c], 0x20
    je loc_00419e06
    mov eax, dword ptr [ebp - 0x14]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    push 1
    push 0
    push 0
    mov eax, dword ptr [ebp - 0x14]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x30]
    mov dword ptr [ebp - 0x10], eax
    jmp loc_00419e20
loc_00419e06:
    mov eax, dword ptr [ebp - 0x14]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    push 0
    push 0
    push 0
    mov eax, dword ptr [ebp - 0x14]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x30]
    mov dword ptr [ebp - 0x10], eax
loc_00419e20:
    cmp dword ptr [ebp - 0x10], 0x88780032
    jb loc_00419e51
    cmp dword ptr [ebp - 0x10], 0x88780032
    jbe loc_00419e58
    cmp dword ptr [ebp - 0x10], 0x88780046
    jb loc_00419e4f
    cmp dword ptr [ebp - 0x10], 0x88780046
    jbe loc_00419e58
    cmp dword ptr [ebp - 0x10], 0x88780096
    je loc_00419e58
    jmp loc_00419e58
loc_00419e4f:
    jmp loc_00419e58
loc_00419e51:
    cmp dword ptr [ebp - 0x10], 0x80070057
loc_00419e58:
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [edx + 0x24]
    mov eax, dword ptr [eax]
    lea edx, [ebp - 8]
    push edx
    lea edx, [ebp - 0xc]
    push edx
    mov edx, dword ptr [ebp - 0x14]
    push dword ptr [edx + 0x24]
    call dword ptr [eax + 0x10]
    mov edx, dword ptr [ebp - 0x14]
    mov ebx, dword ptr [edx + 0x7c]
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    div ebx
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 0x70], eax
    cmp dword ptr [ebp - 0x10], 0
    jne loc_00419eab
    mov eax, dword ptr [ebp - 0x14]
    or byte ptr [eax + 0x40], 2
    inc dword ptr [d_0046179c]
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419ebd
loc_00419eab:
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_00419ebd:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00419ec9:
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
    je loc_00419ee9
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x24], 0
    jne loc_00419f00
loc_00419ee9:
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419f86
loc_00419f00:
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041a1a1
    test eax, eax
    jne loc_00419f20
    mov dword ptr [d_004617a4], 0x1b
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419f86
loc_00419f20:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 0xc]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x48]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0x80070057
    jb loc_00419f4d
    cmp dword ptr [ebp - 8], 0x80070057
    jbe loc_00419f4d
    cmp dword ptr [ebp - 8], 0x88780046
loc_00419f4d:
    cmp dword ptr [ebp - 8], 0
    jne loc_00419f74
    mov eax, dword ptr [ebp - 0xc]
    and byte ptr [eax + 0x40], 0xfd
    dec dword ptr [d_0046179c]
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419f86
loc_00419f74:
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_00419f86:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00419f92:
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
    jne loc_00419fbd
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_00419ff6
loc_00419fbd:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x1c], -1
    je loc_00419fdc
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x1c]
    mov edx, dword ptr [ebp - 8]
    call dword ptr [edx + 4]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x1c], 0xffffffff
loc_00419fdc:
    mov eax, dword ptr [ebp - 8]
    call sub_0041ac7a
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_00419ff6:
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
    mov eax, dword ptr [d_0046179c]
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
sub_0041a024:
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
    cmp dword ptr [ebp - 0x10], 0
    je loc_0041a044
    mov eax, dword ptr [ebp - 0x10]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041a05b
loc_0041a044:
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a195
loc_0041a05b:
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x40], 2
    je loc_0041a06d
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x40], 8
    je loc_0041a084
loc_0041a06d:
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a195
loc_0041a084:
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x40], 1
    jne loc_0041a183
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    lea eax, [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x24]
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    jne loc_0041a171
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x3c], 0x80
    jne loc_0041a0c9
    test dword ptr [ebp - 8], 5
    # jne 0x41a141
    .byte 0x0f,0x85
    .long loc_0041a141 - . - 4
loc_0041a0c9:
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x40], 8
    jne loc_0041a13f
    mov eax, dword ptr [ebp - 0x10]
    cmp dword ptr [eax + 0x88], 0
    je loc_0041a102
    mov edx, 1
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x84]
    mov ebx, dword ptr [ebp - 0x10]
    call dword ptr [ebx + 0x88]
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x88], 0
loc_0041a102:
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x44], 4
    je loc_0041a122
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x88], 0
    mov eax, dword ptr [ebp - 0x10]
    call sub_00419f92
    jmp loc_0041a13f
loc_0041a122:
    mov eax, dword ptr [ebp - 0x10]
    or byte ptr [eax + 0x40], 1
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x40], 2
    je loc_0041a138
    dec dword ptr [d_0046179c]
loc_0041a138:
    mov eax, dword ptr [ebp - 0x10]
    and byte ptr [eax + 0x40], 0xfd
loc_0041a13f:
    jmp loc_0041a15d
loc_0041a141:
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x40], 8
    jne loc_0041a153
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x44], 2
    jne loc_0041a155
loc_0041a153:
    jmp loc_0041a15d
loc_0041a155:
    mov eax, dword ptr [ebp - 0x10]
    call sub_00418a10
loc_0041a15d:
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a195
loc_0041a171:
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, offset d_00459d46
    push eax
    call sub_0042c0c8
    add esp, 8
loc_0041a183:
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041a195:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041a1a1:
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
    je loc_0041a1c1
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041a1ca
loc_0041a1c1:
    mov dword ptr [ebp - 4], 0
    jmp loc_0041a1d6
loc_0041a1ca:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x40]
    and eax, 2
    mov dword ptr [ebp - 4], eax
loc_0041a1d6:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041a1e2:
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
    je loc_0041a202
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041a20b
loc_0041a202:
    mov dword ptr [ebp - 4], 0
    jmp loc_0041a217
loc_0041a20b:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x40]
    and eax, 1
    mov dword ptr [ebp - 4], eax
loc_0041a217:
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
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_0041a243
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041a24c
loc_0041a243:
    mov dword ptr [ebp - 4], 0
    jmp loc_0041a258
loc_0041a24c:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x40]
    and eax, 4
    mov dword ptr [ebp - 4], eax
loc_0041a258:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041a264:
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
    je loc_0041a284
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041a28d
loc_0041a284:
    mov dword ptr [ebp - 4], 0
    jmp loc_0041a299
loc_0041a28d:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x40]
    and eax, 8
    mov dword ptr [ebp - 4], eax
loc_0041a299:
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
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    cmp dword ptr [ebp - 0xc], 0
    jne loc_0041a2d2
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a2de
loc_0041a2d2:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x3c]
    and eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
loc_0041a2de:
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
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    cmp dword ptr [ebp - 0xc], 0
    jne loc_0041a316
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a322
loc_0041a316:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x44]
    and eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
loc_0041a322:
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
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [edx + 0x80], eax
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
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
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x80]
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
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_0045bdac], eax
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
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
sub_0041a3c9:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [ebp - 0xc], 0
    jne loc_0041a3f6
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 8], eax
    jmp loc_0041a449
loc_0041a3f6:
    cmp word ptr [ebp - 4], 0
    je loc_0041a412
    mov eax, dword ptr [ebp - 0xc]
    or byte ptr [eax + 0x3c], 0x20
    xor eax, eax
    mov ax, word ptr [ebp - 4]
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [edx + 0x50], eax
    jmp loc_0041a437
loc_0041a412:
    mov eax, dword ptr [ebp - 0xc]
    and byte ptr [eax + 0x3c], 0xdf
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x50], 0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x58], 0xffffffff
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x54], 0
loc_0041a437:
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 8], eax
loc_0041a449:
    mov eax, dword ptr [ebp - 8]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041a454:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x20
    .byte 0x81,0xec,0x20,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0x7fff
    jbe loc_0041a475
    mov dword ptr [ebp - 8], 0x7fff
loc_0041a475:
    cmp dword ptr [ebp - 8], 0
    jne loc_0041a48b
    mov dword ptr [ebp - 0x18], 0
    mov dword ptr [ebp - 0x14], 0xc0c38800
    jmp loc_0041a4f6
loc_0041a48b:
    fild dword ptr [ebp - 8]
    fdivr qword ptr [d_00459d62]
    fstp qword ptr [ebp - 0x10]
    fld qword ptr [ebp - 0x10]
    sub esp, 8
    fstp qword ptr [esp]
    call sub_00443faf
    fmul qword ptr [d_00459d6a]
    fstp qword ptr [ebp - 0x20]
    push 0x40000000
    push 0
    call sub_00443faf
    fdivr qword ptr [ebp - 0x20]
    fstp qword ptr [ebp - 0x18]
    fld qword ptr [ebp - 0x18]
    fcomp qword ptr [d_00459d72]
    fnstsw ax
    sahf
    jae loc_0041a4de
    mov dword ptr [ebp - 0x18], 0
    mov dword ptr [ebp - 0x14], 0xc0c38800
    jmp loc_0041a4f6
loc_0041a4de:
    fldz
    fcomp qword ptr [ebp - 0x18]
    fnstsw ax
    sahf
    jae loc_0041a4f6
    mov dword ptr [ebp - 0x18], 0
    mov dword ptr [ebp - 0x14], 0
loc_0041a4f6:
    fld qword ptr [ebp - 0x18]
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
sub_0041a50d:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x14], edx
    cmp dword ptr [d_004617b8], 0
    jne loc_0041a540
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a609
loc_0041a540:
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x18]
    mov dword ptr [edx + 0x4c], eax
    cmp dword ptr [ebp - 0x18], 0
    je loc_0041a558
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041a56f
loc_0041a558:
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a609
loc_0041a56f:
    mov edx, dword ptr [d_00461798]
    imul edx, dword ptr [ebp - 0x14]
    mov ebx, 0x7fff
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0041a454
    mov dword ptr [ebp - 0xc], eax
    mov edx, dword ptr [ebp - 0x18]
    mov edx, dword ptr [edx + 0x24]
    mov edx, dword ptr [edx]
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x18]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x3c]
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 0x80070057
    jb loc_0041a5dc
    cmp dword ptr [ebp - 0x10], 0x80070057
    jbe loc_0041a5e3
    cmp dword ptr [ebp - 0x10], 0x8878001e
    jb loc_0041a5da
    cmp dword ptr [ebp - 0x10], 0x8878001e
    jbe loc_0041a5e3
    cmp dword ptr [ebp - 0x10], 0x88780046
    je loc_0041a5e3
    jmp loc_0041a5e3
loc_0041a5da:
    jmp loc_0041a5e3
loc_0041a5dc:
    cmp dword ptr [ebp - 0x10], 0x80004005
loc_0041a5e3:
    cmp dword ptr [ebp - 0x10], 0
    jne loc_0041a5f2
    mov dword ptr [ebp - 0x1c], 0
    jmp loc_0041a5f9
loc_0041a5f2:
    mov dword ptr [ebp - 0x1c], 0x20
loc_0041a5f9:
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [d_004617a4], eax
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041a609:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041a614:
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
    cmp dword ptr [d_004617b8], 0
    jne loc_0041a645
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a71d
loc_0041a645:
    cmp dword ptr [ebp - 0x18], 0
    je loc_0041a654
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041a66b
loc_0041a654:
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a71d
loc_0041a66b:
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    lea eax, [ebp - 0x14]
    push eax
    mov eax, dword ptr [ebp - 0x18]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x18]
    cmp dword ptr [ebp - 0x14], 0xffffd8f0
    jne loc_0041a692
    mov dword ptr [ebp - 0x10], 0
    jmp loc_0041a6c4
loc_0041a692:
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 0x1c], eax
    neg dword ptr [ebp - 0x1c]
    fild dword ptr [ebp - 0x1c]
    fdiv qword ptr [d_00459d7a]
    sub esp, 8
    fstp qword ptr [esp]
    push 0x40000000
    push 0
    call sub_0044412a
    fdivr qword ptr [d_00459d82]
    call sub_00433b38
    fistp dword ptr [ebp - 0x10]
loc_0041a6c4:
    imul edx, dword ptr [ebp - 0x10], 0x7fff
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_00461798]
    mov dword ptr [ebp - 0xc], eax
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0xc]
    sub eax, dword ptr [edx + 0x4c]
    call sub_00451e6d
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0x14
    jle loc_0041a714
    mov eax, dword ptr [ebp - 8]
    push eax
    mov eax, dword ptr [ebp - 0x18]
    push dword ptr [eax + 0x4c]
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, offset d_00459d8a
    push eax
    call sub_0042c0c8
    add esp, 0x10
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a71d
loc_0041a714:
    mov eax, dword ptr [ebp - 0x18]
    mov eax, dword ptr [eax + 0x4c]
    mov dword ptr [ebp - 4], eax
loc_0041a71d:
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
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [d_004617b8], 0
    jne loc_0041a75c
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 0xc], eax
    jmp loc_0041a812
loc_0041a75c:
    cmp dword ptr [ebp - 0x10], 0
    je loc_0041a76b
    mov eax, dword ptr [ebp - 0x10]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041a782
loc_0041a76b:
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 0xc], eax
    jmp loc_0041a812
loc_0041a782:
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x24]
    mov ebx, dword ptr [eax]
    xor edx, edx
    mov dx, word ptr [ebp - 4]
    imul edx, edx, 0x4e20
    mov ecx, 0xffff
    mov eax, edx
    sar edx, 0x1f
    idiv ecx
    sub eax, 0x2710
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push dword ptr [eax + 0x24]
    call dword ptr [ebx + 0x40]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0x80070057
    jb loc_0041a7e5
    cmp dword ptr [ebp - 8], 0x80070057
    jbe loc_0041a7ec
    cmp dword ptr [ebp - 8], 0x8878001e
    jb loc_0041a7e3
    cmp dword ptr [ebp - 8], 0x8878001e
    jbe loc_0041a7ec
    cmp dword ptr [ebp - 8], 0x88780046
    je loc_0041a7ec
    jmp loc_0041a7ec
loc_0041a7e3:
    jmp loc_0041a7ec
loc_0041a7e5:
    cmp dword ptr [ebp - 8], 0x80004005
loc_0041a7ec:
    cmp dword ptr [ebp - 8], 0
    jne loc_0041a7fb
    mov dword ptr [ebp - 0x14], 0
    jmp loc_0041a802
loc_0041a7fb:
    mov dword ptr [ebp - 0x14], 0x20
loc_0041a802:
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [d_004617a4], eax
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 0xc], eax
loc_0041a812:
    mov eax, dword ptr [ebp - 0xc]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 4], edx
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041a84d:
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
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov dword ptr [edx + 0x88], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    mov dword ptr [edx + 0x84], eax
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041a896:
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
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x38]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 0xc], 2
    jbe loc_0041a8c2
    cmp dword ptr [ebp - 0xc], 3
    je loc_0041a8c4
    jmp loc_0041a90a
    jmp loc_0041a90a
loc_0041a8c2:
    jmp loc_0041a90a
loc_0041a8c4:
    mov edx, dword ptr [ebp - 8]
    mov word ptr [edx + 2], 2
    mov edx, dword ptr [ebp - 8]
    mov dx, word ptr [edx + 0xe]
    and edx, 0xffff
    add edx, edx
    mov eax, edx
    sar edx, 0x1f
    shl edx, 3
    # sbb eax, edx
    .byte 0x1b,0xc2
    sar eax, 3
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0xc], dx
    mov edx, dword ptr [ebp - 8]
    xor eax, eax
    mov ax, word ptr [edx + 0xc]
    mov edx, dword ptr [d_004617b0]
    imul edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 8], edx
loc_0041a90a:
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
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
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_0045bd7c], eax
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
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
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    cmp dword ptr [d_004617b8], 0
    jne loc_0041a98e
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a9c3
loc_0041a98e:
    cmp dword ptr [ebp - 0xc], 0
    jne loc_0041a9a8
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041a9c3
loc_0041a9a8:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [edx + 0x6c], eax
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041a9c3:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041a9ce:
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
    cmp dword ptr [d_004617b8], 0
    jne loc_0041a9ff
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041aaac
loc_0041a9ff:
    cmp dword ptr [ebp - 0x14], 0
    je loc_0041aa0e
    mov eax, dword ptr [ebp - 0x14]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041aa18
loc_0041aa0e:
    mov dword ptr [d_004617a4], 0x16
loc_0041aa18:
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041a1a1
    test eax, eax
    jne loc_0041aa3b
    mov dword ptr [d_004617a4], 0x1b
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    # jmp 0x41aaac
    .byte 0xe9
    .long loc_0041aaac - . - 4
loc_0041aa3b:
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041a264
    test eax, eax
    je loc_0041aa5b
    mov dword ptr [d_004617a4], 0x1c
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041aaac
loc_0041aa5b:
    mov eax, dword ptr [ebp - 0x14]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    lea eax, [ebp - 8]
    push eax
    lea eax, [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x14]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x10]
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 0
    jne loc_0041aa9a
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 0x48], eax
    mov eax, dword ptr [ebp - 0x14]
    or byte ptr [eax + 0x40], 8
    mov eax, dword ptr [ebp - 0x14]
    call sub_00419ec9
    mov dword ptr [ebp - 4], eax
    jmp loc_0041aaac
loc_0041aa9a:
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041aaac:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041aab8:
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
    cmp dword ptr [d_004617b8], 0
    jne loc_0041aae9
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041ab95
loc_0041aae9:
    cmp dword ptr [ebp - 0xc], 0
    je loc_0041aaf8
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041ab02
loc_0041aaf8:
    mov dword ptr [d_004617a4], 0x16
loc_0041ab02:
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041a1a1
    test eax, eax
    je loc_0041ab25
    mov dword ptr [d_004617a4], 0x1d
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    # jmp 0x41ab95
    .byte 0xe9
    .long loc_0041ab95 - . - 4
loc_0041ab25:
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041a264
    test eax, eax
    jne loc_0041ab45
    mov dword ptr [d_004617a4], 0x1d
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041ab95
loc_0041ab45:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 0xc]
    push dword ptr [eax + 0x48]
    mov eax, dword ptr [ebp - 0xc]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x34]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    jne loc_0041ab83
    mov eax, dword ptr [ebp - 0xc]
    and byte ptr [eax + 0x40], 0xf7
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x48], 0
    mov eax, dword ptr [ebp - 0xc]
    call sub_00419d88
    mov dword ptr [ebp - 4], eax
    jmp loc_0041ab95
loc_0041ab83:
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041ab95:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
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
    cmp dword ptr [d_004617b8], 0
    jne loc_0041abd8
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041ac6f
loc_0041abd8:
    cmp dword ptr [ebp - 0x14], 0
    jne loc_0041abf5
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    # jmp 0x41ac6f
    .byte 0xe9
    .long loc_0041ac6f - . - 4
loc_0041abf5:
    cmp dword ptr [ebp - 0x10], 0
    je loc_0041ac03
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx], eax
loc_0041ac03:
    cmp dword ptr [ebp - 0xc], 0
    je loc_0041ac12
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 4], eax
loc_0041ac12:
    cmp dword ptr [ebp - 8], 0
    je loc_0041ac21
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 8], eax
loc_0041ac21:
    cmp dword ptr [ebp + 0x10], 0
    je loc_0041ac30
    mov eax, dword ptr [ebp + 0x10]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 0xc], eax
loc_0041ac30:
    cmp dword ptr [ebp + 0x14], 0
    je loc_0041ac3f
    mov eax, dword ptr [ebp + 0x14]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 0x10], eax
loc_0041ac3f:
    cmp dword ptr [ebp + 0x18], 0
    je loc_0041ac4e
    mov eax, dword ptr [ebp + 0x18]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 0x14], eax
loc_0041ac4e:
    cmp dword ptr [ebp + 0x1c], 0
    je loc_0041ac5d
    mov eax, dword ptr [ebp + 0x1c]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx + 0x18], eax
loc_0041ac5d:
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041ac6f:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0x10
sub_0041ac7a:
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
    call sub_0041b47a
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x24], 0
    je loc_0041acfb
    mov eax, dword ptr [ebp - 8]
    call sub_0041a1a1
    test eax, eax
    je loc_0041ace0
    mov eax, dword ptr [ebp - 8]
    call sub_00419ec9
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x88], 0
    je loc_0041ace0
    mov edx, 1
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x84]
    mov ebx, dword ptr [ebp - 8]
    call dword ptr [ebx + 0x88]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x88], 0
loc_0041ace0:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 8]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 8]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x24], 0
loc_0041acfb:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x20], 0
    je loc_0041ad1a
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x20]
    call dword ptr [d_0045bd88]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x20], 0
loc_0041ad1a:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x38]
    mov dword ptr [ebp - 4], eax
    cmp dword ptr [ebp - 4], 0
    je loc_0041ad32
    mov eax, dword ptr [ebp - 4]
    call dword ptr [d_0045bd88]
loc_0041ad32:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x8c], 0
    je loc_0041ad56
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 0x8c]
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x90]
    mov dword ptr [edx + 0x90], eax
loc_0041ad56:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x90], 0
    je loc_0041ad7c
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 0x90]
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x8c]
    mov dword ptr [edx + 0x8c], eax
    jmp loc_0041ad8a
loc_0041ad7c:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x8c]
    mov dword ptr [d_004617bc], eax
loc_0041ad8a:
    mov eax, dword ptr [ebp - 8]
    call dword ptr [d_0045bd88]
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
    # sub esp, 0x10
    .byte 0x81,0xec,0x10,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 4], edx
    mov dword ptr [ebp - 8], ebx
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
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
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
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
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
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
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
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
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
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
    mov dword ptr [ebp - 4], 0
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
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov dword ptr [ebp - 8], eax
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
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
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x1c
    .byte 0x81,0xec,0x1c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x1c], eax
    mov dword ptr [ebp - 0x18], edx
    mov dword ptr [ebp - 0x14], ebx
    mov dword ptr [ebp - 0x10], ecx
    mov eax, dword ptr [ebp - 0x1c]
    mov eax, dword ptr [eax + 0x38]
    mov dword ptr [ebp - 0xc], eax
    mov edx, dword ptr [ebp - 0xc]
    mov dx, word ptr [edx + 0xe]
    and edx, 0xffff
    mov eax, edx
    sar edx, 0x1f
    shl edx, 3
    # sbb eax, edx
    .byte 0x1b,0xc2
    sar eax, 3
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 2]
    and eax, 0xffff
    imul eax, edx
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 0x18], -1
    je loc_0041af31
    mov eax, dword ptr [ebp - 0x18]
    imul eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0x18], eax
loc_0041af31:
    mov eax, dword ptr [ebp - 0x14]
    imul eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x1c]
    mov dword ptr [edx + 0x50], eax
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x1c]
    mov dword ptr [edx + 0x54], eax
    cmp dword ptr [ebp - 0x10], -1
    je loc_0041af67
    mov edx, dword ptr [ebp - 0x10]
    imul edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x1c]
    mov ebx, dword ptr [ebp - 0x14]
    add ebx, edx
    mov dword ptr [eax + 0x58], ebx
    jmp loc_0041af71
loc_0041af67:
    mov eax, dword ptr [ebp - 0x1c]
    mov dword ptr [eax + 0x58], 0xffffffff
loc_0041af71:
    mov eax, dword ptr [ebp - 0x1c]
    or byte ptr [eax + 0x3c], 0x20
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0041af93:
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
    jl loc_0041afb3
    cmp dword ptr [ebp - 0xc], 0x7fff
    jle loc_0041afc7
loc_0041afb3:
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b00b
loc_0041afc7:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [d_00461798], eax
    mov eax, dword ptr [d_004617bc]
    mov dword ptr [ebp - 8], eax
loc_0041afd7:
    cmp dword ptr [ebp - 8], 0
    je loc_0041aff9
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 0x4c]
    mov eax, dword ptr [ebp - 8]
    call sub_0041a50d
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x8c]
    mov dword ptr [ebp - 8], eax
    jmp loc_0041afd7
loc_0041aff9:
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041b00b:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041b017:
    push ebx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    cmp dword ptr [ebp + 0x1c], 0
    je loc_0041b032
    mov eax, dword ptr [ebp + 0x1c]
    mov dword ptr [ebp - 4], eax
    call dword ptr [ebp - 4]
loc_0041b032:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ebx
    ret 0x14
sub_0041b03b:
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
    push 1
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, offset ptr_0041b017
    push eax
    push 0xa
    mov eax, dword ptr [ebp - 0x10]
    push eax
    call dword ptr cs:[__imp__timeSetEvent]
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], edx
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_0041b08c
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b09e
loc_0041b08c:
    mov dword ptr [d_004617a4], 0x20
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041b09e:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041b0a8:
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
    cmp dword ptr [eax], -1
    je loc_0041b0d6
    mov eax, dword ptr [ebp - 4]
    push dword ptr [eax]
    call dword ptr cs:[__imp__timeKillEvent]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0xffffffff
loc_0041b0d6:
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
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x14], eax
    cmp dword ptr [d_004617b8], 0
    jne loc_0041b110
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b197
loc_0041b110:
    cmp dword ptr [ebp - 0x14], 0
    jne loc_0041b12a
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b197
loc_0041b12a:
    mov eax, dword ptr [ebp - 0x14]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    lea eax, [ebp - 0xc]
    push eax
    lea eax, [ebp - 0x10]
    push eax
    mov eax, dword ptr [ebp - 0x14]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x10]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0x14]
    test byte ptr [eax + 0x44], 2
    je loc_0041b191
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [edx + 0x74]
    jbe loc_0041b170
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x10]
    sub edx, dword ptr [eax + 0x74]
    mov eax, dword ptr [ebp - 0x14]
    mov eax, dword ptr [eax + 0x64]
    add eax, edx
    mov dword ptr [ebp - 0x10], eax
    jmp loc_0041b191
loc_0041b170:
    mov eax, dword ptr [ebp - 0x14]
    mov eax, dword ptr [eax + 0x7c]
    mov edx, dword ptr [ebp - 0x14]
    imul eax, dword ptr [edx + 0x78]
    mov edx, eax
    mov eax, dword ptr [ebp - 0x14]
    add edx, dword ptr [eax + 0x64]
    add edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    sub edx, dword ptr [eax + 0x74]
    mov dword ptr [ebp - 0x10], edx
loc_0041b191:
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 4], eax
loc_0041b197:
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
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    cmp dword ptr [d_004617b8], 0
    jne loc_0041b1d6
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b33a
loc_0041b1d6:
    cmp dword ptr [ebp - 0x10], 0
    je loc_0041b1e5
    mov eax, dword ptr [ebp - 0x10]
    cmp dword ptr [eax + 0x24], 0
    jne loc_0041b1fc
loc_0041b1e5:
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b33a
loc_0041b1fc:
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x44], 2
    je loc_0041b313
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    mov ecx, dword ptr [ebp - 0x10]
    div dword ptr [ecx + 0x7c]
    xor edx, edx
    mov ecx, dword ptr [ebp - 0x10]
    div dword ptr [ecx + 0x78]
    mov dword ptr [ebp - 0x18], edx
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    mov ecx, dword ptr [ebp - 0x10]
    div dword ptr [ecx + 0x7c]
    mov dword ptr [ebp - 0x14], edx
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 0x10]
    mov ebx, dword ptr [ebp - 0x18]
    imul ebx, dword ptr [eax + 0x7c]
    mov eax, ebx
    add eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x34]
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x18]
    imul edx, dword ptr [eax + 0x7c]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    mov ecx, dword ptr [ebp - 0x10]
    call dword ptr [ecx + 0x10]
    mov eax, dword ptr [ebp - 0x10]
    mov ebx, dword ptr [eax + 0x7c]
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x1c]
    mov ecx, dword ptr [ebp - 0x10]
    call dword ptr [ecx + 8]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [edx + 0x7c]
    jae loc_0041b2de
    mov eax, dword ptr [ebp - 0x10]
    test byte ptr [eax + 0x44], 2
    je loc_0041b2c5
    xor ebx, ebx
    xor edx, edx
    mov ecx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ecx + 0x1c]
    mov ecx, dword ptr [ebp - 0x10]
    call dword ptr [ecx + 0x10]
    mov ecx, dword ptr [ebp - 0x10]
    mov ebx, dword ptr [ecx + 0x7c]
    sub ebx, dword ptr [ebp - 8]
    mov ecx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ecx + 0x20]
    add edx, dword ptr [ebp - 8]
    mov ecx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ecx + 0x1c]
    mov ecx, dword ptr [ebp - 0x10]
    call dword ptr [ecx + 8]
    jmp loc_0041b2de
loc_0041b2c5:
    mov eax, dword ptr [ebp - 0x10]
    mov ebx, dword ptr [eax + 0x7c]
    sub ebx, dword ptr [ebp - 8]
    xor edx, edx
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x20]
    add eax, dword ptr [ebp - 8]
    call sub_00451940
loc_0041b2de:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov dword ptr [edx + 0x64], eax
    mov edx, dword ptr [ebp - 0x18]
    inc edx
    mov eax, dword ptr [ebp - 0x10]
    cmp edx, dword ptr [eax + 0x78]
    jb loc_0041b2ff
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x70], 0
    jmp loc_0041b309
loc_0041b2ff:
    mov eax, dword ptr [ebp - 0x18]
    inc eax
    mov edx, dword ptr [ebp - 0x10]
    mov dword ptr [edx + 0x70], eax
loc_0041b309:
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041a024
    jmp loc_0041b328
loc_0041b313:
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x24]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push dword ptr [eax + 0x24]
    call dword ptr [edx + 0x34]
loc_0041b328:
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041b33a:
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
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], edx
    cmp dword ptr [d_004617b8], 0
    jne loc_0041b375
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b3d5
loc_0041b375:
    cmp dword ptr [ebp - 0xc], 0
    jne loc_0041b38f
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b3d5
loc_0041b38f:
    cmp dword ptr [ebp - 8], 1
    jge loc_0041b3a1
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x5c], 1
    jmp loc_0041b3c3
loc_0041b3a1:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [edx + 0x78]
    jbe loc_0041b3ba
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x78]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x5c], edx
    jmp loc_0041b3c3
loc_0041b3ba:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov dword ptr [edx + 0x5c], eax
loc_0041b3c3:
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041b3d5:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041b3e0:
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
    je loc_0041b3ff
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 0
    jne loc_0041b401
loc_0041b3ff:
    jmp loc_0041b40c
loc_0041b401:
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    test byte ptr [eax + 0x40], 4
    jne loc_0041b40e
loc_0041b40c:
    jmp loc_0041b471
loc_0041b40e:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 0x18], 0
    je loc_0041b428
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x18]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [edx + 0x1c], eax
    jmp loc_0041b433
loc_0041b428:
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [d_0045bd70], eax
loc_0041b433:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 0x1c], 0
    je loc_0041b44b
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x18]
    mov dword ptr [edx + 0x18], eax
loc_0041b44b:
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    and byte ptr [eax + 0x40], 0xfb
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], 0
    mov edx, dword ptr [d_0045bd74]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0045bd74], eax
loc_0041b471:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041b47a:
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
    mov eax, dword ptr [ebp - 4]
    test byte ptr [eax + 0x40], 4
    je loc_0041b4c1
    mov eax, dword ptr [d_0045bd70]
    mov dword ptr [ebp - 8], eax
loc_0041b49c:
    cmp dword ptr [ebp - 8], 0
    je loc_0041b4c1
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax]
    cmp eax, dword ptr [ebp - 4]
    jne loc_0041b4b6
    mov eax, dword ptr [ebp - 8]
    call sub_0041b3e0
    jmp loc_0041b4c1
loc_0041b4b6:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [ebp - 8], eax
    jmp loc_0041b49c
loc_0041b4c1:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041b4ca:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 8
    .byte 0x81,0xec,0x08,0x00,0x00,0x00
    mov eax, dword ptr [d_0045bd70]
    mov dword ptr [ebp - 4], eax
loc_0041b4e0:
    cmp dword ptr [ebp - 4], 0
    je loc_0041b5fc
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 4]
    cmp edx, dword ptr [eax + 8]
    jg loc_0041b517
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x10]
    mov edx, dword ptr [ebp - 4]
    add eax, dword ptr [edx + 4]
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    cmp edx, dword ptr [eax + 8]
    jge loc_0041b540
loc_0041b517:
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 4]
    cmp edx, dword ptr [eax + 8]
    jl loc_0041b53b
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x10]
    mov edx, dword ptr [ebp - 4]
    add eax, dword ptr [edx + 4]
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    cmp edx, dword ptr [eax + 8]
    jle loc_0041b540
loc_0041b53b:
    jmp loc_0041b5d2
loc_0041b540:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 8], 0
    # jne 0x41b5c8
    .byte 0x0f,0x85
    .long loc_0041b5c8 - . - 4
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 0x14], 0
    je loc_0041b572
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    call sub_0041a9ce
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    call sub_0041a50d
    jmp loc_0041b5c8
loc_0041b572:
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    test byte ptr [eax + 0x44], 4
    jne loc_0041b5be
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    call sub_00419ec9
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0xc], edx
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x10], edx
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 4], 0
    mov eax, dword ptr [ebp - 4]
    xor edx, edx
    mov dx, word ptr [eax + 8]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    call sub_0041a50d
    jmp loc_0041b5c8
loc_0041b5be:
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    call sub_00419f92
loc_0041b5c8:
    mov eax, dword ptr [ebp - 4]
    call sub_0041b3e0
    jmp loc_0041b5f1
loc_0041b5d2:
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 4]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [eax + 0x10], edx
    mov eax, dword ptr [ebp - 4]
    xor edx, edx
    mov dx, word ptr [eax + 0x10]
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax]
    call sub_0041a50d
loc_0041b5f1:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b4e0
loc_0041b5fc:
    cmp dword ptr [d_0045bd70], 0
    jne loc_0041b60f
    mov eax, offset d_0045bd78
    call sub_0041b0a8
loc_0041b60f:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041b618:
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
    mov dword ptr [ebp - 8], 0
    cmp dword ptr [d_004617b4], 0
    jne loc_0041b656
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b7d4
loc_0041b656:
    cmp dword ptr [ebp - 0x18], 0
    jne loc_0041b673
    mov dword ptr [d_004617a4], 0x16
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b7d4
loc_0041b673:
    mov eax, dword ptr [ebp - 0x18]
    test byte ptr [eax + 0x40], 4
    je loc_0041b6a1
    mov eax, dword ptr [d_0045bd70]
    mov dword ptr [ebp - 8], eax
loc_0041b684:
    cmp dword ptr [ebp - 8], 0
    je loc_0041b694
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax]
    cmp eax, dword ptr [ebp - 0x18]
    jne loc_0041b696
loc_0041b694:
    jmp loc_0041b6a1
loc_0041b696:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [ebp - 8], eax
    jmp loc_0041b684
loc_0041b6a1:
    cmp dword ptr [ebp - 8], 0
    # jne 0x41b71a
    .byte 0x0f,0x85
    .long loc_0041b71a - . - 4
    cmp dword ptr [d_0045bd74], 0
    je loc_0041b6cb
    mov eax, dword ptr [d_0045bd74]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [d_0045bd74]
    mov eax, dword ptr [eax + 0x1c]
    mov dword ptr [d_0045bd74], eax
    jmp loc_0041b6d9
loc_0041b6cb:
    mov eax, 0x20
    call dword ptr [d_0045bd80]
    mov dword ptr [ebp - 8], eax
loc_0041b6d9:
    cmp dword ptr [ebp - 8], 0
    je loc_0041b71a
    cmp dword ptr [d_0045bd70], 0
    je loc_0041b6f4
    mov edx, dword ptr [d_0045bd70]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [edx + 0x18], eax
loc_0041b6f4:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x18], 0
    mov edx, dword ptr [d_0045bd70]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_0045bd70], eax
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx], eax
loc_0041b71a:
    cmp dword ptr [ebp - 8], 0
    jne loc_0041b737
    mov dword ptr [d_004617a4], 0x1f
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b7d4
loc_0041b737:
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0x18]
    call sub_0041a614
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0xc], edx
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x10], edx
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 0x14], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    sub edx, dword ptr [eax + 0xc]
    imul edx, edx, 0x3e8
    imul ebx, dword ptr [ebp - 0x14], 0x28
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, dword ptr [ebp - 8]
    mov dword ptr [edx + 4], eax
    mov eax, dword ptr [ebp - 0x18]
    or byte ptr [eax + 0x40], 4
    mov eax, dword ptr [ebp - 0x18]
    call sub_0041a1a1
    test eax, eax
    jne loc_0041b7a0
    mov eax, dword ptr [ebp - 0x18]
    call sub_00419d88
loc_0041b7a0:
    cmp dword ptr [d_0045bd78], -1
    jne loc_0041b7c2
    mov ebx, offset d_0045bd78
    mov edx, offset ptr_0041b4ca
    mov eax, 0x28
    call sub_0041b03b
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b7d4
loc_0041b7c2:
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041b7d4:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
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
    xor ecx, ecx
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041b618
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041b80f:
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
    mov ecx, 1
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041b618
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041b844:
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
    mov dword ptr [eax + 0x90], 0
    mov edx, dword ptr [d_004617bc]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x8c], edx
    cmp dword ptr [d_004617bc], 0
    je loc_0041b889
    mov edx, dword ptr [d_004617bc]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [edx + 0x90], eax
loc_0041b889:
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_004617bc], eax
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
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
loc_0041b8a8:
    cmp dword ptr [d_004617bc], 0
    je loc_0041b8bd
    mov eax, dword ptr [d_004617bc]
    call sub_00419f92
    jmp loc_0041b8a8
loc_0041b8bd:
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041b8c4:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
loc_0041b8d2:
    cmp dword ptr [d_004617bc], 0
    je loc_0041b8fd
    mov eax, dword ptr [d_004617bc]
    mov eax, dword ptr [eax + 0x8c]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [d_004617bc]
    call sub_00419f92
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_004617bc], eax
    jmp loc_0041b8d2
loc_0041b8fd:
    cmp dword ptr [d_0045bd78], -1
    je loc_0041b910
    mov eax, offset d_0045bd78
    call sub_0041b0a8
loc_0041b910:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041b919:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov eax, dword ptr [d_004617bc]
    mov dword ptr [ebp - 4], eax
loc_0041b92f:
    cmp dword ptr [ebp - 4], 0
    je loc_0041b958
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x8c]
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 4]
    call sub_0041a024
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041b92f
loc_0041b958:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041b961:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0
    .byte 0x81,0xec,0x00,0x00,0x00,0x00
    call sub_0041b919
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
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
    cmp dword ptr [d_004617b8], 0
    jne loc_0041b9b2
    mov dword ptr [d_004617a4], 0x15
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
    # jmp 0x41ba26
    .byte 0xe9
    .long loc_0041ba26 - . - 4
loc_0041b9b2:
    cmp dword ptr [ebp - 0x14], 0
    je loc_0041b9c0
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [d_0045bd8c], eax
loc_0041b9c0:
    cmp dword ptr [ebp - 0x10], 0
    je loc_0041b9ce
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [d_0045bd90], eax
loc_0041b9ce:
    cmp dword ptr [ebp - 0xc], 0
    je loc_0041b9dc
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [d_0045bd94], eax
loc_0041b9dc:
    cmp dword ptr [ebp - 8], 0
    je loc_0041b9ea
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [d_0045bd98], eax
loc_0041b9ea:
    cmp dword ptr [ebp + 0x10], 0
    je loc_0041b9f8
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [d_0045bd9c], eax
loc_0041b9f8:
    cmp dword ptr [ebp + 0x14], 0
    je loc_0041ba06
    mov eax, dword ptr [ebp + 0x14]
    mov dword ptr [d_0045bda0], eax
loc_0041ba06:
    cmp dword ptr [ebp + 0x18], 0
    je loc_0041ba14
    mov eax, dword ptr [ebp + 0x18]
    mov dword ptr [d_0045bda4], eax
loc_0041ba14:
    mov dword ptr [d_004617a4], 0
    mov eax, dword ptr [d_004617a4]
    mov dword ptr [ebp - 4], eax
loc_0041ba26:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 0xc
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov eax, dword ptr [d_004617bc]
    mov dword ptr [ebp - 8], eax
loc_0041ba47:
    cmp dword ptr [ebp - 8], 0
    je loc_0041ba86
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x8c]
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0041a9ce
    test eax, eax
    je loc_0041ba7e
    mov eax, 0xffffffff
    call sub_004189c3
    push eax
    mov eax, offset d_00459de5
    push eax
    call sub_0042c0c8
    add esp, 8
loc_0041ba7e:
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 8], eax
    jmp loc_0041ba47
loc_0041ba86:
    mov dword ptr [ebp - 4], 0
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
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0xc], edx
    mov eax, dword ptr [d_004617bc]
    mov dword ptr [ebp - 8], eax
loc_0041bab4:
    cmp dword ptr [ebp - 8], 0
    je loc_0041baf9
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x8c]
    mov dword ptr [ebp - 0x14], eax
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 8]
    call sub_0041b80f
    test eax, eax
    je loc_0041baf1
    mov eax, 0xffffffff
    call sub_004189c3
    push eax
    mov eax, offset d_00459df8
    push eax
    call sub_0042c0c8
    add esp, 8
loc_0041baf1:
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [ebp - 8], eax
    jmp loc_0041bab4
loc_0041baf9:
    mov dword ptr [ebp - 4], 0
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
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    mov eax, dword ptr [d_004617bc]
    mov dword ptr [ebp - 8], eax
loc_0041bb21:
    cmp dword ptr [ebp - 8], 0
    je loc_0041bb43
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x8c]
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 8]
    call sub_0041aab8
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [ebp - 8], eax
    jmp loc_0041bb21
loc_0041bb43:
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041bb56:
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
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0045be38], eax
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
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [d_0045be34], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041bbbd:
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x120
    mov dword ptr [ebp - 0x1c], eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 0x18], ebx
    mov dword ptr [ebp - 0x14], ecx
    mov eax, dword ptr [ebp - 0x18]
    imul eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x1c]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov byte ptr [ebp - 0x11c], 0
    mov dword ptr [ebp - 4], 1
    mov dword ptr [ebp - 8], 3
loc_0041bbf8:
    cmp dword ptr [ebp - 8], 0x300
    jl loc_0041bc12
    jmp loc_0041bc86
loc_0041bc06:
    add dword ptr [ebp - 8], 3
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041bbf8
loc_0041bc12:
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax]
    and eax, 0xff
    sar eax, 3
    mov dword ptr [ebp - 0x120], eax
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax + 1]
    and eax, 0xff
    sar eax, 3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x120]
    shl eax, 5
    or eax, edx
    mov dword ptr [ebp - 0x120], eax
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax + 2]
    and eax, 0xff
    sar eax, 3
    mov edx, dword ptr [ebp - 0x120]
    shl edx, 5
    or edx, eax
    mov dword ptr [ebp - 0x120], edx
    mov eax, dword ptr [ebp - 0x120]
    mov dl, byte ptr [eax + d_00495390]
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + ebp - 0x11c], dl
    jmp loc_0041bc06
loc_0041bc86:
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 0x10]
    jae loc_0041bcac
    mov eax, dword ptr [ebp - 0x1c]
    mov al, byte ptr [eax]
    and eax, 0xff
    mov dl, byte ptr [eax + ebp - 0x11c]
    mov eax, dword ptr [ebp - 0x1c]
    mov byte ptr [eax], dl
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_0041bc86
loc_0041bcac:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x120
    mov dword ptr [ebp - 0x1c], eax
    mov dword ptr [ebp - 0xc], edx
    mov dword ptr [ebp - 0x18], ebx
    mov dword ptr [ebp - 0x14], ecx
    mov eax, dword ptr [ebp - 0x18]
    imul eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x1c]
    add edx, eax
    mov dword ptr [ebp - 0x10], edx
    mov byte ptr [ebp - 0x11c], 0
    mov dword ptr [ebp - 4], 1
    mov dword ptr [ebp - 8], 3
loc_0041bced:
    cmp dword ptr [ebp - 8], 0x300
    jl loc_0041bd07
    # jmp 0x41bd78
    .byte 0xe9
    .long loc_0041bd78 - . - 4
loc_0041bcfb:
    add dword ptr [ebp - 8], 3
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041bced
loc_0041bd07:
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax]
    and eax, 0xff
    sar eax, 1
    mov dword ptr [ebp - 0x120], eax
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax + 1]
    and eax, 0xff
    sar eax, 1
    mov edx, eax
    mov eax, dword ptr [ebp - 0x120]
    shl eax, 5
    or eax, edx
    mov dword ptr [ebp - 0x120], eax
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 8]
    mov al, byte ptr [eax + 2]
    and eax, 0xff
    sar eax, 1
    mov edx, dword ptr [ebp - 0x120]
    shl edx, 5
    or edx, eax
    mov dword ptr [ebp - 0x120], edx
    mov eax, dword ptr [ebp - 0x120]
    mov dl, byte ptr [eax + d_00495390]
    mov eax, dword ptr [ebp - 4]
    mov byte ptr [eax + ebp - 0x11c], dl
    jmp loc_0041bcfb
loc_0041bd78:
    mov eax, dword ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 0x10]
    jae loc_0041bd9e
    mov eax, dword ptr [ebp - 0x1c]
    mov al, byte ptr [eax]
    and eax, 0xff
    mov dl, byte ptr [eax + ebp - 0x11c]
    mov eax, dword ptr [ebp - 0x1c]
    mov byte ptr [eax], dl
    mov eax, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    jmp loc_0041bd78
loc_0041bd9e:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0041bda4:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x14], edx
    mov dword ptr [ebp - 0x10], ebx
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0x18]
    call dword ptr [d_0045be38]
    mov dword ptr [ebp - 0x18], eax
    mov edx, 0x2e
    mov eax, dword ptr [ebp - 0x18]
    call sub_00451d5e
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    je loc_0041be33
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov edx, offset d_00459e10
    mov eax, dword ptr [ebp - 0xc]
    call sub_00451f10
    test eax, eax
    jne loc_0041be11
    mov ecx, offset d_004617c4
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_00429de7
    mov dword ptr [ebp - 8], eax
    jmp loc_0041be31
loc_0041be11:
    cmp dword ptr [d_0045be34], 0
    je loc_0041be31
    mov ecx, dword ptr [ebp - 0x10]
    mov ebx, dword ptr [ebp - 0x14]
    mov edx, offset d_004617c4
    mov eax, dword ptr [ebp - 0x18]
    call dword ptr [d_0045be34]
    mov dword ptr [ebp - 8], eax
loc_0041be31:
    jmp loc_0041be53
loc_0041be33:
    cmp dword ptr [d_0045be34], 0
    je loc_0041be53
    mov ecx, dword ptr [ebp - 0x10]
    mov ebx, dword ptr [ebp - 0x14]
    mov edx, offset d_004617c4
    mov eax, dword ptr [ebp - 0x18]
    call dword ptr [d_0045be34]
    mov dword ptr [ebp - 8], eax
loc_0041be53:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041be63:
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
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041bda4
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_0041bea6
    mov eax, dword ptr [ebp - 0xc]
    mov ecx, dword ptr [eax]
    mov eax, dword ptr [ebp - 0x10]
    mov ebx, dword ptr [eax]
    mov edx, offset d_004617c4
    mov eax, dword ptr [ebp - 8]
    call sub_0041bbbd
loc_0041bea6:
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
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
    # sub esp, 0x14
    .byte 0x81,0xec,0x14,0x00,0x00,0x00
    mov dword ptr [ebp - 0x14], eax
    lea ebx, [ebp - 0xc]
    lea edx, [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041bda4
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    je loc_0041bef9
    mov ebx, 0x92
    mov edx, offset d_00459e14
    mov eax, dword ptr [ebp - 8]
    call sub_0041863d
    mov dword ptr [ebp - 4], offset d_004617c4
    jmp loc_0041bf00
loc_0041bef9:
    mov dword ptr [ebp - 4], 0
loc_0041bf00:
    mov eax, dword ptr [ebp - 4]
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
    # sub esp, 0x24
    .byte 0x81,0xec,0x24,0x00,0x00,0x00
    mov dword ptr [ebp - 0x24], eax
    mov dword ptr [ebp - 0x20], edx
    mov dword ptr [ebp - 0x1c], ebx
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x1c]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0x14], eax
    mov ebx, 0x9b
    mov edx, offset d_00459e14
    mov eax, dword ptr [ebp - 0x18]
    imul eax, dword ptr [ebp - 0x14]
    call sub_004184d0
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 8], 0
loc_0041bf57:
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [ebp - 0x14]
    jl loc_0041bf66
    jmp loc_0041bfba
loc_0041bf61:
    inc dword ptr [ebp - 8]
    jmp loc_0041bf57
loc_0041bf66:
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [ebp - 0x18]
    add eax, dword ptr [ebp - 0x24]
    cmp byte ptr [eax], 0
    je loc_0041bfba
    mov dword ptr [ebp - 4], 0
loc_0041bf7c:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 0x18]
    jl loc_0041bf8b
    jmp loc_0041bfb8
loc_0041bf86:
    inc dword ptr [ebp - 4]
    jmp loc_0041bf7c
loc_0041bf8b:
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [ebp - 0x18]
    add eax, dword ptr [ebp - 4]
    add eax, dword ptr [ebp - 0x24]
    cmp byte ptr [eax], 0
    je loc_0041bfb8
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [ebp - 0x18]
    add eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 0x24]
    add edx, eax
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov dl, byte ptr [edx]
    mov byte ptr [eax], dl
    jmp loc_0041bf86
loc_0041bfb8:
    jmp loc_0041bf61
loc_0041bfba:
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [ebp - 0x20]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x1c]
    mov dword ptr [edx], eax
    mov ebx, dword ptr [ebp - 4]
    imul ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x24]
    call sub_00451dc4
    mov ebx, 0xa9
    mov edx, offset d_00459e14
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041863d
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041bff5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov dword ptr [ebp - 4], offset d_004617c4
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
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x18
    .byte 0x81,0xec,0x18,0x00,0x00,0x00
    mov dword ptr [ebp - 0x18], eax
    mov dword ptr [ebp - 0x14], edx
    mov edx, offset d_00459e1f
    mov eax, dword ptr [ebp - 0x18]
    call dword ptr [d_0045be38]
    call sub_0043f134
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    jne loc_0041c04e
    mov dword ptr [ebp - 4], 0
    jmp loc_0041c0af
loc_0041c04e:
    mov eax, dword ptr [ebp - 0xc]
    call sub_00441284
    mov dword ptr [ebp - 0x10], eax
    mov ebx, 0xb7
    mov edx, offset d_00459e14
    mov eax, dword ptr [ebp - 0x10]
    call sub_004184d0
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0
    jne loc_0041c086
    mov eax, dword ptr [ebp - 0x14]
    mov dword ptr [eax], 0
    mov dword ptr [ebp - 4], 0
    jmp loc_0041c0af
loc_0041c086:
    mov ecx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, 1
    mov eax, dword ptr [ebp - 8]
    call sub_0043f4c0
    mov eax, dword ptr [ebp - 0xc]
    call sub_00441e50
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x14]
    mov dword ptr [edx], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
loc_0041c0af:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041c0ba:
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
loc_0041c0d1:
    mov edx, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    xor eax, eax
    mov al, byte ptr [edx]
    mov dword ptr [ebp - 8], eax
    cmp dword ptr [ebp - 8], 0xff
    je loc_0041c1a5
    mov eax, dword ptr [ebp - 0x14]
    dec dword ptr [ebp - 0x14]
    test dword ptr [ebp - 8], 0x80
    je loc_0041c14e
    and dword ptr [ebp - 8], 0x7f
    mov dword ptr [ebp - 4], 0
loc_0041c105:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 8]
    jle loc_0041c117
    jmp loc_0041c13c
loc_0041c10f:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041c105
loc_0041c117:
    mov edx, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x18]
    mov al, byte ptr [eax]
    mov byte ptr [edx], al
    mov edx, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0x18]
    mov al, byte ptr [eax + 1]
    mov byte ptr [edx], al
    add dword ptr [ebp - 0xc], -2
    cmp dword ptr [ebp - 0xc], 0
    jge loc_0041c10f
loc_0041c13c:
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    add dword ptr [ebp - 0x14], -2
    jmp loc_0041c195
loc_0041c14e:
    mov dword ptr [ebp - 4], 0
loc_0041c155:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 8]
    jle loc_0041c167
    jmp loc_0041c195
loc_0041c15f:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041c155
loc_0041c167:
    mov edx, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov dl, byte ptr [edx]
    mov byte ptr [eax], dl
    mov eax, dword ptr [ebp - 0x18]
    inc dword ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    mov al, byte ptr [eax]
    mov byte ptr [edx], al
    add dword ptr [ebp - 0x14], -2
    add dword ptr [ebp - 0xc], -2
    cmp dword ptr [ebp - 0xc], 0
    jge loc_0041c15f
loc_0041c195:
    cmp dword ptr [ebp - 0x14], 0
    jle loc_0041c1a5
    cmp dword ptr [ebp - 0xc], 0
    jg loc_0041c0d1
loc_0041c1a5:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0041c1ab:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_00461b68]
    cmp eax, dword ptr [d_00461b60]
    jl loc_0041c213
    add dword ptr [d_00461b60], 0x64
    cmp dword ptr [d_00461b6c], 0
    je loc_0041c1f8
    mov ecx, 0x41
    mov ebx, offset d_00459e24
    imul edx, dword ptr [d_00461b60], 0xc
    mov eax, dword ptr [d_00461b6c]
    call sub_004185aa
    mov dword ptr [d_00461b6c], eax
    jmp loc_0041c213
loc_0041c1f8:
    mov ebx, 0x43
    mov edx, offset d_00459e24
    imul eax, dword ptr [d_00461b60], 0xc
    call sub_004184d0
    mov dword ptr [d_00461b6c], eax
loc_0041c213:
    mov eax, dword ptr [d_00461b68]
    inc dword ptr [d_00461b68]
    imul eax, eax, 0xc
    mov edx, dword ptr [d_00461b6c]
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
sub_0041c238:
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
    mov ebx, 0x4b
    mov edx, offset d_00459e24
    mov eax, dword ptr [ebp - 4]
    mov ecx, dword ptr [eax + 2]
    sar ecx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    sar eax, 0x10
    imul eax, ecx
    call sub_004184d0
    mov edx, eax
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 8], edx
    mov eax, dword ptr [ebp - 4]
    mov edx, dword ptr [eax + 2]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 4]
    sar eax, 0x10
    imul eax, edx
    add dword ptr [d_00461b70], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041c299:
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x3c
    .byte 0x81,0xec,0x3c,0x00,0x00,0x00
    mov dword ptr [ebp - 0x3c], eax
    mov dword ptr [ebp - 0x38], edx
    mov dword ptr [ebp - 0x34], ebx
    mov dword ptr [ebp - 0x14], 0
    mov dword ptr [ebp - 0x10], 0
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 0x28], 0
loc_0041c2d1:
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x28]
    jg loc_0041c2e9
    jmp loc_0041c33b
loc_0041c2e1:
    mov eax, dword ptr [ebp - 0x28]
    inc dword ptr [ebp - 0x28]
    jmp loc_0041c2d1
loc_0041c2e9:
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 8]
    mov edx, dword ptr [ebp - 0x28]
    add edx, eax
    mov dword ptr [ebp - 0x20], edx
    mov dword ptr [ebp - 0x24], 0
loc_0041c2fe:
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x24]
    jg loc_0041c316
    jmp loc_0041c333
loc_0041c30e:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_0041c2fe
loc_0041c316:
    mov eax, dword ptr [ebp - 0x20]
    mov al, byte ptr [eax]
    and eax, 0xff
    cmp eax, dword ptr [ebp - 0x38]
    jne loc_0041c33b
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    add dword ptr [ebp - 0x20], eax
    jmp loc_0041c30e
loc_0041c333:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_0041c2e1
loc_0041c33b:
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 8]
    mov dword ptr [ebp - 0x20], eax
    mov dword ptr [ebp - 0x24], 0
loc_0041c34b:
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x24]
    jg loc_0041c363
    jmp loc_0041c3a1
loc_0041c35b:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_0041c34b
loc_0041c363:
    mov dword ptr [ebp - 0x28], 0
loc_0041c36a:
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x28]
    jg loc_0041c382
    jmp loc_0041c399
loc_0041c37a:
    mov eax, dword ptr [ebp - 0x28]
    inc dword ptr [ebp - 0x28]
    jmp loc_0041c36a
loc_0041c382:
    mov eax, dword ptr [ebp - 0x20]
    mov al, byte ptr [eax]
    and eax, 0xff
    cmp eax, dword ptr [ebp - 0x38]
    jne loc_0041c3a1
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    jmp loc_0041c37a
loc_0041c399:
    mov eax, dword ptr [ebp - 0x10]
    inc dword ptr [ebp - 0x10]
    jmp loc_0041c35b
loc_0041c3a1:
    mov dword ptr [ebp - 0x28], 0
loc_0041c3a8:
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x28]
    jg loc_0041c3c0
    jmp loc_0041c41c
loc_0041c3b8:
    mov eax, dword ptr [ebp - 0x28]
    inc dword ptr [ebp - 0x28]
    jmp loc_0041c3a8
loc_0041c3c0:
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 2]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 8]
    dec edx
    add eax, edx
    sub eax, dword ptr [ebp - 0x28]
    mov dword ptr [ebp - 0x20], eax
    mov dword ptr [ebp - 0x24], 0
loc_0041c3df:
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x24]
    jg loc_0041c3f7
    jmp loc_0041c414
loc_0041c3ef:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_0041c3df
loc_0041c3f7:
    mov eax, dword ptr [ebp - 0x20]
    mov al, byte ptr [eax]
    and eax, 0xff
    cmp eax, dword ptr [ebp - 0x38]
    jne loc_0041c41c
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    add dword ptr [ebp - 0x20], eax
    jmp loc_0041c3ef
loc_0041c414:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0041c3b8
loc_0041c41c:
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 2]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    sar eax, 0x10
    imul edx, eax
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 8]
    add eax, edx
    dec eax
    mov dword ptr [ebp - 0x20], eax
    mov dword ptr [ebp - 0x24], 0
loc_0041c444:
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x24]
    jg loc_0041c45c
    jmp loc_0041c49a
loc_0041c454:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_0041c444
loc_0041c45c:
    mov dword ptr [ebp - 0x28], 0
loc_0041c463:
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    cmp eax, dword ptr [ebp - 0x28]
    jg loc_0041c47b
    jmp loc_0041c492
loc_0041c473:
    mov eax, dword ptr [ebp - 0x28]
    inc dword ptr [ebp - 0x28]
    jmp loc_0041c463
loc_0041c47b:
    mov eax, dword ptr [ebp - 0x20]
    mov al, byte ptr [eax]
    and eax, 0xff
    cmp eax, dword ptr [ebp - 0x38]
    jne loc_0041c49a
    mov eax, dword ptr [ebp - 0x20]
    dec dword ptr [ebp - 0x20]
    jmp loc_0041c473
loc_0041c492:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0041c454
loc_0041c49a:
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 2]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    add eax, dword ptr [ebp - 0xc]
    sub edx, eax
    mov dword ptr [ebp - 0x30], edx
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 4]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x10]
    add eax, dword ptr [ebp - 8]
    sub edx, eax
    mov dword ptr [ebp - 0x2c], edx
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    mov edx, dword ptr [ebp - 0x10]
    imul edx, eax
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 8]
    add eax, dword ptr [ebp - 0x14]
    add eax, edx
    mov dword ptr [ebp - 0x20], eax
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 8]
    mov dword ptr [ebp - 0x1c], eax
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 2]
    sar eax, 0x10
    sub eax, dword ptr [ebp - 0x30]
    mov dword ptr [ebp - 4], eax
    mov dword ptr [ebp - 0x24], 0
loc_0041c4fe:
    mov eax, dword ptr [ebp - 0x24]
    cmp eax, dword ptr [ebp - 0x2c]
    jl loc_0041c510
    jmp loc_0041c543
loc_0041c508:
    mov eax, dword ptr [ebp - 0x24]
    inc dword ptr [ebp - 0x24]
    jmp loc_0041c4fe
loc_0041c510:
    mov dword ptr [ebp - 0x28], 0
loc_0041c517:
    mov eax, dword ptr [ebp - 0x28]
    cmp eax, dword ptr [ebp - 0x30]
    jl loc_0041c529
    jmp loc_0041c53b
loc_0041c521:
    mov eax, dword ptr [ebp - 0x28]
    inc dword ptr [ebp - 0x28]
    jmp loc_0041c517
loc_0041c529:
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x1c]
    inc dword ptr [ebp - 0x1c]
    mov al, byte ptr [eax]
    mov byte ptr [edx], al
    jmp loc_0041c521
loc_0041c53b:
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 0x20], eax
    jmp loc_0041c508
loc_0041c543:
    cmp dword ptr [ebp - 0x34], 0
    je loc_0041c5b2
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 2]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 4]
    sar eax, 0x10
    imul edx, eax
    mov eax, dword ptr [ebp - 0x30]
    imul eax, dword ptr [ebp - 0x2c]
    sub edx, eax
    add dword ptr [d_00461b64], edx
    mov eax, dword ptr [ebp - 0x30]
    imul eax, dword ptr [ebp - 0x2c]
    mov dword ptr [ebp - 0x18], eax
    cmp dword ptr [ebp - 0x18], 0
    jne loc_0041c592
    mov eax, offset d_00459e2a
    push eax
    call sub_0042c0c8
    add esp, 4
    mov dword ptr [ebp - 0x18], 1
loc_0041c592:
    mov ecx, 0xac
    mov ebx, offset d_00459e24
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x3c]
    mov eax, dword ptr [eax + 8]
    call sub_004185aa
    mov edx, eax
    mov eax, dword ptr [ebp - 0x3c]
    mov dword ptr [eax + 8], edx
loc_0041c5b2:
    mov eax, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x3c]
    mov word ptr [edx + 4], ax
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [ebp - 0x3c]
    mov word ptr [edx + 6], ax
    mov eax, dword ptr [ebp - 0x14]
    mov edx, dword ptr [ebp - 0x3c]
    sub word ptr [edx], ax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x3c]
    sub word ptr [edx + 2], ax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041c5e0:
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xdc
    mov dword ptr [ebp - 0x14], eax
    mov dword ptr [ebp - 0x10], edx
    mov dword ptr [ebp - 0xc], ebx
    mov dword ptr [ebp - 8], ecx
    cmp dword ptr [ebp - 0x14], 0
    jl loc_0041c608
    mov eax, dword ptr [ebp - 0x14]
    cmp eax, dword ptr [d_00461b68]
    jl loc_0041c60d
loc_0041c608:
    jmp loc_0041c6c7
loc_0041c60d:
    cmp dword ptr [ebp - 0x10], 0
    je loc_0041c629
    imul edx, dword ptr [ebp - 0x14], 0xc
    mov eax, dword ptr [d_00461b6c]
    add eax, edx
    mov edx, dword ptr [eax + 2]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax], edx
loc_0041c629:
    cmp dword ptr [ebp - 0xc], 0
    je loc_0041c645
    imul edx, dword ptr [ebp - 0x14], 0xc
    mov eax, dword ptr [d_00461b6c]
    add eax, edx
    mov edx, dword ptr [eax + 4]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], edx
loc_0041c645:
    cmp dword ptr [ebp - 8], 0
    je loc_0041c65e
    imul edx, dword ptr [ebp - 0x14], 0xc
    mov eax, dword ptr [d_00461b6c]
    add eax, edx
    movsx edx, word ptr [eax]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], edx
loc_0041c65e:
    cmp dword ptr [ebp + 0x10], 0
    je loc_0041c679
    imul edx, dword ptr [ebp - 0x14], 0xc
    mov eax, dword ptr [d_00461b6c]
    add eax, edx
    mov edx, dword ptr [eax]
    sar edx, 0x10
    mov eax, dword ptr [ebp + 0x10]
    mov dword ptr [eax], edx
loc_0041c679:
    imul eax, dword ptr [ebp - 0x14], 0xc
    mov edx, dword ptr [d_00461b6c]
    add eax, edx
    cmp dword ptr [eax + 8], 0
    jne loc_0041c6b3
    mov eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, offset d_00459e2e
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x78]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041c6b3:
    imul eax, dword ptr [ebp - 0x14], 0xc
    mov edx, dword ptr [d_00461b6c]
    add eax, edx
    mov eax, dword ptr [eax + 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041c6fc
loc_0041c6c7:
    mov eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, offset d_00459e50
    push eax
    lea eax, [ebp - 0xdc]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0xdc]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
    mov dword ptr [ebp - 4], 0
loc_0041c6fc:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret 4
sub_0041c707:
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
    mov edx, dword ptr [eax + 0x6c]
    mov eax, dword ptr [ebp - 8]
    cmp edx, dword ptr [eax + 0x68]
    jl loc_0041c77f
    mov eax, dword ptr [ebp - 8]
    add dword ptr [eax + 0x68], 0x64
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x70], 0
    je loc_0041c75c
    mov ecx, 0x108
    mov ebx, offset d_00459e24
    mov eax, dword ptr [ebp - 8]
    imul edx, dword ptr [eax + 0x68], 0x14
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x70]
    call sub_004185aa
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x70], edx
    jmp loc_0041c77f
loc_0041c75c:
    mov ecx, 0x10a
    mov ebx, offset d_00459e24
    mov edx, 1
    mov eax, dword ptr [ebp - 8]
    imul eax, dword ptr [eax + 0x68], 0x14
    call sub_00418511
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x70], edx
loc_0041c77f:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 0x6c]
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [eax + 0x6c]
    imul edx, edx, 0x14
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x70]
    add eax, edx
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
sub_0041c7a5:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 4
    .byte 0x81,0xec,0x04,0x00,0x00,0x00
    mov eax, dword ptr [d_00461b58]
    cmp eax, dword ptr [d_00461b54]
    jl loc_0041c812
    add dword ptr [d_00461b54], 0x64
    cmp dword ptr [d_00461b5c], 0
    je loc_0041c7f2
    mov ecx, 0x117
    mov ebx, offset d_00459e24
    imul edx, dword ptr [d_00461b54], 0x3c
    mov eax, dword ptr [d_00461b5c]
    call sub_004185aa
    mov dword ptr [d_00461b5c], eax
    jmp loc_0041c812
loc_0041c7f2:
    mov ecx, 0x119
    mov ebx, offset d_00459e24
    mov edx, 1
    imul eax, dword ptr [d_00461b54], 0x3c
    call sub_00418511
    mov dword ptr [d_00461b5c], eax
loc_0041c812:
    mov eax, dword ptr [d_00461b58]
    inc dword ptr [d_00461b58]
    imul eax, eax, 0x3c
    mov edx, dword ptr [d_00461b5c]
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
sub_0041c837:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xd0
    mov dword ptr [ebp - 0x50], eax
    mov dword ptr [ebp - 0x4c], edx
    imul edx, dword ptr [ebp - 0x4c], 0x14
    mov eax, dword ptr [ebp - 0x50]
    mov eax, dword ptr [eax + 0x70]
    add eax, edx
    mov dword ptr [ebp - 0x44], eax
loc_0041c859:
    mov eax, dword ptr [ebp - 0x44]
    add dword ptr [ebp - 0x44], 0x14
    mov eax, dword ptr [ebp - 0x4c]
    inc dword ptr [ebp - 0x4c]
    mov ebx, 4
    mov edx, offset d_00459e66
    mov eax, dword ptr [ebp - 0x44]
    call sub_0044413a
    test eax, eax
    jne loc_0041c89a
    mov eax, offset d_00459e6b
    call sub_0041284a
    mov eax, dword ptr [d_00461b68]
    call sub_0041289d
    mov eax, 0x69
    call sub_004128c9
loc_0041c89a:
    mov eax, dword ptr [ebp - 0x4c]
    mov edx, dword ptr [ebp - 0x50]
    cmp eax, dword ptr [edx + 0x6c]
    jl loc_0041c8c3
    mov eax, offset d_00459e95
    call sub_0041284a
    mov eax, dword ptr [d_00461b68]
    call sub_0041289d
    mov eax, 0x69
    call sub_004128c9
loc_0041c8c3:
    mov ebx, 4
    mov edx, offset d_00459ec7
    mov eax, dword ptr [ebp - 0x44]
    call sub_0044413a
    test eax, eax
    jne loc_0041c859
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x44]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x50]
    mov eax, dword ptr [eax + 0x74]
    call sub_0044419a
    mov ecx, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x18]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x14]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 4
    lea eax, [ebp - 0x40]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 4
    lea eax, [ebp - 0x3c]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x10]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x24]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x20]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0xc]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 4
    lea eax, [ebp - 0x28]
    call sub_00451b5f
    cmp dword ptr [ebp - 0x40], 0
    je loc_0041c9d0
    add dword ptr [ebp - 0x40], -0x18
    jmp loc_0041c9e4
loc_0041c9d0:
    mov eax, offset d_00459ecc
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041c9e4:
    cmp dword ptr [ebp - 0x3c], 0
    je loc_0041c9ee
    add dword ptr [ebp - 0x3c], -0x18
loc_0041c9ee:
    mov ebx, 1
    mov edx, dword ptr [ebp - 0x40]
    mov eax, dword ptr [ebp - 0x50]
    mov eax, dword ptr [eax + 0x74]
    call sub_0044419a
    mov eax, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 1
    lea eax, [ebp - 4]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 1
    lea eax, [ebp - 8]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x1c]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 4
    lea eax, [ebp - 0x30]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 4
    lea eax, [ebp - 0x2c]
    call sub_00451b5f
    add dword ptr [ebp - 0x1c], -0xc
    mov dword ptr [ebp - 0x54], 0
loc_0041ca84:
    xor eax, eax
    mov ax, word ptr [ebp - 0x1c]
    cmp eax, dword ptr [ebp - 0x54]
    jg loc_0041ca99
    jmp loc_0041caa6
loc_0041ca91:
    mov eax, dword ptr [ebp - 0x54]
    inc dword ptr [ebp - 0x54]
    jmp loc_0041ca84
loc_0041ca99:
    mov eax, dword ptr [ebp - 0x50]
    mov eax, dword ptr [eax + 0x74]
    call sub_0045266a
    jmp loc_0041ca91
loc_0041caa6:
    mov ebx, 0x16e
    mov edx, offset d_00459e24
    mov eax, dword ptr [ebp - 0x30]
    call sub_004184d0
    mov dword ptr [ebp - 0x38], eax
    mov ebx, 0x16f
    mov edx, offset d_00459e24
    mov eax, dword ptr [ebp - 0x2c]
    call sub_004184d0
    mov dword ptr [ebp - 0x34], eax
    mov eax, dword ptr [ebp - 0x50]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x38]
    call sub_00451b5f
    mov al, byte ptr [ebp - 4]
    mov byte ptr [ebp - 0x58], al
    cmp byte ptr [ebp - 0x58], 0
    jbe loc_0041cafc
    cmp byte ptr [ebp - 0x58], 0x11
    je loc_0041cb28
    jmp loc_0041cb3b
    jmp loc_0041cb3b
loc_0041cafc:
    mov eax, dword ptr [ebp - 0x30]
    cmp eax, dword ptr [ebp - 0x2c]
    je loc_0041cb18
    mov eax, offset d_00459ede
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041cb18:
    mov ebx, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x38]
    mov eax, dword ptr [ebp - 0x34]
    call sub_00451dc4
    jmp loc_0041cb6b
loc_0041cb28:
    mov ecx, dword ptr [ebp - 0x2c]
    mov ebx, dword ptr [ebp - 0x34]
    mov edx, dword ptr [ebp - 0x30]
    mov eax, dword ptr [ebp - 0x38]
    call sub_0041c0ba
    jmp loc_0041cb6b
loc_0041cb3b:
    xor eax, eax
    mov al, byte ptr [ebp - 4]
    push eax
    mov eax, offset d_00459f01
    push eax
    lea eax, [ebp - 0xbc]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0xbc]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041cb6b:
    call sub_0041c1ab
    mov dword ptr [ebp - 0x48], eax
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x48]
    mov word ptr [edx + 4], ax
    mov eax, dword ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x48]
    mov word ptr [edx + 6], ax
    mov eax, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x48]
    mov word ptr [edx], ax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x48]
    mov word ptr [edx + 2], ax
    mov eax, dword ptr [ebp - 0x48]
    call sub_0041c238
    mov eax, dword ptr [ebp - 0x18]
    # and eax, 7
    .byte 0x25,0x07,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc0], eax
    cmp word ptr [ebp - 0xc0], 4
    jne loc_0041cc84
    mov eax, dword ptr [ebp - 0x34]
    mov dword ptr [ebp - 0xc4], eax
    mov eax, dword ptr [ebp - 0x48]
    mov eax, dword ptr [eax + 8]
    mov dword ptr [ebp - 0xc8], eax
    mov dword ptr [ebp - 0xcc], 0
loc_0041cbdd:
    movsx eax, word ptr [ebp - 0x24]
    cmp eax, dword ptr [ebp - 0xcc]
    jg loc_0041cbfc
    jmp loc_0041cc82
loc_0041cbee:
    mov eax, dword ptr [ebp - 0xcc]
    inc dword ptr [ebp - 0xcc]
    jmp loc_0041cbdd
loc_0041cbfc:
    mov dword ptr [ebp - 0xd0], 0
loc_0041cc06:
    movsx eax, word ptr [ebp - 0x10]
    cmp eax, dword ptr [ebp - 0xd0]
    jg loc_0041cc22
    jmp loc_0041cc7d
loc_0041cc14:
    mov eax, dword ptr [ebp - 0xd0]
    inc dword ptr [ebp - 0xd0]
    jmp loc_0041cc06
loc_0041cc22:
    mov eax, dword ptr [ebp - 0xc4]
    mov ax, word ptr [eax]
    and eax, 0xffff
    mov dl, byte ptr [eax + d_00495390]
    mov eax, dword ptr [ebp - 0xc8]
    mov byte ptr [eax], dl
    test word ptr [ebp - 0x14], 4
    je loc_0041cc62
    mov eax, dword ptr [ebp - 0xc4]
    mov ax, word ptr [eax]
    and eax, 0xffff
    cmp eax, dword ptr [ebp - 0x28]
    jne loc_0041cc62
    mov eax, dword ptr [ebp - 0xc8]
    mov byte ptr [eax], 0
loc_0041cc62:
    mov eax, dword ptr [ebp - 0xc4]
    add dword ptr [ebp - 0xc4], 2
    mov eax, dword ptr [ebp - 0xc8]
    inc dword ptr [ebp - 0xc8]
    jmp loc_0041cc14
loc_0041cc7d:
    jmp loc_0041cbee
loc_0041cc82:
    jmp loc_0041ccb4
loc_0041cc84:
    mov eax, offset d_00459f1d
    call sub_0041284a
    mov eax, dword ptr [ebp - 0x18]
    # and eax, 7
    .byte 0x25,0x07,0x00,0x00,0x00
    and eax, 0xffff
    call sub_0041289d
    mov eax, dword ptr [d_00461b68]
    call sub_0041289d
    mov eax, 0x69
    call sub_004128c9
loc_0041ccb4:
    mov eax, dword ptr [ebp - 0x48]
    cmp word ptr [eax + 4], 0x28
    jne loc_0041ccc8
    mov eax, dword ptr [ebp - 0x48]
    cmp word ptr [eax + 6], 0x24
    je loc_0041ccd7
loc_0041ccc8:
    mov ebx, 1
    xor edx, edx
    mov eax, dword ptr [ebp - 0x48]
    call sub_0041c299
loc_0041ccd7:
    mov ebx, 0x1bd
    mov edx, offset d_00459e24
    mov eax, dword ptr [ebp - 0x38]
    call sub_0041863d
    mov ebx, 0x1be
    mov edx, offset d_00459e24
    mov eax, dword ptr [ebp - 0x34]
    call sub_0041863d
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041cd03:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x168
    mov dword ptr [ebp - 0x54], eax
    mov dword ptr [ebp - 0x50], edx
    imul edx, dword ptr [ebp - 0x50], 0x14
    mov eax, dword ptr [ebp - 0x54]
    mov eax, dword ptr [eax + 0x70]
    add eax, edx
    mov dword ptr [ebp - 0x3c], eax
    mov eax, dword ptr [ebp - 0x3c]
    add dword ptr [ebp - 0x3c], 0x14
    mov eax, dword ptr [ebp - 0x50]
    inc dword ptr [ebp - 0x50]
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x54]
    mov eax, dword ptr [eax + 0x74]
    call sub_0044419a
    mov ecx, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 0x2a
    lea eax, [ebp - 0xa0]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x30]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x34]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 0x10
    mov edx, 2
    lea eax, [ebp - 0x74]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x18]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x14]
    call sub_00451b5f
    lea eax, [ebp - 0xa0]
    call sub_004129fb
    call sub_0041c7a5
    mov dword ptr [ebp - 0x48], eax
    mov ebx, 0x2a
    lea edx, [ebp - 0xa0]
    mov eax, dword ptr [ebp - 0x48]
    call sub_00451dc4
    movsx eax, word ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 0x48]
    mov dword ptr [edx + 0x2c], eax
    movsx eax, word ptr [ebp - 0x34]
    mov edx, dword ptr [ebp - 0x48]
    mov dword ptr [edx + 0x30], eax
    movsx eax, word ptr [ebp - 0x18]
    mov edx, dword ptr [ebp - 0x48]
    mov dword ptr [edx + 0x34], eax
    mov ecx, 0x1f2
    mov ebx, offset d_00459e24
    mov edx, 1
    mov eax, dword ptr [ebp - 0x48]
    imul eax, dword ptr [eax + 0x34], 0x14
    call sub_00418511
    mov edx, eax
    mov eax, dword ptr [ebp - 0x48]
    mov dword ptr [eax + 0x38], edx
    mov dword ptr [ebp - 0x44], 0
    mov eax, dword ptr [ebp - 0x48]
    mov eax, dword ptr [eax + 0x38]
    mov dword ptr [ebp - 0x4c], eax
loc_0041ce4f:
    movsx eax, word ptr [ebp - 0x18]
    cmp eax, dword ptr [ebp - 0x44]
    jg loc_0041ce6c
    jmp loc_0041d19f
loc_0041ce5d:
    mov eax, dword ptr [ebp - 0x44]
    inc dword ptr [ebp - 0x44]
    mov eax, dword ptr [ebp - 0x4c]
    add dword ptr [ebp - 0x4c], 0x14
    jmp loc_0041ce4f
loc_0041ce6c:
    mov eax, dword ptr [ebp - 0x3c]
    add dword ptr [ebp - 0x3c], 0x14
    mov eax, dword ptr [ebp - 0x50]
    inc dword ptr [ebp - 0x50]
    mov ebx, 4
    mov edx, offset d_00459f3e
    mov eax, dword ptr [ebp - 0x3c]
    call sub_0044413a
    test eax, eax
    jne loc_0041cea3
    mov eax, offset d_00459f43
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041cea3:
    mov eax, dword ptr [ebp - 0x50]
    mov edx, dword ptr [ebp - 0x54]
    cmp eax, dword ptr [edx + 0x6c]
    jl loc_0041ced4
    mov eax, dword ptr [ebp - 0x44]
    push eax
    mov eax, offset d_00459f74
    push eax
    call sub_0042c0c8
    add esp, 8
    mov eax, offset d_00459f83
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041ced4:
    mov ebx, 4
    mov edx, offset d_00459fc4
    mov eax, dword ptr [ebp - 0x3c]
    call sub_0044413a
    test eax, eax
    jne loc_0041ce6c
    mov eax, dword ptr [ebp - 0x3c]
    add dword ptr [ebp - 0x3c], 0x14
    mov eax, dword ptr [ebp - 0x50]
    inc dword ptr [ebp - 0x50]
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x54]
    mov eax, dword ptr [eax + 0x74]
    call sub_0044419a
    mov eax, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x10]
    call sub_00451b5f
    mov ecx, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [ecx + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0xc]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 8]
    call sub_00451b5f
    movsx eax, word ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x4c]
    mov dword ptr [edx], eax
    movsx eax, word ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x4c]
    mov dword ptr [edx + 4], eax
    movsx eax, word ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x4c]
    mov dword ptr [edx + 8], eax
    mov eax, dword ptr [ebp - 0x3c]
    add dword ptr [ebp - 0x3c], 0x14
    mov eax, dword ptr [ebp - 0x50]
    inc dword ptr [ebp - 0x50]
    mov ebx, 4
    mov edx, offset d_00459e66
    mov eax, dword ptr [ebp - 0x3c]
    call sub_0044413a
    test eax, eax
    jne loc_0041d131
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x54]
    mov eax, dword ptr [eax + 0x74]
    call sub_0044419a
    mov eax, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 4]
    call sub_00451b5f
    movsx eax, word ptr [ebp - 4]
    mov edx, dword ptr [ebp - 0x4c]
    mov dword ptr [edx + 0xc], eax
    mov ecx, 0x21c
    mov ebx, offset d_00459e24
    mov edx, 1
    movsx eax, word ptr [ebp - 4]
    imul eax, eax, 0xc
    call sub_00418511
    mov edx, eax
    mov eax, dword ptr [ebp - 0x4c]
    mov dword ptr [eax + 0x10], edx
    mov dword ptr [ebp - 0x40], 0
    mov eax, dword ptr [ebp - 0x4c]
    mov eax, dword ptr [eax + 0x10]
    mov dword ptr [ebp - 0x38], eax
loc_0041cffe:
    movsx eax, word ptr [ebp - 4]
    cmp eax, dword ptr [ebp - 0x40]
    jg loc_0041d01b
    jmp loc_0041d12f
loc_0041d00c:
    mov eax, dword ptr [ebp - 0x40]
    inc dword ptr [ebp - 0x40]
    mov eax, dword ptr [ebp - 0x38]
    add dword ptr [ebp - 0x38], 0xc
    jmp loc_0041cffe
loc_0041d01b:
    mov eax, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x2c]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x28]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x24]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x20]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x54]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x1c]
    call sub_00451b5f
    cmp word ptr [ebp - 0x2c], 0
    jl loc_0041d0ad
    mov eax, dword ptr [d_00461b68]
    mov edx, dword ptr [ebp - 0x54]
    sub eax, dword ptr [edx + 0x78]
    movsx edx, word ptr [ebp - 0x2c]
    cmp edx, eax
    jl loc_0041d105
loc_0041d0ad:
    mov eax, dword ptr [ebp - 0x54]
    push eax
    mov eax, offset d_00459fc9
    push eax
    lea eax, [ebp - 0x104]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x104]
    call sub_0041284a
    mov eax, dword ptr [ebp - 0x44]
    inc eax
    push eax
    movsx eax, word ptr [ebp - 0x2c]
    push eax
    mov eax, offset d_00459fe0
    push eax
    lea eax, [ebp - 0x104]
    push eax
    call sub_004518d0
    add esp, 0x10
    lea eax, [ebp - 0x104]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041d105:
    movsx ebx, word ptr [ebp - 0x2c]
    mov eax, dword ptr [ebp - 0x54]
    mov edx, dword ptr [eax + 0x78]
    mov eax, dword ptr [ebp - 0x38]
    add ebx, edx
    mov dword ptr [eax], ebx
    movsx eax, word ptr [ebp - 0x28]
    mov edx, dword ptr [ebp - 0x38]
    mov dword ptr [edx + 4], eax
    movsx eax, word ptr [ebp - 0x24]
    mov edx, dword ptr [ebp - 0x38]
    mov dword ptr [edx + 8], eax
    jmp loc_0041d00c
loc_0041d12f:
    jmp loc_0041d19a
loc_0041d131:
    lea eax, [ebp - 0xa0]
    push eax
    mov eax, offset d_0045a004
    push eax
    lea eax, [ebp - 0x168]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x168]
    call sub_0041284a
    mov eax, dword ptr [ebp - 0x44]
    push eax
    mov eax, offset d_0045a016
    push eax
    lea eax, [ebp - 0x168]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x168]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
    mov eax, dword ptr [ebp - 0x4c]
    mov dword ptr [eax + 0xc], 0
    mov eax, dword ptr [ebp - 0x4c]
    mov dword ptr [eax + 0x10], 0
loc_0041d19a:
    jmp loc_0041ce5d
loc_0041d19f:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041d1a7:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x38
    .byte 0x81,0xec,0x38,0x00,0x00,0x00
    mov dword ptr [ebp - 0xc], eax
    mov dword ptr [ebp - 0x10], offset d_00461ac4
    mov ebx, 0x90
    xor edx, edx
    mov eax, dword ptr [ebp - 0x10]
    call sub_00451940
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0045189e
    mov edx, dword ptr [d_00461b68]
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x78], edx
    mov edx, offset d_0045a035
    mov eax, dword ptr [ebp - 0xc]
    call sub_004514fc
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x74], edx
    mov eax, dword ptr [ebp - 0x10]
    cmp dword ptr [eax + 0x74], 0
    jne loc_0041d215
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041284a
    mov eax, 0x1e
    call sub_004128c9
loc_0041d215:
    mov eax, dword ptr [ebp - 0x10]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 6
    lea eax, [ebp - 0x2c]
    call sub_00451b5f
    mov ebx, 6
    mov edx, offset d_0045a038
    lea eax, [ebp - 0x2c]
    call sub_0044413a
    test eax, eax
    je loc_0041d25f
    mov eax, offset d_0045a03f
    call sub_0041284a
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041d25f:
    mov eax, dword ptr [ebp - 0x10]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 4
    lea eax, [ebp - 0x24]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x10]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 4
    lea eax, [ebp - 0x20]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x10]
    mov ecx, dword ptr [eax + 0x74]
    mov ebx, 1
    mov edx, 2
    lea eax, [ebp - 0x1c]
    call sub_00451b5f
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x74]
    call sub_0044428e
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x74]
    test byte ptr [eax + 0xc], 0x10
    jne loc_0041d323
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041c707
    mov dword ptr [ebp - 8], eax
    mov ebx, 0x14
    lea edx, [ebp - 0x24]
    mov eax, dword ptr [ebp - 8]
    call sub_00451dc4
    mov eax, dword ptr [ebp - 8]
    cmp word ptr [eax + 8], 1
    jne loc_0041d30f
    mov dword ptr [ebp - 0x30], 0
loc_0041d2ed:
    mov eax, dword ptr [ebp - 0x30]
    mov edx, dword ptr [ebp - 8]
    cmp eax, dword ptr [edx + 4]
    jb loc_0041d302
    jmp loc_0041d30f
loc_0041d2fa:
    mov eax, dword ptr [ebp - 0x30]
    inc dword ptr [ebp - 0x30]
    jmp loc_0041d2ed
loc_0041d302:
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x74]
    call sub_0045266a
    jmp loc_0041d2fa
loc_0041d30f:
    mov ebx, 4
    lea edx, [ebp - 0x24]
    lea eax, [ebp - 0x38]
    call sub_00451dc4
    mov byte ptr [ebp - 0x34], 0
loc_0041d323:
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x74]
    test byte ptr [eax + 0xc], 0x10
    je loc_0041d25f
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x74]
    call sub_004515e8
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
sub_0041d350:
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
    cmp dword ptr [eax + 0x74], 0
    je loc_0041d375
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x74]
    call sub_0045172e
loc_0041d375:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax + 0x70], 0
    je loc_0041d39d
    mov ebx, 0x294
    mov edx, offset d_00459e24
    mov eax, dword ptr [ebp - 4]
    mov eax, dword ptr [eax + 0x70]
    call sub_0041863d
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax + 0x70], 0
loc_0041d39d:
    mov ebx, 0x90
    xor edx, edx
    mov eax, dword ptr [ebp - 4]
    call sub_00451940
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041d3b5:
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
    call sub_0045167a
    test eax, eax
    jne loc_0041d3ef
    mov edx, offset d_0045a051
    lea eax, [ebp - 0x74]
    call sub_00451d78
loc_0041d3ef:
    lea eax, [ebp - 0x74]
    call sub_00411d17
    call sub_0041d1a7
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x70]
    mov dword ptr [ebp - 4], eax
loc_0041d40f:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [edx + 0x6c]
    jl loc_0041d42b
    jmp loc_0041d458
loc_0041d41c:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x14
    jmp loc_0041d40f
loc_0041d42b:
    mov ebx, 4
    mov edx, offset d_00459e66
    mov eax, dword ptr [ebp - 4]
    call sub_0044413a
    test eax, eax
    jne loc_0041d456
    mov eax, dword ptr [ebp - 4]
    cmp word ptr [eax + 8], 0
    jne loc_0041d456
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041c837
loc_0041d456:
    jmp loc_0041d41c
loc_0041d458:
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 0x70]
    mov dword ptr [ebp - 4], eax
loc_0041d468:
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [edx + 0x6c]
    jl loc_0041d484
    jmp loc_0041d4b1
loc_0041d475:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x14
    jmp loc_0041d468
loc_0041d484:
    mov ebx, 4
    mov edx, offset d_00459f3e
    mov eax, dword ptr [ebp - 4]
    call sub_0044413a
    test eax, eax
    jne loc_0041d4af
    mov eax, dword ptr [ebp - 4]
    cmp word ptr [eax + 8], 0
    jne loc_0041d4af
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041cd03
loc_0041d4af:
    jmp loc_0041d475
loc_0041d4b1:
    mov eax, dword ptr [ebp - 0x10]
    call sub_0041d350
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041d4c2:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    cmp dword ptr [d_00461b5c], 0
    je loc_0041d5d5
    mov dword ptr [ebp - 0xc], 0
loc_0041d4e4:
    mov eax, dword ptr [ebp - 0xc]
    cmp eax, dword ptr [d_00461b58]
    jl loc_0041d4fc
    jmp loc_0041d5b7
loc_0041d4f4:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0041d4e4
loc_0041d4fc:
    imul eax, dword ptr [ebp - 0xc], 0x3c
    mov edx, dword ptr [d_00461b5c]
    add eax, edx
    cmp dword ptr [eax + 0x38], 0
    je loc_0041d5b2
    mov dword ptr [ebp - 8], 0
loc_0041d519:
    imul edx, dword ptr [ebp - 0xc], 0x3c
    mov eax, dword ptr [d_00461b5c]
    add edx, eax
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [edx + 0x34]
    jl loc_0041d536
    jmp loc_0041d594
loc_0041d52e:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0041d519
loc_0041d536:
    imul eax, dword ptr [ebp - 0xc], 0x3c
    mov edx, dword ptr [d_00461b5c]
    add eax, edx
    imul edx, dword ptr [ebp - 8], 0x14
    mov eax, dword ptr [eax + 0x38]
    add eax, edx
    cmp dword ptr [eax + 0x10], 0
    je loc_0041d592
    mov ebx, 0x2cf
    mov edx, offset d_00459e24
    imul ecx, dword ptr [ebp - 0xc], 0x3c
    mov eax, dword ptr [d_00461b5c]
    add eax, ecx
    imul ecx, dword ptr [ebp - 8], 0x14
    mov eax, dword ptr [eax + 0x38]
    add eax, ecx
    mov eax, dword ptr [eax + 0x10]
    call sub_0041863d
    imul edx, dword ptr [ebp - 0xc], 0x3c
    mov eax, dword ptr [d_00461b5c]
    add eax, edx
    imul edx, dword ptr [ebp - 8], 0x14
    mov eax, dword ptr [eax + 0x38]
    add eax, edx
    mov dword ptr [eax + 0x10], 0
loc_0041d592:
    jmp loc_0041d52e
loc_0041d594:
    mov ebx, 0x2d3
    mov edx, offset d_00459e24
    imul eax, dword ptr [ebp - 0xc], 0x3c
    mov ecx, dword ptr [d_00461b5c]
    add eax, ecx
    mov eax, dword ptr [eax + 0x38]
    call sub_0041863d
loc_0041d5b2:
    jmp loc_0041d4f4
loc_0041d5b7:
    mov ebx, 0x2d6
    mov edx, offset d_00459e24
    mov eax, dword ptr [d_00461b5c]
    call sub_0041863d
    mov dword ptr [d_00461b5c], 0
loc_0041d5d5:
    cmp dword ptr [d_00461b6c], 0
    # je 0x41d660
    .byte 0x0f,0x84
    .long loc_0041d660 - . - 4
    mov dword ptr [ebp - 4], 0
loc_0041d5e9:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00461b68]
    jl loc_0041d5fe
    jmp loc_0041d642
loc_0041d5f6:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041d5e9
loc_0041d5fe:
    imul eax, dword ptr [ebp - 4], 0xc
    mov edx, dword ptr [d_00461b6c]
    add eax, edx
    cmp dword ptr [eax + 8], 0
    je loc_0041d640
    mov ebx, 0x2dd
    mov edx, offset d_00459e24
    imul ecx, dword ptr [ebp - 4], 0xc
    mov eax, dword ptr [d_00461b6c]
    add eax, ecx
    mov eax, dword ptr [eax + 8]
    call sub_0041863d
    imul eax, dword ptr [ebp - 4], 0xc
    mov edx, dword ptr [d_00461b6c]
    add eax, edx
    mov dword ptr [eax + 8], 0
loc_0041d640:
    jmp loc_0041d5f6
loc_0041d642:
    mov ebx, 0x2e1
    mov edx, offset d_00459e24
    mov eax, dword ptr [d_00461b6c]
    call sub_0041863d
    mov dword ptr [d_00461b6c], 0
loc_0041d660:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
ptr_0041d669:
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
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00451df7
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041d695:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x74
    .byte 0x81,0xec,0x74,0x00,0x00,0x00
    mov eax, 0xc9
    call sub_004124a4
    call sub_00412e0c
    mov dword ptr [d_00461b70], 0
    mov edx, offset d_0045a061
    mov eax, offset d_0045a056
    call sub_00411d17
    call sub_004514fc
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    je loc_0041d7b8
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x10]
    call sub_004442df
    mov dword ptr [ebp - 8], eax
loc_0041d6eb:
    mov byte ptr [ebp - 0x74], 0
    mov eax, dword ptr [ebp - 0xc]
    call sub_0044428e
    mov dword ptr [ebp - 4], eax
    imul edx, dword ptr [ebp - 4], 0x64
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 8]
    call sub_00412e33
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, 0x63
    lea eax, [ebp - 0x74]
    call sub_004515ff
    cmp byte ptr [ebp - 0x74], 0x2d
    # jne 0x41d797
    .byte 0x0f,0x85
    .long loc_0041d797 - . - 4
    mov edx, 0xa
    lea eax, [ebp - 0x74]
    call sub_0045167a
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 0
    je loc_0041d741
    mov eax, dword ptr [ebp - 0x10]
    mov byte ptr [eax], 0
loc_0041d741:
    cmp dword ptr [d_00464824], 0
    je loc_0041d78f
    mov ebx, 6
    mov edx, offset d_0045a064
    lea eax, [ebp - 0x73]
    call sub_00444338
    test eax, eax
    jne loc_0041d76c
    lea eax, [ebp - 0x6d]
    call sub_004516c1
    test eax, eax
    jg loc_0041d797
loc_0041d76c:
    mov ebx, 6
    mov edx, offset d_0045a06b
    lea eax, [ebp - 0x73]
    call sub_00444338
    test eax, eax
    jne loc_0041d78f
    lea eax, [ebp - 0x6d]
    call sub_004516c1
    cmp eax, 1
    jg loc_0041d797
loc_0041d78f:
    lea eax, [ebp - 0x73]
    call sub_0041d3b5
loc_0041d797:
    mov eax, dword ptr [ebp - 0xc]
    test byte ptr [eax + 0xc], 0x10
    je loc_0041d6eb
    mov eax, dword ptr [ebp - 0xc]
    call sub_0045172e
    mov eax, 0x64
    call sub_00412e33
    jmp loc_0041d7d1
loc_0041d7b8:
    mov eax, offset d_0045a056
    call sub_00411d17
    call sub_0041284a
    mov eax, 0x1e
    call sub_004128c9
loc_0041d7d1:
    push dword ptr [d_00461b70]
    mov eax, offset d_0045a072
    push eax
    call sub_0042c0c8
    add esp, 8
    push dword ptr [d_00461b64]
    mov eax, offset d_0045a095
    push eax
    call sub_0042c0c8
    add esp, 8
    mov ecx, offset ptr_0041d669
    mov ebx, 0x3c
    mov edx, dword ptr [d_00461b58]
    mov eax, dword ptr [d_00461b5c]
    call sub_00452231
    mov eax, offset ptr_0041d4c2
    call sub_00410ebf
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041d826:
    push ebx
    push ecx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x78
    .byte 0x81,0xec,0x78,0x00,0x00,0x00
    mov dword ptr [ebp - 0x10], eax
    mov dword ptr [ebp - 0x14], edx
    mov dword ptr [ebp - 0xc], 1
loc_0041d840:
    cmp dword ptr [ebp - 0xc], 2
    jle loc_0041d853
    jmp loc_0041d935
loc_0041d84b:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    jmp loc_0041d840
loc_0041d853:
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 4], 0
loc_0041d861:
    mov eax, dword ptr [ebp - 4]
    cmp eax, dword ptr [d_00461b58]
    jl loc_0041d879
    jmp loc_0041d903
loc_0041d871:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041d861
loc_0041d879:
    cmp dword ptr [ebp - 0x14], 0
    je loc_0041d8a1
    mov eax, dword ptr [ebp - 0x14]
    call sub_00451dab
    mov ebx, eax
    mov edx, dword ptr [ebp - 0x14]
    imul eax, dword ptr [ebp - 4], 0x3c
    mov ecx, dword ptr [d_00461b5c]
    add eax, ecx
    call sub_004528c8
    test eax, eax
    jne loc_0041d871
loc_0041d8a1:
    cmp dword ptr [ebp - 0xc], 2
    jne loc_0041d8f8
    imul eax, dword ptr [ebp - 4], 0x3c
    mov edx, dword ptr [d_00461b5c]
    add eax, edx
    push dword ptr [eax + 0x34]
    imul edx, dword ptr [ebp - 4], 0x3c
    mov eax, dword ptr [d_00461b5c]
    add eax, edx
    push eax
    mov eax, offset d_0045a0c0
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0x10
    mov ebx, 0x332
    mov edx, offset d_00459e24
    lea eax, [ebp - 0x78]
    call sub_004186ac
    mov ebx, eax
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 4]
    add eax, edx
    mov dword ptr [eax], ebx
loc_0041d8f8:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0041d871
loc_0041d903:
    cmp dword ptr [ebp - 0xc], 1
    jne loc_0041d930
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x10]
    mov dword ptr [edx], eax
    mov ebx, 0x338
    mov edx, offset d_00459e24
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax]
    shl eax, 2
    call sub_004184d0
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 4], edx
loc_0041d930:
    jmp loc_0041d84b
loc_0041d935:
    mov ecx, offset ptr_00412ca6
    mov ebx, 4
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [eax]
    mov eax, dword ptr [ebp - 0x10]
    mov eax, dword ptr [eax + 4]
    call sub_00452231
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041d957:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x80
    mov dword ptr [ebp - 0x1c], eax
    mov dword ptr [ebp - 8], 0
    mov dword ptr [ebp - 0x18], 0
    mov eax, dword ptr [d_00461b58]
    mov dword ptr [ebp - 0x14], eax
loc_0041d97e:
    mov edx, dword ptr [ebp - 0x18]
    add edx, dword ptr [ebp - 0x14]
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x10], eax
    mov edx, dword ptr [ebp - 0x1c]
    imul eax, dword ptr [ebp - 0x10], 0x3c
    mov ebx, dword ptr [d_00461b5c]
    add eax, ebx
    call sub_00451df7
    mov dword ptr [ebp - 0xc], eax
    cmp dword ptr [ebp - 0xc], 0
    jge loc_0041d9b5
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0x18], eax
    jmp loc_0041da07
loc_0041d9b5:
    cmp dword ptr [ebp - 0xc], 0
    jle loc_0041d9c3
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 0x14], eax
    jmp loc_0041da07
loc_0041d9c3:
    mov eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [ebp - 0x14]
    jge loc_0041d9d6
    mov eax, dword ptr [d_00461b58]
    dec eax
    cmp eax, dword ptr [ebp - 0x18]
    jne loc_0041da07
loc_0041d9d6:
    mov eax, dword ptr [ebp - 0x1c]
    push eax
    mov eax, offset d_0045a0c8
    push eax
    lea eax, [ebp - 0x80]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x80]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
    mov dword ptr [ebp - 4], 0xffffffff
    jmp loc_0041da17
loc_0041da07:
    cmp dword ptr [ebp - 0xc], 0
    jne loc_0041d97e
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 4], eax
loc_0041da17:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041da23:
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
    call sub_0041d957
    mov dword ptr [ebp - 8], eax
    imul edx, dword ptr [ebp - 8], 0x3c
    mov eax, dword ptr [d_00461b5c]
    add eax, edx
    mov eax, dword ptr [eax + 0x34]
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
sub_0041da5c:
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
    jl loc_0041da7e
    mov eax, dword ptr [ebp - 8]
    cmp eax, dword ptr [d_00461b58]
    jl loc_0041da80
loc_0041da7e:
    jmp loc_0041da94
loc_0041da80:
    imul eax, dword ptr [ebp - 8], 0x3c
    mov edx, dword ptr [d_00461b5c]
    add eax, edx
    mov eax, dword ptr [eax + 0x34]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041da9b
loc_0041da94:
    mov dword ptr [ebp - 4], 0
loc_0041da9b:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041daa7:
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
    jl loc_0041dacb
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_00461b58]
    jl loc_0041dacd
loc_0041dacb:
    jmp loc_0041db1b
loc_0041dacd:
    imul eax, dword ptr [ebp - 0x10], 0x3c
    mov edx, dword ptr [d_00461b5c]
    add eax, edx
    cmp dword ptr [eax + 0x34], 0
    je loc_0041db1b
    imul eax, dword ptr [ebp - 0x10], 0x3c
    mov ebx, dword ptr [d_00461b5c]
    add ebx, eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    div dword ptr [ebx + 0x34]
    mov dword ptr [ebp - 0xc], edx
    imul eax, dword ptr [ebp - 0x10], 0x3c
    mov ebx, dword ptr [d_00461b5c]
    add eax, ebx
    imul ebx, dword ptr [ebp - 0xc], 0x14
    mov eax, dword ptr [eax + 0x38]
    add eax, ebx
    mov eax, dword ptr [eax + 0x10]
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 4], eax
    jmp loc_0041db36
loc_0041db1b:
    mov eax, offset d_0045a0e5
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
    mov dword ptr [ebp - 4], 0
loc_0041db36:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041db41:
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
    jl loc_0041db69
    mov eax, dword ptr [ebp - 0x10]
    cmp eax, dword ptr [d_00461b58]
    jl loc_0041db6e
loc_0041db69:
    # jmp 0x41dbe4
    .byte 0xe9
    .long loc_0041dbe4 - . - 4
loc_0041db6e:
    imul eax, dword ptr [ebp - 0x10], 0x3c
    mov edx, dword ptr [d_00461b5c]
    add eax, edx
    cmp dword ptr [eax + 0x34], 0
    je loc_0041dbe4
    imul ebx, dword ptr [ebp - 0x10], 0x3c
    mov eax, dword ptr [d_00461b5c]
    add ebx, eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    div dword ptr [ebx + 0x34]
    mov dword ptr [ebp - 0xc], edx
    cmp dword ptr [ebp - 8], 0
    je loc_0041dbbc
    imul eax, dword ptr [ebp - 0x10], 0x3c
    mov edx, dword ptr [d_00461b5c]
    add eax, edx
    imul edx, dword ptr [ebp - 0xc], 0x14
    mov eax, dword ptr [eax + 0x38]
    add eax, edx
    mov eax, dword ptr [eax + 0x10]
    mov edx, dword ptr [eax + 4]
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], edx
loc_0041dbbc:
    cmp dword ptr [ebp - 4], 0
    je loc_0041dbe2
    imul eax, dword ptr [ebp - 0x10], 0x3c
    mov edx, dword ptr [d_00461b5c]
    add eax, edx
    imul edx, dword ptr [ebp - 0xc], 0x14
    mov eax, dword ptr [eax + 0x38]
    add eax, edx
    mov eax, dword ptr [eax + 0x10]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 4]
    mov dword ptr [eax], edx
loc_0041dbe2:
    jmp loc_0041dbf8
loc_0041dbe4:
    mov eax, offset d_0045a10e
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041dbf8:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0041dbfe:
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
    cmp byte ptr [eax + 0x10], 4
    je loc_0041dca9
    mov dword ptr [ebp - 4], 0
loc_0041dc23:
    cmp dword ptr [ebp - 4], 0xf
    jl loc_0041dc36
    # jmp 0x41dca9
    .byte 0xe9
    .long loc_0041dca9 - . - 4
loc_0041dc2e:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041dc23
loc_0041dc36:
    mov eax, dword ptr [ebp - 4]
    call sub_00425c10
    test eax, eax
    je loc_0041dc7a
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    xor edx, edx
    mov dl, byte ptr [eax + 0x56]
    mov eax, dword ptr [ebp - 4]
    add eax, 0x32
    call sub_00412135
    cmp edx, eax
    jle loc_0041dc78
    mov eax, dword ptr [ebp - 4]
    call sub_004255b2
    mov eax, dword ptr [ebp - 4]
    add eax, 0x32
    call sub_00412135
    mov edx, dword ptr [ebp - 8]
    add edx, dword ptr [ebp - 4]
    mov byte ptr [edx + 0x56], al
loc_0041dc78:
    jmp loc_0041dca7
loc_0041dc7a:
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    xor edx, edx
    mov dl, byte ptr [eax + 0x56]
    mov eax, dword ptr [ebp - 4]
    add eax, 0x32
    call sub_00412135
    cmp edx, eax
    jle loc_0041dca7
    mov eax, dword ptr [ebp - 4]
    call sub_004255b2
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    dec byte ptr [eax + 0x56]
    jmp loc_0041dc7a
loc_0041dca7:
    jmp loc_0041dc2e
loc_0041dca9:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041dcb2:
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
    cmp word ptr [eax + 0x66], 0
    jne loc_0041ddfc
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 8], 0
    jne loc_0041ddfc
    inc dword ptr [d_004642b0]
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 1
    jne loc_0041dcf5
    inc dword ptr [d_004642b4]
loc_0041dcf5:
    cmp dword ptr [ebp - 4], 0
    jl loc_0041dd01
    cmp dword ptr [ebp - 4], 0xa
    jl loc_0041dd06
loc_0041dd01:
    jmp loc_0041dda3
loc_0041dd06:
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 8]
    sub eax, edx
    mov edx, eax
    mov ebx, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    cmp eax, dword ptr [ebp - 4]
    jne loc_0041dd3c
    cmp dword ptr [d_0046497c], 0
    jne loc_0041dd3a
    imul eax, dword ptr [ebp - 4], 0x98
    dec word ptr [eax + d_00461c30]
loc_0041dd3a:
    jmp loc_0041dd72
loc_0041dd3c:
    imul eax, dword ptr [ebp - 4], 0x98
    inc word ptr [eax + d_00461c30]
    cmp dword ptr [d_0046489c], 0
    je loc_0041dd72
    mov eax, dword ptr [ebp - 8]
    cmp byte ptr [eax + 0x10], 1
    jne loc_0041dd72
    mov eax, 0x514
    call sub_00412135
    mov ebx, dword ptr [ebp - 4]
    mov edx, eax
    mov eax, ebx
    call sub_00421c71
loc_0041dd72:
    mov eax, dword ptr [ebp - 8]
    mov ebx, dword ptr [eax + 0x6a]
    sar ebx, 0x10
    mov eax, dword ptr [ebp - 8]
    mov ecx, dword ptr [eax + 0x68]
    sar ecx, 0x10
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 8]
    sub eax, edx
    mov edx, eax
    mov esi, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv esi
    mov edx, ecx
    call sub_0040ff14
loc_0041dda3:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 0x94], 0
    je loc_0041ddcf
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x94]
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], 0
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0xc]
    call sub_0040fdb6
loc_0041ddcf:
    mov eax, 0x12c
    call sub_00427961
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    add eax, 0x154
    call sub_004278f2
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 8], 1
    mov eax, dword ptr [ebp - 8]
    mov word ptr [eax + 0x30], 0
loc_0041ddfc:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041de04:
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
    jl loc_0041de25
    cmp dword ptr [ebp - 0x10], 0xa
    jl loc_0041de27
loc_0041de25:
    jmp loc_0041de5c
loc_0041de27:
    imul eax, dword ptr [ebp - 0x10], 0x98
    mov edx, offset d_00461bc4
    add edx, eax
    mov dword ptr [ebp - 4], edx
    cmp dword ptr [d_00464824], 0
    je loc_0041de48
    mov dword ptr [ebp - 0xc], 1
loc_0041de48:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 4], eax
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    call sub_0041dcb2
loc_0041de5c:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    ret
sub_0041de63:
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
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 4
    jne loc_0041de99
    mov eax, offset d_0045a140
    push eax
    call sub_0042c0c8
    add esp, 4
    mov dword ptr [ebp - 4], 0
    jmp loc_0041df41
loc_0041de99:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 5
    jne loc_0041deaf
    mov dword ptr [ebp - 4], 0
    jmp loc_0041df41
loc_0041deaf:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 6
    je loc_0041dec3
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 7
    jne loc_0041decc
loc_0041dec3:
    mov dword ptr [ebp - 4], 0
    jmp loc_0041df41
loc_0041decc:
    mov eax, 0x69
    call sub_00412135
    cmp eax, 1
    jle loc_0041deea
    mov eax, 0x69
    call sub_00412135
    mov dword ptr [ebp - 0x10], eax
    jmp loc_0041def1
loc_0041deea:
    mov dword ptr [ebp - 0x10], 1
loc_0041def1:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    inc edx
    mov dword ptr [eax + 4], edx
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041dcb2
    mov ebx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    mov ecx, dword ptr [eax + 4]
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov esi, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv esi
    mov edx, ecx
    call sub_0040f9bf
    mov dword ptr [ebp - 4], 1
loc_0041df41:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041df4c:
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
    mov dword ptr [eax + 0x78], 0
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 0x7c], 0
    mov dword ptr [ebp - 4], 0
loc_0041df78:
    cmp dword ptr [ebp - 4], 0xe
    jl loc_0041df88
    jmp loc_0041dfad
loc_0041df80:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041df78
loc_0041df88:
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    cmp byte ptr [eax + 0x84], 0
    je loc_0041dfab
    cmp dword ptr [d_00464a74], 0
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x84], 0
loc_0041dfab:
    jmp loc_0041df80
loc_0041dfad:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041dfb6:
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
    mov eax, dword ptr [ebp - 0x10]
    cmp byte ptr [eax + 0x10], 4
    je loc_0041e162
    mov dword ptr [ebp - 4], 0
loc_0041dfdd:
    cmp dword ptr [ebp - 4], 0xc8
    jl loc_0041dff0
    jmp loc_0041e015
loc_0041dfe8:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_0041dfdd
loc_0041dff0:
    call sub_0045190a
    mov edx, eax
    mov ebx, 9
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 8], edx
    call sub_0040c06a
    test eax, eax
    je loc_0041e015
    cmp dword ptr [ebp - 8], 7
    je loc_0041dfe8
loc_0041e015:
    cmp dword ptr [ebp - 0xc], 0
    je loc_0041e04c
    call sub_0045190a
    mov edx, eax
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0041e042
    imul eax, dword ptr [ebp - 8], 0x32
    add eax, 0xbb8
    call sub_00427961
    jmp loc_0041e04c
loc_0041e042:
    mov eax, 0x8fc
    call sub_00427961
loc_0041e04c:
    cmp dword ptr [ebp - 8], 7
    jne loc_0041e118
    mov dword ptr [ebp - 0x14], 0
loc_0041e05d:
    cmp dword ptr [ebp - 0x14], 0xc8
    jl loc_0041e073
    jmp loc_0041e116
loc_0041e06b:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_0041e05d
loc_0041e073:
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    imul edx, edx, 0x98
    mov eax, offset d_00461bc4
    add eax, edx
    mov dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x18]
    cmp eax, dword ptr [ebp - 0x10]
    # je 0x41e111
    .byte 0x0f,0x84
    .long loc_0041e111 - . - 4
    mov eax, dword ptr [ebp - 0x18]
    cmp byte ptr [eax + 0x10], 0
    je loc_0041e111
    mov eax, dword ptr [ebp - 0x18]
    cmp byte ptr [eax + 0x68], 0
    ja loc_0041e0bc
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax], 0
    je loc_0041e0c5
loc_0041e0bc:
    mov eax, dword ptr [ebp - 0x18]
    cmp dword ptr [eax + 8], 0
    je loc_0041e0c7
loc_0041e0c5:
    jmp loc_0041e111
loc_0041e0c7:
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x10]
    xor dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x18]
    xor dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x10]
    xor dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    xor dword ptr [eax + 0x20], edx
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x18]
    xor dword ptr [eax + 0x20], edx
    mov eax, dword ptr [ebp - 0x18]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x10]
    xor dword ptr [eax + 0x20], edx
    jmp loc_0041e116
loc_0041e111:
    jmp loc_0041e06b
loc_0041e116:
    jmp loc_0041e162
loc_0041e118:
    mov eax, dword ptr [ebp - 0x10]
    add eax, dword ptr [ebp - 8]
    mov byte ptr [eax + 0x84], 1
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x78], 1
    mov eax, dword ptr [ebp - 8]
    add eax, 0x82
    call sub_00412135
    mov edx, eax
    mov ebx, dword ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0x10]
    imul edx, ebx
    mov dword ptr [eax + 0x7c], edx
    mov eax, 0x81
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [eax + 0x80], edx
loc_0041e162:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041e16a:
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
    call sub_00425c10
    test eax, eax
    je loc_0041e1c6
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    xor edx, edx
    mov dl, byte ptr [eax + 0x56]
    mov eax, dword ptr [ebp - 4]
    add eax, 0x32
    call sub_00412135
    cmp edx, eax
    jle loc_0041e1c4
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00425bed
    mov eax, dword ptr [ebp - 4]
    add eax, 0x32
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    mov byte ptr [eax + 0x56], dl
loc_0041e1c4:
    jmp loc_0041e1f6
loc_0041e1c6:
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    xor edx, edx
    mov dl, byte ptr [eax + 0x56]
    mov eax, dword ptr [ebp - 4]
    add eax, 0x32
    call sub_00412135
    cmp edx, eax
    jle loc_0041e1f6
    mov edx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    call sub_00425bed
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    dec byte ptr [eax + 0x56]
    jmp loc_0041e1c6
loc_0041e1f6:
    cmp dword ptr [ebp - 4], 9
    jne loc_0041e216
    mov eax, dword ptr [ebp - 8]
    add eax, dword ptr [ebp - 4]
    cmp byte ptr [eax + 0x56], 0
    jne loc_0041e216
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    call sub_00424c47
loc_0041e216:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041e21e:
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
    call sub_0042be0b
    mov dword ptr [ebp - 4], 0xffffffff
    cmp dword ptr [d_00464980], 0
    je loc_0041e2a1
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [d_0046498c]
    test edx, edx
    jne loc_0041e2a1
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041df4c
    call sub_0040c06a
    test eax, eax
    je loc_0041e2a1
    mov ecx, dword ptr [ebp - 0xc]
    add ecx, 0x84
    mov eax, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [eax + 0x7c]
    mov esi, dword ptr [ebp - 0xc]
    mov esi, dword ptr [esi + 0x78]
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov edi, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv edi
    mov edx, esi
    call sub_00410065
loc_0041e2a1:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 4
    je loc_0041e5bb
    jmp loc_0041e2e6
    .byte 0x8b,0xc0
ptr_0041e2b2:
    .long ptr_0041e318
    .long ptr_0041e306
    .long ptr_0041e32a
    .long ptr_0041e33c
    .long ptr_0041e34e
    .long ptr_0041e360
    .long ptr_0041e37f
    .long ptr_0041e39e
    .long ptr_0041e3bd
    .long ptr_0041e3cf
    .long ptr_0041e402
    .long ptr_0041e421
    .long ptr_0041e444
loc_0041e2e6:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebp - 0x10], eax
    cmp dword ptr [ebp - 0x10], 0xc
    ja loc_0041e48f
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    jmp dword ptr cs:[eax + ptr_0041e2b2]
ptr_0041e306:
    mov dword ptr [ebp - 4], 0x190
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x57]
    jmp loc_0041e48f
ptr_0041e318:
    mov dword ptr [ebp - 4], 0x190
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x56]
    jmp loc_0041e48f
ptr_0041e32a:
    mov edx, 1
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041dfb6
    jmp loc_0041e48f
ptr_0041e33c:
    mov dword ptr [ebp - 4], 0x190
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x59]
    jmp loc_0041e48f
ptr_0041e34e:
    mov dword ptr [ebp - 4], 0x190
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x5a]
    jmp loc_0041e48f
ptr_0041e360:
    mov dword ptr [ebp - 4], 0x190
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x5b]
    mov edx, 9
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041e16a
    jmp loc_0041e48f
ptr_0041e37f:
    mov dword ptr [ebp - 4], 0x190
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x5c]
    mov edx, 7
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041e16a
    jmp loc_0041e48f
ptr_0041e39e:
    mov dword ptr [ebp - 4], 0x190
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x5d]
    mov edx, 6
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041e16a
    jmp loc_0041e48f
ptr_0041e3bd:
    mov dword ptr [ebp - 4], 0x190
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x5e]
    jmp loc_0041e48f
ptr_0041e3cf:
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x55], 0
    mov dword ptr [ebp - 4], 0x190
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x5f]
    mov edx, 5
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041e16a
    mov edx, 0xa
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041e16a
    jmp loc_0041e48f
ptr_0041e402:
    mov dword ptr [ebp - 4], 0x87
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x60]
    mov edx, 9
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041e16a
    # jmp 0x41e48f
    .byte 0xe9
    .long loc_0041e48f - . - 4
ptr_0041e421:
    mov edx, 1
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041dfb6
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041dfb6
    xor edx, edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041dfb6
    jmp loc_0041e48f
ptr_0041e444:
    mov dword ptr [ebp - 0x14], 0
loc_0041e44b:
    cmp dword ptr [ebp - 0x14], 0xc8
    jl loc_0041e45e
    jmp loc_0041e48f
loc_0041e456:
    mov eax, dword ptr [ebp - 0x14]
    inc dword ptr [ebp - 0x14]
    jmp loc_0041e44b
loc_0041e45e:
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xc
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax + 4], edx
    mov edx, dword ptr [ebp - 8]
    mov edx, dword ptr [edx + 4]
    shl edx, 2
    cmp dword ptr [edx + d_004647e0], 0
    je loc_0041e2e6
    jmp loc_0041e456
loc_0041e48f:
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    add eax, 0x226
    call sub_00412135
    test eax, eax
    je loc_0041e4e7
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0xc]
    add edx, dword ptr [eax + 4]
    mov eax, edx
    xor edx, edx
    mov dl, byte ptr [eax + 0x56]
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    add eax, 0x226
    call sub_00412135
    cmp edx, eax
    jle loc_0041e4e7
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    add eax, 0x226
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 8]
    mov ebx, dword ptr [ebp - 0xc]
    add ebx, dword ptr [eax + 4]
    mov eax, ebx
    mov byte ptr [eax + 0x56], dl
loc_0041e4e7:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 4], 2
    je loc_0041e4f9
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 4], 0xb
    jne loc_0041e4fb
loc_0041e4f9:
    jmp loc_0041e540
loc_0041e4fb:
    mov eax, dword ptr [ebp - 0xc]
    inc byte ptr [eax + 0x65]
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x65], 7
    jb loc_0041e530
    mov edx, dword ptr [ebp - 0xc]
    mov dl, byte ptr [edx + 0x65]
    and edx, 0xff
    sub edx, 7
    mov ebx, 5
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    jne loc_0041e530
    mov dword ptr [ebp - 4], 0x578
loc_0041e530:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x65], 0x32
    jbe loc_0041e540
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x65], 7
loc_0041e540:
    cmp dword ptr [ebp - 4], -1
    je loc_0041e54e
    mov eax, dword ptr [ebp - 4]
    call sub_00427961
loc_0041e54e:
    call sub_0040c06a
    test eax, eax
    je loc_0041e5bb
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax + 4], 2
    jne loc_0041e596
    mov ecx, dword ptr [ebp - 0xc]
    add ecx, 0x84
    mov eax, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [eax + 0x7c]
    mov esi, dword ptr [ebp - 0xc]
    mov esi, dword ptr [esi + 0x78]
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov edi, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv edi
    mov edx, esi
    call sub_00410065
    jmp loc_0041e5bb
loc_0041e596:
    mov ebx, dword ptr [ebp - 0xc]
    add ebx, 0x56
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov ecx, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv ecx
    mov edx, ebx
    call sub_00410021
loc_0041e5bb:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041e5c3:
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
    je loc_0041e5ee
    mov dword ptr [ebp - 4], 0
    jmp loc_0041e613
loc_0041e5ee:
    mov edx, dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 0xc]
    call sub_00425fb9
    test eax, eax
    jne loc_0041e606
    mov dword ptr [ebp - 0x10], 1
    jmp loc_0041e60d
loc_0041e606:
    mov dword ptr [ebp - 0x10], 0
loc_0041e60d:
    mov eax, dword ptr [ebp - 0x10]
    mov dword ptr [ebp - 4], eax
loc_0041e613:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop ecx
    pop ebx
    ret
sub_0041e61e:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0xb8
    mov dword ptr [ebp - 0x20], eax
    mov dword ptr [ebp - 0x10], 0xffffffff
    mov dword ptr [ebp - 8], 0
loc_0041e63d:
    cmp dword ptr [ebp - 8], 4
    jl loc_0041e64d
    jmp loc_0041e672
loc_0041e645:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0041e63d
loc_0041e64d:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov dword ptr [eax + ebp - 0x30], 0
    jmp loc_0041e645
    .byte 0x90
ptr_0041e65e:
    .long ptr_0041e694
    .long ptr_0041e936
    .long ptr_0041e6a0
    .long ptr_0041e7b3
    .long ptr_0041e87d
loc_0041e672:
    mov eax, dword ptr [ebp - 0x20]
    mov al, byte ptr [eax + 0x10]
    mov byte ptr [ebp - 0x34], al
    cmp byte ptr [ebp - 0x34], 4
    ja loc_0041e938
    xor eax, eax
    mov al, byte ptr [ebp - 0x34]
    shl eax, 2
    jmp dword ptr cs:[eax + ptr_0041e65e]
ptr_0041e694:
    mov dword ptr [ebp - 4], 0
    jmp loc_0041eb07
ptr_0041e6a0:
    mov eax, dword ptr [ebp - 0x20]
    cmp byte ptr [eax + 0x11], 0
    je loc_0041e730
    mov eax, dword ptr [d_004645e4]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e6c2
    mov dword ptr [ebp - 0x30], 1
loc_0041e6c2:
    mov eax, dword ptr [d_004645ec]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e6d7
    mov dword ptr [ebp - 0x28], 1
loc_0041e6d7:
    mov eax, dword ptr [d_004645f0]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e6ec
    mov dword ptr [ebp - 0x24], 1
loc_0041e6ec:
    mov eax, dword ptr [d_004645e8]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e701
    mov dword ptr [ebp - 0x2c], 1
loc_0041e701:
    mov eax, dword ptr [d_004645f4]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e716
    mov eax, dword ptr [ebp - 0x20]
    mov byte ptr [eax + 0x38], 1
loc_0041e716:
    mov eax, dword ptr [d_004645f8]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e72b
    mov eax, dword ptr [ebp - 0x20]
    mov byte ptr [eax + 0x39], 1
loc_0041e72b:
    # jmp 0x41e7ae
    .byte 0xe9
    .long loc_0041e7ae - . - 4
loc_0041e730:
    mov eax, dword ptr [d_004645bc]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e745
    mov dword ptr [ebp - 0x30], 1
loc_0041e745:
    mov eax, dword ptr [d_004645c4]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e75a
    mov dword ptr [ebp - 0x28], 1
loc_0041e75a:
    mov eax, dword ptr [d_004645c8]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e76f
    mov dword ptr [ebp - 0x24], 1
loc_0041e76f:
    mov eax, dword ptr [d_004645c0]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e784
    mov dword ptr [ebp - 0x2c], 1
loc_0041e784:
    mov eax, dword ptr [d_004645cc]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e799
    mov eax, dword ptr [ebp - 0x20]
    mov byte ptr [eax + 0x38], 1
loc_0041e799:
    mov eax, dword ptr [d_004645d0]
    cmp byte ptr [eax + d_004a2ba0], 0
    je loc_0041e7ae
    mov eax, dword ptr [ebp - 0x20]
    mov byte ptr [eax + 0x39], 1
loc_0041e7ae:
    jmp loc_0041e96e
ptr_0041e7b3:
    lea ecx, [ebp - 0x14]
    lea ebx, [ebp - 0x18]
    lea edx, [ebp - 0x1c]
    mov eax, dword ptr [ebp - 0x20]
    mov al, byte ptr [eax + 0x11]
    and eax, 0xff
    call sub_00429520
    cmp dword ptr [ebp - 0x18], 0x1e
    jge loc_0041e81c
    cmp dword ptr [ebp - 0x14], 0x4a
    jne loc_0041e7ff
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0x20]
    sub eax, edx
    mov edx, eax
    mov ebx, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [d_0045be3c], eax
    mov eax, dword ptr [d_0045be3c]
    call sub_004101f1
loc_0041e7ff:
    cmp dword ptr [ebp - 0x14], 0x8a
    jne loc_0041e81c
    mov dword ptr [d_0045be3c], 0xffffffff
    mov eax, dword ptr [d_0045be3c]
    call sub_004101f1
loc_0041e81c:
    cmp dword ptr [ebp - 0x18], 0x1e
    jge loc_0041e829
    mov dword ptr [ebp - 0x30], 1
loc_0041e829:
    cmp dword ptr [ebp - 0x1c], 0x1e
    jge loc_0041e836
    mov dword ptr [ebp - 0x24], 1
loc_0041e836:
    cmp dword ptr [ebp - 0x18], 0x46
    jle loc_0041e843
    mov dword ptr [ebp - 0x28], 1
loc_0041e843:
    cmp dword ptr [ebp - 0x1c], 0x46
    jle loc_0041e850
    mov dword ptr [ebp - 0x2c], 1
loc_0041e850:
    test dword ptr [ebp - 0x14], 1
    je loc_0041e864
    and dword ptr [ebp - 0x14], 0xfffffffe
    mov eax, dword ptr [ebp - 0x20]
    mov byte ptr [eax + 0x38], 1
loc_0041e864:
    test dword ptr [ebp - 0x14], 2
    je loc_0041e878
    and dword ptr [ebp - 0x14], 0xfffffffd
    mov eax, dword ptr [ebp - 0x20]
    mov byte ptr [eax + 0x39], 1
loc_0041e878:
    jmp loc_0041e96e
ptr_0041e87d:
    lea eax, [ebp - 0x38]
    push eax
    lea eax, [ebp - 0x3c]
    push eax
    lea ecx, [ebp - 0x40]
    lea ebx, [ebp - 0x44]
    lea esi, [ebp - 0x48]
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0x20]
    sub eax, edx
    mov edx, eax
    mov edi, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv edi
    mov edx, esi
    call sub_0040f3e9
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x1c]
    cmp eax, dword ptr [ebp - 0x44]
    jne loc_0041e8c3
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x20]
    cmp eax, dword ptr [ebp - 0x40]
    je loc_0041e8cd
loc_0041e8c3:
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [ebp - 0x20]
    mov word ptr [edx + 0x2e], ax
loc_0041e8cd:
    mov eax, dword ptr [ebp - 0x44]
    mov edx, dword ptr [ebp - 0x20]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 0x40]
    mov edx, dword ptr [ebp - 0x20]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 0x3c]
    mov edx, dword ptr [ebp - 0x20]
    mov word ptr [edx + 0x2c], ax
    mov eax, dword ptr [ebp - 0x38]
    mov edx, dword ptr [ebp - 0x20]
    mov word ptr [edx + 0x30], ax
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00425fb9
    cmp eax, 2
    jne loc_0041e934
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00425f79
loc_0041e934:
    jmp loc_0041e96e
ptr_0041e936:
    jmp loc_0041e96e
loc_0041e938:
    mov eax, dword ptr [ebp - 0x20]
    mov al, byte ptr [eax + 0x10]
    and eax, 0xff
    push eax
    mov eax, offset d_0045a16d
    push eax
    lea eax, [ebp - 0xac]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0xac]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041e96e:
    mov dword ptr [ebp - 0xc], 0
    mov dword ptr [ebp - 8], 0
loc_0041e97c:
    cmp dword ptr [ebp - 8], 4
    jl loc_0041e98c
    jmp loc_0041e9a1
loc_0041e984:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0041e97c
loc_0041e98c:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    cmp dword ptr [eax + ebp - 0x30], 0
    je loc_0041e99f
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
loc_0041e99f:
    jmp loc_0041e984
loc_0041e9a1:
    cmp dword ptr [ebp - 0xc], 1
    jle loc_0041eac4
    mov dword ptr [ebp - 0xb0], 0
    mov dword ptr [ebp - 8], 0
loc_0041e9bc:
    cmp dword ptr [ebp - 8], 4
    jl loc_0041e9cf
    # jmp 0x41ea3d
    .byte 0xe9
    .long loc_0041ea3d - . - 4
loc_0041e9c7:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0041e9bc
loc_0041e9cf:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    cmp dword ptr [eax + ebp - 0x30], 0
    je loc_0041ea3b
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0xb4], edx
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0xb8], edx
    mov edx, dword ptr [ebp - 0xb8]
    mov eax, dword ptr [ebp - 0xb4]
    call sub_0041e5c3
    test eax, eax
    je loc_0041ea3b
    mov eax, dword ptr [ebp - 0xb0]
    inc dword ptr [ebp - 0xb0]
loc_0041ea3b:
    jmp loc_0041e9c7
loc_0041ea3d:
    cmp dword ptr [ebp - 0xb0], 0
    # je 0x41eac4
    .byte 0x0f,0x84
    .long loc_0041eac4 - . - 4
    mov dword ptr [ebp - 8], 0
loc_0041ea51:
    cmp dword ptr [ebp - 8], 4
    jl loc_0041ea61
    jmp loc_0041eac4
loc_0041ea59:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0041ea51
loc_0041ea61:
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0xb4], edx
    mov edx, dword ptr [ebp - 8]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0xb8], edx
    mov edx, dword ptr [ebp - 0xb8]
    mov eax, dword ptr [ebp - 0xb4]
    call sub_0041e5c3
    test eax, eax
    jne loc_0041eac2
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    mov dword ptr [eax + ebp - 0x30], 0
loc_0041eac2:
    jmp loc_0041ea59
loc_0041eac4:
    mov dword ptr [ebp - 8], 0
loc_0041eacb:
    cmp dword ptr [ebp - 8], 4
    jl loc_0041eadb
    jmp loc_0041eaf0
loc_0041ead3:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    jmp loc_0041eacb
loc_0041eadb:
    mov eax, dword ptr [ebp - 8]
    shl eax, 2
    cmp dword ptr [eax + ebp - 0x30], 0
    je loc_0041eaee
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [ebp - 0x10], eax
loc_0041eaee:
    jmp loc_0041ead3
loc_0041eaf0:
    cmp dword ptr [ebp - 0x10], -1
    je loc_0041eb00
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x20]
    mov word ptr [edx + 0x2e], ax
loc_0041eb00:
    mov dword ptr [ebp - 4], 1
loc_0041eb07:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041eb13:
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x24
    .byte 0x81,0xec,0x24,0x00,0x00,0x00
    mov dword ptr [ebp - 0x20], eax
    mov dword ptr [ebp - 0x1c], edx
    mov dword ptr [ebp - 0x18], ebx
    mov dword ptr [ebp - 0x14], ecx
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0x20]
    cmp byte ptr [eax + 0x60], 0
    je loc_0041eb41
    mov dword ptr [ebp - 8], 2
loc_0041eb41:
    mov eax, dword ptr [ebp - 0x20]
    cmp byte ptr [eax + 0x5f], 0
    jbe loc_0041eb65
    mov eax, dword ptr [ebp - 0x20]
    mov dl, byte ptr [eax + 0x55]
    mov eax, dword ptr [ebp - 0x20]
    cmp dl, byte ptr [eax + 0x56]
    jae loc_0041eb65
    mov dword ptr [ebp - 8], 1
    mov eax, dword ptr [ebp - 0x20]
    inc byte ptr [eax + 0x55]
loc_0041eb65:
    xor eax, eax
    mov edx, dword ptr [ebp - 0x20]
    mov al, byte ptr [edx + 0x57]
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x48]
    sar eax, 0x10
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x20]
    cmp byte ptr [eax + 0x88], 0
    je loc_0041eb8f
    mov dword ptr [ebp - 0x10], 1
loc_0041eb8f:
    mov eax, dword ptr [ebp - 0x20]
    cmp byte ptr [eax + 0x5e], 0
    je loc_0041ebbd
    mov eax, dword ptr [d_004648ac]
    cmp eax, dword ptr [d_004648b4]
    jle loc_0041ebaf
    mov eax, dword ptr [d_004648ac]
    mov dword ptr [ebp - 0x24], eax
    jmp loc_0041ebb7
loc_0041ebaf:
    mov eax, dword ptr [d_004648b4]
    mov dword ptr [ebp - 0x24], eax
loc_0041ebb7:
    mov eax, dword ptr [ebp - 0x24]
    mov dword ptr [ebp - 0x10], eax
loc_0041ebbd:
    mov eax, dword ptr [ebp - 0x20]
    cmp byte ptr [eax + 0x8a], 0
    je loc_0041ebdc
    mov ebx, 3
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0xc]
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0xc], eax
loc_0041ebdc:
    mov dword ptr [ebp - 4], 0
    call sub_0040c06a
    test eax, eax
    je loc_0041ec1c
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    imul edx, eax, 0x19
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0xc]
    add eax, edx
    mov dword ptr [ebp - 4], eax
    mov eax, dword ptr [ebp - 0x20]
    inc dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 0x20]
    cmp dword ptr [eax + 0xc], 0x19
    jl loc_0041ec1c
    mov eax, dword ptr [ebp - 0x20]
    mov dword ptr [eax + 0xc], 0
loc_0041ec1c:
    push 0
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 0x20]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_00422ede
    mov eax, dword ptr [ebp - 4]
    push eax
    mov eax, dword ptr [ebp - 0x14]
    push eax
    mov eax, dword ptr [ebp - 0xc]
    push eax
    mov eax, dword ptr [ebp - 0x10]
    push eax
    mov eax, dword ptr [ebp - 0x20]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 0x20]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x18]
    mov eax, dword ptr [ebp - 0x1c]
    call sub_0040f096
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    ret
sub_0041ec84:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x54
    .byte 0x81,0xec,0x54,0x00,0x00,0x00
    mov dword ptr [ebp - 0x2c], eax
loc_0041ec95:
    mov eax, dword ptr [ebp - 0x2c]
    cmp dword ptr [eax + 0x74], 0
    jle loc_0041f288
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x24], 0
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x28], 0
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    je loc_0041f266
    mov eax, dword ptr [ebp - 0x2c]
    mov dx, word ptr [eax + 0x2e]
    mov eax, dword ptr [ebp - 0x2c]
    mov word ptr [eax + 0x2c], dx
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00426599
    mov dword ptr [ebp - 0x28], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x20]
    call sub_004265eb
    mov dword ptr [ebp - 0x24], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [ebp - 0x28]
    imul edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    shl eax, 2
    mov ebx, dword ptr [ebp - 0x24]
    imul ebx, dword ptr [eax + d_0045bedc]
    mov eax, ebx
    add edx, eax
    mov dword ptr [ebp - 0x20], edx
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [ebp - 0x24]
    imul edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    shl eax, 2
    mov ebx, dword ptr [ebp - 0x28]
    imul ebx, dword ptr [eax + d_0045bedc]
    mov eax, ebx
    sub edx, eax
    mov dword ptr [ebp - 0x1c], edx
    mov edx, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [edx + 0x2c]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x18], edx
    mov edx, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [edx + 0x2c]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0x14], edx
    cmp dword ptr [ebp - 0x20], -1
    jne loc_0041ee51
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00405654
    mov dword ptr [ebp - 0x30], eax
    cmp dword ptr [ebp - 0x30], 0
    je loc_0041ee51
    mov eax, dword ptr [ebp - 0x30]
    cmp dword ptr [eax + 4], 1
    jne loc_0041ee23
    mov eax, dword ptr [ebp - 0x2c]
    mov word ptr [eax + 0x4e], 6
    mov eax, dword ptr [ebp - 0x2c]
    mov word ptr [eax + 0x50], 0
    lea ebx, [ebp - 0x34]
    lea edx, [ebp - 0x38]
    mov eax, dword ptr [ebp - 0x30]
    call sub_00405a81
    mov eax, dword ptr [ebp - 0x38]
    call sub_00426524
    mov edx, eax
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x14], edx
    mov eax, dword ptr [ebp - 0x34]
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x18], edx
    mov eax, 0x532
    call sub_00427961
loc_0041ee23:
    mov eax, dword ptr [ebp - 0x30]
    cmp dword ptr [eax + 4], 3
    jne loc_0041ee51
    mov eax, dword ptr [ebp - 0x30]
    mov word ptr [eax + 0x30], 1
    mov eax, dword ptr [ebp - 0x2c]
    mov word ptr [eax + 0x4e], 5
    mov eax, dword ptr [ebp - 0x2c]
    mov word ptr [eax + 0x50], 0
    mov eax, 0x15e
    call sub_00427961
loc_0041ee51:
    cmp dword ptr [ebp - 0x20], 0
    jne loc_0041eee8
    mov eax, dword ptr [ebp - 0x2c]
    cmp byte ptr [eax + 0x59], 0
    je loc_0041eee8
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_00422e48
    mov dword ptr [ebp - 0x3c], eax
    cmp dword ptr [ebp - 0x3c], 0
    je loc_0041eee8
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [eax + 0x2c]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x18]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0x40], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [eax + 0x2c]
    sar edx, 0x10
    shl edx, 2
    mov eax, dword ptr [ebp - 0x14]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0x44], eax
    mov edx, dword ptr [ebp - 0x44]
    mov eax, dword ptr [ebp - 0x40]
    call sub_0041e5c3
    test eax, eax
    je loc_0041eee8
    mov eax, dword ptr [ebp - 0x2c]
    mov edx, dword ptr [eax + 0x2c]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x3c]
    call sub_00424708
    mov eax, dword ptr [ebp - 0x2c]
    cmp word ptr [eax + 0x4e], 1
    je loc_0041eee8
    mov eax, dword ptr [ebp - 0x2c]
    mov word ptr [eax + 0x4e], 1
    mov eax, dword ptr [ebp - 0x2c]
    mov word ptr [eax + 0x50], 0
loc_0041eee8:
    cmp dword ptr [ebp - 0x20], 0
    jl loc_0041ef01
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_0041e5c3
    test eax, eax
    je loc_0041efa4
loc_0041ef01:
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x24], edx
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov edx, dword ptr [eax + d_0045bedc]
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x28], edx
    cmp dword ptr [ebp - 0x1c], 0
    jne loc_0041ef45
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    mov dword ptr [ebp - 0x10], eax
    jmp loc_0041ef9f
loc_0041ef45:
    cmp dword ptr [ebp - 0x1c], 0
    jge loc_0041ef5b
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    inc eax
    and eax, 3
    mov dword ptr [ebp - 0x10], eax
loc_0041ef5b:
    cmp dword ptr [ebp - 0x1c], 0
    jle loc_0041ef71
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    dec eax
    and eax, 3
    mov dword ptr [ebp - 0x10], eax
loc_0041ef71:
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x2c]
    add dword ptr [eax + 0x24], edx
    mov eax, dword ptr [ebp - 0x10]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045bedc]
    mov eax, dword ptr [ebp - 0x2c]
    add dword ptr [eax + 0x28], edx
    mov eax, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0x2c]
    mov word ptr [edx + 0x2c], ax
loc_0041ef9f:
    jmp loc_0041f1a1
loc_0041efa4:
    cmp dword ptr [ebp - 0x1c], 0
    jge loc_0041f07f
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    dec eax
    and eax, 3
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x18], edx
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    dec eax
    and eax, 3
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0x14], edx
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_0041e5c3
    test eax, eax
    je loc_0041f07a
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    shl eax, 2
    mov eax, dword ptr [eax + d_0045becc]
    add dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    shl eax, 2
    mov eax, dword ptr [eax + d_0045bedc]
    add dword ptr [ebp - 0x14], eax
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_0041e5c3
    test eax, eax
    je loc_0041f07a
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    dec eax
    and eax, 3
    mov dword ptr [ebp - 0x48], eax
    mov eax, dword ptr [ebp - 0x48]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x24], edx
    mov eax, dword ptr [ebp - 0x48]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045bedc]
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x28], edx
loc_0041f07a:
    jmp loc_0041f1a1
loc_0041f07f:
    cmp dword ptr [ebp - 0x1c], 0
    jle loc_0041f157
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    inc eax
    and eax, 3
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov edx, dword ptr [edx + d_0045becc]
    add edx, eax
    mov dword ptr [ebp - 0x18], edx
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    inc eax
    and eax, 3
    shl eax, 2
    mov edx, eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, dword ptr [edx + d_0045bedc]
    add edx, eax
    mov dword ptr [ebp - 0x14], edx
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_0041e5c3
    test eax, eax
    je loc_0041f155
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    shl eax, 2
    mov eax, dword ptr [eax + d_0045becc]
    add dword ptr [ebp - 0x18], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    shl eax, 2
    mov eax, dword ptr [eax + d_0045bedc]
    add dword ptr [ebp - 0x14], eax
    mov edx, dword ptr [ebp - 0x14]
    mov eax, dword ptr [ebp - 0x18]
    call sub_0041e5c3
    test eax, eax
    je loc_0041f155
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    inc eax
    and eax, 3
    mov dword ptr [ebp - 0x4c], eax
    mov eax, dword ptr [ebp - 0x4c]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045becc]
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x24], edx
    mov eax, dword ptr [ebp - 0x4c]
    shl eax, 2
    mov edx, dword ptr [eax + d_0045bedc]
    mov eax, dword ptr [ebp - 0x2c]
    mov dword ptr [eax + 0x28], edx
loc_0041f155:
    jmp loc_0041f1a1
loc_0041f157:
    cmp dword ptr [ebp - 0x20], 0
    jle loc_0041f1a1
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    add eax, 2
    and eax, 3
    shl eax, 2
    mov eax, dword ptr [eax + d_0045becc]
    imul eax, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx + 0x24], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    add eax, 2
    and eax, 3
    shl eax, 2
    mov eax, dword ptr [eax + d_0045bedc]
    imul eax, dword ptr [ebp - 0x20]
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx + 0x28], eax
loc_0041f1a1:
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x1c]
    mov edx, dword ptr [ebp - 0x2c]
    add eax, dword ptr [edx + 0x24]
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x20]
    mov edx, dword ptr [ebp - 0x2c]
    add eax, dword ptr [edx + 0x28]
    mov dword ptr [ebp - 8], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx + 0x1c], eax
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [ebp - 0x2c]
    mov dword ptr [edx + 0x20], eax
    mov eax, dword ptr [ebp - 0x2c]
    cmp dword ptr [eax + 8], 0
    jne loc_0041f21e
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_0042708d
    mov dword ptr [ebp - 0x50], eax
    cmp dword ptr [ebp - 0x50], 0
    je loc_0041f21e
    mov eax, dword ptr [ebp - 0x50]
    mov edx, dword ptr [eax + 0x3c]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x2c]
    call sub_0041de63
    test eax, eax
    je loc_0041f21e
    mov dword ptr [ebp - 4], 1
    jmp loc_0041f28f
loc_0041f21e:
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x2c]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_0042542d
    mov dword ptr [ebp - 0x54], eax
    cmp dword ptr [ebp - 0x54], 0
    je loc_0041f25f
    mov eax, dword ptr [ebp - 0x54]
    cmp dword ptr [eax], 2
    jne loc_0041f25f
    mov edx, dword ptr [ebp - 0x54]
    mov eax, dword ptr [ebp - 0x2c]
    call sub_0041e21e
    mov eax, dword ptr [ebp - 0x54]
    call sub_004254f3
loc_0041f25f:
    mov eax, dword ptr [ebp - 0x2c]
    inc word ptr [eax + 0x30]
loc_0041f266:
    inc dword ptr [d_004642bc]
    mov eax, dword ptr [ebp - 0x2c]
    sub dword ptr [eax + 0x74], 0x64
    mov eax, dword ptr [ebp - 0x2c]
    cmp dword ptr [eax + 0x24], 0
    je loc_0041f283
    mov eax, dword ptr [ebp - 0x2c]
    cmp dword ptr [eax + 0x28], 0
loc_0041f283:
    jmp loc_0041ec95
loc_0041f288:
    mov dword ptr [ebp - 4], 0
loc_0041f28f:
    mov eax, dword ptr [ebp - 4]
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_0041f29b:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 0x248
    mov dword ptr [ebp - 0xc], eax
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 0
    je loc_00420d45
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x92], 0
    jne loc_0041f2ee
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x92], 1
    xor ebx, ebx
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x18]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x14]
    call sub_0042665c
    call sub_0042583b
loc_0041f2ee:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax], 0
    jne loc_0041f391
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x68], 0
    jbe loc_0041f38c
    mov eax, dword ptr [ebp - 0xc]
    dec byte ptr [eax + 0x68]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 4], 0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], 1
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 8], 0
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x14]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x18]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x20], edx
    cmp dword ptr [d_0046489c], 0
    je loc_0041f38a
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 1
    je loc_0041f38a
    call sub_00410578
    mov edx, eax
    mov eax, 0x65
    call sub_00412135
    cmp edx, eax
    jl loc_0041f38a
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x68], 1
    mov ax, word ptr [d_0046494c]
    imul eax, eax, 0x14
    mov edx, dword ptr [ebp - 0xc]
    mov word ptr [edx + 0x66], ax
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x92], 0
loc_0041f38a:
    jmp loc_0041f391
loc_0041f38c:
    jmp loc_00420d45
loc_0041f391:
    cmp dword ptr [d_00464964], 0
    je loc_0041f3d1
    mov eax, dword ptr [ebp - 0xc]
    mov al, byte ptr [eax + 0x54]
    and eax, 0xff
    shl eax, 2
    cmp dword ptr [eax + d_004621b4], 0
    jne loc_0041f3cf
    mov eax, dword ptr [ebp - 0xc]
    mov al, byte ptr [eax + 0x54]
    and eax, 0xff
    shl eax, 2
    mov dword ptr [eax + d_004621b4], 1
    inc dword ptr [d_004621e4]
loc_0041f3cf:
    jmp loc_0041f3d7
loc_0041f3d1:
    inc dword ptr [d_004621e4]
loc_0041f3d7:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 8], 0
    je loc_0041f576
loc_0041f3e4:
    mov eax, dword ptr [ebp - 0xc]
    push dword ptr [eax + 4]
    mov eax, offset d_0045a19f
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0xc]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041daa7
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0xc]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00415a9f
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 4], 9
    jne loc_0041f47e
    mov edx, dword ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [eax + 0x74], edx
loc_0041f44c:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x74], 0
    jle loc_0041f475
    mov eax, 0x6a
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    sub dword ptr [eax + 0x20], edx
    mov edx, dword ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0xc]
    sub dword ptr [eax + 0x74], edx
    jmp loc_0041f44c
loc_0041f475:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x20], -0x14
    jl loc_0041f4b2
loc_0041f47e:
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add word ptr [eax + 0x32], dx
loc_0041f48c:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x32], 0
    jle loc_0041f4eb
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0xc]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041da5c
    cmp edx, eax
    jl loc_0041f4db
loc_0041f4b2:
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041dbfe
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax], 0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 8], 0
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    call sub_00424c47
loc_0041f4db:
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0xc]
    sub word ptr [eax + 0x32], dx
    jmp loc_0041f48c
loc_0041f4eb:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x30], 0x19
    jne loc_0041f537
    mov eax, 0x5f
    call sub_00412135
    cmp eax, 1
    jle loc_0041f513
    mov eax, 0x5f
    call sub_00412135
    mov dword ptr [ebp - 0x7c], eax
    jmp loc_0041f51a
loc_0041f513:
    mov dword ptr [ebp - 0x7c], 1
loc_0041f51a:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x7c]
    test edx, edx
    jne loc_0041f537
    mov eax, 0x2bc
    call sub_00427961
loc_0041f537:
    mov eax, dword ptr [ebp - 0xc]
    xor edx, edx
    mov dx, word ptr [eax + 0x30]
    mov eax, 0x19
    call sub_00412135
    cmp edx, eax
    jge loc_0041f571
    inc dword ptr [d_004621d0]
    cmp dword ptr [d_00464964], 0
    je loc_0041f571
    mov eax, dword ptr [ebp - 0xc]
    mov al, byte ptr [eax + 0x54]
    and eax, 0xff
    shl eax, 2
    inc dword ptr [eax + d_004621bc]
loc_0041f571:
    jmp loc_00420d45
loc_0041f576:
    inc dword ptr [d_004621d0]
    cmp dword ptr [d_00464964], 0
    je loc_0041f599
    mov eax, dword ptr [ebp - 0xc]
    mov al, byte ptr [eax + 0x54]
    and eax, 0xff
    shl eax, 2
    inc dword ptr [eax + d_004621bc]
loc_0041f599:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x66], 0
    jle loc_0041f5c4
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    sub word ptr [eax + 0x66], dx
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x66], 0
    jge loc_0041f5c4
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x66], 0
loc_0041f5c4:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 8], 0
    jne loc_0041f60c
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_0042708d
    mov dword ptr [ebp - 0x80], eax
    cmp dword ptr [ebp - 0x80], 0
    je loc_0041f60c
    mov eax, dword ptr [ebp - 0x80]
    mov edx, dword ptr [eax + 0x3c]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041de63
    test eax, eax
    jne loc_0041f3e4
loc_0041f60c:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_0042542d
    mov dword ptr [ebp - 0x84], eax
    cmp dword ptr [ebp - 0x84], 0
    je loc_0041f65c
    mov eax, dword ptr [ebp - 0x84]
    cmp dword ptr [eax], 2
    jne loc_0041f65c
    mov edx, dword ptr [ebp - 0x84]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041e21e
    mov eax, dword ptr [ebp - 0x84]
    call sub_004254f3
loc_0041f65c:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x80], 0
    je loc_0041f671
    mov eax, dword ptr [ebp - 0xc]
    dec dword ptr [eax + 0x80]
loc_0041f671:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x78], 0
    je loc_0041f6d9
    mov edx, dword ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [eax + 0x78], edx
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x78]
    mov eax, dword ptr [ebp - 0xc]
    cmp edx, dword ptr [eax + 0x7c]
    jle loc_0041f6d9
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041df4c
    call sub_0040c06a
    test eax, eax
    je loc_0041f6d9
    mov ecx, dword ptr [ebp - 0xc]
    add ecx, 0x84
    mov eax, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [eax + 0x7c]
    mov esi, dword ptr [ebp - 0xc]
    mov esi, dword ptr [esi + 0x78]
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov edi, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv edi
    mov edx, esi
    call sub_00410065
loc_0041f6d9:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x78], 0
    je loc_0041f6ee
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x80], 0
    je loc_0041f6f3
loc_0041f6ee:
    jmp loc_0041f871
loc_0041f6f3:
    mov dword ptr [ebp - 0x88], 0
    mov dword ptr [ebp - 0x8c], offset d_00461bc4
loc_0041f707:
    cmp dword ptr [ebp - 0x88], 0xa
    jl loc_0041f733
    jmp loc_0041f871
loc_0041f715:
    mov eax, dword ptr [ebp - 0x88]
    inc dword ptr [ebp - 0x88]
    mov eax, dword ptr [ebp - 0x8c]
    add dword ptr [ebp - 0x8c], 0x98
    jmp loc_0041f707
loc_0041f733:
    mov eax, dword ptr [ebp - 0x8c]
    cmp eax, dword ptr [ebp - 0xc]
    je loc_0041f86c
    mov eax, dword ptr [ebp - 0x8c]
    cmp dword ptr [eax], 0
    je loc_0041f86c
    mov eax, dword ptr [ebp - 0x8c]
    cmp dword ptr [eax + 8], 0
    jne loc_0041f86c
    mov eax, dword ptr [ebp - 0x8c]
    cmp dword ptr [eax + 0x78], 0
    jne loc_0041f86c
    mov eax, dword ptr [ebp - 0x8c]
    mov eax, dword ptr [eax + 0x1c]
    mov edx, dword ptr [ebp - 0xc]
    sub eax, dword ptr [edx + 0x1c]
    call sub_00451e6d
    mov edx, dword ptr [d_004648a4]
    sub edx, 0xa
    cmp eax, edx
    jg loc_0041f7b3
    mov eax, dword ptr [ebp - 0x8c]
    mov eax, dword ptr [eax + 0x20]
    mov edx, dword ptr [ebp - 0xc]
    sub eax, dword ptr [edx + 0x20]
    call sub_00451e6d
    mov edx, dword ptr [d_004648a0]
    sub edx, 0xa
    cmp eax, edx
    jle loc_0041f7b8
loc_0041f7b3:
    jmp loc_0041f86c
loc_0041f7b8:
    mov eax, 0x81
    call sub_00412135
    mov edx, eax
    mov eax, dword ptr [ebp - 0x8c]
    mov dword ptr [eax + 0x80], edx
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x78]
    mov eax, dword ptr [ebp - 0x8c]
    mov dword ptr [eax + 0x78], edx
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x7c]
    mov eax, dword ptr [ebp - 0x8c]
    mov dword ptr [eax + 0x7c], edx
    mov dword ptr [ebp - 0x90], 0
loc_0041f7f8:
    cmp dword ptr [ebp - 0x90], 0xe
    jl loc_0041f811
    jmp loc_0041f84d
loc_0041f803:
    mov eax, dword ptr [ebp - 0x90]
    inc dword ptr [ebp - 0x90]
    jmp loc_0041f7f8
loc_0041f811:
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x90]
    mov edx, dword ptr [ebp - 0x8c]
    add edx, dword ptr [ebp - 0x90]
    mov al, byte ptr [eax + 0x84]
    mov byte ptr [edx + 0x84], al
    cmp dword ptr [d_00464a78], 0
    jne loc_0041f84b
    mov eax, dword ptr [ebp - 0xc]
    add eax, dword ptr [ebp - 0x90]
    mov byte ptr [eax + 0x84], 0
loc_0041f84b:
    jmp loc_0041f803
loc_0041f84d:
    cmp dword ptr [d_00464a78], 0
    jne loc_0041f86c
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x78], 0
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x7c], 0
    jmp loc_0041f871
loc_0041f86c:
    jmp loc_0041f715
loc_0041f871:
    mov eax, dword ptr [ebp - 0xc]
    mov dl, byte ptr [eax + 0x38]
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x36], dl
    mov eax, dword ptr [ebp - 0xc]
    mov dl, byte ptr [eax + 0x39]
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x37], dl
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x38], 0
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x39], 0
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x2e], 0xffff
    mov dword ptr [ebp - 4], 1
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x3a], 0
    jle loc_0041f8e5
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [ebp - 0xc]
    dec word ptr [eax + 0x3a]
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x3a], 0
    jne loc_0041f8e5
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 3
    jne loc_0041f8e5
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 0
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
loc_0041f8e5:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov dword ptr [ebp - 0x94], eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov dword ptr [ebp - 0x98], eax
    mov dword ptr [ebp - 0x9c], 0
    mov dword ptr [ebp - 0xa0], 0
loc_0041f91b:
    cmp dword ptr [ebp - 0xa0], 4
    jl loc_0041f934
    jmp loc_0041f98d
loc_0041f926:
    mov eax, dword ptr [ebp - 0xa0]
    inc dword ptr [ebp - 0xa0]
    jmp loc_0041f91b
loc_0041f934:
    mov edx, dword ptr [ebp - 0xa0]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x94]
    add eax, dword ptr [edx + d_0045becc]
    mov dword ptr [ebp - 0xa4], eax
    mov edx, dword ptr [ebp - 0xa0]
    shl edx, 2
    mov eax, dword ptr [ebp - 0x98]
    add eax, dword ptr [edx + d_0045bedc]
    mov dword ptr [ebp - 0xa8], eax
    mov edx, dword ptr [ebp - 0xa8]
    mov eax, dword ptr [ebp - 0xa4]
    call sub_0041e5c3
    test eax, eax
    jne loc_0041f98b
    mov eax, dword ptr [ebp - 0x9c]
    inc dword ptr [ebp - 0x9c]
loc_0041f98b:
    jmp loc_0041f926
loc_0041f98d:
    cmp dword ptr [ebp - 0x9c], 4
    jl loc_0041f9f2
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 0
    jne loc_0041f9f0
    mov eax, 0x14a
    call sub_00412135
    cmp eax, 1
    jle loc_0041f9c1
    mov eax, 0x14a
    call sub_00412135
    mov dword ptr [ebp - 0xac], eax
    jmp loc_0041f9cb
loc_0041f9c1:
    mov dword ptr [ebp - 0xac], 1
loc_0041f9cb:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0xac]
    lea eax, [edx + 0x14]
    mov edx, dword ptr [ebp - 0xc]
    mov word ptr [edx + 0x4e], ax
    mov edx, dword ptr [ebp - 0xc]
    mov word ptr [edx + 0x50], 0
loc_0041f9f0:
    jmp loc_0041fa11
loc_0041f9f2:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 0x14
    jl loc_0041fa06
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 0x28
    jl loc_0041fa08
loc_0041fa06:
    jmp loc_0041fa11
loc_0041fa08:
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 0
loc_0041fa11:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 6
    je loc_0041fa25
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 7
    jne loc_0041fa27
loc_0041fa25:
    jmp loc_0041fa31
loc_0041fa27:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 5
    jne loc_0041fa38
loc_0041fa31:
    mov dword ptr [ebp - 4], 0
loc_0041fa38:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 4
    jne loc_0041fa67
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, 0x299
    call sub_00412135
    cmp edx, eax
    jg loc_0041fa67
    mov dword ptr [ebp - 4], 0
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x38], 1
loc_0041fa67:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 5
    jne loc_0041fa78
    mov dword ptr [ebp - 4], 0
loc_0041fa78:
    cmp dword ptr [ebp - 4], 0
    je loc_0041fac1
    cmp dword ptr [d_004621e0], 0
    jne loc_0041fac1
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 1
    jne loc_0041fab9
    call sub_0040179f
    mov ebx, dword ptr [ebp - 0xc]
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov ecx, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv ecx
    mov edx, ebx
    call sub_0040a1c6
    jmp loc_0041fac1
loc_0041fab9:
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041e61e
loc_0041fac1:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    je loc_0041fba9
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x2e], 0
    jl loc_0041fae7
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x2e], 3
    jle loc_0041fb34
loc_0041fae7:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    push eax
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov ebx, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    push eax
    mov eax, offset d_0045a1ac
    push eax
    lea eax, [ebp - 0x110]
    push eax
    call sub_004518d0
    add esp, 0x10
    lea eax, [ebp - 0x110]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0041fb34:
    mov eax, dword ptr [ebp - 0xc]
    and word ptr [eax + 0x2e], 3
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x8c], 0
    je loc_0041fb65
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 1
    je loc_0041fb65
    mov eax, dword ptr [ebp - 0xc]
    mov dx, word ptr [eax + 0x2e]
    add edx, 2
    mov eax, dword ptr [ebp - 0xc]
    and edx, 3
    mov word ptr [eax + 0x2e], dx
loc_0041fb65:
    mov eax, dword ptr [ebp - 0xc]
    mov dx, word ptr [eax + 0x2c]
    mov eax, dword ptr [ebp - 0xc]
    cmp dx, word ptr [eax + 0x2e]
    je loc_0041fb9b
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 1
    je loc_0041fb89
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x4e], 2
    jne loc_0041fb9b
loc_0041fb89:
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 0
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
loc_0041fb9b:
    mov eax, dword ptr [ebp - 0xc]
    mov dx, word ptr [eax + 0x2e]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x2c], dx
loc_0041fba9:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 1
    je loc_0041fce2
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov ebx, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    shl eax, 2
    mov edx, dword ptr [d_004621c8]
    add eax, edx
    mov eax, dword ptr [eax]
    mov dword ptr [ebp - 0x114], eax
    mov dword ptr [ebp - 0x118], 0
loc_0041fbeb:
    cmp dword ptr [ebp - 0x118], 0x1e
    jl loc_0041fc04
    jmp loc_0041fc1d
loc_0041fbf6:
    mov eax, dword ptr [ebp - 0x118]
    inc dword ptr [ebp - 0x118]
    jmp loc_0041fbeb
loc_0041fc04:
    mov eax, dword ptr [ebp - 0x118]
    shl eax, 3
    add eax, dword ptr [ebp - 0x114]
    mov edx, dword ptr [d_00464958]
    add dword ptr [eax], edx
    jmp loc_0041fbf6
loc_0041fc1d:
    mov dword ptr [ebp - 0x118], 0x1d
loc_0041fc27:
    cmp dword ptr [ebp - 0x118], 0
    jg loc_0041fc40
    jmp loc_0041fc65
loc_0041fc32:
    mov eax, dword ptr [ebp - 0x118]
    dec dword ptr [ebp - 0x118]
    jmp loc_0041fc27
loc_0041fc40:
    mov esi, dword ptr [ebp - 0x118]
    shl esi, 3
    add esi, dword ptr [ebp - 0x114]
    mov edi, dword ptr [ebp - 0x118]
    shl edi, 3
    add edi, dword ptr [ebp - 0x114]
    lea esi, [esi - 8]
    movsd dword ptr es:[edi], dword ptr [esi]
    movsd dword ptr es:[edi], dword ptr [esi]
    jmp loc_0041fc32
loc_0041fc65:
    mov eax, dword ptr [ebp - 0x114]
    mov dword ptr [eax], 0
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x2c]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x114]
    mov dword ptr [eax + 4], edx
    mov dword ptr [ebp - 0x118], 0
loc_0041fc8d:
    cmp dword ptr [ebp - 0x118], 0x1e
    jl loc_0041fca6
    jmp loc_0041fce2
loc_0041fc98:
    mov eax, dword ptr [ebp - 0x118]
    inc dword ptr [ebp - 0x118]
    jmp loc_0041fc8d
loc_0041fca6:
    mov eax, dword ptr [ebp - 0x118]
    shl eax, 3
    add eax, dword ptr [ebp - 0x114]
    mov dx, word ptr [eax + 4]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x2e], dx
    mov edx, dword ptr [ebp - 0x118]
    shl edx, 3
    add edx, dword ptr [ebp - 0x114]
    mov eax, dword ptr [d_0046499c]
    add eax, 0x1c2
    call sub_00412135
    cmp eax, dword ptr [edx]
    jg loc_0041fc98
loc_0041fce2:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 4
    je loc_0041ff2f
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    je loc_0041fe8b
    mov eax, dword ptr [ebp - 0xc]
    xor edx, edx
    mov dl, byte ptr [eax + 0x5a]
    mov eax, 0x5a
    call sub_00412135
    imul edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [eax + 0x70]
    add ebx, edx
    mov eax, dword ptr [ebp - 0xc]
    xor edx, edx
    mov dl, byte ptr [eax + 0x63]
    mov eax, 0x5b
    call sub_00412135
    imul eax, edx
    sub ebx, eax
    mov dword ptr [ebp - 0x11c], ebx
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x84], 0
    je loc_0041fd63
    mov ebx, 3
    mov eax, dword ptr [ebp - 0x11c]
    mov edx, dword ptr [ebp - 0x11c]
    sar edx, 0x1f
    idiv ebx
    mov dword ptr [ebp - 0x11c], eax
loc_0041fd63:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x85], 0
    jne loc_0041fd7b
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x89], 0
    je loc_0041fd93
loc_0041fd7b:
    mov edx, dword ptr [ebp - 0x11c]
    lea edx, [edx + edx*2]
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    mov dword ptr [ebp - 0x11c], eax
loc_0041fd93:
    mov eax, dword ptr [ebp - 0x11c]
    imul eax, dword ptr [d_00464958]
    xor edx, edx
    div dword ptr [d_0046494c]
    mov dword ptr [ebp - 0x11c], eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00405654
    mov dword ptr [ebp - 0x120], eax
    cmp dword ptr [ebp - 0x120], 0
    je loc_0041fe6a
    mov eax, dword ptr [ebp - 0x120]
    cmp dword ptr [eax + 4], 2
    # jne 0x41fe6a
    .byte 0x0f,0x85
    .long loc_0041fe6a - . - 4
    mov eax, dword ptr [ebp - 0x120]
    mov dx, word ptr [eax + 0x2c]
    mov eax, dword ptr [ebp - 0xc]
    cmp dx, word ptr [eax + 0x2e]
    jne loc_0041fe25
    mov eax, dword ptr [d_00464930]
    add eax, 0xbe
    call sub_00412135
    imul eax, dword ptr [d_00464958]
    xor edx, edx
    div dword ptr [d_0046494c]
    add dword ptr [ebp - 0x11c], eax
loc_0041fe25:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    add eax, 2
    and eax, 3
    mov edx, eax
    mov eax, dword ptr [ebp - 0x120]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    cmp eax, edx
    jne loc_0041fe6a
    mov eax, dword ptr [d_00464930]
    add eax, 0xbe
    call sub_00412135
    imul eax, dword ptr [d_00464958]
    xor edx, edx
    div dword ptr [d_0046494c]
    sub dword ptr [ebp - 0x11c], eax
loc_0041fe6a:
    mov eax, dword ptr [ebp - 0x11c]
    mov edx, dword ptr [ebp - 0xc]
    add dword ptr [edx + 0x74], eax
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041ec84
    test eax, eax
    jne loc_0041f3e4
    jmp loc_0041ff2f
loc_0041fe8b:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00405654
    mov dword ptr [ebp - 0x124], eax
    cmp dword ptr [ebp - 0x124], 0
    je loc_0041ff2f
    mov eax, dword ptr [ebp - 0x124]
    cmp dword ptr [eax + 4], 2
    jne loc_0041ff2f
    mov eax, dword ptr [ebp - 0x124]
    mov dx, word ptr [eax + 0x2c]
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x2e], dx
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    mov dword ptr [ebp - 0x128], eax
    mov eax, dword ptr [d_00464930]
    add eax, 0xbe
    call sub_00412135
    imul eax, dword ptr [d_00464958]
    xor edx, edx
    div dword ptr [d_0046494c]
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    add dword ptr [eax + 0x74], edx
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041ec84
    test eax, eax
    jne loc_0041f3e4
    mov edx, dword ptr [ebp - 0xc]
    mov word ptr [edx + 0x2e], 0xffff
    mov eax, dword ptr [ebp - 0x128]
    mov edx, dword ptr [ebp - 0xc]
    mov word ptr [edx + 0x2c], ax
loc_0041ff2f:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2c]
    sar eax, 0x10
    cmp eax, -1
    je loc_0041ff92
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x94], 0
    je loc_0041ff6c
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    call sub_00413aed
    push eax
    mov eax, offset d_0045a1ce
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_0041ff8d
loc_0041ff6c:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    call sub_00413aed
    push eax
    mov eax, offset d_0045a1da
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
loc_0041ff8d:
    # jmp 0x42000f
    .byte 0xe9
    .long loc_0042000f - . - 4
loc_0041ff92:
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x30]
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    mov dword ptr [ebp - 0x12c], eax
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x3a], 0
    je loc_0041ffc5
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 0x50]
    # and eax, 3
    .byte 0x25,0x03,0x00,0x00,0x00
    cwde
    mov dword ptr [ebp - 0x12c], eax
loc_0041ffc5:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x94], 0
    je loc_0041fff1
    mov eax, dword ptr [ebp - 0x12c]
    call sub_00413aed
    push eax
    mov eax, offset d_0045a1e2
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    jmp loc_0042000f
loc_0041fff1:
    mov eax, dword ptr [ebp - 0x12c]
    call sub_00413aed
    push eax
    mov eax, offset d_0045a1ef
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
loc_0042000f:
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 0x4e]
    mov dword ptr [ebp - 0x130], eax
    cmp word ptr [ebp - 0x130], 4
    jb loc_00420086
    cmp word ptr [ebp - 0x130], 4
    jbe loc_0042025d
    cmp word ptr [ebp - 0x130], 6
    jb loc_00420081
    cmp word ptr [ebp - 0x130], 6
    jbe loc_00420544
    cmp word ptr [ebp - 0x130], 7
    jbe loc_004205d8
    cmp word ptr [ebp - 0x130], 0x14
    jb loc_00420077
    cmp word ptr [ebp - 0x130], 0x27
    jbe loc_00420654
    jmp loc_004206ea
loc_00420077:
    jmp loc_004206ea
    jmp loc_004206ea
loc_00420081:
    jmp loc_004202f8
loc_00420086:
    cmp word ptr [ebp - 0x130], 1
    jb loc_004200b3
    cmp word ptr [ebp - 0x130], 1
    jbe loc_00420127
    cmp word ptr [ebp - 0x130], 2
    jbe loc_004201c2
    jmp loc_004200c2
    jmp loc_004206ea
loc_004200b3:
    cmp word ptr [ebp - 0x130], 0
    je loc_004200f1
    jmp loc_004206ea
loc_004200c2:
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add word ptr [eax + 0x52], dx
loc_004200d0:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x52], 0
    jle loc_004200f1
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x50]
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0xc]
    sub word ptr [eax + 0x52], dx
    jmp loc_004200d0
loc_004200f1:
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0x14], eax
    mov edx, dword ptr [ebp - 0xc]
    mov dx, word ptr [edx + 0x30]
    and edx, 0xffff
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, eax
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041daa7
    mov dword ptr [ebp - 0x10], eax
    jmp loc_0042071e
loc_00420127:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    call sub_00413aed
    push eax
    mov eax, offset d_0045a1f8
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041daa7
    mov dword ptr [ebp - 0x10], eax
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add word ptr [eax + 0x52], dx
loc_00420175:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x52], 0
    jle loc_00420196
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x50]
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0xc]
    sub word ptr [eax + 0x52], dx
    jmp loc_00420175
loc_00420196:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041da5c
    cmp edx, eax
    jl loc_004201bd
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 0
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
loc_004201bd:
    jmp loc_0042071e
loc_004201c2:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    call sub_00413aed
    push eax
    mov eax, offset d_0045a200
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041daa7
    mov dword ptr [ebp - 0x10], eax
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add word ptr [eax + 0x52], dx
loc_00420210:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x52], 0
    jle loc_00420231
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x50]
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0xc]
    sub word ptr [eax + 0x52], dx
    jmp loc_00420210
loc_00420231:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041da5c
    cmp edx, eax
    jle loc_00420258
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 0
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
loc_00420258:
    jmp loc_0042071e
loc_0042025d:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    call sub_00413aed
    push eax
    mov eax, offset d_0045a209
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041daa7
    mov dword ptr [ebp - 0x10], eax
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add word ptr [eax + 0x52], dx
loc_004202ab:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x52], 0
    jle loc_004202cc
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x50]
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0xc]
    sub word ptr [eax + 0x52], dx
    jmp loc_004202ab
loc_004202cc:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041da5c
    cmp edx, eax
    jle loc_004202f3
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 0
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
loc_004202f3:
    jmp loc_004200f1
loc_004202f8:
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add word ptr [eax + 0x52], dx
loc_00420306:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x52], 0
    jle loc_00420327
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x50]
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0xc]
    sub word ptr [eax + 0x52], dx
    jmp loc_00420306
loc_00420327:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, 0x2a8
    call sub_00412135
    cmp edx, eax
    jl loc_00420350
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 0
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
loc_00420350:
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0x14], eax
    mov edx, dword ptr [ebp - 0xc]
    mov dx, word ptr [edx + 0x30]
    and edx, 0xffff
    mov ebx, 3
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov edx, eax
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041daa7
    mov dword ptr [ebp - 0x10], eax
    mov eax, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [eax + 0x4e]
    sar ebx, 0x10
    mov eax, 0x2a8
    call sub_00412135
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    cmp ebx, eax
    jne loc_004204b3
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov dword ptr [ebp - 0x134], eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov dword ptr [ebp - 0x138], eax
    mov dword ptr [ebp - 0x13c], 0
loc_004203d3:
    cmp dword ptr [ebp - 0x13c], 0x64
    jl loc_004203ef
    jmp loc_004204ac
loc_004203e1:
    mov eax, dword ptr [ebp - 0x13c]
    inc dword ptr [ebp - 0x13c]
    jmp loc_004203d3
loc_004203ef:
    call sub_0045190a
    mov edx, eax
    mov ebx, 5
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    add edx, dword ptr [ebp - 0x134]
    sub edx, 2
    mov dword ptr [ebp - 0x140], edx
    call sub_0045190a
    mov edx, eax
    mov ebx, 5
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    add edx, dword ptr [ebp - 0x138]
    sub edx, 2
    mov dword ptr [ebp - 0x144], edx
    mov eax, dword ptr [ebp - 0x140]
    cmp eax, dword ptr [ebp - 0x134]
    je loc_0042044f
    mov eax, dword ptr [ebp - 0x144]
    cmp eax, dword ptr [ebp - 0x138]
    jne loc_00420451
loc_0042044f:
    jmp loc_004204a7
loc_00420451:
    mov edx, dword ptr [ebp - 0x144]
    mov eax, dword ptr [ebp - 0x140]
    call sub_00425fb9
    test eax, eax
    jne loc_004204a7
    mov edx, dword ptr [ebp - 0x144]
    mov eax, dword ptr [ebp - 0x140]
    call sub_00422e48
    test eax, eax
    jne loc_004203e1
    mov eax, dword ptr [ebp - 0x140]
    call sub_00426524
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0x144]
    call sub_0042655f
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x20], edx
    jmp loc_004204ac
loc_004204a7:
    jmp loc_004203e1
loc_004204ac:
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x50]
loc_004204b3:
    mov eax, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [eax + 0x4e]
    sar ebx, 0x10
    mov eax, 0x2a8
    call sub_00412135
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    # sub eax, edx
    .byte 0x2b,0xc2
    sar eax, 1
    cmp ebx, eax
    jge loc_004204f3
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, 0x2a9
    call sub_00412135
    imul edx, eax
    mov dword ptr [ebp - 0x148], edx
    jmp loc_0042051d
loc_004204f3:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, 0x2a8
    call sub_00412135
    sub eax, edx
    mov edx, eax
    mov eax, 0x2a9
    call sub_00412135
    imul edx, eax
    mov dword ptr [ebp - 0x148], edx
loc_0042051d:
    mov eax, dword ptr [ebp - 0xc]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x20]
    sub edx, dword ptr [ebp - 0x148]
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00415a9f
    jmp loc_00420870
loc_00420544:
    mov edx, offset d_0045a213
    lea eax, [ebp - 0x78]
    call sub_0045189e
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041daa7
    mov dword ptr [ebp - 0x10], eax
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add word ptr [eax + 0x52], dx
loc_0042057e:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x52], 0
    jle loc_0042059f
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x50]
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0xc]
    sub word ptr [eax + 0x52], dx
    jmp loc_0042057e
loc_0042059f:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x50], 8
    jle loc_004205d3
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 7
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x14]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x18]
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x20], edx
loc_004205d3:
    jmp loc_0042071e
loc_004205d8:
    mov edx, offset d_0045a213
    lea eax, [ebp - 0x78]
    call sub_0045189e
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041daa7
    mov dword ptr [ebp - 0x10], eax
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add word ptr [eax + 0x52], dx
loc_00420612:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x52], 0
    jle loc_00420633
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x50]
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0xc]
    sub word ptr [eax + 0x52], dx
    jmp loc_00420612
loc_00420633:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x50], 8
    jle loc_0042064f
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 0
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
loc_0042064f:
    jmp loc_0042071e
loc_00420654:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x4c]
    sar eax, 0x10
    sub eax, 0x14
    push eax
    mov eax, offset d_0045a218
    push eax
    lea eax, [ebp - 0x78]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x78]
    call sub_0041d957
    mov dword ptr [ebp - 0x14], eax
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041daa7
    mov dword ptr [ebp - 0x10], eax
    mov dx, word ptr [d_00464958]
    mov eax, dword ptr [ebp - 0xc]
    add word ptr [eax + 0x52], dx
loc_004206a0:
    mov eax, dword ptr [ebp - 0xc]
    cmp word ptr [eax + 0x52], 0
    jle loc_004206c1
    mov eax, dword ptr [ebp - 0xc]
    inc word ptr [eax + 0x50]
    mov dx, word ptr [d_0046494c]
    mov eax, dword ptr [ebp - 0xc]
    sub word ptr [eax + 0x52], dx
    jmp loc_004206a0
loc_004206c1:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x4e]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x14]
    call sub_0041da5c
    cmp edx, eax
    jl loc_004206e8
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 0
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
loc_004206e8:
    jmp loc_0042071e
loc_004206ea:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x4c]
    sar eax, 0x10
    push eax
    mov eax, offset d_0045a226
    push eax
    lea eax, [ebp - 0x1ac]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x1ac]
    call sub_0041284a
    mov eax, 0x69
    call sub_004128c9
loc_0042071e:
    mov eax, offset d_0045a242
    call sub_0041d957
    mov dword ptr [ebp - 0x1b0], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0x1b0]
    call sub_0041daa7
    mov dword ptr [ebp - 0x1b4], eax
    mov ebx, dword ptr [ebp - 0x1b4]
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00415920
    mov eax, dword ptr [ebp - 0xc]
    test byte ptr [eax + 0x78], 8
    je loc_00420792
    call sub_0045190a
    mov edx, eax
    mov ebx, 0xa
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov esi, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    mov ebx, dword ptr [ebp - 0xc]
    mov edi, dword ptr [ebx + 0x1c]
    mov ecx, edx
    mov ebx, esi
    mov edx, eax
    mov eax, edi
    call sub_00415a9f
    jmp loc_004207e9
loc_00420792:
    cmp dword ptr [d_004621e8], 0
    je loc_004207cd
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov ebx, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov ebx, dword ptr [ebp - 0x10]
    mov edx, dword ptr [ebp - 0xc]
    mov edx, dword ptr [edx + 0x20]
    mov ecx, dword ptr [ebp - 0xc]
    mov esi, dword ptr [ecx + 0x1c]
    mov ecx, eax
    mov eax, esi
    call sub_00415a9f
    jmp loc_004207e9
loc_004207cd:
    mov eax, dword ptr [ebp - 0xc]
    xor ecx, ecx
    mov cl, byte ptr [eax + 0x3c]
    mov ebx, dword ptr [ebp - 0x10]
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_00415a9f
loc_004207e9:
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov ebx, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    cmp eax, dword ptr [d_0045be3c]
    jne loc_00420870
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    call sub_00413aed
    push eax
    mov eax, offset d_0045a249
    push eax
    lea eax, [ebp - 0x218]
    push eax
    call sub_004518d0
    add esp, 0xc
    lea eax, [ebp - 0x218]
    call sub_0041d957
    mov dword ptr [ebp - 0x21c], eax
    xor edx, edx
    mov eax, dword ptr [ebp - 0x21c]
    call sub_0041daa7
    mov dword ptr [ebp - 0x220], eax
    xor ecx, ecx
    mov ebx, dword ptr [ebp - 0x220]
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x20]
    sub edx, 0x22
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    sub eax, 4
    call sub_00415a9f
loc_00420870:
    mov dword ptr [ebp - 8], 0
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x87], 0
    jne loc_0042088f
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x89], 0
    je loc_004208a4
loc_0042088f:
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x38], 1
    mov eax, dword ptr [ebp - 0xc]
    mov byte ptr [eax + 0x36], 0
    mov dword ptr [ebp - 8], 1
loc_004208a4:
    mov eax, dword ptr [ebp - 0xc]
    cmp dword ptr [eax + 0x94], 0
    # je 0x42092d
    .byte 0x0f,0x84
    .long loc_0042092d - . - 4
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x94]
    mov dword ptr [ebp - 0x224], eax
    cmp dword ptr [ebp - 8], 0
    jne loc_004208d2
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x38], 0
    jne loc_0042092d
loc_004208d2:
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x1c]
    mov eax, dword ptr [ebp - 0x224]
    mov dword ptr [eax + 0x1c], edx
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x20]
    mov eax, dword ptr [ebp - 0x224]
    mov dword ptr [eax + 0x20], edx
    mov eax, dword ptr [ebp - 0x224]
    mov word ptr [eax + 0x44], 0
    mov eax, dword ptr [ebp - 0xc]
    mov edx, dword ptr [eax + 0x2a]
    sar edx, 0x10
    mov eax, dword ptr [ebp - 0x224]
    call sub_00424987
    mov eax, dword ptr [ebp - 0xc]
    mov dword ptr [eax + 0x94], 0
    mov eax, dword ptr [ebp - 0x224]
    mov dword ptr [eax + 0x94], 0
loc_0042092d:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x39], 0
    je loc_0042093f
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x37], 0
    je loc_00420941
loc_0042093f:
    jmp loc_0042099f
loc_00420941:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x59], 0
    je loc_00420958
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    call sub_004247c5
loc_00420958:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x5b], 0
    je loc_00420988
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x38], 0
    jne loc_00420988
    mov eax, dword ptr [ebp - 0xc]
    call sub_00424a50
    test eax, eax
    je loc_00420988
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 2
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
loc_00420988:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x5f], 0
    je loc_0042099f
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    call sub_00424b41
loc_0042099f:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x38], 0
    je loc_004209b1
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x36], 0
    je loc_004209b6
loc_004209b1:
    jmp loc_00420cec
loc_004209b6:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x86], 0
    jne loc_00420cec
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x5c], 0
    je loc_00420a33
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00422e48
    mov dword ptr [ebp - 0x228], eax
    cmp dword ptr [ebp - 0x228], 0
    je loc_00420a33
    mov eax, dword ptr [ebp - 0x228]
    mov dx, word ptr [eax + 0x3e]
    mov eax, dword ptr [ebp - 0xc]
    cmp dx, word ptr [eax + 0x3e]
    jne loc_00420a33
    mov edx, dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 0x228]
    call sub_00424af4
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x4e], 4
    mov eax, dword ptr [ebp - 0xc]
    mov word ptr [eax + 0x50], 0
    jmp loc_00420cec
loc_00420a33:
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x5d], 0
    je loc_00420a42
    cmp dword ptr [ebp - 8], 0
    je loc_00420a47
loc_00420a42:
    jmp loc_00420b78
loc_00420a47:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov dword ptr [ebp - 0x22c], eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov dword ptr [ebp - 0x230], eax
    mov edx, dword ptr [ebp - 0x230]
    mov eax, dword ptr [ebp - 0x22c]
    call sub_00422e48
    mov dword ptr [ebp - 0x234], eax
    cmp dword ptr [ebp - 0x234], 0
    je loc_00420b78
    mov eax, dword ptr [ebp - 0x234]
    mov dx, word ptr [eax + 0x3e]
    mov eax, dword ptr [ebp - 0xc]
    cmp dx, word ptr [eax + 0x3e]
    jne loc_00420b78
    mov dword ptr [ebp - 0x238], 0
loc_00420aae:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov eax, dword ptr [eax + d_0045becc]
    add dword ptr [ebp - 0x22c], eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    shl eax, 2
    mov eax, dword ptr [eax + d_0045bedc]
    add dword ptr [ebp - 0x230], eax
    mov edx, dword ptr [ebp - 0x230]
    mov eax, dword ptr [ebp - 0x22c]
    call sub_00421cb5
    test eax, eax
    # jne 0x420b73
    .byte 0x0f,0x85
    .long loc_00420b73 - . - 4
    mov edx, dword ptr [ebp - 0x230]
    mov eax, dword ptr [ebp - 0x22c]
    call sub_0042542d
    test eax, eax
    jne loc_00420b73
    mov edx, dword ptr [ebp - 0x230]
    mov eax, dword ptr [ebp - 0x22c]
    call sub_0041e5c3
    test eax, eax
    je loc_00420b73
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    call sub_004245da
    mov dword ptr [ebp - 0x23c], eax
    mov eax, dword ptr [ebp - 0xc]
    mov al, byte ptr [eax + 0x56]
    and eax, 0xff
    cmp eax, dword ptr [ebp - 0x23c]
    jle loc_00420b73
    mov eax, dword ptr [ebp - 0x238]
    inc dword ptr [ebp - 0x238]
    mov ecx, dword ptr [ebp - 0x238]
    mov ebx, dword ptr [ebp - 0x230]
    mov edx, dword ptr [ebp - 0x22c]
    mov eax, dword ptr [ebp - 0xc]
    call sub_0041eb13
    jmp loc_00420aae
loc_00420b73:
    jmp loc_00420cec
loc_00420b78:
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x3c]
    sar eax, 0x10
    call sub_004245da
    mov dword ptr [ebp - 0x23c], eax
    mov eax, dword ptr [ebp - 0xc]
    mov al, byte ptr [eax + 0x56]
    and eax, 0xff
    cmp eax, dword ptr [ebp - 0x23c]
    jle loc_00420cec
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_0041e5c3
    test eax, eax
    je loc_00420cec
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov edx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    call sub_00405654
    mov dword ptr [ebp - 0x240], eax
    cmp dword ptr [ebp - 0x240], 0
    je loc_00420c35
    mov eax, dword ptr [ebp - 0x240]
    mov eax, dword ptr [eax + 4]
    mov dword ptr [ebp - 0x244], eax
    cmp dword ptr [ebp - 0x244], 1
    jne loc_00420c35
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x87], 0
    jne loc_00420c24
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x89], 0
    je loc_00420c26
loc_00420c24:
    jmp loc_00420c30
loc_00420c26:
    mov eax, 0x28
    call sub_00427961
loc_00420c30:
    jmp loc_00420cec
loc_00420c35:
    mov eax, dword ptr [ebp - 0xc]
    xor edx, edx
    mov dl, byte ptr [eax + 0x56]
    mov eax, 0x28b
    call sub_00412135
    cmp edx, eax
    jl loc_00420caa
    mov eax, dword ptr [ebp - 0xc]
    mov al, byte ptr [eax + 0x56]
    and eax, 0xff
    dec eax
    cmp eax, dword ptr [ebp - 0x23c]
    jne loc_00420caa
    mov eax, 0x28a
    call sub_00412135
    cmp eax, 1
    jle loc_00420c80
    mov eax, 0x28a
    call sub_00412135
    mov dword ptr [ebp - 0x248], eax
    jmp loc_00420c8a
loc_00420c80:
    mov dword ptr [ebp - 0x248], 1
loc_00420c8a:
    call sub_0045190a
    mov edx, eax
    mov eax, edx
    sar edx, 0x1f
    idiv dword ptr [ebp - 0x248]
    test edx, edx
    jne loc_00420caa
    mov eax, 0x4b0
    call sub_00427961
loc_00420caa:
    cmp dword ptr [ebp - 8], 0
    je loc_00420cbc
    mov eax, 0x226
    call sub_00427961
    jmp loc_00420cc6
loc_00420cbc:
    mov eax, 0x64
    call sub_00427961
loc_00420cc6:
    xor ecx, ecx
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    call sub_004266a3
    mov ebx, eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    call sub_0042665c
    mov esi, dword ptr [ebp - 0xc]
    mov edx, eax
    mov eax, esi
    call sub_0041eb13
loc_00420cec:
    call sub_0040c06a
    test eax, eax
    je loc_00420d45
    mov eax, dword ptr [ebp - 0xc]
    cmp byte ptr [eax + 0x10], 4
    je loc_00420d45
    mov eax, dword ptr [ebp - 0xc]
    mov ax, word ptr [eax + 0x30]
    and eax, 0xffff
    push eax
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x2a]
    sar eax, 0x10
    push eax
    mov eax, dword ptr [ebp - 0xc]
    mov ecx, dword ptr [eax + 0x20]
    mov ebx, dword ptr [ebp - 0xc]
    mov ebx, dword ptr [ebx + 0x1c]
    mov eax, dword ptr [ebp - 0xc]
    mov esi, dword ptr [eax]
    mov edx, offset d_00461bc4
    mov eax, dword ptr [ebp - 0xc]
    sub eax, edx
    mov edx, eax
    mov edi, 0x98
    mov eax, edx
    sar edx, 0x1f
    idiv edi
    mov edx, esi
    call sub_0040ef4e
loc_00420d45:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00420d4e:
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
    mov eax, dword ptr [d_004621cc]
    mov dword ptr [ebp - 4], eax
loc_00420d6e:
    cmp dword ptr [ebp - 8], 0x64
    jl loc_00420d88
    jmp loc_00420e30
loc_00420d79:
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [ebp - 8]
    mov eax, dword ptr [ebp - 4]
    add dword ptr [ebp - 4], 0x10
    jmp loc_00420d6e
loc_00420d88:
    mov eax, dword ptr [ebp - 4]
    cmp dword ptr [eax], 0
    jne loc_00420e2b
    mov eax, 0x3f2
    call sub_00412135
    test eax, eax
    je loc_00420db7
    call sub_004105b0
    mov edx, eax
    mov eax, 0x3f2
    call sub_00412135
    cmp edx, eax
    jge loc_00420e29
loc_00420db7:
    call sub_0045190a
    mov edx, eax
    mov ebx, 6
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    test edx, edx
    je loc_00420e29
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx], 1
    mov edx, dword ptr [ebp - 4]
    mov dword ptr [edx + 0xc], 0
    call sub_0045190a
    mov edx, eax
    mov ebx, 0x28
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x1c]
    add eax, edx
    mov edx, dword ptr [ebp - 4]
    sub eax, 0x14
    mov dword ptr [edx + 4], eax
    call sub_0045190a
    mov edx, eax
    mov ebx, 0x32
    mov eax, edx
    sar edx, 0x1f
    idiv ebx
    mov eax, dword ptr [ebp - 0xc]
    mov eax, dword ptr [eax + 0x20]
    add eax, edx
    mov edx, dword ptr [ebp - 4]
    sub eax, 0x30
    mov dword ptr [edx + 8], eax
loc_00420e29:
    jmp loc_00420e30
loc_00420e2b:
    jmp loc_00420d79
loc_00420e30:
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00420e39:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0xc
    .byte 0x81,0xec,0x0c,0x00,0x00,0x00
    cmp dword ptr [d_004621ec], 0
    jne loc_00420e6e
    mov eax, offset d_0045a252
    call sub_0041d957
    mov dword ptr [d_0045be40], eax
    mov eax, dword ptr [d_0045be40]
    call sub_0041da5c
    mov dword ptr [d_004621ec], eax
loc_00420e6e:
    mov dword ptr [ebp - 0xc], 0
    mov eax, dword ptr [d_004621cc]
    mov dword ptr [ebp - 8], eax
loc_00420e7d:
    cmp dword ptr [ebp - 0xc], 0x64
    jl loc_00420e97
    # jmp 0x420ef4
    .byte 0xe9
    .long loc_00420ef4 - . - 4
loc_00420e88:
    mov eax, dword ptr [ebp - 0xc]
    inc dword ptr [ebp - 0xc]
    mov eax, dword ptr [ebp - 8]
    add dword ptr [ebp - 8], 0x10
    jmp loc_00420e7d
loc_00420e97:
    mov eax, dword ptr [ebp - 8]
    cmp dword ptr [eax], 0
    je loc_00420ef2
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 0xc]
    mov eax, dword ptr [d_0045be40]
    call sub_0041daa7
    mov dword ptr [ebp - 4], eax
    xor ecx, ecx
    mov ebx, dword ptr [ebp - 4]
    mov eax, dword ptr [ebp - 8]
    mov edx, dword ptr [eax + 8]
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 4]
    call sub_00415a9f
    mov eax, dword ptr [d_004621f0]
    cmp eax, dword ptr [d_00464994]
    je loc_00420ef2
    mov eax, dword ptr [ebp - 8]
    inc dword ptr [eax + 0xc]
    mov eax, dword ptr [ebp - 8]
    mov eax, dword ptr [eax + 0xc]
    cmp eax, dword ptr [d_004621ec]
    jle loc_00420ef2
    mov eax, dword ptr [ebp - 8]
    mov dword ptr [eax], 0
loc_00420ef2:
    jmp loc_00420e88
loc_00420ef4:
    mov eax, dword ptr [d_00464994]
    mov dword ptr [d_004621f0], eax
    mov esp, ebp
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
sub_00420f07:
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov ebp, esp
    # sub esp, 0x7c
    .byte 0x81,0xec,0x7c,0x00,0x00,0x00
    cmp dword ptr [d_004621e0], 0
    jle loc_00420f29
    mov eax, dword ptr [d_00464958]
    sub dword ptr [d_004621e0], eax
loc_00420f29:
    cmp dword ptr [d_004621e0], 0
    jge loc_00420f3c
    mov dword ptr [d_004621e0], 0
loc_00420f3c:
    cmp dword ptr [d_004621e8], 0
    jle loc_00420f50
    mov eax, dword ptr [d_00464958]
    sub dword ptr [d_004621e8], eax
loc_00420f50:
    cmp dword ptr [d_004621e8], 0
    jge loc_00420f63
    mov dword ptr [d_004621e8], 0
loc_00420f63:
    mov dword ptr [d_004621e4], 0
    mov dword ptr [d_004621d0], 0
    mov dword ptr [d_004621b4], 0
    mov dword ptr [d_004621b8], 0
    mov dword ptr [d_004621bc], 0
    mov dword ptr [d_004621c0], 0
    call sub_00429790
    mov dword ptr [ebp - 4], 0
loc_00420fab:
    cmp dword ptr [ebp - 4], 0xa
    jl loc_00420fbe
    # jmp 0x42114e
    .byte 0xe9
    .long loc_0042114e - . - 4
loc_00420fb6:
    mov eax, dword ptr [ebp - 4]
    inc dword ptr [ebp - 4]
    jmp loc_00420fab
loc_00420fbe:
    imul eax, dword ptr [ebp - 4], 0x98
    mov edx, offset d_00461bc4
    add eax, edx
    call sub_0041f29b
    cmp dword ptr [d_00464938], 0
    # jne 0x421070
    .byte 0x0f,0x85
    .long loc_00421070 - . - 4
    cmp dword ptr [d_004648bc], 0
    # je 0x421070
    .byte 0x0f,0x84
    .long loc_00421070 - . - 4
    cmp dword ptr [d_00464964], 0
    # je 0x421043
    .byte 0x74
    .byte loc_00421043 - . - 1
    imul eax, dword ptr [ebp - 4], 0x98
    # cmp byte ptr [eax + 0x461c18], 0
    .byte 0x80,0xb8
    .long d_00461c18
    .byte 0x00
