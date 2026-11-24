#!/usr/bin/env python3
"""Self test of the dedicated server: starts it on a free port and plays the game's TCP protocol with fake players.

    python tests/selftest.py
"""
import os
import socket
import struct
import subprocess
import sys
import tempfile
import time

HERE = os.path.dirname(os.path.abspath(__file__))
SERVER = os.path.join(os.path.dirname(HERE), "bm_server.py")
HDR = struct.Struct("<HBB")
HELLO, DATA, NAME, LOBBY, START, STARTREQ, READY, PING, UNREADY, END = range(1, 11)


def free_port():
    s = socket.socket()
    s.bind(("127.0.0.1", 0))
    p = s.getsockname()[1]
    s.close()
    return p


class Fake:
    def __init__(self, port, name=None):
        self.s = socket.create_connection(("127.0.0.1", port), timeout=5)
        self.buf = b""
        self.node = None
        self.lobby = []
        self.got = []
        t, body = self.frame(5)
        assert t == HELLO, "first frame must be HELLO, got %d" % t
        self.node = body[0]
        if name:
            self.send(NAME, name.encode())

    def send(self, t, body=b""):
        self.s.sendall(HDR.pack(len(body), t, 0) + body)

    def frame(self, timeout=3):
        end = time.time() + timeout
        while True:
            if len(self.buf) >= 4:
                n, t, _ = HDR.unpack(self.buf[:4])
                if len(self.buf) >= 4 + n:
                    body = self.buf[4:4 + n]
                    self.buf = self.buf[4 + n:]
                    if t == LOBBY:
                        self.lobby = [(body[i] & 0x7f, bool(body[i] & 0x80), body[i + 1:i + 33].split(b"\0")[0].decode())
                                      for i in range(0, len(body), 33)]
                    return t, body
            left = end - time.time()
            if left <= 0:
                return None, b""
            self.s.settimeout(left)
            try:
                d = self.s.recv(4096)
            except socket.timeout:
                return None, b""
            if not d:
                return "closed", b""
            self.buf += d

    def wait_for(self, want, timeout=3):
        end = time.time() + timeout
        while time.time() < end:
            t, body = self.frame(max(0.05, end - time.time()))
            if t == want:
                return body
            if t == "closed":
                return None
        return None


def closed(f, timeout):
    end = time.time() + timeout
    while time.time() < end:
        if f.frame(max(0.05, end - time.time()))[0] == "closed":
            return True
    return False


def datagram(src, dst, payload):
    return bytes([0, 0, 0, 0, 0, src]) + (dst if isinstance(dst, bytes) else bytes([0, 0, 0, 0, 0, dst])) + b"\x00\x00\x00\x00" + payload


def check(cond, what):
    print(("ok   " if cond else "FAIL ") + what)
    if not cond:
        check.failed += 1


check.failed = 0


def main():
    port = free_port()
    ini = os.path.join(tempfile.mkdtemp(), "server.ini")
    open(ini, "w").write("[server]\nname = selftest\nport = %d\nbind = 127.0.0.1\nmax_players = 10\nfuse_seconds = 2\nlog_file =\n" % port)
    proc = subprocess.Popen([sys.executable, SERVER, "--ini", ini], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    time.sleep(1.0)
    try:
        a = Fake(port, "Alice")
        b = Fake(port, "Bob")
        check((a.node, b.node) == (1, 2), "nodes are assigned 1, 2")
        a.wait_for(LOBBY)
        end = time.time() + 2
        while [x[2] for x in a.lobby] != ["Alice", "Bob"] and time.time() < end:
            a.frame(0.2)
        check([x[2] for x in a.lobby] == ["Alice", "Bob"], "the lobby lists both players: %r" % a.lobby)

        a.send(DATA, datagram(1, b"\xff" * 6, b"hello all"))
        body = b.wait_for(DATA)
        check(body is not None and body.endswith(b"hello all"), "a broadcast reaches the other player")
        b.send(DATA, datagram(2, 1, b"just for 1"))
        body = a.wait_for(DATA)
        check(body is not None and body.endswith(b"just for 1"), "a datagram to node 1 reaches node 1")

        c = Fake(port, "Carol")
        b.send(DATA, datagram(2, 3, b"to carol"))
        check(c.wait_for(DATA) is not None, "a datagram to node 3 reaches node 3")
        check(a.wait_for(DATA, 0.5) is None, "...and only node 3")

        b.send(READY)
        time.sleep(0.3)
        for _ in range(20):
            if a.frame(0.1)[0] is None:
                break
        check((2, True, "Bob") in a.lobby, "a locked position shows in the lobby")
        a.send(UNREADY)
        time.sleep(0.3)
        for _ in range(20):
            if a.frame(0.1)[0] is None:
                break
        check(all(not x[1] for x in a.lobby), "node 1 can clear the locks")

        c.send(STARTREQ)
        check(a.wait_for(START) is not None and b.wait_for(START) is not None, "STARTREQ starts the game for everybody")
        d = None
        try:
            d = Fake(port, "Late")
            check(False, "nobody can join a running game")
        except Exception:
            check(True, "nobody can join a running game")

        a.s.close()                                         # node 1 leaves during the game: everybody is dropped
        check(closed(b, 3), "node 1 lost in the game: the others are dropped")
        time.sleep(0.5)
        e = Fake(port, "Again")
        check(e.node == 1, "after everybody left the server is empty again (lowest free node = 1)")
        f = Fake(port, "Silent")
        # the fake never pings: the server drops it after fuse_seconds (2 s here)
        start = time.time()
        check(closed(f, 6), "a silent player is dropped")
        check(time.time() - start >= 1.5, "a silent player is dropped after about the fuse time (%.1f s)" % (time.time() - start))
        full = [Fake(port, "P%d" % i) for i in range(10)]
        check(len(set(x.node for x in full)) == 10, "ten players fit")
        try:
            extra = Fake(port, "11th")
            check(False, "the 11th player is refused")
        except Exception:
            check(True, "the 11th player is refused")
    finally:
        proc.terminate()
        try:
            proc.wait(5)
        except Exception:
            proc.kill()
    print("%d check(s) failed" % check.failed)
    return 1 if check.failed else 0


if __name__ == "__main__":
    sys.exit(main())
