#!/bin/sh
# Refreshes distlinux86/source from the repository (generated C of the translated game + the portable host + platform layer).
# Run after tools/x2c/translate.sh (or iter.sh) has produced build/x2c2.  The game data is NOT copied from here: put the DATA
# folder of the game into distlinux86/source/DATA yourself (or let build.sh find it next to the sources).
set -e
ROOT=$(cd "$(dirname "$0")/.." && pwd)
D=$ROOT/distlinux86/source
mkdir -p "$D/gen" "$D/native" "$D/platform" "$D/rt"
for f in game ftab imports hostsyms image; do cp "$ROOT/build/x2c2/$f.c" "$D/gen/"; done
cp "$ROOT"/src/native/*.c "$ROOT"/src/native/*.h "$D/native/"
cp "$ROOT"/src/platform/*.c "$ROOT"/src/platform/*.h "$D/platform/"
cp "$ROOT"/tools/x2c/rt/x2c_rt.c "$ROOT"/tools/x2c/rt/x2c_rt.h "$ROOT"/tools/x2c/rt/x2c_host.h "$D/rt/"
rm -f "$D/platform/ddraw.c" "$D/platform/rt.c" "$D/platform/ogg.c"     # Windows-only parts of the platform layer
echo "distlinux86/source refreshed"
