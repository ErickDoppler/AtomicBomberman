/* Deflate decoder (after Mark Adler's puff.c, public domain algorithm) and the PNG -> PCX converter. */
#include "vfs.h"

struct state {
    const unsigned char *in; unsigned inlen, incnt;
    long bitbuf; int bitcnt;
    unsigned char *out; unsigned outlen, outcnt;
};
struct huffman { short count[16]; short symbol[288]; };

static int bits(struct state *s, int need) {
    long val = s->bitbuf;
    while (s->bitcnt < need) {
        if (s->incnt == s->inlen) return -1;
        val |= (long)(s->in[s->incnt++]) << s->bitcnt;
        s->bitcnt += 8;
    }
    s->bitbuf = val >> need;
    s->bitcnt -= need;
    return (int)(val & ((1L << need) - 1));
}

static int decode(struct state *s, const struct huffman *h) {
    int len, code = 0, first = 0, count, index = 0, b;
    for (len = 1; len <= 15; len++) {
        b = bits(s, 1);
        if (b < 0) return -1;
        code |= b;
        count = h->count[len];
        if (code - count < first) return h->symbol[index + (code - first)];
        index += count; first += count; first <<= 1; code <<= 1;
    }
    return -10;
}

static int construct(struct huffman *h, const short *length, int n) {
    int symbol, len, left; short offs[16];
    for (len = 0; len <= 15; len++) h->count[len] = 0;
    for (symbol = 0; symbol < n; symbol++) h->count[length[symbol]]++;
    if (h->count[0] == n) return 0;
    left = 1;
    for (len = 1; len <= 15; len++) { left <<= 1; left -= h->count[len]; if (left < 0) return left; }
    offs[1] = 0;
    for (len = 1; len < 15; len++) offs[len + 1] = offs[len] + h->count[len];
    for (symbol = 0; symbol < n; symbol++) if (length[symbol] != 0) h->symbol[offs[length[symbol]]++] = (short)symbol;
    return left;
}

static int codes(struct state *s, const struct huffman *lc, const struct huffman *dc) {
    static const short lens[29] = { 3,4,5,6,7,8,9,10,11,13,15,17,19,23,27,31,35,43,51,59,67,83,99,115,131,163,195,227,258 };
    static const short lext[29] = { 0,0,0,0,0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,0 };
    static const short dists[30] = { 1,2,3,4,5,7,9,13,17,25,33,49,65,97,129,193,257,385,513,769,1025,1537,2049,3073,4097,6145,8193,12289,16385,24577 };
    static const short dext[30] = { 0,0,0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13 };
    int symbol, len, e; unsigned dist;
    do {
        symbol = decode(s, lc);
        if (symbol < 0) return symbol;
        if (symbol < 256) {
            if (s->outcnt == s->outlen) return 1;
            s->out[s->outcnt++] = (unsigned char)symbol;
        } else if (symbol > 256) {
            symbol -= 257;
            if (symbol >= 29) return -10;
            e = bits(s, lext[symbol]); if (e < 0) return -1;
            len = lens[symbol] + e;
            symbol = decode(s, dc);
            if (symbol < 0) return symbol;
            e = bits(s, dext[symbol]); if (e < 0) return -1;
            dist = (unsigned)(dists[symbol] + e);
            if (dist > s->outcnt) return -11;
            if (s->outcnt + (unsigned)len > s->outlen) return 1;
            while (len--) { s->out[s->outcnt] = s->out[s->outcnt - dist]; s->outcnt++; }
        }
    } while (symbol != 256);
    return 0;
}

static int fixed(struct state *s) {
    static struct huffman lc, dc;
    static int built;
    if (!built) {
        short lengths[288]; int sym;
        for (sym = 0; sym < 144; sym++) lengths[sym] = 8;
        for (; sym < 256; sym++) lengths[sym] = 9;
        for (; sym < 280; sym++) lengths[sym] = 7;
        for (; sym < 288; sym++) lengths[sym] = 8;
        construct(&lc, lengths, 288);
        for (sym = 0; sym < 30; sym++) lengths[sym] = 5;
        construct(&dc, lengths, 30);
        built = 1;
    }
    return codes(s, &lc, &dc);
}

static int dynamic(struct state *s) {
    static const short order[19] = { 16,17,18,0,8,7,9,6,10,5,11,4,12,3,13,2,14,1,15 };
    int nlen, ndist, ncode, index, err, symbol, len;
    short lengths[320];
    struct huffman lc, dc;
    nlen = bits(s, 5) + 257; ndist = bits(s, 5) + 1; ncode = bits(s, 4) + 4;
    if (nlen > 286 || ndist > 30) return -3;
    for (index = 0; index < ncode; index++) lengths[order[index]] = (short)bits(s, 3);
    for (; index < 19; index++) lengths[order[index]] = 0;
    err = construct(&lc, lengths, 19);
    if (err != 0) return -4;
    index = 0;
    while (index < nlen + ndist) {
        symbol = decode(s, &lc);
        if (symbol < 0) return symbol;
        if (symbol < 16) lengths[index++] = (short)symbol;
        else {
            len = 0;
            if (symbol == 16) { if (index == 0) return -5; len = lengths[index - 1]; symbol = 3 + bits(s, 2); }
            else if (symbol == 17) symbol = 3 + bits(s, 3);
            else symbol = 11 + bits(s, 7);
            if (index + symbol > nlen + ndist) return -6;
            while (symbol--) lengths[index++] = (short)len;
        }
    }
    err = construct(&lc, lengths, nlen);
    if (err < 0 || (err > 0 && nlen - lc.count[0] != 1)) return -7;
    err = construct(&dc, lengths + nlen, ndist);
    if (err < 0 || (err > 0 && ndist - dc.count[0] != 1)) return -8;
    return codes(s, &lc, &dc);
}

