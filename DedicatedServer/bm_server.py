#!/usr/bin/env python3
"""Atomic Bomberman dedicated server.

A relay hub for the game's TCP network layer (src/platform/net.c).  It runs on any platform that has Python 3.7+
(Windows, Linux, macOS, Raspberry Pi) and needs nothing but the standard library.

The server has no player of its own.  It
  * accepts up to `max_players` (10) connections and gives every player a node number, the lowest free one (1..10);
  * keeps the lobby (names, locked positions) and tells everybody when it changes;
  * relays the game's datagrams: a broadcast goes to every other player, a datagram addressed to a node goes to that node;
  * starts the game when a player asks for it (at least two players);
  * keeps every connection alive with a ping every second and drops a player that was silent for `fuse_seconds`;
  * when the game is running and node 1 (the player whose computer runs the game's server logic) is lost, drops
    everybody - the game cannot go on without it.

Wire format (identical to the game's): frames of  u16 length | u8 type | u8 0 | body  (little endian, length = body size).
  1 HELLO    server -> player: body = node number (1 byte)
  2 DATA     both ways: body = 6 src node, 6 dst node, u16 src socket, u16 dst socket, payload (a datagram)
  3 NAME     player -> server: body = the player's name
  4 LOBBY    server -> players: repeated { u8 node | 0x80 if the position is locked, char name[32] }, ascending nodes
  5 START    server -> players: the game starts
  6 STARTREQ player -> server: please start the game
  7 READY    player -> server: my position is locked
  8 PING     both ways, once a second
  9 UNREADY  node 1 -> server: nobody's position is locked (the setup screen opens again)
 10 END      node 1 -> server: the game is over, back to the lobby
"""
import argparse
import asyncio
import configparser
import logging
import os
import signal
import struct
import sys
import time

FT_HELLO, FT_DATA, FT_NAME, FT_LOBBY, FT_START, FT_STARTREQ, FT_READY, FT_PING, FT_UNREADY, FT_END = range(1, 11)
HDR = struct.Struct("<HBB")
NAMELEN = 32
MAXBODY = 1500 + 16
HERE = os.path.dirname(os.path.abspath(__file__))
log = logging.getLogger("bm_server")


class Config:
    def __init__(self, path):
        cp = configparser.ConfigParser(inline_comment_prefixes=(";",))
        if not cp.read(path, encoding="utf-8"):
            raise SystemExit("cannot read %s" % path)
        s = cp["server"] if cp.has_section("server") else {}
        self.name = (s.get("name", "") or "Atomic Bomberman Dedicated Server").strip()
        self.bind = (s.get("bind", "") or "0.0.0.0").strip()
        self.port = int(s.get("port", "5000"))
        self.max_players = int(s.get("max_players", "10"))
        self.fuse = float(s.get("fuse_seconds", "4"))
        self.log_file = (s.get("log_file", "") or "").strip()
        if not 1 <= self.port <= 65535:
            raise SystemExit("server.ini: port must be 1 - 65535")
        if not 1 <= self.max_players <= 10:
            raise SystemExit("server.ini: max_players must be 1 - 10")
        if self.fuse <= 0:
            raise SystemExit("server.ini: fuse_seconds must be positive")
        if self.log_file and not os.path.isabs(self.log_file):
            self.log_file = os.path.join(os.path.dirname(os.path.abspath(path)), self.log_file)


class Player:
    def __init__(self, node, writer):
        self.node = node
        self.writer = writer
        self.name = "(player)"
        self.ready = False
        self.last_heard = time.monotonic()


def frame(ftype, body=b""):
    return HDR.pack(len(body), ftype, 0) + body


def node_of(addr):
    """The node number in a 6-byte datagram address: 0 = not a node."""
    return 0 if any(addr[:5]) else addr[5]


def is_broadcast(addr):
    return addr == b"\xff" * 6 or addr == b"\x00" * 6


