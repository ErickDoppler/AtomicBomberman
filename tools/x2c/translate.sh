#!/bin/sh
# Translates the patched game (tools/build.py output with relocations) to C in build/x2c2:  tools/x2c/translate.sh
set -e
ROOT=$(cd "$(dirname "$0")/../.." && pwd)
PY=${PY:-python}
cd "$ROOT"
BM_RELOC=1 $PY tools/build.py
DIS_LO=4b2f40 DIS_HI=4b32a4 $PY tools/disasm.py build/bm95_reloc.exe build/bm95_hooks.pkl $(awk '/\.text\.hook/{f=1} f&&/^ \.text/&&!/hook/{f=0} f&&/0x004b[23]/{sub("0x00","",$1); print $1}' build/link.map | tr '\n' ' ') 4b2f40
$PY tools/disasm.py build/bm95_reloc.exe build/bm95_reloc.pkl 44bdcc
$PY tools/x2c/x2c.py build/bm95_reloc.exe build/x2c2 --pkl build/bm95_reloc.pkl --pkl build/bm95_hooks.pkl --map build/link.map
