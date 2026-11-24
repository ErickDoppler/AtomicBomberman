#!/bin/sh
# Builds the portable game from the translated code:  tools/x2c/build_native.sh [out dir] [back end: null|sdl]
# Needs the output of tools/x2c/x2c.py in build/x2c2 (game.c, ftab.c, imports.c, hostsyms.c, image.c).
set -e
ROOT=$(cd "$(dirname "$0")/../.." && pwd)
GEN=${GEN:-$ROOT/build/x2c2}
OUT=${1:-$ROOT/build/native}
BACK=${2:-null}
CC=${CC:-gcc}
mkdir -p "$OUT"
CF="-O2 -w -fno-strict-aliasing -DBM_NATIVE -I$ROOT/src/native -I$ROOT/src/platform -I$ROOT/tools/x2c/rt $EXTRA_CFLAGS"
LIBS="-lm"
case "$(uname -s)" in MINGW*|MSYS*|CYGWIN*|Windows*) LIBS="$LIBS -lws2_32";; *) LIBS="$LIBS -lpthread";; esac
[ "$BACK" = sdl ] && { CF="$CF $(sdl2-config --cflags)"; LIBS="$LIBS $(sdl2-config --libs)"; }
build() { # source object [flags]
  if [ ! -f "$OUT/$2" ] || [ "$1" -nt "$OUT/$2" ] || [ -n "$FORCE" ]; then echo "  cc $(basename $1)"; $CC -c $CF $3 -o "$OUT/$2" "$1"; fi
}
for f in game ftab imports hostsyms image; do build "$GEN/$f.c" "$f.o" -O1; done
build "$ROOT/tools/x2c/rt/x2c_rt.c" x2c_rt.o
for f in host sys w32 w32user ddraw_n dsound hooks_n rt_native ogg_n back_$BACK; do build "$ROOT/src/native/$f.c" "$f.o"; done
for f in startup vfs net ui cursor misc png; do build "$ROOT/src/platform/$f.c" "p_$f.o"; done
echo "  link"
$CC -o "$OUT/AtomicBomberman" "$OUT"/*.o $LIBS
echo "built $OUT/AtomicBomberman"
