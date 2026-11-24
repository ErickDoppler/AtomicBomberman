#!/bin/sh
# Atomic Bomberman dedicated server - removes the systemd service installed by install_service.sh.
#   sudo ./uninstall_service.sh [--name SERVICE]
SERVICE=bomberman-server
if [ "$1" = "--name" ] && [ -n "$2" ]; then SERVICE="$2"; fi

if [ "$(id -u)" -ne 0 ]; then
    echo "Run this script as root:  sudo ./uninstall_service.sh"
    exit 1
fi
systemctl stop "$SERVICE" 2>/dev/null
systemctl disable "$SERVICE" 2>/dev/null
rm -f "/etc/systemd/system/$SERVICE.service"
systemctl daemon-reload
echo "The service '$SERVICE' was removed."
