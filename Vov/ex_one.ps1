#Озвучивание введенного текста
function SpeechText($text){ #Метод озвучки текста
    Add-Type -AssemblyName System.Speech #Подключаем библиотеку озвучки текста
    $voice = New-Object System.Speech.Synthesis.SpeechSynthesizer #Предоставление доступа к функциям установленного модуля синтеза речи
    $voice.SelectVoice("Microsoft Irina Desktop") #Выбор голосового модуля
    $voice.Speak($text) #Озвучка текста
}

$text = Read-Host "Введите текст для озвучивания:" #Считываем текст из консоли
if (!$text) { #Проверка ввода на пустоту
    SpeechText("Вы ничего не ввели! Я обиделась!")
}
else {
    SpeechText($text)
}