"""Emit re-assemblable GNU as (Intel syntax) source from the disassembly map.

Layout written to ../src/asm/:
   main.s       - includes everything, defines _start symbol
   text_NNN.s   - code, 64 KB of original address space per file
   data.s       - initialised data (DGROUP) with symbolic pointers
   bss.s        - uninitialised data
   iat.s        - one cell per original import slot, filled by the linker
   raw.txt      - instructions emitted as .byte because gas would encode them differently
"""
import sys, os, re, pickle, json
sys.path.insert(0, r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools")
from pe_load import Image

ROOT = r"E:\PROJECTS\DESKTOP\AtomicBomberman"
OUTDIR = ROOT + r"\src\asm"
CHUNK = 0x10000
# calls redirected to hand-written stubs in src/asm/hooks.s (target address -> stub label)
PATCH_CALLS = {0x40c839: "bm_net_session", 0x42b060: "bm_intro", 0x40ea1e: "bm_pump"}
PATCH_SITES = {0x411034: "bm_assign_slots", 0x411119: "bm_assign_slots", 0x411709: "bm_setup_key",
               0x425998: "bm_nap", 0x42619d: "bm_nap", 0x410d8e: "bm_nap"}      # individual call sites redirected (address -> stub): default controllers of the setup screen
APPLIED = set()

# The game's two old IPX session screens are removed, not worked around: "Start Network Game"
# (0x42b0ce, the server screen listing the connected players) and "Join Network Game" (0x42b47d, the
# server browser "Available net games" plus the "waiting for the server" screen).  Each function is
# replaced by a UI-free session start in src/asm/session_host.s / session_join.s, assembled into the same
# address range; the rest of the range is padded (.org) so everything after it keeps its address.
def _REPLACE(name, end):
    def lines(E):
        src = open(OUTDIR + "\\" + name, "rb").read().decode("utf8").replace(chr(13) + chr(10), chr(10)).split(chr(10))
        return [l for l in src if l.strip()] + ["    .org 0x%x - 0x401000, 0x90      # padding up to the next function" % end]
    return lines

# The Options screen lists 18 rows; rows 14 and 16 were the modem settings and "Set Default Network
# Protocol", which no longer exist (TCP is the only protocol).  The two rows are removed: their draw
# code becomes NOPs, the rows below move up, the row count drops from 18 to 16 and the two handler
# jump tables (Enter / Left-Right) are re-pointed.  The player's name is the game's own "Node Name"
# row.  Every replacement has exactly the size of the code it replaces:
#   original instruction sequences replaced by an equally long one (start -> (end, asm lines))
_NOPS = lambda n: ["    .fill %d, 1, 0x90" % n]
_LONGS = lambda *vas: (lambda E: ["    .long " + E.name(v) for v in vas])
PATCH_RANGES = {
    0x42b0ce: (0x42b47d, _REPLACE("session_host.s", 0x42b47d)),                       # Start Network Game
    0x42b47d: (0x42b9ce, _REPLACE("session_join.s", 0x42b9ce)),                       # Join Network Game
    # code that only the two old screens used (found by tools/deadcode.py): slot name accessors, the
    # "Network Packet Version" line.  Blanked in place so the addresses of everything else stay.
    0x40f191: (0x40f1bd, _NOPS(0x40f1bd - 0x40f191)),
    0x40f1e9: (0x40f243, _NOPS(0x40f243 - 0x40f1e9)),
    0x40fc44: (0x40fca1, _NOPS(0x40fca1 - 0x40fc44)),
    0x4080ea: (0x4080f1, ["    mov dword ptr [ebp - 4], 0x10"]),                    # row count 18 -> 16
    0x408772: (0x4087f0, _NOPS(0x4087f0 - 0x408772)),                                 # draw of the modem row (14)
    0x408821: (0x408824, ["    imul edx, eax, 0xe"]),                                 # keyboard layouts row 15 -> 14
    0x408856: (0x4088c1, _NOPS(0x4088c1 - 0x408856)),                                 # draw of the default-protocol row (16)
    0x408917: (0x40891a, ["    imul edx, eax, 0xf"]),                                 # memory model row 17 -> 15
    0x408aa3: (0x408ab7, _LONGS(0x408d11, 0x408d1f, 0x408d2b, 0x408d2b, 0x408d2b)),   # Enter handlers of rows 14..18
    0x408d6b: (0x408d7f, _LONGS(0x408fe3, 0x408ff1, 0x408ffd, 0x408ffd, 0x408ffd)),   # Left/Right handlers of rows 14..18
    # Main menu: "Online Manual" (item 5 of 0..6) is gone.  Exit moves up to item 5 (its text in
    # MAINMENU.PCX moves too, see tools/pack_assets.py): wrap-around limits, Esc target, handler table,
    # and F1, which used to select the manual, now only clicks.
    0x42bcc5: (0x42bcc9, ["    cmp dword ptr [ebp - 0x18], 5"]),
    0x42bce3: (0x42bcea, ["    mov dword ptr [ebp - 0x18], 5"]),
    0x42bd13: (0x42bd1a, ["    mov dword ptr [ebp - 0x18], 5"]),
    0x42bd2d: (0x42bd3b, _NOPS(14)),
    0x42bd9a: (0x42bd9e, _LONGS(0x42bdfa)),
    0x42bda2: (0x42bda6, ["    cmp dword ptr [ebp - 0x18], 5"]),
    # WM_ACTIVATEAPP: the game stopped drawing and paused when its window lost the focus (it used to own
    # the whole display).  A window may stay in the background - and a network host must keep running -
    # so the "deactivated" branch is never taken: the active flag is always set.
    # setup screen, Enter: in a network game (role 1 or 2) it locks the position; in a single-player game (role 0) it is what it
    # always was: the original code from 0x411b64 on (a short wait after the screen opened, then start)
    0x411b4b: (0x411b64, ["    call sub_0040c06a", "    test eax, eax", "    je loc_00411b64", "    call bm_setup_lock_key",
                          "    jmp loc_00411c93", "    .org 0x411b64 - 0x401000, 0x90"]),
    # closing the window: the game's own exit
    0x443e82: (0x443e87, ["    jmp bm_wm_misc"]),
    0x411580: (0x4116df, _NOPS(0x4116df - 0x411580)),                                  # controller setup screen: the "Available Joysticks" section is gone
    # Sending the level to the clients: the client asks for up to 16 missing pieces per round (was: one, and only in half of the
    # rounds), a round takes about 10 ms (was 100 ms), the 2 s wait before the first round and the 1 s waits shrink to 0.1 s.
    0x4261f4: (0x4261f8, ["    cmp dword ptr [ebp - 0xc], 0x10"]),
    0x4261f8: (0x4261fa, ["    jge loc_0042621c"]),
    0x42620f: (0x426211, _NOPS(2)),
    0x4259fe: (0x425a02, ["    cmp dword ptr [ebp - 0x28], 0x10"]),
    0x425a02: (0x425a04, ["    jge loc_00425a2b"]),
    0x425a19: (0x425a1b, _NOPS(2)),
    0x426111: (0x426116, ["    mov eax, 0x64"]),
    0x410e14: (0x410e19, ["    mov eax, 0x64"]),
    0x410c7a: (0x410c7e, ["    cmp dword ptr [ebp - 0x10], 1"]),
    0x43b54a: (0x43b552, ["    call bm_key_hook", "    .fill 3, 1, 0x90"]),                          # F12: full screen (keyboard hook)
    # Esc leaves a network game: the key loop of the match (sub_0042a3f6) took Esc only when d_00464938 was set (demo mode),
    # Enter shares that test and must stay as it is.  Esc now goes straight to the exit (loc_0042a56f, as Ctrl+Q always did).
    0x42a49c: (0x42a4a2, ["    .byte 0x0f, 0x86", "    .long loc_0042a56f - . - 4"]),
    0x41142b: (0x411430, ["    call bm_row_append"]),                                 # setup screen row: append the player name
    0x443ead: (0x443eb7, ["    call bm_activateapp", "    test eax, eax", "    je loc_00443ecd", "    nop"]),
}
# bytes of the initialised data changed on purpose (address -> new byte): the version shown in the menu, V1.0 -> V1.1
DATA_PATCHES = {0x45a980: ord("1"),
                0x45bfb4: 0, 0x45bfb8: 0, 0x45bfbc: 0, 0x45bfc0: 0}      # the "/-\|" waiting spinner of the removed join screen
# jump-table words that the disassembler took for instructions: emit them as data
FORCE_DATA = [(0x408d33, 0x408d7f)]


# ---------------------------------------------------------------------------------------------
# Session size: the game's network layer knew five participants (the host and four clients).  It now
# knows ten (the host and nine clients).  Every change keeps the size of the code it touches:
#   * the four per-participant tables move to arrays of the new size (src/asm/hooks.s, section .bss.hook);
#     the original, smaller arrays stay in place so the addresses of everything else do not move
#   * loop bounds 4 -> 9 (clients) and 5 -> 10 (participants)
#   * the message pool entry (0x1c bytes) held five "acknowledged by" flag bytes at +8; the flags now
#     sit behind the other fields at +0x1c (ten bytes) and the entry is 0x28 bytes long
#   * the participant-list message (count + ids) grows from 12 to 22 bytes, its buffer on the stack and
#     the copy in the receiving handler with it
NET_SYMBOLS = {"d_0045ffa4": "bm_net_ids",          # client id words, 4 -> 9
               "d_0045fffc": "bm_net_names",        # client name buffers, 4 -> 9
               "d_0045fecc": "bm_net_flags",        # client flags, 4 -> 9
               "d_00460130": "bm_net_part",         # participant id words, 5 -> 10
               "d_0046012e": "bm_net_part - 2"}     # the same table read as dwords (id in the high word)


def _cmp(var, old, new):
    return (r"^(    cmp dword ptr \[ebp - %s\], )%s$" % (var, old), r"\g<1>%s" % new)


CLIENT_LOOPS = [("loc_0040c5bf", "0x10"), ("loc_0040c7f2", "8"), ("loc_0040d1b6", "8"), ("loc_0040d1ee", "8"),
                ("loc_0040d325", "4"), ("loc_0040d7a5", "4"), ("loc_0040dea5", "4"), ("loc_0040ebdc", "4"),
                ("loc_0040ed47", "8"), ("loc_0040eec5", "0xc"), ("loc_0040f2a5", "4"), ("loc_0040f8a9", "4"),
                ("loc_0040f8fb", "8"), ("loc_0041027e", "0xc")]
PART_LOOPS = [("loc_0040c28c", "0xc"), ("loc_0040c3ae", "0xc"), ("loc_0040dd92", "4"), ("loc_0040e851", "0x1c"),
              ("loc_0040e876", "0x1c")]
# (anchor label, lines searched after it, regex, replacement)
ANCHOR_EDITS = [(l, 4) + _cmp(v, "4", "9") for l, v in CLIENT_LOOPS] + [(l, 4) + _cmp(v, "5", "0xa") for l, v in PART_LOOPS] + [
    ("sub_0040c74c", 40, r"^    mov edx, 5$", "    mov edx, 0xa"),                    # history tables: 10 participants
    ("sub_0040c74c", 40, r"^    mov eax, 0x1c$", "    mov eax, 0x28"),               # message pool entry size
    ("sub_0040ce27", 120, r"^    mov ebx, 5$", "    mov ebx, 0xa"),                  # clear ten flags ...
    ("sub_0040ce27", 120, r"^    add eax, 8$", "    add eax, 0x1c"),                 # ... which start at +0x1c
    ("sub_0040ed08", 12, r"# sub esp, 0x14", "# sub esp, 0x20"),
    ("sub_0040ed08", 12, r"^    \.byte 0x81,0xec,0x14,0x00,0x00,0x00$", "    .byte 0x81,0xec,0x20,0x00,0x00,0x00"),
    ("sub_0040ed08", 90, r"^    mov word ptr \[ebp - 0x14\], ax$", "    mov word ptr [ebp - 0x20], ax"),
    ("sub_0040ed08", 90, r"^    lea eax, \[ebp - 0x12\]$", "    lea eax, [ebp - 0x1e]"),
    ("sub_0040ed08", 90, r"^    lea edx, \[ebp - 0x14\]$", "    lea edx, [ebp - 0x20]"),
    ("sub_0040ed08", 90, r"^    mov ebx, 0xc$", "    mov ebx, 0x16"),
    ("ptr_0040d251", 80, r"^    mov ebx, 0xa$", "    mov ebx, 0x14"),
]
# (regex, replacement, expected number of lines)
GLOBAL_EDITS = [
    (r"^(    add dword ptr \[ebp - (?:0x[0-9a-f]+|\d)\], )0x1c$", r"\g<1>0x28", 7),         # next pool entry
    (r"^(    mov ebx, )0x1c$", r"\g<1>0x28", 1),                                      # clear a pool entry
    (r"^(    (?:cmp|mov) byte ptr \[eax \+ )8(\], [01])$", r"\g<1>0x1c\g<2>", 4),     # "acknowledged by" flag of a participant
]
RAW_EDITED = [(0x40ed10, 6)]      # the stack frame size of sub_0040ed08 sits in a raw (.byte) instruction


def apply_edits(E, files, info):
    """Apply the session-size edits to the emitted code; returns [(va, size)] of every instruction changed."""
    L = files[0]
    touched = set()

    def mark(idx):
        va = info.get((0, idx + 1))
        assert va is not None, "edit on a line without an address: %s" % L[idx]
        touched.add(va)
    pat = re.compile(r"\b(" + "|".join(NET_SYMBOLS) + r")\b")
    for idx, ln in enumerate(L):
        if ln.endswith(":\n") or ln.lstrip().startswith("#"):
            continue
        new = pat.sub(lambda m: NET_SYMBOLS[m.group(1)], ln)
        if new != ln:
            L[idx] = new
            mark(idx)
    for rx, rep, count in GLOBAL_EDITS:
        n = 0
        for idx, ln in enumerate(L):
            body = ln.rstrip("\n")
            new = re.sub(rx, rep, body)
            if new != body:
                L[idx] = new + "\n"
                n += 1
                mark(idx)
        assert n == count, "edit %s changed %d lines, expected %d" % (rx, n, count)
    for label, window, rx, rep in ANCHOR_EDITS:
        lab = label + ":"
        start = next((i for i, ln in enumerate(L) if ln.rstrip("\n") == lab), None)
        assert start is not None, "label not found: " + lab
        for idx in range(start + 1, min(start + 1 + window, len(L))):
            body = L[idx].rstrip("\n")
            new = re.sub(rx, rep, body)
            if new != body:
                L[idx] = new + "\n"
                if not body.lstrip().startswith(("#", ".byte")):
                    mark(idx)
                break
        else:
            raise AssertionError("edit not found after %s: %s" % (label, rx))
    left = [ln for ln in L if pat.search(ln) and not ln.endswith(":\n")]
    assert not left, "old network tables still referenced: %r" % left[:3]
    return sorted((va, E.insns[va]["size"]) for va in touched) + RAW_EDITED


class Emitter:
    def __init__(self, raw_set=None):
        self.im = Image(r"E:\PROJECTS\DESKTOP\AtomicBomberman\reference\BM95.EXE")
        d = pickle.load(open(ROOT + r"\tools\disasm.pkl", "rb"))
        self.insns = d["insns"]
        for lo_, hi_ in FORCE_DATA:
            for k_ in [x for x in self.insns if lo_ <= x < hi_]:
                del self.insns[k_]
        self.raw_set = raw_set or set()
        for va_, b_ in DATA_PATCHES.items():
            sec_ = self.im.section_of(va_)
            raw_ = bytearray(sec_["raw"]); raw_[va_ - sec_["va"]] = b_; sec_["raw"] = bytes(raw_)
        im = self.im
        self.code = im.sections[0]
        self.data = im.sections[1]
        self.bss = im.sections[2]
        self.idata = im.sections[3]
        self.lo, self.hi = self.code["va"], self.code["va"] + self.code["size"]
        self.starts = sorted(self.insns)
        self.owner = {}      # va inside an instruction (not its start) -> start
        for a, i in self.insns.items():
            for k in range(1, i["size"]):
                self.owner[a + k] = a
        self.collect_labels()

    # ---------------------------------------------------------------- labels
    def sec(self, va):
        s = self.im.section_of(va)
        return s["name"] if s else None

    def collect_labels(self):
        im = self.im
        self.call_t, self.jmp_t, self.ptr_t = set(), set(), set()
        for a, i in self.insns.items():
            if i["target"] is not None:
                (self.call_t if i["flow"] == "call" else self.jmp_t).add(i["target"])
        for r in im.relocs:
            v = im.u32(r)
            if v is not None and im.section_of(v):
                self.ptr_t.add(v)
            elif v is not None:
                # one-past-the-end of a section
                for s in im.sections:
                    if v == s["va"] + s["size"]:
                        self.ptr_t.add(v)
        self.ptr_t.add(im.entry)
        self.mid = {}  # label in the middle of an instruction -> (start, off)
        for v in sorted(self.call_t | self.jmp_t | self.ptr_t):
            if v in self.owner:
                self.mid[v] = (self.owner[v], v - self.owner[v])
        for st in set(x[0] for x in self.mid.values()):
            self.jmp_t.add(st)

    def name(self, va):
        im = self.im
        if va in im.imports:
            dll, fn = im.imports[va]
            if self.is_shim(dll, fn):
                return "iat_%08x" % va
            return "__imp__" + fn
        if va in self.mid:
            st, off = self.mid[va]
            return "%s+%d" % (self.name(st), off)
        s = self.sec(va)
        if s == "BEGTEXT" or (va == self.hi):
            if va in self.call_t or va == im.entry:
                return "sub_%08x" % va
            if va in self.jmp_t:
                return "loc_%08x" % va
            return "ptr_%08x" % va
        return "d_%08x" % va

    def has_label(self, va):
        return (va in self.call_t or va in self.jmp_t or va in self.ptr_t) and va not in self.mid

    # ------------------------------------------------------------ operands
    def fmt_insn(self, a):
        im = self.im
        i = self.insns[a]
        mn, ops = i["mn"], i["ops"]
        # relocated fields inside this instruction
        fields = []
        for kind, off, sz in (("imm", i["imm_off"], i["imm_size"]), ("disp", i["disp_off"], i["disp_size"])):
            if off is not None and sz == 4 and (a + off) in im.relocs:
                fields.append((kind, off, im.u32(a + off)))
        if i["target"] is not None:
            t = i["target"]
            tn = PATCH_SITES.get(a) or (PATCH_CALLS.get(t) if (t in PATCH_CALLS and i["flow"] == "call") else self.name(t))
            return "%s %s" % (mn, tn), fields, "rel"
        text = ops.replace("xword ptr", "tbyte ptr")
        for kind, off, v in fields:
            lit = "0x%x" % v
            if kind == "imm":
                rep = "offset " + self.name(v)
            else:
                rep = self.name(v)
            if lit in text:
                text = text.replace(lit, rep, 1)
            else:
                return None, fields, "bad"
        return ("%s %s" % (mn, text)).strip(), fields, "abs"

    def raw_insn(self, a):
        im = self.im
        i = self.insns[a]
        b = i["bytes"]
        out = []
        pos = 0
        if i["target"] is not None:
            # relative branch: opcode bytes then displacement
            dsz = i["size"] - (i["imm_off"] if i["imm_off"] is not None else i["size"] - 4)
            off = i["imm_off"]
            if off is None:
                off = i["size"] - 4
                dsz = 4
            else:
                dsz = i["imm_size"]
            if off:
                out.append(".byte " + ",".join("0x%02x" % x for x in b[:off]))
            tn = PATCH_SITES.get(a) or (PATCH_CALLS.get(i["target"]) if (i["target"] in PATCH_CALLS and i["flow"] == "call") else self.name(i["target"]))
            if dsz == 4:
                out.append(".long %s - . - 4" % tn)
            else:
                out.append(".byte %s - . - 1" % tn)
            return out
        spans = []
        for kind, off, sz in (("imm", i["imm_off"], i["imm_size"]), ("disp", i["disp_off"], i["disp_size"])):
            if off is not None and sz == 4 and (a + off) in im.relocs:
                spans.append((off, im.u32(a + off)))
        spans.sort()
        for off, v in spans:
            if off > pos:
                out.append(".byte " + ",".join("0x%02x" % x for x in b[pos:off]))
            out.append(".long " + self.name(v))
            pos = off + 4
        if pos < len(b):
            out.append(".byte " + ",".join("0x%02x" % x for x in b[pos:]))
        return out

    # --------------------------------------------------------------- output
    def emit_code(self):
        im = self.im
        files = {}
        linemap = []   # (file, line, va, expected bytes, wildcard spans)
        a = self.lo
        cur_chunk = None
        buf = None
        lineno = 0
        info = {}

        def new_chunk(c):
            return ["    .text\n"]
        gaps = []
        while a < self.hi:
            c = (a - self.lo) // CHUNK
            if c not in files:
                files[c] = ["# code 0x%08x - 0x%08x\n" % (self.lo + c * CHUNK, self.lo + (c + 1) * CHUNK), "    .intel_syntax noprefix\n", "    .text\n"]
            L = files[c]
            if a in PATCH_RANGES:
                end, lines = PATCH_RANGES[a]
                if self.has_label(a):
                    L.append("%s:\n" % self.name(a))
                L.append('    # --- patched: original code of 0x%08x..0x%08x replaced (see hooks.s)\n' % (a, end))
                for ln in (lines(self) if callable(lines) else lines):
                    L.append(ln + '\n')
                APPLIED.add(a)
                a = end
                continue
            if a in self.insns:
                i = self.insns[a]
                if self.has_label(a):
                    L.append("%s:\n" % self.name(a))
                if i['target'] is not None and i['flow'] in ('jmp', 'jcc') and self.lo <= i['target'] < self.hi \
                        and (i['target'] - self.lo) // CHUNK != (a - self.lo) // CHUNK:
                    self.raw_set.add(a)   # cross-chunk branch: keep original encoding
                if a in self.raw_set:
                    L.append("    # %s %s\n" % (i["mn"], i["ops"]))
                    for line in self.raw_insn(a):
                        L.append("    " + line + "\n")
                    info[(c, len(L))] = None
                else:
                    text, fields, kind = self.fmt_insn(a)
                    if text is None:
                        L.append("    # %s %s\n" % (i["mn"], i["ops"]))
                        for line in self.raw_insn(a):
                            L.append("    " + line + "\n")
                        self.raw_set.add(a)
                    else:
                        L.append("    %s\n" % text)
                        info[(c, len(L))] = a
                a += i["size"]
            else:
                # data run inside the code section
                end = a
                while end < self.hi and end not in self.insns and (end == a or not self.has_label(end)) and (end - a) < 16 and ((end // CHUNK) == (a // CHUNK) or True):
                    if end > a and (end in im.relocs):
                        break
                    end += 1
                if self.has_label(a):
                    L.append("%s:\n" % self.name(a))
                if a in im.relocs and a + 4 <= self.hi and im.u32(a) is not None and (im.section_of(im.u32(a)) or im.u32(a) in (s["va"] + s["size"] for s in im.sections)):
                    L.append("    .long %s\n" % self.name(im.u32(a)))
                    a += 4
                    continue
                end = max(end, a + 1)
                # stop at relocation or label inside
                e = a + 1
                while e < end and not self.has_label(e) and e not in im.relocs:
                    e += 1
                raw = im.read(a, e - a)
                L.append("    .byte " + ",".join("0x%02x" % x for x in raw) + "\n")
                a = e
        return files, info

    def emit_data(self):
        im = self.im
        out = ["    .intel_syntax noprefix\n", "    .data\n"]
        s = self.data
        a, end = s["va"], s["va"] + s["size"]
        while a < end:
            if self.has_label(a):
                out.append("%s:\n" % self.name(a))
            if a in im.relocs and im.u32(a) is not None and (im.section_of(im.u32(a)) or any(im.u32(a) == t["va"] + t["size"] for t in im.sections)):
                out.append("    .long %s\n" % self.name(im.u32(a)))
                a += 4
                continue
            # printable run?
            e = a
            while e < end and 0x20 <= im.read(e, 1)[0] < 0x7f and not (e > a and (self.has_label(e) or e in im.relocs)):
                e += 1
            if e - a >= 4:
                txt = im.read(a, e - a).decode("latin1").replace("\\", "\\\\").replace('"', '\\"')
                out.append('    .ascii "%s"\n' % txt)
                a = e
                continue
            e = a + 1
            while e < end and e - a < 16 and not self.has_label(e) and e not in im.relocs:
                e += 1
            out.append("    .byte " + ",".join("0x%02x" % x for x in im.read(a, e - a)) + "\n")
            a = e
        return out

    def emit_bss(self):
        out = ["    .intel_syntax noprefix\n", "    .bss\n"]
        s = self.bss
        a, end = s["va"], s["va"] + s["size"]
        pts = sorted(v for v in self.ptr_t | self.call_t | self.jmp_t if a <= v < end)
        prev = a
        for v in pts + [end]:
            if v > prev:
                out.append("    .space %d\n" % (v - prev))
            if v < end:
                out.append("%s:\n" % self.name(v))
            prev = v
        out.append("d_end_bss:\n")
        return out

    SHIMMED = tuple(x for x in os.environ.get("BM_SHIMS", "WSOCK32,DDRAW").split(",") if x and x != "none")
    FILE_HOOKS = tuple(x for x in os.environ.get("BM_FILEHOOKS", "CreateFileA,ReadFile,SetFilePointer,CloseHandle,GetFileType,GetFileAttributesA,FindFirstFileA,FindNextFileA,FindClose,ShowCursor,SetCursor,CreateMutexA").split(",") if x)

    def is_shim(self, dll, fn):
        return dll.split(".")[0].upper() in self.SHIMMED or fn in self.FILE_HOOKS

    def emit_iat(self):
        """One cell per original import slot.  Shimmed DLLs resolve to our own bm_* functions
        (src/platform), everything else to the real Windows import library thunks."""
        out = ["    .intel_syntax noprefix\n", "    .data\n"]
        for va, (dll, fn) in sorted(self.im.imports.items()):
            if not self.is_shim(dll, fn):
                continue
            sym = "_bm_" + fn
            out.append("iat_%08x:  .long %s   # %s!%s\n" % (va, sym, dll, fn))
        return out


def main():
    raw_set = set()
    rawfile = OUTDIR + r"\raw.txt"
    if os.path.exists(rawfile):
        raw_set = set(int(x, 16) for x in open(rawfile).read().split())
    E = Emitter(raw_set)
    os.makedirs(OUTDIR, exist_ok=True)
    files, info = E.emit_code()
    edited = apply_edits(E, files, info)
    json.dump(edited, open(ROOT + r"\tools\edited.json", "w"))      # build.py masks these bytes in --check
    missing = [hex(x) for x in PATCH_RANGES if x not in APPLIED]
    assert not missing, "patch ranges not on an instruction/data boundary: %s" % missing
    names = []
    for c, L in sorted(files.items()):
        fn = "text_%08x.s" % (E.lo + c * CHUNK)
        names.append(fn)
        open(OUTDIR + "\\" + fn, "w", newline="\n").write("".join(L))
    open(OUTDIR + r"\data.s", "w", newline="\n").write("".join(E.emit_data()))
    open(OUTDIR + r"\bss.s", "w", newline="\n").write("".join(E.emit_bss()))
    open(OUTDIR + r"\iat.s", "w", newline="\n").write("".join(E.emit_iat()))
    with open(OUTDIR + r"\main.s", "w", newline="\n") as f:
        f.write("    .intel_syntax noprefix\n")
        for fn in names:
            f.write('    .include "%s"\n' % fn)
        for fn in ("data.s", "bss.s", "iat.s", "hooks.s"):
            f.write('    .include "%s"\n' % fn)
        f.write("    .globl _bm_entry\n    .set _bm_entry, sub_%08x\n" % E.im.entry)
    open(rawfile, "w").write("\n".join("%08x" % x for x in sorted(E.raw_set)))
    # line -> va map for the verifier
    pickle.dump({k: v for k, v in info.items() if v is not None}, open(ROOT + r"\tools\linemap.pkl", "wb"))
    print("files", len(names), "raw", len(E.raw_set), "mid-labels", len(E.mid))


if __name__ == "__main__":
    main()
