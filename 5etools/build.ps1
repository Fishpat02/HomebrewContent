Get-ChildItem -File -Filter *.y*ml | ForEach-Object { $_ | Get-Content | ConvertFrom-Yaml -Ordered | ConvertTo-Json -Depth 15 | Out-File -FilePath ("{0}.json" -f $_.BaseName) }
