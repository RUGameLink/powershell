#Ищем в указанной папке и подпапках файлы с размером больше 100 байт
$path = Read-Host "Укажите путь к папке"
Get-ChildItem -Path ${$path} -recurse |
  Where-Object {$_.length -gt 100} |
    Sort-Object -Property length |
        Out-File -FilePath length.txt