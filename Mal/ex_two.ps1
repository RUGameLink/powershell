#Конвертер Word to Pdf
function docToPdf{ #Метод конвертации файла doc и docx в pdf
        $documents_path = Read-Host "Путь к файлу Word" #Считываем путь к файлу

        $word_app = New-Object -ComObject Word.Application #Инициализируем объект приложения MS Word
        
        Get-ChildItem -Path $documents_path -Filter *.doc? | ForEach-Object { #Проверяем файл из пути на совпадение формата 
            #(.doc? обозначает, что ищем объект .doc с опциональным символом после [.docx])
        
            $document = $word_app.Documents.Open($_.FullName) #С помощью иниализируемого объекта MS Word открываем файл по введенному пути
        
            $pdf_filename = "$($_.DirectoryName)\$($_.BaseName).pdf" #Подготавливаем конструкцию для будущего файла pdf 
            #(используем директорию оригинального файла и его имя, но уже с расширением .pdf)
        
            $document.SaveAs([ref] $pdf_filename, [ref] 17)  #Сохраняем файл (первый параметр - путь для сохраняемого файла, второй - кодировка)
            
            $document.Close() #Заканчиваем работу с документов
        }
        Write-Host "Работа закончена." -BackgroundColor Black -ForegroundColor Green #Вывод сообщения о конце работы
        $word_app.Quit()  #Заканчиваем работу с объектом
}

docToPdf



