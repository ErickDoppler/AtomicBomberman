/* Linker script: reproduce the original BM95.EXE section layout (code 0x401000,
   data 0x458000, bss 0x45e000, imports 0x4a7000) so that every address in the restored
   source matches the original binary.  The platform layer (src/platform) goes after it.
   @ENTRY@ is substituted by tools/build.py. */
OUTPUT_FORMAT(pei-i386)
ENTRY(@ENTRY@)
SECTIONS
{
  .text 0x401000 :
  {
    *bm_main.o(.text)
  }
  .data 0x458000 :
  {
    *bm_main.o(.data)
    *(.data)
    *(SORT(.data$*))
    *(.data.*)
  }
  .bss 0x45e000 :
  {
    *bm_main.o(.bss)
  }
  .idata BLOCK(__section_alignment__) :
  {
    SORT(*)(.idata$2)
    SORT(*)(.idata$3)
    LONG (0); LONG (0); LONG (0); LONG (0); LONG (0);
    SORT(*)(.idata$4)
    __IAT_start__ = .;
    SORT(*)(.idata$5)
    __IAT_end__ = .;
    SORT(*)(.idata$6)
    SORT(*)(.idata$7)
    . = ALIGN(4);
  }
  .xtext BLOCK(__section_alignment__) :
  {
    *(.text)
    *(SORT(.text$*))
    *(.text.*)
    *(.rdata)
    *(SORT(.rdata$*))
    *(.rdata.*)
  }
  .xbss BLOCK(__section_alignment__) :
  {
    *(.bss)
    *(.bss.*)
    *(COMMON)
  }
  .rsrc BLOCK(__section_alignment__) :
  {
    *(.rsrc)
    *(SORT(.rsrc$*))
  }
}
