import os, subprocess, sys
ROOT = r"E:\PROJECTS\DESKTOP\AtomicBomberman"
BIN = r"C:\workenv\w64devkit\bin"
env = dict(os.environ, PATH=BIN + ";" + os.environ["PATH"])
B = ROOT + r"\build\nettest"
os.makedirs(B, exist_ok=True)
CF = ["-m32", "-O2", "-Wall", "-ffreestanding", "-fno-builtin", "-fno-stack-protector", "-fno-asynchronous-unwind-tables",
      "-fno-tree-loop-distribute-patterns", "-mgeneral-regs-only", "-mincoming-stack-boundary=2", "-I" + ROOT + r"\src\platform"]
def run(a):
    r = subprocess.run(a, capture_output=True, text=True, env=env)
    if r.returncode or r.stderr.strip():
        print(r.stdout, r.stderr)
    if r.returncode: sys.exit(1)
objs = []
for src in (ROOT + r"\src\platform\rt.c", ROOT + r"\src\platform\net.c", ROOT + r"\tests\nettest.c"):
    o = B + "\\" + os.path.basename(src)[:-2] + ".o"
    run([BIN + r"\gcc.exe"] + CF + ["-c", src, "-o", o]); objs.append(o)
open(B + r"\k32.def", "w").write("LIBRARY KERNEL32.dll\nEXPORTS\nExitProcess\nGetCommandLineA\nSleep\nGetTickCount\nLoadLibraryA\nGetProcAddress\n")
run([BIN + r"\dlltool.exe", "-m", "i386", "--as-flags=--32", "-k", "-d", B + r"\k32.def", "-l", B + r"\libk32.a"])
run([BIN + r"\ld.exe", "-m", "i386pe", "--subsystem", "console", "-e", "_nt_main", "-o", B + r"\nettest.exe"] + objs + [B + r"\libk32.a"])
print("built", B + r"\nettest.exe")
