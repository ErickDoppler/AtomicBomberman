"""Assemble every generated text chunk and compare each instruction with the original bytes.

Instructions whose re-assembled bytes differ (or that gas rejects) are written to
src/asm/raw.txt and emitted as .byte data on the next emit.py run.  Loops until clean.
"""
import sys, os, re, subprocess, pickle
sys.path.insert(0, r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools")
import emit

ROOT = emit.ROOT
AS = r"C:\workenv\w64devkit\bin\as.exe"
ENV = dict(os.environ, PATH=r"C:\workenv\w64devkit\bin;" + os.environ["PATH"])
LST = re.compile(r"^\s*(\d+)\s+([0-9A-Fa-f]{4,8})\s+([0-9A-Fa-f]+)")


def check_once():
    E = emit.Emitter(set(int(x, 16) for x in open(emit.OUTDIR + r"\raw.txt").read().split()) if os.path.exists(emit.OUTDIR + r"\raw.txt") else set())
    files, info = E.emit_code()
    im = E.im
    bad = set()
    tmp = ROOT + r"\build"
    os.makedirs(tmp, exist_ok=True)
    for c, L in sorted(files.items()):
        src = tmp + r"\chunk_%d.s" % c
        open(src, "w", newline="\n").write("".join(L))
        r = subprocess.run([AS, "--32", "-aln=" + tmp + r"\chunk_%d.lst" % c, "--listing-lhs-width=4", "--listing-lhs-width2=4",
                            "-o", tmp + r"\chunk_%d.o" % c, src], capture_output=True, text=True, env=ENV)
        for m in re.finditer(r"chunk_\d+\.s:(\d+): Error: (?!value of .* too large for field of 1 byte)", r.stderr):
            va = info.get((c, int(m.group(1))))
            if va is None:
                # raw lines have no map entry; find nearest preceding mapped line
                n = int(m.group(1))
                while n > 0 and (c, n) not in info:
                    n -= 1
                va = info.get((c, n))
            if va is not None:
                bad.add(va)
        # compare bytes
        got = {}
        for line in open(tmp + r"\chunk_%d.lst" % c, encoding="latin1"):
            left = line.split("	")[0].split()
            if len(left) >= 3 and left[0].isdigit() and re.fullmatch(r"[0-9A-Fa-f]{4,8}|\?\?\?\?", left[1]):
                try:
                    bs = bytes.fromhex("".join(left[2:]))
                except ValueError:
                    continue
                ln = int(left[0])
                got[ln] = got.get(ln, b"") + bs
        for (cc, ln), va in info.items():
            if cc != c or va is None:
                continue
            i = E.insns[va]
            exp = i["bytes"]
            g = got.get(ln)
            if g is None:
                bad.add(va)
                continue
            if len(g) != len(exp):
                bad.add(va)
                continue
            mask = [True] * len(exp)
            for kind, off, sz in (("imm", i["imm_off"], i["imm_size"]), ("disp", i["disp_off"], i["disp_size"])):
                if off is not None and ((va + off) in im.relocs or i["target"] is not None):
                    for k in range(off, off + sz):
                        mask[k] = False
            if any(m and a != b for m, a, b in zip(mask, g, exp)):
                bad.add(va)
    return E, bad


def main():
    rawfile = emit.OUTDIR + r"\raw.txt"
    for it in range(8):
        E, bad = check_once()
        print("iteration", it, "raw so far", len(E.raw_set), "new bad", len(bad))
        if not bad:
            break
        E.raw_set |= bad
        open(rawfile, "w").write("\n".join("%08x" % x for x in sorted(E.raw_set)))
    # show a few raw instructions
    for va in sorted(E.raw_set)[:12]:
        i = E.insns[va]
        print("  raw %08x %s %s" % (va, i["mn"], i["ops"]))


main()
