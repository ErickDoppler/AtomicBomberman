#!/bin/sh
# Atomic Bomberman dedicated server - installs the server as a systemd service (Linux, Raspberry Pi OS).
# The service starts at boot and is restarted if it stops.
#
#   sudo ./install_service.sh [--user NAME] [--name SERVICE]
#
#   --user NAME     account the server runs as (default: the user who called sudo; it must own this folder's log file)
#   --name SERVICE  service name (default: bomberman-server)

SERVICE=bomberman-server
RUN_USER="${SUDO_USER:-$(id -un)}"

while [ $# -gt 0 ]; do
    case "$1" in
        --user) RUN_USER="$2"; shift 2 ;;
        --name) SERVICE="$2"; shift 2 ;;
        *) echo "unknown option: $1"; exit 1 ;;
    esac
done

if [ "$(id -u)" -ne 0 ]; then
    echo "Run this script as root:  sudo ./install_service.sh"
    exit 1
fi
if ! command -v systemctl >/dev/null 2>&1; then
    echo "systemd was not found. Start the server with ./start.sh (for example from your init system or a screen/tmux session)."
    exit 1
fi

DIR="$(cd "$(dirname "$0")" && pwd)"
sh "$DIR/setup.sh" || exit 1
PYTHON="$(command -v python3)"
if ! id "$RUN_USER" >/dev/null 2>&1; then
    echo "The account '$RUN_USER' does not exist."
    exit 1
fi

# the server writes its log next to server.ini
chown "$RUN_USER" "$DIR" 2>/dev/null
[ -f "$DIR/server.log" ] && chown "$RUN_USER" "$DIR/server.log"

UNIT="/etc/systemd/system/$SERVICE.service"
cat > "$UNIT" <<EOF
[Unit]
Description=Atomic Bomberman dedicated server
After=network-online.target
Wants=network-online.target

[Service]
Type=simple
User=$RUN_USER
WorkingDirectory=$DIR
ExecStart=$PYTHON $DIR/bm_server.py --ini $DIR/server.ini
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable "$SERVICE"
systemctl restart "$SERVICE"
sleep 1
systemctl --no-pager --lines=5 status "$SERVICE"
echo
echo "Installed as the service '$SERVICE' (user $RUN_USER)."
echo "  status:   systemctl status $SERVICE"
echo "  log:      journalctl -u $SERVICE -f      (and $DIR/server.log)"
echo "  restart after editing server.ini:  sudo systemctl restart $SERVICE"
echo "  remove:   sudo ./uninstall_service.sh"
echo "Remember to open the TCP port of server.ini in the firewall / router."