/* raw deflate stream (no zlib header) */
int bm_inflate(const unsigned char *in, unsigned inlen, unsigned char *out, unsigned *outlen) {
    struct state s;
    int last, type, err;
    s.in = in; s.inlen = inlen; s.incnt = 0; s.bitbuf = 0; s.bitcnt = 0;
    s.out = out; s.outlen = *outlen; s.outcnt = 0;
    do {
        last = bits(&s, 1); type = bits(&s, 2);
        if (last < 0 || type < 0) return -1;
        if (type == 0) {
            unsigned len;
            s.bitbuf = 0; s.bitcnt = 0;
            if (s.incnt + 4 > s.inlen) return 2;
            len = s.in[s.incnt++]; len |= (unsigned)s.in[s.incnt++] << 8;
            if (s.in[s.incnt++] != (~len & 0xff) || s.in[s.incnt++] != ((~len >> 8) & 0xff)) return -2;
            if (s.incnt + len > s.inlen || s.outcnt + len > s.outlen) return 2;
            while (len--) s.out[s.outcnt++] = s.in[s.incnt++];
            err = 0;
        } else if (type == 1) err = fixed(&s);
        else if (type == 2) err = dynamic(&s);
        else return -1;
        if (err) return err;
    } while (!last);
    *outlen = s.outcnt;
    return 0;
}

/* ------------------------------------------------------------------ PNG -> PCX */
static unsigned be32(const unsigned char *p) { return ((unsigned)p[0] << 24) | (p[1] << 16) | (p[2] << 8) | p[3]; }
static void *(__stdcall *galloc)(UINT, SIZE_T);
static void *(__stdcall *gfree)(void *);

unsigned char *bm_png_to_pcx(const unsigned char *png, DWORD n, DWORD *outsize) {
    static const unsigned char sig[8] = { 137, 80, 78, 71, 13, 10, 26, 10 };
    const unsigned char *p = png, *end = png + n, *hd = 0;
    unsigned w = 0, h = 0, bpl, hdlen = 0;
    unsigned char *idat = 0, *raw = 0, *pix = 0, *pcx = 0, *o;
    unsigned idatlen = 0, rawlen, y, x, i;
    if (!galloc) { galloc = bm_api("kernel32.dll", "GlobalAlloc"); gfree = bm_api("kernel32.dll", "GlobalFree"); }
    if (n < 33 || memcmp(p, sig, 8)) return 0;
    p += 8;
    idat = galloc(GPTR, n);                              /* compressed data can't exceed the file */
    if (!idat) return 0;
    while (p + 12 <= end) {
        unsigned len = be32(p); const unsigned char *type = p + 4, *d = p + 8;
        if (d + len > end) break;
        if (!memcmp(type, "IHDR", 4)) {
            w = be32(d); h = be32(d + 4);
            if (d[8] != 8 || d[9] != 3 || d[12] != 0) goto fail;        /* 8-bit indexed, not interlaced */
        } else if (!memcmp(type, "IDAT", 4)) { memcpy(idat + idatlen, d, len); idatlen += len; }
        else if (!memcmp(type, "bmHD", 4)) { hd = d; hdlen = len; }
        else if (!memcmp(type, "IEND", 4)) break;
        p = d + len + 4;
    }
    if (!w || !h || hdlen != 128 + 769 || idatlen < 6) goto fail;
    rawlen = (w + 1) * h;
    raw = galloc(GPTR, rawlen + 16);
    if (!raw) goto fail;
    { unsigned l = rawlen; if (bm_inflate(idat + 2, idatlen - 2, raw, &l) || l != rawlen) goto fail; }
    /* undo the scanline filters, in place */
    for (y = 0; y < h; y++) {
        unsigned char *row = raw + y * (w + 1), *up = y ? row - (w + 1) : 0, f = row[0];
        row++; if (up) up++;
        for (x = 0; x < w; x++) {
            int a = x ? row[x - 1] : 0, b = up ? up[x] : 0, c = (x && up) ? up[x - 1] : 0, v = row[x];
            if (f == 1) v += a;
            else if (f == 2) v += b;
            else if (f == 3) v += (a + b) >> 1;
            else if (f == 4) { int pp = a + b - c, pa = pp > a ? pp - a : a - pp, pb = pp > b ? pp - b : b - pp, pc = pp > c ? pp - c : c - pp;
                                v += (pa <= pb && pa <= pc) ? a : (pb <= pc) ? b : c; }
            row[x] = (unsigned char)v;
        }
    }
    bpl = hd[66] | (hd[67] << 8);
    if (bpl < w) goto fail;
    pcx = galloc(GPTR, 128 + bpl * h * 2 + 769 + 16);
    if (!pcx) goto fail;
    memcpy(pcx, hd, 128);
    o = pcx + 128;
    for (y = 0; y < h; y++) {
        const unsigned char *row = raw + y * (w + 1) + 1;
        i = 0;
        while (i < bpl) {                                  /* run-length encode a full scanline, padding with zeros */
            unsigned char v = i < w ? row[i] : 0;
            unsigned run = 1;
            while (i + run < bpl && run < 63 && (i + run < w ? row[i + run] : 0) == v) run++;
            if (run > 1 || v >= 0xC0) *o++ = (unsigned char)(0xC0 | run);
            *o++ = v;
            i += run;
        }
    }
    memcpy(o, hd + 128, 769); o += 769;
    *outsize = (DWORD)(o - pcx);
    gfree(raw); gfree(idat);
    return pcx;
fail:
    if (raw) gfree(raw);
    if (idat) gfree(idat);
    if (pcx) gfree(pcx);
    (void)pix;
    return 0;
}
