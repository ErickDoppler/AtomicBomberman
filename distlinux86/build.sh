#!/bin/sh
# Atomic Bomberman for Linux: builds the game from source/ and creates the folder "atomicbomberman" next to this script:
#
#     atomicbomberman/AtomicBomberman.sh     starts the game (run this)
#     atomicbomberman/AtomicBomberman        the program
#     atomicbomberman/DATA/                  everything the game needs
#
# Needs: a C compiler (gcc or clang) and the SDL2 library (libsdl2-2.0-0 - it is part of every desktop; the development package
# is not required).  Everything else comes with the game: the Ogg Vorbis decoder (source/libs, installed into atomicbomberman/DATA/lib)
# and all game data.  The build needs about 1 GB of free memory.
#
#     Debian / Ubuntu / Raspberry Pi OS:  sudo apt install gcc libsdl2-2.0-0
#
# Works on x86-64, 32-bit x86 and ARM (aarch64, armv7): the game is translated C, nothing in it is processor specific.
set -e
HERE=$(cd "$(dirname "$0")" && pwd)
SRC=$HERE/source
OUT=$HERE/atomicbomberman
BUILD=${TMPDIR:-/tmp}/atomicbomberman-build.$$
CC=${CC:-$(command -v gcc || command -v cc || command -v clang || true)}

[ -n "$CC" ] || { echo "No C compiler found. Install one first (for example: sudo apt install gcc)." >&2; exit 1; }
[ -f "$SRC/gen/game.c" ] || { echo "The sources are missing (source/gen/game.c)." >&2; exit 1; }
if [ ! -d "$SRC/DATA" ]; then
  echo "The game data is missing: copy the DATA folder of the game to $SRC/DATA and run build.sh again." >&2
  exit 1
fi

# --- libraries -----------------------------------------------------------------------------------------------------------
LIBS="-lm -lpthread"
CF="-O2 -w -fno-strict-aliasing -DBM_NATIVE -I$SRC/native -I$SRC/platform -I$SRC/rt -I$SRC/gen"
if command -v sdl2-config >/dev/null 2>&1 && [ -f "$(sdl2-config --prefix)/include/SDL2/SDL.h" ] 2>/dev/null; then
  LIBS="$LIBS $(sdl2-config --libs)"
else
  SDLSO=$(ls /usr/lib/*/libSDL2-2.0.so.0 /usr/lib64/libSDL2-2.0.so.0 /usr/lib/libSDL2-2.0.so.0 /usr/local/lib/libSDL2-2.0.so.0 2>/dev/null | head -1)
  [ -n "$SDLSO" ] || { echo "SDL2 not found. Install it (Debian/Ubuntu: sudo apt install libsdl2-2.0-0)." >&2; exit 1; }
  LIBS="$LIBS $SDLSO"
fi
# The Ogg Vorbis decoder (libvorbisfile, libvorbis, libogg) comes with the game for this processor (source/libs/<arch>) and is
# installed next to the program; otherwise the system's copy is used.
ARCH=$(uname -m)
BUNDLED=
if [ -f "$SRC/libs/$ARCH/libvorbisfile.so.3" ]; then
  BUNDLED=$SRC/libs/$ARCH
  VORBIS=$BUNDLED/libvorbisfile.so.3
  LIBS="$LIBS -Wl,-rpath-link,$BUNDLED -Wl,--disable-new-dtags -Wl,-rpath,\$ORIGIN/DATA/lib"
else
  VORBIS=$(ls /usr/lib/*/libvorbisfile.so.3 /usr/lib64/libvorbisfile.so.3 /usr/lib/libvorbisfile.so.3 /usr/local/lib/libvorbisfile.so.3 2>/dev/null | head -1)
fi
if [ -n "$VORBIS" ]; then
  CF="$CF -DHAVE_VORBIS"; LIBS="$LIBS $VORBIS"
else
  echo "Note: no Ogg Vorbis decoder for this processor in source/libs and none installed - the game will be silent."
  echo "      (Debian/Ubuntu: sudo apt install libvorbisfile3)"
fi

mkdir -p "$BUILD"
trap 'rm -rf "$BUILD"' EXIT

# --- compile -------------------------------------------------------------------------------------------------------------
# the translated game, the runtime and the host core are one translation unit (the compiler keeps the machine registers in
# processor registers: about twice as fast)
cat > "$BUILD/unity.c" <<UEOF
#define X2C_UNITY
#include "$SRC/gen/game.c"
#include "$SRC/gen/ftab.c"
#include "$SRC/rt/x2c_rt.c"
#include "$SRC/native/host.c"
#include "$SRC/native/w32.c"
UEOF
echo "Compiling the game (this takes a few minutes) ..."
$CC -c $CF -DX2C_UNITY -o "$BUILD/unity.o" "$BUILD/unity.c"
OBJS="$BUILD/unity.o"
for f in gen/imports gen/hostsyms gen/image native/w32user native/ddraw_n native/dsound native/hooks_n native/rt_native native/ogg_n native/back_sdl native/sys \
         platform/startup platform/vfs platform/net platform/ui platform/cursor platform/misc platform/png; do
  o=$BUILD/$(echo "$f" | tr / _).o
  $CC -c $CF -o "$o" "$SRC/$f.c"
  OBJS="$OBJS $o"
done
echo "Linking ..."
rm -rf "$OUT"
mkdir -p "$OUT"
$CC -o "$OUT/AtomicBomberman" $OBJS $LIBS

# --- the game folder -----------------------------------------------------------------------------------------------------
echo "Copying the game data ..."
cp -r "$SRC/DATA" "$OUT/DATA"
rm -f "$OUT"/DATA/*.dll "$OUT"/DATA/*.DLL
[ -n "$BUNDLED" ] && { mkdir -p "$OUT/DATA/lib" && cp "$BUNDLED"/*.so* "$OUT/DATA/lib/"; }
cat > "$OUT/AtomicBomberman.sh" <<'LEOF'
#!/bin/sh
# Starts Atomic Bomberman.  Options: -local (no network), -host <port>, -join <address:port>, -intro.
cd "$(dirname "$(readlink -f "$0")")" || exit 1
export LD_LIBRARY_PATH="$PWD/DATA/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"      # the Ogg Vorbis decoder that comes with the game
# without a desktop (the Linux console) SDL draws straight to the screen through KMS/DRM
if [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ] && [ -z "$SDL_VIDEODRIVER" ]; then
  export SDL_VIDEODRIVER=kmsdrm
fi
exec ./AtomicBomberman "$@"
LEOF
chmod +x "$OUT/AtomicBomberman.sh" "$OUT/AtomicBomberman"
echo
echo "Done. Start the game with:  $OUT/AtomicBomberman.sh"
echo "(F12 switches between the window and the full screen.)"
