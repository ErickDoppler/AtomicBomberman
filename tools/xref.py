"""List call sites of selected imports: python xref.py Name [Name...]"""
import sys, pickle
sys.path.insert(0, r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools")
from pe_load import Image
im = Image(r"E:\PROJECTS\DESKTOP\AtomicBomberman\reference\BM95.EXE")
d = pickle.load(open(r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools\disasm.pkl", "rb"))["insns"]
want = set(sys.argv[1:])
slots = {va: fn for va, (dll, fn) in im.imports.items() if fn in want}
for a, i in sorted(d.items()):
    for off, sz in ((i["imm_off"], i["imm_size"]), (i["disp_off"], i["disp_size"])):
        if off is not None and sz == 4 and (a + off) in im.relocs:
            v = im.u32(a + off)
            if v in slots:
                print("%08x  %s %s   [%s]" % (a, i["mn"], i["ops"], slots[v]))
