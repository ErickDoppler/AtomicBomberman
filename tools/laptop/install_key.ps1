# One-time: lets this PC log in to the Linux laptop (192.168.1.236) by SSH key instead of a password.
# Run it yourself in PowerShell - it asks for the laptop password ONCE.   usage: .\install_key.ps1 [-User malloc]
param([string]$User = "malloc", [string]$HostName = "192.168.1.236")

# find an ssh client: PATH, Windows OpenSSH, or the one that comes with Git
$ssh = (Get-Command ssh -ErrorAction SilentlyContinue).Source
foreach ($c in @("$env:SystemRoot\System32\OpenSSH\ssh.exe", "C:\workenv\Git\usr\bin\ssh.exe", "C:\Program Files\Git\usr\bin\ssh.exe")) {
    if (-not $ssh -and (Test-Path $c)) { $ssh = $c }
}
if (-not $ssh) { Write-Error "no ssh client found (install 'OpenSSH Client' in Windows optional features or Git for Windows)"; exit 1 }
"using $ssh"

$pub = (Get-Content "$env:USERPROFILE\.ssh\id_ed25519_laptop.pub" -Raw).Trim()
$remote = "mkdir -p ~/.ssh && chmod 700 ~/.ssh && touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys && (grep -qxF '$pub' ~/.ssh/authorized_keys || echo '$pub' >> ~/.ssh/authorized_keys)"
& $ssh -o StrictHostKeyChecking=accept-new "$User@$HostName" $remote
if ($LASTEXITCODE -eq 0) {
    "key installed. Test it:"
    "  & '$ssh' -i `$env:USERPROFILE\.ssh\id_ed25519_laptop -o BatchMode=yes $User@$HostName echo ok"
}
