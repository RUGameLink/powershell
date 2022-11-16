#Отправка сообщений по почте (мини почтовый клиент)
$From = Read-Host "Введите адрес своей почты"
$To = Read-Host "Введите адрес почты получателя"
$Cc = Read-Host "Введите адрес почты получателя (копия)"
$Subject = Read-Host "Введите тему сообщения"
$Body = Read-Host "Введите текст сообщения"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
Send-MailMessage -From $From -to $To -Cc $Cc -Subject $Subject -Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential (Get-Credential)