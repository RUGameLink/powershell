#Работаем с сетью и сохраняем в txt

#Get-NetIPConfiguration - Получаем информацию о конфигурации сети и передаем ее.
#Из полученной информации получает конфигурации IP-адреса забираем информацию о конфигурации адреса IPv4 и передаем ее.
#Полученную информацию сохраняем с помощью Out-File в корневую директорию со скриптом в файл config.txt
Get-NetIPConfiguration | Select -ExpandProperty IPV4Address | Out-File -FilePath config.txt