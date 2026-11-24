#!/usr/bin/env python3
"""x86 -> C static translator for the restored Atomic Bomberman code (Phase 2, stage 1).

Reads tools/disasm.pkl (made from the original program by tools/disasm.py) and writes portable C:

    <out>/game.c      one C function per original function, the original control flow with goto
    <out>/x2c_rt.h    the machine model: registers, flags, guest memory, x87 stack, call dispatch
    <out>/ftab.c      address -> function table for indirect calls

The translated program keeps the original machine state in C variables and the guest's memory (the program image, the
stack, the heap) in one flat array, so it behaves like the original on any CPU.  Operating-system calls (imports) are
not translated: indirect calls to the import table go to host functions (see x2c_rt.h, x2c_host.h).

usage: python x2c.py <exe> <out dir> [--pkl a.pkl --pkl b.pkl ...] [--map link.map]

  --pkl   instruction maps (tools/disasm.py) of the code to translate; default tools/disasm.pkl (the original program).
          For the patched game: build/bm95_reloc.pkl (game code) and build/bm95_hooks.pkl (the asm glue)
  --map   linker map of the build: names the platform-layer (native C) functions the translated code calls; they are
          written to <out>/hostsyms.c and implemented by the host (rt/x2c_host.c)
"""
import os, re, sys, pickle, collections

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, ".."))
from pe_load import Image

R32 = ["eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi"]
R16 = ["ax", "cx", "dx", "bx", "sp", "bp", "si", "di"]
R8L = ["al", "cl", "dl", "bl"]
R8H = ["ah", "ch", "dh", "bh"]
SIZES = {"byte": 1, "word": 2, "dword": 4, "qword": 8, "tbyte": 10, "xword": 10}
MASK = {1: 0xff, 2: 0xffff, 4: 0xffffffff}
CTYPE = {1: "uint8_t", 2: "uint16_t", 4: "uint32_t"}
STYPE = {1: "int8_t", 2: "int16_t", 4: "int32_t"}
FLAGS_ALL = {"cf", "zf", "sf", "of", "pf"}

COND = {  # condition -> C expression over the flag variables
    "e": "zf", "z": "zf", "ne": "!zf", "nz": "!zf", "l": "(sf != of)", "nge": "(sf != of)", "ge": "(sf == of)", "nl": "(sf == of)",
    "le": "(zf || sf != of)", "ng": "(zf || sf != of)", "g": "(!zf && sf == of)", "nle": "(!zf && sf == of)",
    "b": "cf", "c": "cf", "nae": "cf", "ae": "!cf", "nb": "!cf", "nc": "!cf", "be": "(cf || zf)", "na": "(cf || zf)",
    "a": "(!cf && !zf)", "nbe": "(!cf && !zf)", "s": "sf", "ns": "!sf", "o": "of", "no": "!of", "p": "pf", "pe": "pf", "np": "!pf", "po": "!pf",
}
COND_FLAGS = {"e": {"zf"}, "z": {"zf"}, "ne": {"zf"}, "nz": {"zf"}, "l": {"sf", "of"}, "ge": {"sf", "of"}, "le": {"zf", "sf", "of"},
              "g": {"zf", "sf", "of"}, "b": {"cf"}, "c": {"cf"}, "ae": {"cf"}, "nc": {"cf"}, "be": {"cf", "zf"}, "a": {"cf", "zf"},
              "s": {"sf"}, "ns": {"sf"}, "o": {"of"}, "no": {"of"}, "p": {"pf"}, "np": {"pf"}}
for k, v in list(COND.items()):
    COND_FLAGS.setdefault(k, {"nge": {"sf", "of"}, "nl": {"sf", "of"}, "ng": {"zf", "sf", "of"}, "nle": {"zf", "sf", "of"},
                              "nae": {"cf"}, "nb": {"cf"}, "na": {"cf", "zf"}, "nbe": {"cf", "zf"}, "pe": {"pf"}, "po": {"pf"}}.get(k, FLAGS_ALL))

WRITES_ALL = {"add", "sub", "cmp", "and", "or", "xor", "test", "neg", "adc", "sbb", "shl", "shr", "sar", "sal", "rol", "ror", "rcl", "rcr",
              "imul", "mul", "sahf", "clc", "stc", "cmc", "popfd", "bt", "bts", "btr", "btc", "xadd", "cmpxchg"}
WRITES_NOCF = {"inc", "dec"}
READS_FLAGS = {"adc", "sbb", "rcl", "rcr", "pushfd", "lahf", "cmc"}


class Op:
    """one operand"""
    def __init__(self, kind, size=0, text="", reg=None, addr=None, val=None, st=None):
        self.kind, self.size, self.text, self.reg, self.addr, self.val, self.st = kind, size, text, reg, addr, val, st


def split_ops(s):
    out, depth, cur = [], 0, ""
    for ch in s:
        if ch == "[":
            depth += 1
        elif ch == "]":
            depth -= 1
        if ch == "," and depth == 0:
            out.append(cur.strip()); cur = ""
        else:
            cur += ch
    if cur.strip():
        out.append(cur.strip())
    return out


def parse_int(t):
    t = t.strip()
    return int(t, 16) if t.lower().startswith(("0x", "-0x")) else int(t)


