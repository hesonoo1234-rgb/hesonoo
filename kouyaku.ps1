$pref = Read-Host "都道府県の英語ファイル名を入力"
$count = [int](Read-Host "選挙区数を入力")

for ($i = 0; $i -le $count; $i++) {
    New-Item -ItemType File -Name "$pref$i.html" -Force | Out-Null
}

Write-Host "$pref のファイルを $($count + 1) 個作成しました。"
