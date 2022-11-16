#Выгрузка информации о Сервисах в txt
Get-Service -Name * | Select * | Out-File -FilePath response.txt
