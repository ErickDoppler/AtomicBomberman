# Atomic Bomberman dedicated server

A relay hub for the game's TCP network layer, written in Python 3.7+ (standard library only), so it runs on Windows,
Linux, macOS and Raspberry Pi. The server has **no player of its own**: it accepts up to 10 players, keeps the lobby,
relays the game's datagrams, starts the game on request and keeps every connection alive.

## Files

| File | What it does |
|---|---|
| `server.ini` | Settings: server `name`, TCP `port`, `bind` address, `max_players` (1-10), `fuse_seconds`, `log_file` |
| `bm_server.py` | The server |
| `setup.cmd` / `setup.sh` | Install what the server needs (Python 3.7+) when it is missing: winget / python.org on Windows, the system package manager on Linux and macOS |
| `start.cmd` / `start.sh` | Start the server in the terminal (they run setup first if Python is missing) |
| `install_service.sh` / `uninstall_service.sh` | Install / remove the server as a systemd service (starts at boot, restarts when it stops) |
| `tests/selftest.py` | Plays the game's protocol with fake players against a real server process |

## Use

```
Windows:  start.cmd
Linux:    ./setup.sh   then   ./start.sh
Service:  sudo ./install_service.sh        (log: journalctl -u bomberman-server -f)
```

Edit `server.ini` first (restart the server afterwards). Open the TCP port in the firewall / router.

## What the server does

* gives every player the lowest free node number 1..10 (`HELLO`), keeps names and locked positions (`LOBBY`);
* relays datagrams: a broadcast goes to everybody else, a datagram addressed to a node goes to that node;
* a player's `STARTREQ` starts the game (two players at least); nobody can join a running game;
* pings every second; a player silent for `fuse_seconds` (4) is dropped;
* node 1 is the player whose computer runs the game's server logic: when it is lost while the game runs, everybody is
  dropped (the game cannot go on without it). When everybody has left, the server is empty and ready again.

The wire format is documented at the top of `bm_server.py`. Two frames (`UNREADY`, `END`) are extensions for node 1.

## Playing through the dedicated server

In the game choose **Join Network Game**, enter the address and port of the server and press Join - every player does
this, nobody uses "Start Network Game". The server gives the first player to connect node 1: that player's computer
runs the game's server logic (it is the "host" for the game) over its connection to the server; everybody else is a
client. From the lobby on, the flow is the same as in a self-hosted game: Start Game (any player), the setup screen
with automatic positions, Enter to lock, the game starts when everybody has locked. If node 1 is lost the server drops
everybody and the players return to the join screen.

## Status

The server passes `tests/selftest.py` (fake players speaking the game's protocol). The game side (node 1 runs the game
server logic through the server, `src/platform/net.c`, `src/asm/session_*.s`) is built but **has not been run against
the server yet**. The `END` frame is defined by the server but not sent by the game yet (the server resets when
everybody has left).
