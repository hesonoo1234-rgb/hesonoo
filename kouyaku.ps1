@'
$pref = Read-Host "Enter prefecture name"
$count = [int](Read-Host "Enter number of election districts")

for ($i = 0; $i -le $count; $i++) {
    New-Item -ItemType File -Name "$pref$i.html" -Force
}

Write-Host "$pref : created $($count + 1) files."
'@ | Set-Content -Path .\kouyaku.ps1 -Encoding UTF8
