"""Recursive-descent disassembler for BM95.EXE -> instruction map (pickled).

Seeds: entry point, every relocated pointer that lands in the code section
(function pointers, jump tables, vtables) plus call/jump targets found while
decoding.  Gaps are then probed: a gap that linearly decodes to its end and
finishes with ret/jmp is treated as an (unreferenced) function.
"""
import sys, pickle, collections
sys.path.insert(0, r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools")
from pe_load import Image
import capstone as cs
from capstone import x86_const as X

EXE = r"E:\PROJECTS\DESKTOP\AtomicBomberman\reference\BM95.EXE"
OUT = r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools\disasm.pkl"

PAD = (b"\x90", b"\xcc", b"\x00", b"\x8b\xc0", b"\x8d\x40\x00", b"\x8d\x49\x00",
       b"\x89\xc0", b"\x8b\xff", b"\x8d\x76\x00", b"\x8d\xb6\x00\x00\x00\x00")


def gaps_of(insns, lo, hi):
    out = []
    prev = lo
    for k in sorted(insns):
        if k > prev:
            out.append((prev, k))
        prev = max(prev, k + insns[k]["size"])
    if prev < hi:
        out.append((prev, hi))
    return out


class Dis:
    def __init__(self):
        self.im = Image(EXE)
        code = self.im.sections[0]
        self.lo, self.hi = code["va"], code["va"] + code["size"]
        self.md = cs.Cs(cs.CS_ARCH_X86, cs.CS_MODE_32)
        self.md.detail = True
        self.md.syntax = cs.CS_OPT_SYNTAX_INTEL
        self.insns = {}
        self.work = collections.deque()
        self.seeds = set()
        self.bad = []
        self.own = bytearray(self.hi - self.lo)   # 1 = byte belongs to an instruction, 2 = reserved data
        self.conflicts = []
        self.tables = []

    def seed(self, a):
        if self.lo <= a < self.hi and a not in self.insns and a not in self.seeds:
            self.seeds.add(a)
            self.work.append(a)

    def run(self):
        im, md, insns = self.im, self.md, self.insns
        while self.work:
            a = self.work.popleft()
            while a not in insns and self.lo <= a < self.hi:
                got = list(md.disasm(im.read(a, 16), a, 1))
                if not got:
                    self.bad.append(a)
                    break
                i = got[0]
                if any(self.own[a - self.lo: a - self.lo + i.size]):
                    self.conflicts.append(a)
                    break
                self.own[a - self.lo: a - self.lo + i.size] = b"" * i.size
                enc = i.encoding
                d = dict(va=a, size=i.size, bytes=bytes(i.bytes), mn=i.mnemonic, ops=i.op_str,
                         disp_off=enc.disp_offset if enc.disp_size else None, disp_size=enc.disp_size,
                         imm_off=enc.imm_offset if enc.imm_size else None, imm_size=enc.imm_size,
                         target=None, flow="seq")
                if cs.CS_GRP_JUMP in i.groups or cs.CS_GRP_CALL in i.groups or cs.CS_GRP_RET in i.groups or cs.CS_GRP_BRANCH_RELATIVE in i.groups:
                    op = i.operands[0] if i.operands else None
                    if cs.CS_GRP_RET in i.groups:
                        d["flow"] = "ret"
                    elif op is not None and op.type == X.X86_OP_IMM:
                        d["target"] = op.imm
                        d["flow"] = "call" if cs.CS_GRP_CALL in i.groups else ("jmp" if i.mnemonic == "jmp" else "jcc")
                    else:
                        d["flow"] = "calli" if cs.CS_GRP_CALL in i.groups else "jmpi"
                if i.mnemonic in ("hlt", "int3", "ud2"):
                    d["flow"] = "stop"
                insns[a] = d
                if d["target"] is not None:
                    self.seed(d["target"])
                if d["flow"] in ("ret", "jmp", "jmpi", "stop"):
                    break
                a += i.size

    def prune(self):
        """Drop 'code' that runs off the end of a function into data (junk opcodes, zero fill)."""
        BANNED = ("in", "out", "insb", "insd", "outsb", "outsd", "lcall", "ljmp", "aam", "aad", "aaa", "aas", "daa", "das",
                  "salc", "arpl", "iretd", "iret", "sysenter", "syscall", "int", "into", "bound", "retf", "lret", "enter", "cli", "sti")
        entries = set(self.seeds)
        for d in self.insns.values():
            if d["target"] is not None:
                entries.add(d["target"])
        removed = 0
        ks = sorted(self.insns)
        chains, cur = [], []
        for a in ks:
            if cur and cur[-1] + self.insns[cur[-1]]["size"] != a:
                chains.append(cur)
                cur = []
            cur.append(a)
        if cur:
            chains.append(cur)
        for ch in chains:
            k = 0
            while k < len(ch):
                d = self.insns[ch[k]]
                zero = d["bytes"] == b"\x00\x00" and k + 1 < len(ch) and self.insns[ch[k + 1]]["bytes"] == b"\x00\x00"
                if d["mn"] in BANNED or zero:
                    j = k
                    while j < len(ch) and (j == k or ch[j] not in entries):
                        del self.insns[ch[j]]
                        removed += 1
                        j += 1
                    k = j
                else:
                    k += 1
        return removed

    def try_seed(self, start):
        """Decode recursively from start; keep only if no bad/conflict arises."""
        if self.im.read(start, 2) == b'\x00\x00':
            return False
        snap_i = dict(self.insns)
        snap_o = bytearray(self.own)
        snap_s = set(self.seeds)
        nb, nc = len(self.bad), len(self.conflicts)
        self.seed(start)
        self.run()
        BANNED = ("in", "out", "insb", "insd", "outsb", "outsd", "lcall", "ljmp", "aam", "aad", "aaa", "aas", "daa", "das",
                  "salc", "arpl", "iretd", "iret", "sysenter", "syscall", "int", "into", "bound", "retf", "lret", "enter", "cli", "sti")
        junk = False
        for a2, d2 in self.insns.items():
            if a2 in snap_i:
                continue
            if d2["mn"] in BANNED or (d2["mn"] == "pop" and d2["ops"] in ("ss", "ds", "es")):
                junk = True
                break
            for r in range(a2, a2 + d2["size"]):
                if r in self.im.relocs:
                    ok = False
                    for off, sz in ((d2["imm_off"], d2["imm_size"]), (d2["disp_off"], d2["disp_size"])):
                        if off is not None and sz == 4 and a2 + off == r:
                            ok = True
                    if not ok:
                        junk = True
        if junk or len(self.bad) != nb or len(self.conflicts) != nc:
            self.insns.clear(); self.insns.update(snap_i)
            self.own[:] = snap_o
            self.seeds.clear(); self.seeds.update(snap_s)
            del self.bad[nb:]; del self.conflicts[nc:]
            self.work.clear()
            return False
        return True

    def fill_gaps(self):
        im = self.im
        for rnd in range(40):
            added = 0
            for (a, b) in gaps_of(self.insns, self.lo, self.hi):
                if any(self.own[a - self.lo: b - self.lo]) and all(self.own[x - self.lo] == 2 for x in range(a, b)):
                    continue
                raw = im.read(a, b - a)
                p = 0
                moved = True
                while moved and p < len(raw):
                    moved = False
                    for pad in PAD:
                        if raw[p:p + len(pad)] == pad:
                            p += len(pad)
                            moved = True
                            break
                start = a + p
                if start >= b or self.own[start - self.lo]:
                    continue
                if self.try_seed(start):
                    added += 1
            if not added:
                break


def main():
    D = Dis()
    im = D.im
    import re as _re0
    for m in _re0.finditer(rb"[\x20-\x7e]{14,}\x00*", im.read(D.lo, D.hi - D.lo)):
        D.own[m.start(): m.end()] = b"\x02" * (m.end() - m.start())
    D.seed(im.entry)
    # phase 1: pointers stored in data sections
    for r in sorted(im.relocs):
        if D.lo <= r < D.hi:
            continue
        v = im.u32(r)
        if v is not None and D.lo <= v < D.hi:
            D.seed(v)
    D.run()
    # reserve ASCII strings living in the code section before probing gaps
    import re as _re
    for (a, e) in gaps_of(D.insns, D.lo, D.hi):
        raw = im.read(a, e - a)
        for m in _re.finditer(rb"[\x20-\x7e]{8,}\x00*", raw):
            D.own[a + m.start() - D.lo: a + m.end() - D.lo] = b"\x02" * (m.end() - m.start())
    for it in range(10):
        n0 = len(D.insns)
        # phase 2: jump tables (jmp [reg*4 + table])
        for a, d in sorted(D.insns.items()):
            if d["flow"] == "jmpi" and d["disp_off"] is not None and (a + d["disp_off"]) in im.relocs:
                t = im.u32(a + d["disp_off"])
                if t is None or not (D.lo <= t < D.hi) or any(t == x[0] for x in D.tables):
                    continue
                n = 0
                while (t + 4 * n) in im.relocs and D.lo <= im.u32(t + 4 * n) < D.hi and not D.own[t + 4 * n - D.lo]:
                    n += 1
                if n:
                    D.tables.append((t, n))
                    D.own[t - D.lo: t - D.lo + 4 * n] = b"" * (4 * n)
                    for k in range(n):
                        D.seed(im.u32(t + 4 * k))
        D.run()
        # phase 3: code addresses taken as immediates / displacements
        for a, d in sorted(D.insns.items()):
            for off, sz in ((d["imm_off"], d["imm_size"]), (d["disp_off"], d["disp_size"])):
                if off is not None and sz == 4 and (a + off) in im.relocs:
                    v = im.u32(a + off)
                    if D.lo <= v < D.hi and not D.own[v - D.lo]:
                        D.seed(v)
        D.run()
        if len(D.insns) == n0:
            break
    print("after recursion:", len(D.insns), "insns")
    D.fill_gaps()
    print("pruned", D.prune())
    insns = D.insns
    print("instructions", len(insns), "undecodable", len(D.bad), [hex(x) for x in D.bad[:10]])
    covered = sum(d["size"] for d in insns.values())
    print("code bytes covered", covered, "of", D.hi - D.lo)
    ks = sorted(insns)
    ov = [(a, b) for a, b in zip(ks, ks[1:]) if a + insns[a]["size"] > b]
    print("conflicts", len(D.conflicts), "tables", len(D.tables), "overlaps", len(ov), [(hex(a), hex(b)) for a, b in ov[:8]])
    gaps = gaps_of(insns, D.lo, D.hi)
    print("gaps", len(gaps), "bytes", sum(b - a for a, b in gaps))
    for g in sorted(gaps, key=lambda g: g[0] - g[1])[:12]:
        print("  gap %08x-%08x (%d)" % (g[0], g[1], g[1] - g[0]))
    pickle.dump(dict(insns=insns, gaps=gaps), open(OUT, "wb"))


main()
