"""bmp2png.py <in.bmp> <out.png>: converts the 8-bit frame dumps of BM_SHOT (and any 8/24-bit BMP) to PNG, without PIL."""
import sys, struct, zlib


def main(src, dst):
    d = open(src, "rb").read()
    off = struct.unpack_from("<I", d, 10)[0]
    w, h, planes, bpp = struct.unpack_from("<iiHH", d, 18)
    flip = h > 0
    h = abs(h)
    pal = [(d[54 + i * 4 + 2], d[54 + i * 4 + 1], d[54 + i * 4]) for i in range(256)] if bpp == 8 else None
    stride = (w * bpp // 8 + 3) & ~3
    rows = []
    for y in range(h):
        sy = h - 1 - y if flip else y
        row = d[off + sy * stride: off + sy * stride + w * bpp // 8]
        if bpp == 8:
            raw = b"".join(bytes(pal[b]) for b in row)
        else:
            raw = b"".join(bytes((row[i + 2], row[i + 1], row[i])) for i in range(0, w * 3, 3))
        rows.append(b"\0" + raw)

    def chunk(t, data):
        c = struct.pack(">I", len(data)) + t + data
        return c + struct.pack(">I", zlib.crc32(t + data) & 0xffffffff)

    png = b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", struct.pack(">IIBBBBB", w, h, 8, 2, 0, 0, 0)) + chunk(b"IDAT", zlib.compress(b"".join(rows), 6)) + chunk(b"IEND", b"")
    open(dst, "wb").write(png)


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2])
