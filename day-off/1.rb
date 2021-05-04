# Напишите программу, которая подсказывает, выходной сегодня или нет (для простоты мы не учитываем государственных праздников, итак много дней для безделья):

# Определяем какой сейчас день недели
my_day = Time.now
# проверяем что возвращается
puts my_day

# из полученного значения достаём день недели. 0 = воскресенье, 1 - поннедельник и так далее
week_day = my_day.wday
# проверяем что возвращается
puts week_day

# Пишем условие
if 
  week_day == 0
  puts "Ура! Сегодня ВОСКРЕСЕНЬЕ. Выходной, но завтра рано вставать, поэтому не сиди до поздна!"
elsif
  week_day == 1
  puts "Сегодня ПОННЕДЕЛЬНИК - рабочий день. Давай поработаем как следует, что бы потом смогли классно отдохнуть"
  elsif
  week_day == 2
  puts "Сегодня ВТОРНИК - рабочий день. Давай поработаем как следует, что бы потом смогли классно отдохнуть"
  elsif
  week_day == 3
  puts "Сегодня СРЕДА - рабочий день. Давай поработаем как следует, что бы потом смогли классно отдохнуть"
  elsif
  week_day == 4
  puts "Сегодня ЧЕТВЕРГ - рабочий день. Давай поработаем как следует, что бы потом смогли классно отдохнуть"
  elsif
  week_day == 5
  puts "Сегодня ПЯТНИЦА - рабочий день. Давай поработаем как следует, что бы потом смогли классно отдохнуть"
  elsif
  week_day == 6
  puts "Ура! Сегодня СУББОТОНЬКА. Выходной день. Можно выспаться и поиграть в комп."
end
