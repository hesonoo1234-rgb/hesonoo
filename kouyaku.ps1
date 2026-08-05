$pref = Read-Host "Enter prefecture name"
$count = [int](Read-Host "Enter number of election districts")

for ($i = 1; $i -le $count; $i++) {
    New-Item -ItemType File -Name "$pref$i.html" -Force
}

Write-Host "HTML files created."

git add .
git commit -m "Generate $pref HTML files"
git push
