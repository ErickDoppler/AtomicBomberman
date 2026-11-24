import sys, pickle
sys.path.insert(0, r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools")
from pe_load import Image
import capstone as cs
im = Image(r"E:\PROJECTS\DESKTOP\AtomicBomberman\reference\BM95.EXE")
d = pickle.load(open(r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools\disasm.pkl", "rb"))
a = int(sys.argv[1], 16); n = int(sys.argv[2])
mode = sys.argv[3] if len(sys.argv) > 3 else "code"
if mode == "hex":
    raw = im.read(a, n)
    for o in range(0, n, 16):
        row = raw[o:o+16]
        print("%08x " % (a+o) + " ".join("%02x" % b for b in row) + "  " + "".join(chr(b) if 32 <= b < 127 else "." for b in row))
else:
    md = cs.Cs(cs.CS_ARCH_X86, cs.CS_MODE_32); md.syntax = cs.CS_OPT_SYNTAX_INTEL
    raw = im.read(a, n)
    for i in md.disasm(raw, a):
        mark = "*" if i.address in d["insns"] else " "
        r = "R" if any(x in im.relocs for x in range(i.address, i.address+i.size)) else " "
        print("%s%s %08x  %-24s %s %s" % (mark, r, i.address, i.bytes.hex(), i.mnemonic, i.op_str))
