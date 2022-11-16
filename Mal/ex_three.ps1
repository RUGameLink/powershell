#Работаем с сетью и сохраняем в txt
Get-NetIPConfiguration | Select -ExpandProperty IPV4Address | Out-File -FilePath config.txt