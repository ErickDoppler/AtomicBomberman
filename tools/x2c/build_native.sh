#!/bin/sh
# Builds the portable game from the translated code:  tools/x2c/build_native.sh [out dir] [back end: null|sdl]
# Needs the output of tools/x2c/x2c.py in build/x2c2 (game.c, ftab.c, imports.c, hostsyms.c, image.c).
# On a machine with only the runtime libraries (no SDL / vorbis headers) the SDL back end links the .so files directly.
set -e
ROOT=$(cd "$(dirname "$0")/../.." && pwd)
GEN=${GEN:-$ROOT/build/x2c2}
OUT=${1:-$ROOT/build/native}
BACK=${2:-null}
CC=${CC:-gcc}
mkdir -p "$OUT"
CF="-O2 -w -fno-strict-aliasing -DBM_NATIVE -I$ROOT/src/native -I$ROOT/src/platform -I$ROOT/tools/x2c/rt $EXTRA_CFLAGS"
LIBS="-lm"
case "$(uname -s)" in
  MINGW*|MSYS*|CYGWIN*|Windows*) LIBS="$LIBS -lws2_32";;
  *) LIBS="$LIBS -lpthread"
     [ "$BACK" = sdl ] && LIBS="$LIBS -l:libSDL2-2.0.so.0"
     [ -n "$VORBIS" ] || ls /usr/lib/*/libvorbisfile.so.3 /usr/lib/libvorbisfile.so.3 >/dev/null 2>&1 && VORBIS=1
     [ -n "$VORBIS" ] && { CF="$CF -DHAVE_VORBIS"; LIBS="$LIBS -l:libvorbisfile.so.3"; };;
esac
build() { # source object [flags]
  if [ ! -f "$OUT/$2" ] || [ "$1" -nt "$OUT/$2" ] || [ -n "$FORCE" ]; then echo "  cc $(basename $1)"; $CC -c $CF $3 -o "$OUT/$2" "$1"; fi
}
# The translated code, the runtime and the host core are compiled as ONE translation unit: the machine registers are then
# plain static variables and the compiler keeps them in processor registers between calls (about twice as fast).
if [ "${UNITY:-1}" = 1 ]; then
  cat > "$OUT/unity.c" <<UEOF
#define X2C_UNITY
#include "$GEN/game.c"
#include "$GEN/ftab.c"
#include "$ROOT/tools/x2c/rt/x2c_rt.c"
#include "$ROOT/src/native/host.c"
#include "$ROOT/src/native/w32.c"
UEOF
  if [ ! -f "$OUT/unity.o" ] || [ -n "$FORCE" ] || [ "$GEN/game.c" -nt "$OUT/unity.o" ] || [ "$ROOT/src/native/host.c" -nt "$OUT/unity.o" ] || [ "$ROOT/src/native/w32.c" -nt "$OUT/unity.o" ] || [ "$ROOT/tools/x2c/rt/x2c_rt.c" -nt "$OUT/unity.o" ]; then
    echo "  cc unity (game, runtime, host)"; $CC -c $CF -DX2C_UNITY -I"$GEN" "${GAMEOPT:--O1}" -o "$OUT/unity.o" "$OUT/unity.c"
  fi
  for f in imports hostsyms image; do build "$GEN/$f.c" "$f.o" -O1; done
  for f in w32user ddraw_n dsound hooks_n rt_native ogg_n back_$BACK sys; do build "$ROOT/src/native/$f.c" "$f.o"; done
else
  for f in game ftab imports hostsyms image; do build "$GEN/$f.c" "$f.o" "${GAMEOPT:--O1}"; done
  build "$ROOT/tools/x2c/rt/x2c_rt.c" x2c_rt.o
  for f in host sys w32 w32user ddraw_n dsound hooks_n rt_native ogg_n back_$BACK; do build "$ROOT/src/native/$f.c" "$f.o"; done
fi
for f in startup vfs net ui cursor misc png; do build "$ROOT/src/platform/$f.c" "p_$f.o"; done
echo "  link"
$CC $EXTRA_LDFLAGS -o "$OUT/AtomicBomberman" "$OUT"/*.o $LIBS
echo "built $OUT/AtomicBomberman"
