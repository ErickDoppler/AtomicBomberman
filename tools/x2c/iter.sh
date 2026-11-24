#!/bin/sh
# Development loop: regenerate the C from the existing disassembly, build, copy next to the data and run.
#   tools/x2c/iter.sh [debug]      debug: also writes a function-entry trace (build/native_dbg)
cd "$(dirname "$0")/../.."
export PATH="/c/workenv/w64devkit/bin:$PATH"
PY=${PY:-"env -u PYTHONHOME -u PYTHON_HOME /c/Users/Administrator/AppData/Local/Programs/Python/Python312/python"}
rm -rf build/x2c2
$PY tools/x2c/x2c.py build/bm95_reloc.exe build/x2c2 --pkl build/bm95_reloc.pkl --pkl build/bm95_hooks.pkl --map build/link.map | head -1
sh tools/x2c/build_native.sh 2>&1 | grep -E "error|built"
cp build/native/AtomicBomberman.exe build/run/
if [ "$1" = debug ]; then EXTRA_CFLAGS=-DX2C_CALLS FORCE=1 sh tools/x2c/build_native.sh build/native_dbg 2>&1 | grep -E "error|built"; cp build/native_dbg/AtomicBomberman.exe build/run/dbg.exe; fi
