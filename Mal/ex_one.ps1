#Проигрывание мелодий с помощью beep
function playStarWars{
  [console]::beep(440,500)
  [console]::beep(440,500)
  [console]::beep(440,500)
  [console]::beep(349,350)
  [console]::beep(523,150)
  [console]::beep(440,500)
  [console]::beep(349,350)
  [console]::beep(523,150)
  [console]::beep(440,1000)
  [console]::beep(659,500)
  [console]::beep(659,500)
  [console]::beep(659,500)
  [console]::beep(698,350)
  [console]::beep(523,150)
  [console]::beep(415,500)
  [console]::beep(349,350)
  [console]::beep(523,150)
  [console]::beep(440,1000)
}

function playKind {
  [console]::beep(900,400)
  [console]::beep(1000,400)
  [console]::beep(800,400)
  [console]::beep(400,400)
  [console]::beep(600,1600)
  
}

function playMissionImpossible {
  [console]::beep(784,150)
  Start-Sleep -m 300
  [console]::beep(784,150)
  Start-Sleep -m 300
  [console]::beep(932,150)
  Start-Sleep -m 150
  [console]::beep(1047,150)
  Start-Sleep -m 150
  [console]::beep(784,150)
  Start-Sleep -m 300
  [console]::beep(784,150)
  Start-Sleep -m 300
  [console]::beep(699,150)
  Start-Sleep -m 150
  [console]::beep(740,150)
  Start-Sleep -m 150
  [console]::beep(784,150)
  Start-Sleep -m 300
  [console]::beep(784,150)
  Start-Sleep -m 300
  [console]::beep(932,150)
  Start-Sleep -m 150
  [console]::beep(1047,150)
  Start-Sleep -m 150
  [console]::beep(784,150)
  Start-Sleep -m 300
  [console]::beep(784,150)
  Start-Sleep -m 300
  [console]::beep(699,150)
  Start-Sleep -m 150
  [console]::beep(740,150)
  Start-Sleep -m 150
  [console]::beep(932,150)
  [console]::beep(784,150)
  [console]::beep(587,1200)
  Start-Sleep -m 75
  [console]::beep(932,150)
  [console]::beep(784,150)
  [console]::beep(554,1200)
  Start-Sleep -m 75
  [console]::beep(932,150)
  [console]::beep(784,150)
  [console]::beep(523,1200)
  Start-Sleep -m 150
  [console]::beep(466,150)
  [console]::beep(523,150)
}


Write-Host
Write-Host "Меню" -BackgroundColor Black -ForegroundColor Red
Write-Host

Write-Host "1. Имперский марш (Star Wars)" -ForegroundColor Green
Write-Host "2. Контакт третьего рода" -ForegroundColor Green
Write-Host "3. Миссия невыполнима" -ForegroundColor Green
Write-Host "0. Выход" -ForegroundColor Green
Write-Host

$choice = Read-Host "Введите значение для работы"
Switch($choice){
    1{playStarWars}
    2{playKind}
    3{playMissionImpossible}
    0{Write-Host "До скорой встречи!"; exit}
      default {Write-Host "Ошибка выбора. Попробуйте снова" -ForegroundColor Red}
  }

