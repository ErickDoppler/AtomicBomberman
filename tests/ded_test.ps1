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
Get-Process | Where-Object { $_.Path -like "*AtomicBomberman*" } | Stop-Process -Force
Get-CimInstance Win32_Process -Filter "Name='python.exe'" | Where-Object { $_.CommandLine -like "*bm_server.py*" } | ForEach-Object { Stop-Process -Id $_.ProcessId -Force }
Remove-Item "$Dir\DATA\BM95NET.INI" -ErrorAction SilentlyContinue
$env:BM_MULTI = "1"
$py = "C:\Users\Administrator\AppData\Local\Programs\Python\Python312\python.exe"
$srvdir = "E:\PROJECTS\DESKTOP\AtomicBomberman\DedicatedServer"
$ini = "$env:TEMP\ded_test_server.ini"
"[server]`nname = test`nport = 5000`nbind = 127.0.0.1`nmax_players = 10`nfuse_seconds = 4`nlog_file = $env:TEMP\ded_test_server.log`n" | Set-Content $ini
Remove-Item "$env:TEMP\ded_test_server.log" -ErrorAction SilentlyContinue
$saveHome = $env:PYTHONHOME; $env:PYTHONHOME = $null
$srv = Start-Process $py -ArgumentList "`"$srvdir\bm_server.py`"", "--ini", "`"$ini`"" -PassThru -WindowStyle Hidden
$env:PYTHONHOME = $saveHome
Start-Sleep 2
$a = Launch "ded_a" 14;  Press $a "DOWN,DOWN,ENTER"; Press $a "DOWN,DOWN,ENTER"
$b = Launch "ded_b" 14;  Press $b "DOWN,DOWN,ENTER"; Press $b "DOWN,DOWN,ENTER"
Snap "ded_a" "1_lobby"; Snap "ded_b" "1_lobby"
Press $b "ENTER"                                              # Start Game
Start-Sleep 16
Snap "ded_a" "2_planner"; Snap "ded_b" "2_planner"
Press $a "ENTER"; Start-Sleep 2; Press $b "ENTER"; Start-Sleep 14
Snap "ded_a" "3_after_lock"; Snap "ded_b" "3_after_lock"
"--- killing player B"
Stop-Process -Id $b.Id -Force
Start-Sleep 9
Snap "ded_a" "4_b_killed"
"--- server log"; Get-Content "$env:TEMP\ded_test_server.log" -ErrorAction SilentlyContinue
foreach ($n in "ded_a", "ded_b") { "--- $n"; Get-Content "$Dir\$n.log" | Select-String "net: (session|joined|node|the |last|WSA|client reader|connection)|dbg:|silent|dropped|lobby" | Select-Object -First 25 | ForEach-Object { $_.Line } }
Get-Process | Where-Object { $_.Path -like "*AtomicBomberman*" } | Stop-Process -Force
Stop-Process -Id $srv.Id -Force -ErrorAction SilentlyContinue
Remove-Item Env:BM_LOG, Env:BM_SHOT, Env:BM_MULTI -ErrorAction SilentlyContinue
