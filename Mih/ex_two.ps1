#Диспетчер Задач "на минималках"
Write-Host
Write-Host "Меню" -BackgroundColor Black -ForegroundColor Red
Write-Host

Write-Host "1. Просмотреть процессы" -ForegroundColor Green
Write-Host "0. Выход" -ForegroundColor Green
Write-Host

$choice = Read-Host "Введите значение для работы"

    Switch($choice){
        1{
            get-process
            Write-Host
            Write-Host "Работа с процессом" -BackgroundColor Black -ForegroundColor Red
            Write-Host

            Write-Host "1. Выдать информацию о процессе" -ForegroundColor Green
            Write-Host "2. Завершить процесс" -ForegroundColor Green
            Write-Host "0. Выход" -ForegroundColor Green
            Write-Host

            $choice2 = Read-Host "Введите значение для работы"
            switch ($choice2) {
                1 { 
                    $idSelect = Read-Host "Введите id процесса для просмотра"
                    Write-Host "-----================Загружаю информацию================-----" -ForegroundColor Green
                    get-process  -id $idSelect
                 }
                2 {
                    $idSelect = Read-Host "Введите id процесса для завершения"
                    Write-Host "-----================Останавливаю процесс================-----" -ForegroundColor Red
                    stop-process -id $idSelect -Confirm
                    Write-Host "-----================Вывожу процессы================-----" -ForegroundColor Greed
                    get-process
                }
                default {Write-Host "Ошибка выбора. Попробуйте снова" -ForegroundColor Red}
            }
        }
        0{Write-Host "До скорой встречи!"; exit}
          default {Write-Host "Ошибка выбора. Попробуйте снова" -ForegroundColor Red}
      }
    
