#!/bin/sh
# Atomic Bomberman dedicated server - installs what the server needs (Linux, Raspberry Pi, macOS).
# The server needs Python 3.7 or newer and nothing else (standard library only).
# Run:  ./setup.sh        (it asks for sudo when a package has to be installed)

cd "$(dirname "$0")" || exit 1

python_ok() {
    command -v python3 >/dev/null 2>&1 && python3 -c 'import sys; sys.exit(0 if sys.version_info >= (3, 7) else 1)' 2>/dev/null
}

if python_ok; then
    echo "Python 3 is installed: $(python3 --version)"
else
    echo "Python 3.7 or newer is missing - installing it."
    if [ "$(id -u)" -eq 0 ]; then SUDO=""; else SUDO="sudo"; fi
    if command -v apt-get >/dev/null 2>&1; then
        $SUDO apt-get update && $SUDO apt-get install -y python3
    elif command -v dnf >/dev/null 2>&1; then
        $SUDO dnf install -y python3
    elif command -v yum >/dev/null 2>&1; then
        $SUDO yum install -y python3
    elif command -v pacman >/dev/null 2>&1; then
        $SUDO pacman -Sy --noconfirm python
    elif command -v zypper >/dev/null 2>&1; then
        $SUDO zypper --non-interactive install python3
    elif command -v apk >/dev/null 2>&1; then
        $SUDO apk add python3
    elif command -v brew >/dev/null 2>&1; then
        brew install python3
    else
        echo "No known package manager found. Install Python 3.7+ from https://www.python.org/downloads/ and run this script again."
        exit 1
    fi
    if ! python_ok; then
        echo "Python 3.7 or newer is still not available. Install it by hand and run this script again."
        exit 1
    fi
    echo "Installed: $(python3 --version)"
fi

chmod +x setup.sh start.sh install_service.sh uninstall_service.sh bm_server.py 2>/dev/null
echo "Everything the server needs is installed."
echo "Edit server.ini (name, port), then start the server with ./start.sh or install it as a service with sudo ./install_service.sh"
