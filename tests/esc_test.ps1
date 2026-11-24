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
$map = @{ ENTER = @(0x0D, 0x1C, $false); DOWN = @(0x28, 0xD0, $true); UP = @(0x26, 0xC8, $true); ESC = @(0x1B, 0x01, $false) }
function Press($p, $keys) { foreach ($k in ($keys -split ",")) { [WinList]::Focus($p.Id); Start-Sleep -Milliseconds 400; $m = $map[$k]; [WinList]::Key([byte]$m[0], [byte]$m[1], [bool]$m[2]); Start-Sleep 1 } }
function Launch($name, $boot) {
    $env:BM_LOG = "$Dir\$name.log"; $env:BM_SHOT = "$Dir\$name.bmp"
    Remove-Item $env:BM_LOG, $env:BM_SHOT -ErrorAction SilentlyContinue
    $p = Start-Process "$Dir\AtomicBomberman.exe" -ArgumentList "-skipintro" -WorkingDirectory $Dir -PassThru
    Start-Sleep $boot; return $p
}
function Snap($name, $tag) { Start-Sleep 2; Copy-Item "$Dir\$name.bmp" "E:\PROJECTS\DESKTOP\AtomicBomberman\build\lobby_${tag}_$name.bmp" -Force -ErrorAction SilentlyContinue }
$env:BM_MULTI = "1"
$h = Launch "esc_host" 14;   Press $h "DOWN,ENTER"                 # Start Network Game
$c = Launch "esc_client" 14; Press $c "DOWN,DOWN,ENTER"; Press $c "DOWN,DOWN,ENTER"    # Join Network Game, Join
Press $c "ENTER"                                              # Start Game
Start-Sleep 16
Snap "esc_host" "1_planner"; Snap "esc_client" "1_planner"
Press $c "ESC"; Start-Sleep 6                                  # the client leaves the planner with Esc
Snap "esc_client" "2_after_esc"; Snap "esc_host" "2_after_esc"
Stop-Process -Id $c.Id, $h.Id -Force -ErrorAction SilentlyContinue
Remove-Item Env:BM_LOG, Env:BM_SHOT, Env:BM_MULTI -ErrorAction SilentlyContinue
foreach ($n in "esc_client", "esc_host") { "--- $n"; Get-Content "$Dir\$n.log" | Select-String "dbg:|net: (session|WSACleanup|the |last|connection|client node)" | Select-Object -Last 8 | ForEach-Object { $_.Line } }
