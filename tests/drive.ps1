# Test driver: starts the game, forces it to the foreground, sends key presses (scan codes, as the
# game reads the keyboard through DirectInput), reports the windows the game owns and the BM_LOG trace.
#   drive.ps1 -Keys "DOWN,ENTER" [-GameArgs "-host 5001"] [-Boot 14] [-Wait 5]
param([string]$Keys = "ENTER", [string]$GameArgs = "-ask", [int]$Wait = 8, [int]$Boot = 14,
      [string]$Dir = "E:\PROJECTS\DESKTOP\AtomicBomberman\dist", [string]$Exe = "AtomicBomberman.exe")
Add-Type @"
using System; using System.Text; using System.Runtime.InteropServices; using System.Collections.Generic;
public class WinList {
  public delegate bool EnumProc(IntPtr h, IntPtr l);
  [DllImport("user32.dll")] static extern bool EnumWindows(EnumProc p, IntPtr l);
  [DllImport("user32.dll")] static extern uint GetWindowThreadProcessId(IntPtr h, out uint pid);
  [DllImport("user32.dll")] static extern int GetWindowText(IntPtr h, StringBuilder s, int n);
  [DllImport("user32.dll")] static extern bool IsWindowVisible(IntPtr h);
  [DllImport("user32.dll")] static extern bool SetForegroundWindow(IntPtr h); [DllImport("user32.dll")] static extern IntPtr GetForegroundWindow(); [DllImport("user32.dll")] static extern bool AttachThreadInput(uint a, uint b, bool attach); [DllImport("kernel32.dll")] static extern uint GetCurrentThreadId();
  [DllImport("user32.dll")] static extern void keybd_event(byte vk, byte scan, uint flags, UIntPtr extra);
  public static List<string> Of(uint pid) { var r = new List<string>(); EnumWindows((h, l) => { uint p; GetWindowThreadProcessId(h, out p); if (p == pid && IsWindowVisible(h)) { var sb = new StringBuilder(256); GetWindowText(h, sb, 256); r.Add(sb.ToString()); } return true; }, IntPtr.Zero); return r; }
  public static void Focus(uint pid) { EnumWindows((h, l) => { uint p; GetWindowThreadProcessId(h, out p); if (p == pid && IsWindowVisible(h)) { uint me = GetCurrentThreadId(); IntPtr fg = GetForegroundWindow(); uint fgp; uint fgt = GetWindowThreadProcessId(fg, out fgp); AttachThreadInput(me, fgt, true); SetForegroundWindow(h); AttachThreadInput(me, fgt, false); return false; } return true; }, IntPtr.Zero); }
  public static void Key(byte vk, byte scan, bool ext) { uint f = ext ? 1u : 0u; keybd_event(vk, scan, f, UIntPtr.Zero); System.Threading.Thread.Sleep(120); keybd_event(vk, scan, f | 2u, UIntPtr.Zero); }
}
"@
$map = @{ ENTER = @(0x0D, 0x1C, $false); DOWN = @(0x28, 0xD0, $true); UP = @(0x26, 0xC8, $true); ESC = @(0x1B, 0x01, $false); SPACE = @(0x20, 0x39, $false); BACK = @(0x08, 0x0E, $false) }
$log = "$Dir\drive.log"; Remove-Item $log -ErrorAction SilentlyContinue
$env:BM_LOG = $log; $env:BM_SHOT = "$Dir\drive.bmp"
$p = Start-Process "$Dir\$Exe" -ArgumentList $GameArgs -WorkingDirectory $Dir -PassThru
Start-Sleep $Boot
[WinList]::Focus($p.Id); Start-Sleep 1
foreach ($k in ($Keys -split ",")) { [WinList]::Focus($p.Id); Start-Sleep -Milliseconds 300; $m = $map[$k]; [WinList]::Key([byte]$m[0], [byte]$m[1], [bool]$m[2]); Start-Sleep 1 }
Start-Sleep $Wait
"windows: " + ([WinList]::Of($p.Id) -join " | ")
Get-Content $log | Select-String "net:|start:|ddraw" | ForEach-Object { $_.Line }
if (-not $p.HasExited) { $p.Kill() }
Remove-Item Env:BM_LOG, Env:BM_SHOT