def parse_op(t, default_size=0):
    t = t.strip()
    m = re.match(r"^(byte|word|dword|qword|tbyte|xword)\s+ptr\s+(.*)$", t)
    size = default_size
    if m:
        size = SIZES[m.group(1)]; t = m.group(2).strip()
    elif t.startswith("ptr "):
        t = t[4:].strip()
    fs = False
    m = re.match(r"^(es|cs|ss|ds|fs|gs):(.*)$", t)             # a segment override: only fs (the thread information block) is not flat
    if m:
        fs = m.group(1) == "fs"; t = m.group(2).strip()
    if "[" in t:
        inner = t[t.index("[") + 1:t.rindex("]")]
        inner = inner.replace("-", "+-").replace(" ", "")
        terms = [x for x in inner.split("+") if x != ""]
        parts = []
        for x in terms:
            neg = x.startswith("-"); x = x.lstrip("-")
            if "*" in x:
                r, sc = x.split("*"); e = "%s*%s" % (r, sc)
                if r not in R32:
                    r, sc = sc, r; e = "%s*%s" % (r, sc)
            elif x in R32:
                e = x
            else:
                e = "0x%x" % parse_int(x)
            parts.append(("-" if neg else "+") + e)
        expr = "0"
        for p in parts:
            expr += " " + p[0] + " " + p[1:]
        expr = re.sub(r"\b(e[a-d]x|e[sd]i|e[sb]p)\b", lambda mm: mm.group(1), expr)
        if fs: expr = "x2c_fs + (%s)" % expr
        return Op("mem", size, t, addr="(uint32_t)(%s)" % expr)
    if t in R32: return Op("reg", 4, t, reg=("r32", R32.index(t)))
    if t in R16: return Op("reg", 2, t, reg=("r16", R16.index(t)))
    if t in R8L: return Op("reg", 1, t, reg=("r8l", R8L.index(t)))
    if t in R8H: return Op("reg", 1, t, reg=("r8h", R8H.index(t)))
    m = re.match(r"^st(\((\d)\))?$", t)
    if m: return Op("st", 0, t, st=int(m.group(2) or 0))
    if re.match(r"^mm[0-7]$", t): return Op("mm", 8, t, reg=int(t[2]))
    if t in ("es", "ds", "cs", "ss", "fs", "gs"): return Op("seg", 2, t)
    try:
        return Op("imm", size, t, val=parse_int(t))
    except ValueError:
        return Op("bad", 0, t)


def rdreg(o):
    k, i = o.reg
    n = R32[i]
    if k == "r32": return n
    if k == "r16": return "(%s & 0xffff)" % R32[i]
    if k == "r8l": return "(%s & 0xff)" % R32[i % 4]
    return "((%s >> 8) & 0xff)" % R32[i % 4]


def wrreg(o, v):
    k, i = o.reg
    if k == "r32": return "%s = %s;" % (R32[i], v)
    if k == "r16": return "%s = (%s & 0xffff0000u) | ((%s) & 0xffff);" % (R32[i], R32[i], v)
    n = R32[i % 4]
    if k == "r8l": return "%s = (%s & 0xffffff00u) | ((%s) & 0xff);" % (n, n, v)
    return "%s = (%s & 0xffff00ffu) | (((%s) & 0xff) << 8);" % (n, n, v)


def rd(o, size=None):
    size = size or o.size
    if o.kind == "reg": return rdreg(o)
    if o.kind == "imm": return "0x%xu" % (o.val & MASK[size])
    if o.kind == "mem": return "rd%d(%s)" % (size * 8, o.addr)
    raise ValueError("cannot read %s" % o.text)


def wr(o, v, size=None):
    size = size or o.size
    if o.kind == "reg": return wrreg(o, v)
    if o.kind == "mem": return "wr%d(%s, %s);" % (size * 8, o.addr, v)
    raise ValueError("cannot write %s" % o.text)


class Fn:
    def __init__(self, entry):
        self.entry = entry
        self.insns = []        # addresses
        self.labels = set()


