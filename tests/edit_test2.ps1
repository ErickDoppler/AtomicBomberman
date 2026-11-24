# Two game instances on one computer (BM_MULTI=1): host lobby, client join screen, Join, then Start
# pressed on the client.  Writes build\lobby_*.bmp frames and prints the net trace of both sides.
#   lobby_test.ps1 [-StartFrom client|host]
param([string]$StartFrom = "client", [string]$Dir = "E:\PROJECTS\DESKTOP\AtomicBomberman\dist")
Add-Type @"
using System; using System.Text; using System.Runtime.InteropServices; using System.Collections.Generic;
public class WinList {
  public delegate bool EnumProc(IntPtr h, IntPtr l);
  [DllImport("user32.dll")] static extern bool EnumWindows(EnumProc p, IntPtr l);
  [DllImport("user32.dll")] static extern uint GetWindowThreadProcessId(IntPtr h, out uint pid);
  [DllImport("user32.dll")] static extern bool IsWindowVisible(IntPtr h);
  [DllImport("user32.dll")] static extern bool SetForegroundWindow(IntPtr h);
  [DllImport("user32.dll")] static extern IntPtr GetForegroundWindow();
  [DllImport("user32.dll")] static extern bool AttachThreadInput(uint a, uint b, bool attach);
  [DllImport("kernel32.dll")] static extern uint GetCurrentThreadId();
  [DllImport("user32.dll")] static extern void keybd_event(byte vk, byte scan, uint flags, UIntPtr extra);
  public static void Focus(uint pid) { EnumWindows((h, l) => { uint p; GetWindowThreadProcessId(h, out p); if (p == pid && IsWindowVisible(h)) { uint me = GetCurrentThreadId(); uint fgp; uint fgt = GetWindowThreadProcessId(GetForegroundWindow(), out fgp); AttachThreadInput(me, fgt, true); SetForegroundWindow(h); AttachThreadInput(me, fgt, false); return false; } return true; }, IntPtr.Zero); }
  public static void Key(byte vk, byte scan, bool ext) { uint f = ext ? 1u : 0u; keybd_event(vk, scan, f, UIntPtr.Zero); System.Threading.Thread.Sleep(120); keybd_event(vk, scan, f | 2u, UIntPtr.Zero); }
}
"@
$map = @{ ENTER = @(0x0D, 0x1C, $false); DOWN = @(0x28, 0xD0, $true); UP = @(0x26, 0xC8, $true); ESC = @(0x1B, 0x01, $false); ONE = @(0x31, 0x02, $false); TWO = @(0x32, 0x03, $false); DOT = @(0xBE, 0x34, $false); BKSP = @(0x08, 0x0E, $false) }
function Press($p, $keys) { foreach ($k in ($keys -split ",")) { [WinList]::Focus($p.Id); Start-Sleep -Milliseconds 400; $m = $map[$k]; [WinList]::Key([byte]$m[0], [byte]$m[1], [bool]$m[2]); Start-Sleep 1 } }
function Launch($name, $boot) {
    $env:BM_LOG = "$Dir\$name.log"; $env:BM_SHOT = "$Dir\$name.bmp"
    Remove-Item $env:BM_LOG, $env:BM_SHOT -ErrorAction SilentlyContinue
    $p = Start-Process "$Dir\AtomicBomberman.exe" -ArgumentList "-skipintro" -WorkingDirectory $Dir -PassThru
    Start-Sleep $boot; return $p
}
function Snap($name, $tag) { Start-Sleep 2; Copy-Item "$Dir\$name.bmp" "E:\PROJECTS\DESKTOP\AtomicBomberman\build\lobby_${tag}_$name.bmp" -Force -ErrorAction SilentlyContinue }
Remove-Item "$Dir\DATA\BM95NET.INI" -ErrorAction SilentlyContinue
$env:BM_MULTI = "1"
$c = Launch "ed_client" 14
Snap "ed_client" "0_menu"
Press $c "DOWN,DOWN,ENTER"                 # Join Network Game
Snap "ed_client" "1_join_screen"
Press $c "ENTER"                            # server address row
Snap "ed_client" "2_prompt"
Press $c "ONE,DOT,TWO"
Snap "ed_client" "3_typed"
Press $c "ENTER"
Snap "ed_client" "4_after_enter"
Stop-Process -Id $c.Id -Force -ErrorAction SilentlyContinue
Remove-Item Env:BM_LOG, Env:BM_SHOT, Env:BM_MULTI -ErrorAction SilentlyContinue
"--- log"; Get-Content "$Dir\ed_client.log" | Select-String "dbg:|vfs: open .* failed|ui:|net:" | Select-Object -First 15 | ForEach-Object { $_.Line }
