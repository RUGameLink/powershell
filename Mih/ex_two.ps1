#Диспетчер Задач "на минималках"

#Отрисовываем консольное меню
Write-Host #отступ строки (пустой)
Write-Host "Меню" -BackgroundColor Black -ForegroundColor Red #Надпись Меню в консоли с покраской заднего фона в черный и текст в красный
Write-Host #отступ строки (пустой)

#Вторая часть меню с пунктами выбора (варианты вводимых значений с зеленым цветом текста)
Write-Host "1. Просмотреть процессы" -ForegroundColor Green
Write-Host "0. Выход" -ForegroundColor Green
Write-Host

function readSubMenu {
    $choice2 = Read-Host "Введите значение для работы"#Выводим текст о с просьбой ввода и считываем вводимое значение
    switch ($choice2) {#Провиряем с помощью Switch введенный результат (если введено числовое значение из пункта меню - вызываем соответствующий метод. 
        #Иначе - просим ввести корректное значение)
        1 { #Если выбран первый пункт, то
            $idSelect = Read-Host "Введите id процесса для просмотра" #Выводим текст о с просьбой ввода и считываем вводимое значение
            Write-Host "-----================Загружаю информацию================-----" -ForegroundColor Green
            get-process  -id $idSelect #Вывод информации о процессе по его id
         }
        2 { #Если выбран второй пункт, то
            $idSelect = Read-Host "Введите id процесса для завершения" #Выводим текст о с просьбой ввода и считываем вводимое значение
            Write-Host "-----================Останавливаю процесс================-----" -ForegroundColor Red
            stop-process -id $idSelect -Confirm #Остановка процесса по его id
            Start-Sleep 2
            Write-Host "-----================Вывожу процессы================-----" -ForegroundColor Green
            get-process
        }
	    0{Write-Host "До скорой встречи!"; exit}
        default {
            Write-Host "Ошибка выбора! Попробуйте еще раз!" -ForegroundColor Red
            readSubMenu
        }
    }
    
}

function readCommand{
$choice = Read-Host "Введите значение для работы"#Выводим текст о с просьбой ввода и считываем вводимое значение

    Switch($choice){#Провиряем с помощью Switch введенный результат (если введено числовое значение из пункта меню - вызываем соответствующий метод. 
            #Иначе - просим ввести корректное значение)
        1{
            get-process
            Write-Host
            Write-Host "Работа с процессом" -BackgroundColor Black -ForegroundColor Red
            Write-Host

            Write-Host "1. Выдать информацию о процессе" -ForegroundColor Green
            Write-Host "2. Завершить процесс" -ForegroundColor Green
            Write-Host "0. Выход" -ForegroundColor Green
            Write-Host
            readSubMenu
            
        }
        0{Write-Host "До скорой встречи!"; exit}
        default {
            Write-Host "Ошибка выбора! Попробуйте еще раз!" -ForegroundColor Red
            readCommand
        }
      }
}

readCommand