class Translator:
    def __init__(self, exe, outdir, pkls=None, mapfile=None):
        self.im = Image(exe)
        self.out = outdir
        self.d = {}
        for pk in pkls or [os.path.join(HERE, "..", "disasm.pkl")]:
            self.d.update(pickle.load(open(pk, "rb"))["insns"])
        self.lo, self.hi = 0x401000, 0x458000
        self.syms = {}
        if mapfile:
            for line in open(mapfile, errors="replace"):
                g = re.match(r"\s+0x([0-9a-f]{8})\s+(\S+)\s*$", line)
                if g:
                    self.syms.setdefault(int(g.group(1), 16), g.group(2))
        self.unimpl = collections.Counter()
        self.stats = collections.Counter()

    # ------------------------------------------------------------------ functions
    def find_functions(self):
        d, im = self.d, self.im
        entries = {im.entry}
        for a2, n2 in self.syms.items():
            if n2 in ("_bm_entry", "bm_entry"): entries.add(a2)          # the original entry point of the patched game
        for a, i in d.items():
            if i["flow"] == "call" and i["target"] is not None:
                entries.add(i["target"])
        for r in im.relocs:                                       # code pointers kept in data (callbacks, handler tables)
            v = im.u32(r)
            if v is not None and v in d:
                entries.add(v)
        # a pointer-sized immediate that is a code address (mov eax, offset f) in live code counts too
        for a, i in d.items():
            if i["imm_off"] is not None and i["imm_size"] == 4 and (a + i["imm_off"]) in im.relocs:
                v = im.u32(a + i["imm_off"])
                if v is not None and v in d:
                    entries.add(v)
        entries = {e for e in entries if e in d}
        self.entries = entries
        fns = {}
        for e in sorted(entries):
            fn = Fn(e)
            seen, work = set(), [e]
            while work:
                a = work.pop()
                while a in d and a not in seen:
                    seen.add(a)
                    i = d[a]
                    t = i["target"]
                    if i["flow"] in ("jmp", "jcc") and t is not None and t in d:
                        if i["flow"] == "jmp" and t in entries and t != e:
                            pass                                  # tail call into another function
                        else:
                            fn.labels.add(t); work.append(t)
                    if i["flow"] in ("ret", "jmp", "jmpi", "stop"):
                        break
                    a += i["size"]
            fn.insns = sorted(seen)
            fns[e] = fn
        self.fns = fns
        # jump-table targets: relocs in data pointing into a function become labels of every function containing them
        for r in im.relocs:
            v = im.u32(r)
            if v in d:
                for fn in fns.values():
                    if v in fn.insns:
                        fn.labels.add(v)
        self.stats["functions"] = len(fns)

    # ------------------------------------------------------------------ flag liveness
    def flags_needed(self, fn, idx):
        """flags that a later instruction may read before they are rewritten (linear scan, conservative at branches)"""
        d, addrs = self.d, fn.insns
        need = set()
        live = set(FLAGS_ALL)
        j = idx + 1
        while j < len(addrs) and live:
            a = addrs[j]
            if a != addrs[j - 1] + d[addrs[j - 1]]["size"]:
                need |= live; return need
            i = d[a]
            mn = i["mn"].split()[-1] if i["mn"].startswith(("rep", "lock")) else i["mn"]
            if mn.startswith("j") and mn not in ("jmp", "jecxz") or mn.startswith("set") or mn.startswith("cmov"):
                c = mn[3:] if mn.startswith("cmov") else mn[1:] if mn.startswith("j") else mn[3:]
                need |= COND_FLAGS.get(c, FLAGS_ALL) & live
                if mn.startswith("j"):
                    need |= live                                  # the branch target may read more
                    return need
            elif mn in READS_FLAGS:
                need |= live; return need
            elif mn in ("jmp", "ret", "call", "jmpi", "calli") or i["flow"] in ("jmp", "ret", "call", "calli", "jmpi", "stop"):
                if i["flow"] in ("call", "calli", "ret", "stop"):
                    return need
                need |= live; return need
            if mn in WRITES_ALL:
                live = set()
            elif mn in WRITES_NOCF:
                live -= {"zf", "sf", "of", "pf"}
            j += 1
        return need

    # ------------------------------------------------------------------ emitting
    def emit_all(self):
        os.makedirs(self.out, exist_ok=True)
        self.find_functions()
        names = {e: "f_%08x" % e for e in self.fns}
        self.names = names
        parts = ['#include "x2c_rt.h"\n']
        parts.append("\n".join("void %s(void);" % n for n in names.values()) + "\n")
        for e in sorted(self.fns):
            parts.append(self.emit_fn(self.fns[e]))
        open(os.path.join(self.out, "game.c"), "w", newline="\n").write("\n".join(parts))
        with open(os.path.join(self.out, "ftab.c"), "w", newline="\n") as f:
            f.write('#include "x2c_rt.h"\n')
            f.write("\n".join("void %s(void);" % n for n in sorted(names.values())) + "\n")
            f.write("const x2c_fn_t x2c_ftab[] = {\n")
            for e in sorted(names):
                f.write("    { 0x%08x, %s },\n" % (e, names[e]))
            f.write("    { 0, 0 } };\nconst unsigned x2c_nftab = %d;\n" % len(names))
        with open(os.path.join(self.out, "imports.c"), "w", newline="\n") as f:          # the import table: what the program calls into the system
            f.write('#include "x2c_host.h"\n')
            f.write("const x2c_import_t x2c_imports[] = {\n")
            seen = {}
            items = sorted(self.im.imports.items())
            for va, (dll, fn) in items:
                f.write('    { 0x%08x, "%s", "%s" },\n' % (va, dll, fn))
            f.write("};\nconst unsigned x2c_nimports = %d;\n" % len(items))
        with open(os.path.join(self.out, "hostsyms.c"), "w", newline="\n") as f:          # platform-layer functions called by address
            f.write('#include "x2c_host.h"\n')
            f.write("const x2c_sym_t x2c_syms[] = {\n")
            ext = sorted((a, n) for a, n in self.syms.items() if a >= 0x4a8000 and n.startswith(("bm_", "_bm_")))
            for a, n in ext:
                f.write('    { 0x%08x, "%s" },\n' % (a, n.lstrip("_")))
            f.write("    { 0, 0 } };\nconst unsigned x2c_nsyms = %d;\n" % len(ext))
        import shutil
        self.write_image()
        for f in ("x2c_rt.h", "x2c_rt.c", "x2c_host.h"):
            shutil.copyfile(os.path.join(HERE, "rt", f), os.path.join(self.out, f))
        print("functions:", len(self.fns), "unimplemented instructions:", sum(self.unimpl.values()), "ends of known code:", self.stats["fell"])
        for k, v in self.unimpl.most_common(40):
            print("   %5d  %s" % (v, k))

    def write_image(self):
        """image.c: the initial contents of the program's own sections (code constants, jump tables, data, resources)"""
        with open(os.path.join(self.out, "image.c"), "w", newline="\n") as f:
            f.write('#include "x2c_host.h"\n#include <stdint.h>\n')
            f.write("typedef struct { uint32_t va, size; const uint8_t *data; } x2c_section_t;\n")
            names = []
            for k, s in enumerate(self.im.sections):
                if s["name"] in (".xtext", ".xbss") or not s["raw"] or s["name"] == ".idata":
                    continue
                raw = bytes(s["raw"][:s["rawsize"]])
                f.write("static const uint8_t sec%d[%d] = {" % (k, len(raw)))
                f.write(",".join(str(b) for b in raw))
                f.write("};\n")
                names.append((s["va"], len(raw), "sec%d" % k))
            f.write("const x2c_section_t x2c_sections[] = {\n")
            for va, n, nm in names:
                f.write("    { 0x%08x, %d, %s },\n" % (va, n, nm))
            f.write("};\nconst unsigned x2c_nsections = %d;\n" % len(names))
            entry = None
            for a2, n2 in self.syms.items():
                if n2 in ("_bm_entry", "bm_entry"):
                    entry = a2
            f.write("const uint32_t x2c_entry_va = 0x%08x;\n" % (entry or self.im.entry))

    def emit_fn(self, fn):
        lines = ["void %s(void) {" % self.names[fn.entry]]
        lines.append("    X2C_ENTER(0x%08x);" % fn.entry)
        if fn.insns and fn.insns[0] != fn.entry:                  # code of the function lies below its entry point (shared epilogues)
            lines.append("    goto L_%08x;" % fn.entry)
        d = self.d
        addrs = fn.insns
        fn.insns_set = set(addrs)
        for idx, a in enumerate(addrs):                               # instructions whose successor is not the next one in address order
            nxt = a + d[a]["size"]
            if d[a]["flow"] not in ("ret", "jmp", "jmpi", "stop") and (idx + 1 >= len(addrs) or addrs[idx + 1] != nxt) and nxt in fn.insns_set:
                fn.labels.add(nxt)
        for idx, a in enumerate(addrs):
            i = d[a]
            if a in fn.labels or a == fn.entry:
                lines.append("L_%08x:;" % a)
            try:
                body = self.insn(fn, idx, a, i)
            except Exception as ex:                               # an instruction the translator does not know
                self.unimpl["%s %s (%s)" % (i["mn"], i["ops"], type(ex).__name__)] += 1
                body = 'X2C_UNIMPL(0x%08x, "%s %s");' % (a, i["mn"], i["ops"].replace('"', "'"))
            lines.append("    " + body)
            nxt = a + i["size"]
            if i["flow"] not in ("ret", "jmp", "jmpi", "stop") and (idx + 1 >= len(addrs) or addrs[idx + 1] != nxt):
                if nxt in fn.insns_set:                               # overlapping instructions: the next one is not the next in address order
                    lines.append("    goto L_%08x;" % nxt)
                else:
                    self.stats["fell"] += 1
                    lines.append("    X2C_FELL(0x%08x);" % nxt)     # walked off the end of the known code
        lines.append("}")
        return "\n".join(lines)

    def target_stmt(self, fn, t, cond=None):
        """code to continue at address t (a label of this function, another function, or unknown)"""
        if t in fn.labels or t == fn.entry:
            go = "goto L_%08x;" % t
        elif t in self.names:
            go = "{ %s(); return; }" % self.names[t]
        else:
            go = "X2C_UNIMPL(0x%08x, \"jump to unknown code\");" % t
        return go if cond is None else "if (%s) %s" % (cond, go)

    def insn(self, fn, idx, a, i):
        mn, ops, size = i["mn"], i["ops"], i["size"]
        nxt = a + size
        tgt = i["target"]
        ol = split_ops(ops)
        flow = i["flow"]
        # ---- control flow
        if flow == "call":
            return "PUSH32(0x%x); %s;" % (nxt, ("%s()" % self.names[tgt]) if tgt in self.names else "x2c_call(0x%x)" % tgt)
        if flow == "calli":
            return "{ uint32_t t_ = %s; PUSH32(0x%x); x2c_call(t_); }" % (rd(parse_op(ol[0], 4), 4), nxt)
        if flow == "ret":
            n = parse_int(ol[0]) if ol else 0
            return "esp += %d; return;" % (4 + n)
        if flow == "jmp" and tgt is not None:
            return self.target_stmt(fn, tgt)
        if flow == "jmpi":
            labs = sorted(fn.labels | {fn.entry})
            cases = " ".join("case 0x%x: goto L_%08x;" % (l, l) for l in labs)
            return "{ uint32_t t_ = %s; switch (t_) { %s default: x2c_jump(t_); return; } }" % (rd(parse_op(ol[0], 4), 4), cases)
        if flow == "jcc":
            c = mn[1:]
            if mn == "jecxz": return self.target_stmt(fn, tgt, "ecx == 0")
            if mn == "loop": return "ecx--; " + self.target_stmt(fn, tgt, "ecx != 0")
            if c not in COND: raise ValueError("jcc " + c)
            return self.target_stmt(fn, tgt, COND[c])
        if flow == "stop":
            return "X2C_STOP(0x%08x);" % a
        need = self.flags_needed(fn, idx)
        return self.simple(mn, ol, nxt, need, a)

    # ------------------------------------------------------------------ flags helpers
    def fl(self, need, **kw):
        s = ""
        for k, v in kw.items():
            if k in need:
                s += " %s = %s;" % (k, v)
        return s

    def sets_pf(self, need, r):
        return self.fl(need, pf="x2c_parity(%s)" % r)

    def simple(self, mn, ol, nxt, need, a):
        if mn.startswith("rep") or mn.startswith("lock"):
            return self.stringop(mn, ol)
        if mn in ("movsb", "movsw", "movsd", "stosb", "stosw", "stosd", "lodsb", "lodsw", "lodsd", "scasb", "scasw", "scasd", "cmpsb", "cmpsw", "cmpsd") and \
                not (mn == "movsd" and ol and ol[0].startswith(("xmm", "mm"))):
            # the disassembler leaves a repeat prefix out of the text for some forms (f2 a5 = "repne movsd", which on a real
            # processor repeats like "rep"): take it from the instruction bytes
            raw = self.d[a]["bytes"]
            k = 1 if raw[:1] == b"\x66" else 0
            if raw[k:k + 1] == b"\xf3": mn = ("repe " if mn[:4] in ("scas", "cmps") else "rep ") + mn
            elif raw[k:k + 1] == b"\xf2": mn = "repne " + mn
            return self.stringop(mn, ol)
        if mn == "wait":
            return ";"
        if mn.startswith("f"):
            return self.fpu(mn, ol)
        if mn in ("movq", "pxor", "pcmpeqb", "pandn", "pand", "por", "emms"):
            return self.mmx(mn, ol)
        o = [parse_op(x) for x in ol]
        # size inference for memory/immediate operands
        sz = 0
        for x in o:
            if x.kind == "reg": sz = x.size; break
        for x in o:
            if x.size == 0 and x.kind in ("mem", "imm"):
                x.size = sz or 4
        if o and mn not in ("push", "pop", "lea", "movzx", "movsx", "shl", "shr", "sar", "sal", "rol", "ror", "rcl", "rcr", "imul", "call"):
            for x in o:
                if x.kind in ("mem", "imm") and sz and x.size != sz: x.size = sz
        S = sz or (o[0].size if o else 4)

        if mn == "nop" or mn == "wait": return ";"
        # segment registers: the program runs flat, they carry no information (selector values are never used)
        if mn == "push" and o[0].kind == "seg": return "PUSH32(0x23);"
        if mn == "pop" and o[0].kind == "seg": return "esp += 4;"
        if mn == "mov" and o[0].kind == "seg": return ";"
        if mn == "mov" and len(o) > 1 and o[1].kind == "seg": return wr(o[0], "0x23", o[0].size or 4)
        if mn in ("int1", "int3", "icebp"): return "X2C_STOP(0x%08x);" % a
        if mn == "mov":
            return wr(o[0], rd(o[1], o[0].size), o[0].size)
        if mn == "lea":
            return wr(o[0], o[1].addr, o[0].size)
        if mn in ("movzx", "movsx"):
            srcsz = o[1].size or 1
            if mn == "movzx": v = rd(o[1], srcsz)
            else: v = "(uint32_t)(int32_t)(%s)(%s)" % (STYPE[srcsz], rd(o[1], srcsz))
            return wr(o[0], v, o[0].size)
        if mn == "push":
            return "PUSH32(%s);" % (rd(o[0], 4) if o[0].kind != "imm" else "0x%xu" % (o[0].val & 0xffffffff))
        if mn == "pop":
            if o[0].kind == "reg" and o[0].reg == ("r32", 4): return "esp = POP32();"
            return "{ uint32_t v_ = POP32(); %s }" % wr(o[0], "v_", 4)
        if mn == "pushfd": return "PUSH32(x2c_getflags());"
        if mn in ("pushal", "pusha"): return "{ uint32_t sp_ = esp; PUSH32(eax); PUSH32(ecx); PUSH32(edx); PUSH32(ebx); PUSH32(sp_); PUSH32(ebp); PUSH32(esi); PUSH32(edi); }"
        if mn in ("popal", "popa"): return "{ edi = POP32(); esi = POP32(); ebp = POP32(); (void)POP32(); ebx = POP32(); edx = POP32(); ecx = POP32(); eax = POP32(); }"
        if mn == "popfd": return "x2c_setflags(POP32());"
        if mn == "leave": return "esp = ebp; ebp = POP32();"
        if mn == "enter": return "PUSH32(ebp); ebp = esp; esp -= %d;" % parse_int(ol[0])          # enter n, 0
        if mn == "xchg":
            return "{ %s t_ = %s; %s %s }" % (CTYPE[S], rd(o[0], S), wr(o[0], rd(o[1], S), S), wr(o[1], "t_", S))
        if mn in ("cld",): return "df = 0;"
        if mn in ("std",): return "df = 1;"
        if mn == "clc": return "cf = 0;"
        if mn == "stc": return "cf = 1;"
        if mn == "cmc": return "cf = !cf;"
        if mn == "cwde": return "eax = (uint32_t)(int32_t)(int16_t)eax;"
        if mn == "cbw": return "eax = (eax & 0xffff0000u) | (uint16_t)(int16_t)(int8_t)eax;"
        if mn == "cdq": return "edx = (int32_t)eax < 0 ? 0xffffffffu : 0;"
        if mn == "cwd": return "edx = (edx & 0xffff0000u) | ((int16_t)eax < 0 ? 0xffffu : 0);"
        if mn == "sahf": return "x2c_sahf((eax >> 8) & 0xff);"
        if mn == "lahf": return "eax = (eax & 0xffff00ffu) | (x2c_getflags() & 0xff) << 8;"
        if mn == "cpuid": return "x2c_cpuid();"
        if mn == "bswap": return wr(o[0], "x2c_bswap(%s)" % rd(o[0], 4), 4)
        if mn.startswith("set"):
            c = mn[3:]
            return wr(o[0], "(%s) ? 1 : 0" % COND[c], 1)
        if mn.startswith("cmov"):
            c = mn[4:]
            return "if (%s) { %s }" % (COND[c], wr(o[0], rd(o[1], S), S))
        W = S * 8
        ct, st = CTYPE[S], STYPE[S]
        top = "(%s)1 << %d" % (ct, W - 1)
        if mn in ("add", "adc", "sub", "sbb", "cmp"):
            a_, b_ = rd(o[0], S), rd(o[1], S)
            cin = "cf" if mn in ("adc", "sbb") else "0"
            if mn in ("add", "adc"):
                body = "%s a_ = %s, b_ = %s, c_ = %s; %s r_ = (%s)(a_ + b_ + c_);" % (ct, a_, b_, cin, ct, ct)
                f = self.fl(need, cf="(uint64_t)a_ + b_ + c_ > 0x%xull" % MASK[S], zf="r_ == 0", sf="(%s)r_ < 0" % st,
                            of="(((a_ ^ r_) & (b_ ^ r_)) >> %d) & 1" % (W - 1)) + self.sets_pf(need, "r_")
            else:
                body = "%s a_ = %s, b_ = %s, c_ = %s; %s r_ = (%s)(a_ - b_ - c_);" % (ct, a_, b_, cin, ct, ct)
                f = self.fl(need, cf="(uint64_t)a_ < (uint64_t)b_ + c_", zf="r_ == 0", sf="(%s)r_ < 0" % st,
                            of="(((a_ ^ b_) & (a_ ^ r_)) >> %d) & 1" % (W - 1)) + self.sets_pf(need, "r_")
            wrs = "" if mn == "cmp" else " " + wr(o[0], "r_", S)
            return "{ %s%s%s }" % (body, f, wrs)
        if mn in ("and", "or", "xor", "test"):
            op = {"and": "&", "or": "|", "xor": "^", "test": "&"}[mn]
            body = "%s r_ = (%s)(%s %s %s);" % (ct, ct, rd(o[0], S), op, rd(o[1], S))
            f = self.fl(need, cf="0", of="0", zf="r_ == 0", sf="(%s)r_ < 0" % st) + self.sets_pf(need, "r_")
            wrs = "" if mn == "test" else " " + wr(o[0], "r_", S)
            return "{ %s%s%s }" % (body, f, wrs)
        if mn in ("inc", "dec"):
            d_ = "+" if mn == "inc" else "-"
            ov = "(r_ == (%s)(%s)) " % (ct, top) if mn == "inc" else "(r_ == (%s)(((%s)1 << %d) - 1))" % (ct, ct, W - 1)
            body = "%s a_ = %s, r_ = (%s)(a_ %s 1);" % (ct, rd(o[0], S), ct, d_)
            f = self.fl(need, zf="r_ == 0", sf="(%s)r_ < 0" % st, of=ov) + self.sets_pf(need, "r_")
            return "{ %s%s %s }" % (body, f, wr(o[0], "r_", S))
        if mn == "neg":
            body = "%s a_ = %s, r_ = (%s)(0 - a_);" % (ct, rd(o[0], S), ct)
            f = self.fl(need, cf="a_ != 0", zf="r_ == 0", sf="(%s)r_ < 0" % st, of="a_ == (%s)(%s)" % (ct, top)) + self.sets_pf(need, "r_")
            return "{ %s%s %s }" % (body, f, wr(o[0], "r_", S))
        if mn == "not":
            return wr(o[0], "(%s)~%s" % (ct, rd(o[0], S)), S)
        if mn in ("shl", "sal", "shr", "sar", "rol", "ror", "rcl", "rcr"):
            S = o[0].size or 4
            ct, st = CTYPE[S], STYPE[S]; W = S * 8
            cnt = "(%s & 31)" % (rd(o[1], 1) if o[1].kind != "imm" else "0x%x" % o[1].val)
            a_ = rd(o[0], S)
            if mn in ("shl", "sal"):
                body = "%s a_ = %s; unsigned n_ = %s; %s r_ = (%s)(a_ << n_);" % (ct, a_, cnt, ct, ct)
                f = self.fl(need, cf="n_ ? (a_ >> (%d - n_)) & 1 : cf" % W, zf="r_ == 0", sf="(%s)r_ < 0" % st, of="((r_ >> %d) & 1) ^ cf" % (W - 1)) + self.sets_pf(need, "r_")
            elif mn == "shr":
                body = "%s a_ = %s; unsigned n_ = %s; %s r_ = (%s)(a_ >> n_);" % (ct, a_, cnt, ct, ct)
                f = self.fl(need, cf="n_ ? (a_ >> (n_ - 1)) & 1 : cf", zf="r_ == 0", sf="(%s)r_ < 0" % st, of="(a_ >> %d) & 1" % (W - 1)) + self.sets_pf(need, "r_")
            elif mn == "sar":
                body = "%s a_ = %s; unsigned n_ = %s; %s r_ = (%s)((%s)a_ >> n_);" % (ct, a_, cnt, ct, ct, st)
                f = self.fl(need, cf="n_ ? ((%s)a_ >> (n_ - 1)) & 1 : cf" % st, zf="r_ == 0", sf="(%s)r_ < 0" % st, of="0") + self.sets_pf(need, "r_")
            elif mn == "rol":
                body = "%s a_ = %s; unsigned n_ = %s %% %d; %s r_ = n_ ? (%s)((a_ << n_) | (a_ >> (%d - n_))) : a_;" % (ct, a_, cnt, W, ct, ct, W)
                f = self.fl(need, cf="r_ & 1")
            elif mn == "ror":
                body = "%s a_ = %s; unsigned n_ = %s %% %d; %s r_ = n_ ? (%s)((a_ >> n_) | (a_ << (%d - n_))) : a_;" % (ct, a_, cnt, W, ct, ct, W)
                f = self.fl(need, cf="(r_ >> %d) & 1" % (W - 1))
            elif mn == "rcr":
                body = "%s a_ = %s; unsigned n_ = %s, c_ = cf; %s r_ = a_; while (n_--) { unsigned lo_ = r_ & 1; r_ = (%s)((r_ >> 1) | ((%s)c_ << %d)); c_ = lo_; } unsigned co_ = c_;" % (ct, a_, cnt, ct, ct, ct, W - 1)
                f = self.fl(need, cf="co_")
            else:  # rcl
                body = "%s a_ = %s; unsigned n_ = %s, c_ = cf; %s r_ = a_; while (n_--) { unsigned hi_ = (r_ >> %d) & 1; r_ = (%s)((r_ << 1) | c_); c_ = hi_; } unsigned co_ = c_;" % (ct, a_, cnt, ct, W - 1, ct)
                f = self.fl(need, cf="co_")
            return "{ %s%s %s }" % (body, f, wr(o[0], "r_", S))
        if mn == "imul":
            if len(o) == 1:
                return self.mul1(o[0], True, need)
            if len(o) == 2: dst, a1, b1 = o[0], o[0], o[1]
            else: dst, a1, b1 = o[0], o[1], o[2]
            S = dst.size; ct, st = CTYPE[S], STYPE[S]
            if b1.kind == "imm": b1.size = S
            body = "int64_t p_ = (int64_t)(%s)%s * (int64_t)(%s)%s; %s r_ = (%s)p_;" % (st, rd(a1, S), st, rd(b1, S), ct, ct)
            f = self.fl(need, cf="p_ != (int64_t)(%s)r_" % st, of="p_ != (int64_t)(%s)r_" % st, zf="r_ == 0", sf="(%s)r_ < 0" % st)
            return "{ %s%s %s }" % (body, f, wr(dst, "r_", S))
        if mn == "mul": return self.mul1(o[0], False, need)
        if mn in ("div", "idiv"): return self.div1(o[0], mn == "idiv")
        if mn == "bt":
            return "{ uint32_t b_ = %s, v_ = %s; cf = (v_ >> (b_ & 31)) & 1; }" % (rd(o[1], 4), rd(o[0], 4))
        if mn in ("bsf", "bsr"):
            return "{ uint32_t v_ = %s; zf = v_ == 0; if (v_) %s }" % (rd(o[1], 4), wr(o[0], "x2c_%s(v_)" % mn, 4))
        raise NotImplementedError(mn)

    def mul1(self, o, signed, need):
        S = o.size or 4
        if S == 4:
            if signed:
                return "{ int64_t p_ = (int64_t)(int32_t)eax * (int32_t)%s; eax = (uint32_t)p_; edx = (uint32_t)(p_ >> 32); cf = of = (p_ != (int64_t)(int32_t)eax); }" % rd(o, 4)
            return "{ uint64_t p_ = (uint64_t)eax * %s; eax = (uint32_t)p_; edx = (uint32_t)(p_ >> 32); cf = of = (edx != 0); }" % rd(o, 4)
        if S == 2:
            t = "int32_t p_ = (int32_t)(int16_t)eax * (int16_t)%s;" if signed else "uint32_t p_ = (eax & 0xffff) * %s;"
            return "{ %s eax = (eax & 0xffff0000u) | (p_ & 0xffff); edx = (edx & 0xffff0000u) | ((p_ >> 16) & 0xffff); cf = of = (p_ >> 16) != 0; }" % (t % rd(o, 2))
        t = "int32_t p_ = (int8_t)eax * (int8_t)%s;" if signed else "uint32_t p_ = (eax & 0xff) * %s;"
        return "{ %s eax = (eax & 0xffff0000u) | (p_ & 0xffff); cf = of = (p_ >> 8) != 0; }" % (t % rd(o, 1))

    def div1(self, o, signed):
        S = o.size or 4
        if S == 4:
            if signed:
                return "{ int32_t d_ = (int32_t)%s; int64_t n_ = ((int64_t)(int32_t)edx << 32) | eax; X2C_DIVCHK(d_); eax = (uint32_t)(n_ / d_); edx = (uint32_t)(n_ %% d_); }" % rd(o, 4)
            return "{ uint32_t d_ = %s; uint64_t n_ = ((uint64_t)edx << 32) | eax; X2C_DIVCHK(d_); eax = (uint32_t)(n_ / d_); edx = (uint32_t)(n_ %% d_); }" % rd(o, 4)
        if S == 2:
            if signed:
                return "{ int32_t d_ = (int16_t)%s; int32_t n_ = (int32_t)(((edx & 0xffff) << 16) | (eax & 0xffff)); X2C_DIVCHK(d_); eax = (eax & 0xffff0000u) | ((uint16_t)(n_ / d_)); edx = (edx & 0xffff0000u) | ((uint16_t)(n_ %% d_)); }" % rd(o, 2)
            return "{ uint32_t d_ = %s; uint32_t n_ = ((edx & 0xffff) << 16) | (eax & 0xffff); X2C_DIVCHK(d_); eax = (eax & 0xffff0000u) | ((uint16_t)(n_ / d_)); edx = (edx & 0xffff0000u) | ((uint16_t)(n_ %% d_)); }" % rd(o, 2)
        if signed:
            return "{ int32_t d_ = (int8_t)%s; int32_t n_ = (int16_t)eax; X2C_DIVCHK(d_); eax = (eax & 0xffff0000u) | ((uint8_t)(n_ / d_)) | (((uint8_t)(n_ %% d_)) << 8); }" % rd(o, 1)
        return "{ uint32_t d_ = %s; uint32_t n_ = eax & 0xffff; X2C_DIVCHK(d_); eax = (eax & 0xffff0000u) | ((uint8_t)(n_ / d_)) | (((uint8_t)(n_ %% d_)) << 8); }" % rd(o, 1)

    # ------------------------------------------------------------------ strings
    def stringop(self, mn, ol):
        parts = mn.split()
        rep = ""
        if parts[0] in ("rep", "repe", "repz", "repne", "repnz"):
            rep, base = parts[0], parts[1]
        else:
            base = parts[-1] if len(parts) > 1 else parts[0]
        sz = {"b": 1, "w": 2, "d": 4}[base[-1]]
        kind = base[:-1]
        ct = CTYPE[sz]
        step = "(df ? -%d : %d)" % (sz, sz)
        body = {
            "movs": "wr%d(edi, rd%d(esi)); esi += %s; edi += %s;" % (sz * 8, sz * 8, step, step),
            "stos": "wr%d(edi, (%s)eax); edi += %s;" % (sz * 8, ct, step),
            "lods": "{ %s v_ = rd%d(esi); %s esi += %s; }" % (ct, sz * 8, ("eax = (eax & 0xffffff00u) | v_;" if sz == 1 else "eax = (eax & 0xffff0000u) | v_;" if sz == 2 else "eax = v_;"), step),
            "scas": "{ %s a_ = (%s)eax, b_ = rd%d(edi); %s r_ = a_ - b_; cf = a_ < b_; zf = r_ == 0; sf = (%s)r_ < 0; of = (((a_ ^ b_) & (a_ ^ r_)) >> %d) & 1; pf = x2c_parity(r_); edi += %s; }" % (ct, ct, sz * 8, ct, STYPE[sz], sz * 8 - 1, step),
            "cmps": "{ %s a_ = rd%d(esi), b_ = rd%d(edi); %s r_ = a_ - b_; cf = a_ < b_; zf = r_ == 0; sf = (%s)r_ < 0; of = (((a_ ^ b_) & (a_ ^ r_)) >> %d) & 1; pf = x2c_parity(r_); esi += %s; edi += %s; }" % (ct, sz * 8, sz * 8, ct, STYPE[sz], sz * 8 - 1, step, step),
        }[kind]
        if not rep:
            return body
        cond = ""
        if kind in ("scas", "cmps"):
            cond = " if (%s) break;" % ("!zf" if rep in ("repe", "repz") else "zf")
        return "while (ecx) { %s ecx--;%s }" % (body, cond)

    # ------------------------------------------------------------------ x87 (double precision), MMX
    def fpu(self, mn, ol):
        o = [parse_op(x) for x in ol]
        a = o[0] if o else None
        def memty(x, default="double"):
            return {4: "float", 8: "double", 10: "double"}.get(x.size, default)
        def src(x):
            if x.kind == "st": return "st(%d)" % x.st
            if x.size == 4: return "(double)rdf32(%s)" % x.addr
            if x.size == 8: return "rdf64(%s)" % x.addr
            if x.size == 10: return "rdf80(%s)" % x.addr
            raise ValueError("fpu operand")
        def isrc(x):
            return "(double)(int%d_t)rd%d(%s)" % (x.size * 8, x.size * 8, x.addr)
        if mn == "fld": return "fpush(%s);" % src(a)
        if mn == "fld1": return "fpush(1.0);"
        if mn == "fldz": return "fpush(0.0);"
        if mn == "fldl2e": return "fpush(1.4426950408889634074);"
        if mn == "fldln2": return "fpush(0.69314718055994530942);"
        if mn == "fldlg2": return "fpush(0.30102999566398119521);"
        if mn == "fild": return "fpush(%s);" % isrc(a)
        if mn in ("fst", "fstp"):
            pop = " fpop();" if mn == "fstp" else ""
            if a.kind == "st": return "st(%d) = st(0);%s" % (a.st, pop)
            if a.size == 4: return "wrf32(%s, (float)st(0));%s" % (a.addr, pop)
            if a.size == 8: return "wrf64(%s, st(0));%s" % (a.addr, pop)
            return "wrf80(%s, st(0));%s" % (a.addr, pop)
        if mn in ("fistp", "fist"):
            pop = " fpop();" if mn == "fistp" else ""
            return "wr%d(%s, (uint%d_t)x2c_fround(st(0)));%s" % (a.size * 8, a.addr, a.size * 8, pop)
        if mn == "fxch": return "fxch(%d);" % (a.st if a else 1)
        if mn in ("fchs",): return "st(0) = -st(0);"
        if mn in ("fabs",): return "st(0) = fabs(st(0));"
        if mn in ("frndint",): return "st(0) = x2c_fround(st(0));"
        if mn in ("fsin", "fcos"): return "st(0) = %s(st(0));" % mn[1:]
        if mn == "fsincos": return "{ double v_ = st(0); st(0) = sin(v_); fpush(cos(v_)); }"
        if mn == "fptan": return "st(0) = tan(st(0)); fpush(1.0);"
        if mn == "fyl2x": return "{ double x_ = st(0); fpop(); st(0) = st(0) * log2(x_); }"
        if mn == "f2xm1": return "st(0) = pow(2.0, st(0)) - 1.0;"
        if mn == "fscale": return "st(0) = ldexp(st(0), (int)st(1));"
        if mn == "fprem": return "st(0) = fmod(st(0), st(1)); fsw &= ~0x400;"
        if mn == "fsqrt": return "st(0) = sqrt(st(0));"
        if mn == "ftst": return "fcompare(st(0), 0.0);"
        if mn in ("fcom", "fcomp", "fcompp"):
            other = src(a) if a else "st(1)"
            if a and a.kind == "mem": other = src(a)
            pops = {"fcom": "", "fcomp": " fpop();", "fcompp": " fpop(); fpop();"}[mn]
            return "fcompare(st(0), %s);%s" % (other, pops)
        if mn == "fnstsw": return wrreg(a, "fsw") if a.kind == "reg" else "wr16(%s, fsw);" % a.addr
        if mn == "fnstcw": return "wr16(%s, fcw);" % a.addr
        if mn == "fldcw": return "fcw = rd16(%s);" % a.addr
        if mn in ("fninit", "finit"): return "fcw = 0x37f; fsw = 0; x2c_ftop = 0;"
        if mn in ("fnsave", "fsave", "frstor"): return ";"
        base = mn.rstrip("p")
        ops_ = {"fadd": "+", "fsub": "-", "fmul": "*", "fdiv": "/"}
        rev = False
        if mn.startswith(("fsubr", "fdivr")):
            rev = True; base = mn[:-1] if mn.endswith("p") and len(mn) > 5 else mn
            base = "fsub" if mn.startswith("fsubr") else "fdiv"
        elif mn.startswith("fsub"): base = "fsub"
        elif mn.startswith("fdiv"): base = "fdiv"
        elif mn.startswith("fadd"): base = "fadd"
        elif mn.startswith("fmul"): base = "fmul"
        if base in ops_:
            popit = mn.endswith("p") and mn not in ("fadd", "fsub", "fmul", "fdiv", "fsubr", "fdivr") or mn in ("faddp", "fsubp", "fmulp", "fdivp", "fsubrp", "fdivrp")
            op = ops_[base]
            if a is None:                                         # fmulp with no operand = st(1)
                dst, s = 1, "st(0)"
            elif a.kind == "st":
                if popit: dst, s = a.st, "st(0)"
                else: dst, s = 0, "st(%d)" % a.st
            else:
                dst, s = 0, src(a)
            x, y = ("st(%d)" % dst), s
            if rev: x, y = y, x
            return "st(%d) = %s %s %s;%s" % (dst, x, op, y, " fpop();" if popit else "")
        raise NotImplementedError(mn)

    def mmx(self, mn, ol):
        o = [parse_op(x) for x in ol]
        def v(x):
            return "mm[%d]" % x.reg if x.kind == "mm" else "rd64(%s)" % x.addr
        if mn == "emms": return ";"
        if mn == "movq":
            if o[0].kind == "mm": return "mm[%d] = %s;" % (o[0].reg, v(o[1]))
            return "wr64(%s, mm[%d]);" % (o[0].addr, o[1].reg)
        if mn == "pxor": return "mm[%d] ^= %s;" % (o[0].reg, v(o[1]))
        if mn == "pand": return "mm[%d] &= %s;" % (o[0].reg, v(o[1]))
        if mn == "por": return "mm[%d] |= %s;" % (o[0].reg, v(o[1]))
        if mn == "pandn": return "mm[%d] = ~mm[%d] & %s;" % (o[0].reg, o[0].reg, v(o[1]))
        if mn == "pcmpeqb": return "mm[%d] = x2c_pcmpeqb(mm[%d], %s);" % (o[0].reg, o[0].reg, v(o[1]))
        raise NotImplementedError(mn)


def main():
    args, pkls, mp, rest = sys.argv[1:], [], None, []
    while args:
        a = args.pop(0)
        if a == "--pkl": pkls.append(args.pop(0))
        elif a == "--map": mp = args.pop(0)
        else: rest.append(a)
    if len(rest) != 2:
        print(__doc__); return 2
    t = Translator(rest[0], rest[1], pkls or None, mp)
    t.emit_all()
    return 0


if __name__ == "__main__":
    sys.exit(main())