class Hub:
    def __init__(self, cfg):
        self.cfg = cfg
        self.players = {}          # node -> Player
        self.in_game = False
        self.server = None

    # ------------------------------------------------------------------ sending
    async def send(self, p, data):
        try:
            p.writer.write(data)
            await asyncio.wait_for(p.writer.drain(), 3)
            return True
        except Exception:
            await self.drop(p, "send failed")
            return False

    async def send_all(self, data, except_node=0):
        for p in list(self.players.values()):
            if p.node != except_node and self.players.get(p.node) is p:
                await self.send(p, data)

    def lobby_body(self):
        out = bytearray()
        for node in sorted(self.players):
            p = self.players[node]
            nm = p.name.encode("latin-1", "replace")[:NAMELEN - 1]
            out += bytes([node | (0x80 if p.ready else 0)]) + nm.ljust(NAMELEN, b"\0")
        return bytes(out)

    async def broadcast_lobby(self):
        await self.send_all(frame(FT_LOBBY, self.lobby_body()))

    # ------------------------------------------------------------------ connections
    async def drop(self, p, why):
        if self.players.get(p.node) is not p:
            return
        del self.players[p.node]
        log.info("node %d '%s' left (%s); %d player(s) remain", p.node, p.name, why, len(self.players))
        try:
            p.writer.close()
        except Exception:
            pass
        if not self.players:
            self.in_game = False
            return
        if self.in_game and p.node == 1:
            log.info("node 1 is gone while the game runs: dropping everybody")
            for q in list(self.players.values()):
                await self.drop(q, "the game's server player left")
            return
        await self.broadcast_lobby()

    async def handle(self, reader, writer):
        node = next((n for n in range(1, self.cfg.max_players + 1) if n not in self.players), 0)
        peer = writer.get_extra_info("peername")
        if not node or self.in_game:
            log.info("refused %s: %s", peer, "a game is running" if self.in_game else "the server is full")
            writer.close()
            return
        p = Player(node, writer)
        self.players[node] = p
        log.info("node %d connected from %s; %d player(s)", node, peer, len(self.players))
        try:
            writer.get_extra_info("socket").setsockopt(6, 1, 1)         # TCP_NODELAY
        except Exception:
            pass
        if not await self.send(p, frame(FT_HELLO, bytes([node]))):
            return
        await self.broadcast_lobby()
        try:
            while True:
                head = await reader.readexactly(HDR.size)
                length, ftype, _ = HDR.unpack(head)
                if length > MAXBODY:
                    raise ValueError("frame too long")
                body = await reader.readexactly(length) if length else b""
                p.last_heard = time.monotonic()
                await self.frame_in(p, ftype, body)
        except (asyncio.IncompleteReadError, ConnectionError):
            await self.drop(p, "connection closed")
        except Exception as e:
            await self.drop(p, "error: %s" % e)

    async def frame_in(self, p, ftype, body):
        if ftype == FT_DATA:
            if len(body) < 16:
                return
            dst = body[6:12]
            if is_broadcast(dst):
                await self.send_all(frame(FT_DATA, body), except_node=p.node)
            else:
                q = self.players.get(node_of(dst))
                if q is not None:
                    await self.send(q, frame(FT_DATA, body))
        elif ftype == FT_NAME:
            p.name = body.split(b"\0")[0][:NAMELEN - 1].decode("latin-1") or "(player)"
            log.info("node %d is '%s'", p.node, p.name)
            await self.broadcast_lobby()
        elif ftype == FT_READY:
            p.ready = True
            await self.broadcast_lobby()
        elif ftype == FT_UNREADY and p.node == 1:
            for q in self.players.values():
                q.ready = False
            await self.broadcast_lobby()
        elif ftype == FT_STARTREQ:
            if not self.in_game and len(self.players) >= 2:
                self.in_game = True
                for q in self.players.values():
                    q.ready = False
                log.info("the game starts with %d players", len(self.players))
                await self.send_all(frame(FT_START))
                await self.broadcast_lobby()
        elif ftype == FT_END and p.node == 1:
            if self.in_game:
                log.info("the game is over")
            self.in_game = False
            await self.broadcast_lobby()
        # FT_PING and anything unknown: only the timestamp matters

    # ------------------------------------------------------------------ keep-alive
    async def keepalive(self):
        last_ping = 0.0
        while True:
            await asyncio.sleep(0.25)
            now = time.monotonic()
            for p in list(self.players.values()):
                if now - p.last_heard > self.cfg.fuse:
                    await self.drop(p, "silent for %.1f s" % (now - p.last_heard))
            if now - last_ping >= 1.0:
                last_ping = now
                await self.send_all(frame(FT_PING))

    async def run(self):
        self.server = await asyncio.start_server(self.handle, self.cfg.bind, self.cfg.port)
        addrs = ", ".join(str(s.getsockname()) for s in self.server.sockets)
        log.info("'%s' listens on %s, up to %d players, fuse %.1f s", self.cfg.name, addrs, self.cfg.max_players, self.cfg.fuse)
        ka = asyncio.ensure_future(self.keepalive())
        try:
            await self.server.serve_forever()
        finally:
            ka.cancel()


def main():
    ap = argparse.ArgumentParser(description="Atomic Bomberman dedicated server")
    ap.add_argument("--ini", default=os.path.join(HERE, "server.ini"), help="settings file (default: server.ini next to this script)")
    ap.add_argument("--port", type=int, help="override the port of the ini file")
    args = ap.parse_args()
    cfg = Config(args.ini)
    if args.port:
        cfg.port = args.port
    handlers = [logging.StreamHandler(sys.stdout)]
    if cfg.log_file:
        handlers.append(logging.FileHandler(cfg.log_file, encoding="utf-8"))
    logging.basicConfig(level=logging.INFO, format="%(asctime)s %(message)s", handlers=handlers)
    hub = Hub(cfg)
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    for sig in (signal.SIGINT, getattr(signal, "SIGTERM", None)):
        if sig is not None:
            try:
                loop.add_signal_handler(sig, loop.stop)
            except NotImplementedError:                     # Windows: Ctrl+C raises KeyboardInterrupt instead
                pass
    try:
        loop.run_until_complete(hub.run())
    except (KeyboardInterrupt, RuntimeError):
        pass
    except OSError as e:
        log.error("cannot listen on %s:%d: %s", cfg.bind, cfg.port, e)
        return 1
    finally:
        log.info("server stopped")
    return 0


if __name__ == "__main__":
    sys.exit(main())
