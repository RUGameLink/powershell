#Аудио-плеер из папки (по 30 секунд на трек)
$path = Read-Host "Укажите путь к папке с музыкой." #Выводим текст о с просьбой ввода и считываем вводимое значение

#Имитация обработки
Write-Host "Обработка." -BackgroundColor Black -ForegroundColor Green #Вывод в консоль текста
Start-Sleep 1 #Делей на секунду
Write-Host "Обработка.." -BackgroundColor Black -ForegroundColor Green
Start-Sleep 1
Write-Host "Обработка..." -BackgroundColor Black -ForegroundColor Green
Start-Sleep 1

Add-Type -AssemblyName presentationCore #Подключаем окружение .Net для работы с плеером
  
$mediaPlayer = New-Object system.windows.media.mediaplayer #Инициализируем объект Media Player
$musicPath = $path #Сохраняем в переменную путь к файлу
$mediaPlayer.open([uri]"$($file.fullname)") #Открываем объект Media Player
 
$musicFiles = Get-ChildItem -path $musicPath -include *.mp3,*.wma -recurse #Инициализируем объект аудио-файла с путем к файлам и с расширением .mp3 и .wma 
#и параметром рекурсии по вложенным папкам -recurse
 
foreach($file in $musicFiles) #Перебираем файлы с папке по указанному пути
{
 "Сейчас играет: $($file.BaseName)" #Сообщаем в консоль название проигрываемого файла
  $mediaPlayer.open([uri]"$($file.fullname)")  #Открываем объект Media Player
  $mediaPlayer.Play() #Проиграваем файл
  Start-Sleep -Seconds 30 #Время проигрывания - 30 секунд
  $mediaPlayer.Stop() #Останавливаем проигрывание
} 