"""Build AtomicBomberman.exe: restored assembly + modern platform layer.

   python tools/build.py            -> build/AtomicBomberman.exe
   python tools/build.py --check    -> link the asm with empty shim stubs and diff .text/.data
                                       against the original BM95.EXE (must be 0 / 0)
Set BM_SHIMS=none to link the asm directly against the real DirectX/Winsock DLLs.
"""
import sys, os, subprocess, glob
sys.path.insert(0, r"E:\PROJECTS\DESKTOP\AtomicBomberman\tools")
from pe_load import Image

ROOT = r"E:\PROJECTS\DESKTOP\AtomicBomberman"
BIN = r"C:\workenv\w64devkit\bin"
ENV = dict(os.environ, PATH=BIN + ";" + os.environ["PATH"])
BUILD = ROOT + r"\build"
SHIMMED = tuple(x for x in os.environ.get("BM_SHIMS", "WSOCK32,DDRAW").split(",") if x and x != "none")
# kernel32 entry points replaced by the virtual file system (src/platform/vfs.c)
FILE_HOOKS = tuple(x for x in os.environ.get("BM_FILEHOOKS", "CreateFileA,ReadFile,SetFilePointer,CloseHandle,GetFileType,GetFileAttributesA,FindFirstFileA,FindNextFileA,FindClose,ShowCursor,SetCursor,CreateMutexA").split(",") if x)
EXE = r"E:\PROJECTS\DESKTOP\AtomicBomberman\reference\BM95.EXE"
CFLAGS = ["-m32", "-O2", "-Wall", "-ffreestanding", "-fno-builtin", "-fno-stack-protector", "-fno-asynchronous-unwind-tables",
          "-fno-unwind-tables", "-fno-tree-loop-distribute-patterns", "-mgeneral-regs-only", "-mincoming-stack-boundary=2",
          "-fno-ident", "-fno-pic", "-fno-plt", "-I" + ROOT + r"\src\platform"]


def run(args, **kw):
    r = subprocess.run(args, capture_output=True, text=True, env=ENV, **kw)
    if r.returncode:
        print(" ".join(args)[:300]); print(r.stdout[-2000:]); print(r.stderr[-4000:])
        sys.exit(1)
    if r.stderr.strip():
        print(r.stderr[-3000:])
    return r


def is_shim(dll, fn):
    return dll.split(".")[0].upper() in SHIMMED or fn in FILE_HOOKS


def make_implibs(im):
    """Import libraries with undecorated names: __imp__Name is the game's own IAT slot."""
    by = {}
    for va, (dll, fn) in im.imports.items():
        by.setdefault(dll.split(".")[0].upper(), set()).add(fn)
    libs = []
    for d, names in sorted(by.items()):
        if d in SHIMMED:
            continue
        deff = BUILD + "\\%s.def" % d
        open(deff, "w").write("LIBRARY %s.dll\nEXPORTS\n" % d + "\n".join(sorted(names)) + "\n")
        lib = BUILD + "\\lib%s_bm.a" % d
        run([BIN + r"\dlltool.exe", "-m", "i386", "--as-flags=--32", "-k", "-d", deff, "-l", lib])
        libs.append(lib)
    return libs


def stub_shims(im):
    out = set()
    for va, (dll, fn) in sorted(im.imports.items()):
        if is_shim(dll, fn):
            out.add("    .globl _bm_%s\n    .set _bm_%s, 0\n" % (fn, fn))
    for sym in ("bm_role_hook", "bm_skip_intro", "bm_expected_clients", "bm_slot_kind", "bm_row_cat", "bm_setup_lock", "bm_setup_all_locked", "bm_setup_unlock_all", "bm_fuse", "bm_fuse_tripped", "bm_session_lobby", "bm_lobby_cancelled", "bm_dbg_flag", "bm_dbg_key", "bm_dbg_ret", "bm_sleep_ms", "bm_toggle_fullscreen", "bm_intro_done", "bm_game_role", "bm_is_game_server", "bm_is_dedicated_session"):        # C symbols that src/asm/hooks.s refers to
        out.add("    .globl _%s\n    .set _%s, 0\n" % (sym, sym))
    p = BUILD + r"\shim_stub.s"
    open(p, "w").write("    .intel_syntax noprefix\n" + "".join(sorted(out)))
    return p


