# Напишите программу, которая находит среднее арифметическое трех, введенных пользователем целых чисел.
puts "Введите первое число"
number_1 = gets.chomp.to_i

puts "Введите второе число"
number_2 = gets.chomp.to_i

puts "Введите третье число"
number_3 = gets.chomp.to_i

result = (number_1 + number_2 + number_3) / 3

puts "Среднее арифметическое чисел будет: " + result.to_s
