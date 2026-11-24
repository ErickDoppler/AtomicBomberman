import sys, pickle, re
sys.path.insert(0, r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools")
from pe_load import Image
im = Image(r"E:\PROJECTS\DESKTOP\AtomicBomberman\reference\BM95.EXE")
d = pickle.load(open(r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools\disasm.pkl", "rb"))["insns"]
lo, hi = 0x401000, 0x458000
REM = (0x42b0ce, 0x42b9ce)
inrem = lambda a: REM[0] <= a < REM[1]
inside_insn = set()
for a, i in d.items():
    for k in range(i["size"]): inside_insn.add(a + k)
roots = {im.entry}
for r in im.relocs:
    v = im.u32(r)
    if v is None or not (lo <= v < hi) or v not in d: continue
    if r in inside_insn: continue          # operand of an instruction: counts once that instruction is live
    if inrem(r): continue
    roots.add(v)
# the main-menu jump table at 0x42bd86 and the options tables are tables in code: already included (not inside insns)
def closure(drop, extra):
    live = set(); rts = set(roots) | set(extra); prev = -1
    while len(live) != prev:
        prev = len(live)
        work = list(rts); 
        while work:
            a = work.pop()
            while a in d and a not in live and not drop(a):
                live.add(a); i = d[a]
                if i["target"] is not None and i["target"] in d and not drop(i["target"]): work.append(i["target"])
                for off, sz in ((i["imm_off"], i["imm_size"]), (i["disp_off"], i["disp_size"])):
                    if off is not None and sz == 4 and (a + off) in im.relocs:
                        v = im.u32(a + off)
                        if v in d and not drop(v): rts.add(v)
                if i["flow"] in ("ret", "jmp", "jmpi", "stop"): break
                a += i["size"]
    return live
extra = set()
for f in ("session_host.s", "session_join.s", "hooks.s"):
    txt = open(r"E:\PROJECTS\DESKTOP\AtomicBomberman\src\asm" + "\\" + f, encoding="utf8").read()
    for m in re.finditer(r"\b(sub|loc|ptr)_([0-9a-f]{8})\b", txt): extra.add(int(m.group(2), 16))
before = closure(lambda a: False, set())
after = closure(inrem, extra)
dead = sorted(a for a in before if a not in after and not inrem(a))
print("live before", len(before), "after", len(after) , "newly dead outside the screens:", len(dead))
runs = []
for a in dead:
    if runs and runs[-1][1] == a: runs[-1][1] = a + d[a]["size"]
    else: runs.append([a, a + d[a]["size"]])
for s, e in runs: print("  dead %08x-%08x (%d bytes)" % (s, e, e - s))