def main():
    check = "--check" in sys.argv
    os.makedirs(BUILD + r"\shim", exist_ok=True)
    im = Image(EXE)
    libs = make_implibs(im)
    objs = [BUILD + r"\bm_main.o"]
    run([BIN + r"\as.exe", "--32", "-I", ROOT + r"\src\asm", "-o", BUILD + r"\bm_main.o", ROOT + r"\src\asm\main.s"])
    entry = "_bm_entry"
    if check:
        stub = stub_shims(im)
        run([BIN + r"\as.exe", "--32", "-o", BUILD + r"\shim_stub.o", stub])
        objs.append(BUILD + r"\shim_stub.o")
    else:
        entry = "_bm_start"
        for c in sorted(glob.glob(ROOT + r"\src\platform\*.c")):
            o = BUILD + "\\shim\\" + os.path.basename(c)[:-2] + ".o"
            run([BIN + r"\gcc.exe"] + CFLAGS + ["-c", c, "-o", o])
            objs.append(o)
        res = BUILD + r"\bm95_res.o"
        run([BIN + r"\windres.exe", "-F", "pe-i386", "-I", ROOT + r"\src\res", "-i", ROOT + r"\src\res\bm95.rc", "-o", res])
        objs.append(res)
    out = BUILD + (r"\bm95_check.exe" if check else r"\AtomicBomberman.exe")
    ldscript = open(ROOT + r"\src\link.ld").read().replace("@ENTRY@", entry)
    open(BUILD + r"\link.ld", "w").write(ldscript)
    run([BIN + r"\ld.exe", "-m", "i386pe", "--subsystem", "windows:4.0", "-T", BUILD + r"\link.ld",
         "--image-base", "0x400000", "--stack", "0x100000,0x10000", "--disable-reloc-section", "--no-seh",
         "--disable-runtime-pseudo-reloc", "-o", out] + objs + libs)
    print("linked", out, os.path.getsize(out))
    if check:
        compare(im, out)


def compare(im, out):
    new = Image(out)
    for name in ("BEGTEXT", "DGROUP"):
        a = im.sections[0] if name == "BEGTEXT" else im.sections[1]
        n = a["size"]
        orig, got = im.read(a["va"], n), new.read(a["va"], n)
        mask = bytearray([1]) * n
        for r in im.relocs:
            if a["va"] <= r < a["va"] + n:
                s = im.section_of(im.u32(r))
                if s and s["name"] == ".idata":
                    for k in range(4):
                        if r - a["va"] + k < n:
                            mask[r - a["va"] + k] = 0
        if name == "BEGTEXT":
            import pickle
            ins = pickle.load(open(ROOT + r"\tools\disasm.pkl", "rb"))["insns"]
            for a2, i2 in ins.items():          # deliberate patches: calls redirected to src/asm/hooks.s
                if (i2["flow"] == "call" and i2["target"] in (0x40c839, 0x42b060, 0x40ea1e)):
                    for k in range(1, 5): mask[a2 - a["va"] + k] = 0
        if name == "BEGTEXT":
            # the patched Options screen: row count, removed rows, moved rows, handler jump tables
            for lo2, hi2 in ((0x4080ea, 0x4080f1), (0x408772, 0x4087f0), (0x408821, 0x408824), (0x408856, 0x4088c1),
                             (0x408917, 0x40891a), (0x408aa3, 0x408ab7), (0x408d6b, 0x408d7f), (0x443ead, 0x443eb7),
                             (0x42b0ce, 0x42b9ce), (0x40f191, 0x40f1bd), (0x40f1e9, 0x40f243), (0x40fc44, 0x40fca1), (0x42bcc5, 0x42bcc9), (0x42bce3, 0x42bcea), (0x42bd13, 0x42bd1a), (0x42bd2d, 0x42bd3b), (0x42bd9a, 0x42bd9e), (0x42bda2, 0x42bda6), (0x41142b, 0x411430), (0x42a49c, 0x42a4a2), (0x43b54a, 0x43b552), (0x4261f4, 0x4261fa), (0x42620f, 0x426211), (0x4259fe, 0x425a04), (0x425a19, 0x425a1b), (0x426111, 0x426116), (0x410e14, 0x410e19), (0x410c7a, 0x410c7e), (0x425999, 0x42599d), (0x42619e, 0x4261a2), (0x410d8f, 0x410d93), (0x411580, 0x4116df), (0x411b4b, 0x411b64), (0x443e82, 0x443e87), (0x41170a, 0x41170e), (0x411035, 0x411039), (0x41111a, 0x41111e)):
                for va2 in range(lo2, hi2): mask[va2 - a["va"]] = 0
        if name == "BEGTEXT":
            import json                                   # the session-size edits (tools/emit.py apply_edits)
            for va4, sz4 in json.load(open(ROOT + r"\tools\edited.json")):
                for k in range(sz4): mask[va4 - a["va"] + k] = 0
        if name == "DGROUP":
            mask[0x45a980 - a["va"]] = 0                    # version string V1.1
            for va3 in (0x45bfb4, 0x45bfb8, 0x45bfbc, 0x45bfc0): mask[va3 - a["va"]] = 0    # removed spinner table
        diff = [k for k in range(n) if mask[k] and orig[k] != got[k]]
        print(name, "size", n, "differing bytes:", len(diff))
        for k in diff[:10]:
            print("   %08x orig %02x new %02x" % (a["va"] + k, orig[k], got[k]))


if __name__ == "__main__":
    main()
