#Проигрывание мелодий с помощью beep
function playStarWars{ #Метод проигрывания музыкальной темы из Star Wars с помощью beep (консольный сигнал)
  [console]::beep(440,500) #beep: первое значение - высота звука, второе - продолжительность
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

function playKind { #Метод проигрывания музыкальной темы из фильмов о НЛО
  [console]::beep(900,400)
  [console]::beep(1000,400)
  [console]::beep(800,400)
  [console]::beep(400,400)
  [console]::beep(600,1600)
  
}

function playMissionImpossible { #Метод проигрывания музыкальной темы из фильма Миссия невыполнима
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

#Отрисовываем консольное меню
Write-Host #отступ строки (пустой)
Write-Host "Меню" -BackgroundColor Black -ForegroundColor Red #Надпись Меню в консоли с покраской заднего фона в черный и текст в красный
Write-Host #отступ строки (пустой)

#Вторая часть меню с пунктами выбора (варианты вводимых значений с зеленым цветом текста)
Write-Host "1. Имперский марш (Star Wars)" -ForegroundColor Green
Write-Host "2. Контакт третьего рода" -ForegroundColor Green
Write-Host "3. Миссия невыполнима" -ForegroundColor Green
Write-Host "0. Выход" -ForegroundColor Green
Write-Host

function readCommand {
  $choice = Read-Host "Введите числовое значение для работы" #Выводим текст о с просьбой ввода и считываем вводимое значение
  Switch($choice){ #Провиряем с помощью Switch введенный результат (если введено числовое значение из пункта меню - вызываем соответствующий метод. 
    #Иначе - просим ввести корректное значение)
      1{playStarWars}
      2{playKind}
      3{playMissionImpossible}
      0{Write-Host "До скорой встречи!"; exit}
        default {
          Write-Host "Ошибка выбора! Попробуйте еще раз!" -ForegroundColor Red
          readCommand
      }
    }
  }

  readCommand

