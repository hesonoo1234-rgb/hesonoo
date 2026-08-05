$pref = Read-Host "Enter prefecture name"
$count = [int](Read-Host "Enter number of election districts")

for ($i = 1; $i -le $count; $i++) {
    New-Item -ItemType File -Name "$pref$i.html" -Force
}

Write-Host "HTML files created."

git add .

Write-Host "git add completed."

git commit -m "Generate $pref HTML files"

Write-Host "git commit completed."

git push

Write-Host "git push completed."
