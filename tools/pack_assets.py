"""Convert the original DOS-era assets into modern, much smaller files.

  PCX (8-bit, RLE)         -> indexed PNG; a private 'bmHD' chunk keeps the original 128-byte
                              header and the 769-byte palette trailer so the exact PCX stream
                              can be rebuilt (verified here for every file)
  RSS (raw 22 kHz s16 st.) -> Ogg Vorbis (ffmpeg / libvorbis); the game decodes it back to PCM
  everything else          -> copied unchanged (small text / animation / scheme files)

usage: python pack_assets.py <game dir> <output dir> [--quality 3] [--jobs 8]
"""
import os, sys, struct, zlib, shutil, subprocess, argparse
from concurrent.futures import ThreadPoolExecutor

odd = []
FFMPEG = r"C:\Windows\ffmpeg.exe"
SKIP_ROOT = {"bm95.exe", "atomicbomberman.exe","makecfg.exe", "bmstats.dat", "bmstats.txt", "critlog.txt", "nodename.ini", "uninst.log",
             "options.ini", "cfg.ini", "bm95.res"}
SKIP_DIRS = {"tools", "winereg"}


def chunk(t, d):
    return struct.pack(">I", len(d)) + t + d + struct.pack(">I", zlib.crc32(t + d) & 0xFFFFFFFF)


def pcx_decode(d):
    man, ver, enc, bpp = d[0], d[1], d[2], d[3]
    x0, y0, x1, y1 = struct.unpack("<HHHH", d[4:12])
    planes, bpl = d[65], struct.unpack("<H", d[66:68])[0]
    assert (man, ver, enc, bpp, planes) == (10, 5, 1, 8, 1) and d[-769] == 12, "unsupported PCX"
    w, h = x1 - x0 + 1, y1 - y0 + 1
    end = len(d) - 769
    pix = bytearray()
    i = 128
    while i < end:
        b = d[i]; i += 1
        if b >= 0xC0:
            pix += bytes([d[i]]) * (b & 0x3F); i += 1
        else:
            pix.append(b)
    assert len(pix) == bpl * h, "PCX size mismatch"
    rows = [bytes(pix[r * bpl:r * bpl + w]) for r in range(h)]
    pads = [bytes(pix[r * bpl + w:(r + 1) * bpl]) for r in range(h)]
    assert all(not any(p) for p in pads), "non-zero PCX padding"
    return w, h, bpl, rows


def pcx_encode(header, tail, w, h, rows):
    bpl = struct.unpack("<H", header[66:68])[0]
    out = bytearray(header)
    for row in rows:
        row = row + bytes(bpl - w)
        i = 0
        while i < bpl:
            v = row[i]; run = 1
            while i + run < bpl and run < 63 and row[i + run] == v:
                run += 1
            if run > 1 or v >= 0xC0:
                out.append(0xC0 | run)
            out.append(v)
            i += run
    return bytes(out) + tail


def png_filter_rows(rows, w):
    out = bytearray()
    prev = bytes(w)
    for row in rows:
        best = None
        for f in range(5):
            r = bytearray(w)
            for x in range(w):
                a = row[x - 1] if x else 0
                b = prev[x]
                c = prev[x - 1] if x else 0
                if f == 0: p = 0
                elif f == 1: p = a
                elif f == 2: p = b
                elif f == 3: p = (a + b) >> 1
                else:
                    pp = a + b - c; pa, pb, pc = abs(pp - a), abs(pp - b), abs(pp - c)
                    p = a if (pa <= pb and pa <= pc) else (b if pb <= pc else c)
                r[x] = (row[x] - p) & 0xFF
            score = sum(v if v < 128 else 256 - v for v in r)
            if best is None or score < best[0]:
                best = (score, f, r)
        out.append(best[1]); out += best[2]
        prev = row
    return bytes(out)


def edit_mainmenu(rows):
    """Main menu: the "Online Manual" entry is gone, "Exit Bomberman" moves up into its place (the game
    draws the bomb cursor at item 5 now) and the old Exit position gets plain sky back.
    Text bands (yellow pixels, x >= 340): items at y=115,151,188,226,262,299(Online Manual),336(Exit)."""
    rows = [bytearray(r) for r in rows]
    x0 = 340
    for dy in range(27):
        rows[297 + dy][x0:] = rows[334 + dy][x0:]        # Exit text -> item 5
    for dy in range(27):
        rows[334 + dy][x0:] = rows[388 + dy][x0:]        # empty sky where Exit was
    return [bytes(r) for r in rows]


EDITS = {"MAINMENU.PCX": edit_mainmenu}


def pcx_to_png(src, dst):
    d = open(src, "rb").read()
    w, h, bpl, rows = pcx_decode(d)
    header, tail = d[:128], d[-769:]
    assert pcx_encode(header, tail, w, h, rows) == d, "PCX does not round-trip: " + src
    if os.path.basename(src).upper() in EDITS:
        rows = EDITS[os.path.basename(src).upper()](rows)
    pal = tail[1:]
    png = b"\x89PNG\r\n\x1a\n"
    png += chunk(b"IHDR", struct.pack(">IIBBBBB", w, h, 8, 3, 0, 0, 0))
    png += chunk(b"PLTE", pal)
    png += chunk(b"bmHD", header + tail)
    png += chunk(b"IDAT", zlib.compress(png_filter_rows(rows, w), 9))
    png += chunk(b"IEND", b"")
    open(dst, "wb").write(png)
    return len(d), len(png)


