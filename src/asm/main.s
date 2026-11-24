    .intel_syntax noprefix
    .include "text_00401000.s"
    .include "text_00411000.s"
    .include "text_00421000.s"
    .include "text_00431000.s"
    .include "text_00441000.s"
    .include "text_00451000.s"
    .include "data.s"
    .include "bss.s"
    .include "iat.s"
    .include "hooks.s"
    .globl _bm_entry
    .set _bm_entry, sub_0044bdcc
