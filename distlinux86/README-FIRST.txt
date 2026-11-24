Atomic Bomberman V1.1 - Linux (x86-64; also builds on ARM, e.g. Raspberry Pi)
==========================================================================

This package contains the restored game as C source (translated from the restored program, see the project page
https://github.com/ErickDoppler/AtomicBomberman) and a build script. It does NOT contain any original game data
(graphics, sound, levels, texts). Hudson Soft / Interplay (1997) own the game; the person who made this release claims
no credit and no ownership over the original game. He only fixed the 30-year-old software so that it runs on current systems.

To play you need your own legitimate copy of Atomic Bomberman:

 1. Take the folder of your installed original game.
 2. Convert its data once (needs Python 3, ffmpeg and tools/pack_assets.py from the project page):
        python3 tools/pack_assets.py <your original game folder> <new folder>
    This creates <new folder>/DATA with everything the game needs.
 3. Copy that DATA folder to   source/DATA   (inside this package).
 4. Install a C compiler and SDL2 (Debian / Ubuntu / Raspberry Pi OS):
        sudo apt install gcc libsdl2-2.0-0
 5. Run   ./build.sh   (a few minutes, about 1 GB of free memory). It creates the folder  atomicbomberman/  with
        AtomicBomberman.sh   starts the game
        AtomicBomberman      the program
        DATA/                the game data and, in DATA/lib, the Ogg Vorbis sound libraries (Xiph.Org, see THIRD-PARTY-NOTICES.txt)
 6. Start   atomicbomberman/AtomicBomberman.sh

Options:  -local (no network)   -host <port>   -join <address:port>   -intro / -skipintro
Keys:     F12 = full screen on / off, Esc leaves a network game.
Without a desktop (Linux console) SDL draws straight to the screen (KMS/DRM).

Network play uses TCP only: Start Network Game opens a lobby (port field at the top), Join Network Game asks for
the server address and port. Up to 10 players.
Known: on a Raspberry Pi the game is still too slow for comfortable play (work in progress).
