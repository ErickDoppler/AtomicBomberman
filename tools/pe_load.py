"""Load BM95.EXE into a flat memory image with relocation and import maps."""
import pefile


class Image:
    def __init__(self, path):
        pe = pefile.PE(path)
        self.pe = pe
        self.base = pe.OPTIONAL_HEADER.ImageBase
        self.entry = self.base + pe.OPTIONAL_HEADER.AddressOfEntryPoint
        self.sections = []
        top = 0
        for s in pe.sections:
            name = s.Name.rstrip(b"\0").decode()
            va = self.base + s.VirtualAddress
            raw = s.get_data()
            # Watcom-style header: VirtualSize is 0, use raw size; .bss has no raw data.
            size = max(s.Misc_VirtualSize, s.SizeOfRawData)
            self.sections.append(dict(name=name, va=va, size=size, raw=raw,
                                      flags=s.Characteristics, rawsize=s.SizeOfRawData))
            top = max(top, va + size)
        # .bss in this file: size inferred from the raw-size field (0x48200)
        self.mem = {}
        self.relocs = set()
        for d in getattr(pe, 'DIRECTORY_ENTRY_BASERELOC', []):
            for e in d.entries:
                if e.type == 3:
                    self.relocs.add(self.base + e.rva)
        self.imports = {}  # IAT slot VA -> (dll, name)
        for d in pe.DIRECTORY_ENTRY_IMPORT:
            for i in d.imports:
                self.imports[i.address] = (d.dll.decode(), i.name.decode() if i.name else "#%d" % i.ordinal)

    def section_of(self, va):
        for s in self.sections:
            if s["va"] <= va < s["va"] + s["size"]:
                return s
        return None

    def read(self, va, n):
        s = self.section_of(va)
        if not s:
            return None
        off = va - s["va"]
        d = s["raw"][off:off + n]
        if len(d) < n and off + len(d) >= s["rawsize"]:
            d = d + b"\0" * (n - len(d))  # zero-fill tail
        return d

    def u32(self, va):
        d = self.read(va, 4)
        return int.from_bytes(d, "little") if d and len(d) == 4 else None
