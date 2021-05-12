
# Мужской имена
mens = ["Денис", "Борис", "Иван", ]
# Женские имена
womens = ["Маша", "Роза", "Диана", ]
# Новый массив
general = mens.to_s + womens.to_s
puts "Мужской массив содержит: " + mens.to_s
puts
puts "Женский массив содержит: " + womens.to_s
puts
puts "Общий массив содержит: " + general.to_s

# Новый массив обеднённый методом concat
general = "#{mens.concat(womens)}"
puts "Общий массив содержит: " + general.to_s