def rss_to_ogg(src, dst, quality):
    n = os.path.getsize(src)
    if n < 1500000:
        quality = max(quality, 5)      # short effects: noise-like content needs a higher quality level

    if n % 4:
        odd.append(src)       # a stray trailing byte or two: dropped, less than one sample frame
        data = open(src, "rb").read()[: n - n % 4]
        src = dst + ".tmp.raw"
        open(src, "wb").write(data)
    r = subprocess.run([FFMPEG, "-hide_banner", "-loglevel", "error", "-y", "-f", "s16le", "-ar", "22050", "-ac", "2", "-i", src,
                        "-c:a", "libvorbis", "-q:a", str(quality), dst], capture_output=True, text=True)
    if r.returncode:
        raise RuntimeError(r.stderr)
    if src.endswith(".tmp.raw"):
        os.remove(src)
    return n, os.path.getsize(dst)



NETWORK_TEXT = (
    "Network games use TCP only.  One player hosts, the others connect to that player.\n"
    "Host:   Start Network Game opens the lobby.  The TCP port is at the top; change it and\n"
    "        press Apply (the new port is checked first, the last working port is remembered).\n"
    "        As soon as one player has joined, any player can press Start game.\n"
    "Join:   Join Network Game asks for the server address and TCP port; press Join.  The last\n"
    "        server that worked is remembered.\n"
    "Over the Internet the hosting player has to forward the TCP port to the machine running\n"
    "the game.  The player name shown to the others is set in Options.  Command line:\n"
    "\tAtomicBomberman.exe -host 5000              (skip the lobby window, host on port 5000)\n"
    "\tAtomicBomberman.exe -join 192.168.1.20:5000 (skip the join window)\n"
    "\tAtomicBomberman.exe -skipintro              (go straight to the main menu)\n")


def apply_text_patches(root):
    """IPX is gone: relabel the protocol and update the texts that talk about it."""
    def edit(name, fn):
        path = os.path.join(root, "DATA", name)             # the texts live in DATA\ with everything else
        if not os.path.exists(path):
            return
        t = open(path, "rb").read().decode("latin1")
        crlf = "\r\n" in t
        t = fn(t.replace("\r\n", "\n"))
        open(path, "wb").write((t.replace("\n", "\r\n") if crlf else t).encode("latin1"))
    edit("MESSAGES.TXT", lambda t: t.replace("631,IPX\n", "631,TCP\n")
         .replace("252,\"Node Name: '%s'\"", "252,\"Player Name: '%s'\"")           # the Options row that edits the name shown in net games
         .replace("290,\"Enter new node name:\"", "290,\"Enter your player name:\"")
         .replace("66,\"Our Nodename is: '%s'\"", "66,\"Your player name is: '%s'\"")
         .replace("73,\"Our Nodename is: '%s'\"", "73,\"Your player name is: '%s'\""))
    edit("MANUAL.BM", lambda t: t.replace("an IPX, modem, or serial network", "a TCP/IP, modem, or serial network"))
    def net(t):
        if "With IPX it is necessary" not in t:        # already patched
            return t
        t = t.replace("\tIPX\n", "\tTCP/IP\n")
        a = t.index("With IPX it is necessary")
        b = t.index("With Modem it is necessary")
        t = t[:a] + NETWORK_TEXT + "\n" + t[b:]
        t = t.replace("Atomic Bomberman supports three networking protocols:\n\tTCP/IP\n\tModem\n\tSerial\n", "Atomic Bomberman network play (TCP/IP)\n")
        c = t.index("With Modem it is necessary")
        d = t.index("It is not advisable")
        return t[:c] + t[d:]
    edit("NETWORK.BM", net)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("src"); ap.add_argument("dst")
    ap.add_argument("--quality", type=float, default=3)
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--patch-only", action="store_true")
    a = ap.parse_args()
    if a.patch_only:
        apply_text_patches(a.dst); return
    jobs = []
    stats = {"pcx": [0, 0], "rss": [0, 0], "other": [0, 0]}
    for dp, dn, fn in os.walk(a.src):
        rel = os.path.relpath(dp, a.src)
        if rel != "." and rel.split(os.sep)[0].lower() in SKIP_DIRS:
            dn[:] = []
            continue
        drel = "DATA" if rel == "." else rel                  # what the original keeps in its root goes to DATA\
        os.makedirs(os.path.join(a.dst, drel), exist_ok=True)
        for f in fn:
            s = os.path.join(dp, f)
            if rel == "." and f.lower() in SKIP_ROOT:
                continue
            ext = os.path.splitext(f)[1].lower()
            if ext == ".pcx":
                jobs.append(("pcx", s, os.path.join(a.dst, drel, f[:-4] + ".png")))
            elif ext == ".rss":
                jobs.append(("rss", s, os.path.join(a.dst, drel, f[:-4] + ".ogg")))
            else:
                jobs.append(("other", s, os.path.join(a.dst, drel, f)))

    def work(j):
        kind, s, d = j
        if kind == "pcx": return kind, pcx_to_png(s, d)
        if kind == "rss": return kind, rss_to_ogg(s, d, a.quality)
        shutil.copyfile(s, d); n = os.path.getsize(s); return kind, (n, n)
    done = 0
    with ThreadPoolExecutor(a.jobs) as ex:
        for kind, (o, n) in ex.map(work, jobs):
            stats[kind][0] += o; stats[kind][1] += n
            done += 1
            if done % 250 == 0: print("  ", done, "/", len(jobs), flush=True)
    print("RSS files with a stray trailing byte:", len(odd))
    apply_text_patches(a.dst)
    to = sum(v[0] for v in stats.values()); tn = sum(v[1] for v in stats.values())
    for k, v in stats.items():
        print("%-6s %10d -> %10d bytes" % (k, v[0], v[1]))
    print("total  %10d -> %10d bytes (%.1f%%)" % (to, tn, 100.0 * tn / to))


if __name__ == "__main__":
    main()
