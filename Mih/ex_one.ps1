#Аудио-плеер из папки (по 30 секунд на трек)
$path = Read-Host "Укажите путь к папке с музыкой."
Add-Type -AssemblyName presentationCore

Write-Host "Обработка." -BackgroundColor Black -ForegroundColor Green
Start-Sleep 1
Write-Host "Обработка.." -BackgroundColor Black -ForegroundColor Green
Start-Sleep 1
Write-Host "Обработка..." -BackgroundColor Black -ForegroundColor Green
Start-Sleep 1

Add-Type -AssemblyName presentationCore
  
$mediaPlayer = New-Object system.windows.media.mediaplayer
$musicPath = $path
$mediaPlayer.open([uri]"$($file.fullname)")
 
$musicFiles = Get-ChildItem -path $musicPath -include *.mp3,*.wma -recurse
 
foreach($file in $musicFiles)
{
 "Сейчас играет: $($file.BaseName)"
  $mediaPlayer.open([uri]"$($file.fullname)")
  $mediaPlayer.Play()
  Start-Sleep -Seconds 30
  $mediaPlayer.Stop()
} 