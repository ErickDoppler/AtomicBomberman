#!/bin/sh
# Atomic Bomberman dedicated server - starts the server in this terminal (Ctrl+C stops it).
# Settings: server.ini next to this file.
cd "$(dirname "$0")" || exit 1

if ! command -v python3 >/dev/null 2>&1 || ! python3 -c 'import sys; sys.exit(0 if sys.version_info >= (3, 7) else 1)' 2>/dev/null; then
    echo "Python 3.7+ not found - running setup.sh first."
    sh ./setup.sh || exit 1
fi

exec python3 bm_server.py "$@"
