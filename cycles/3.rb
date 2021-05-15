# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

# Написать программу, которая выводит массив чисел от 1 до N.
# И выводит сумму всех чисел этого массива.

# Число N спрашивается у пользователя из консоли.

# Массив чисел. изначально он пуст
numbers = []
# элемент массива. изначально он равен нулю, что бы при первой итерации получилась единичка
numbers_item = 0
# сумма чисел - элементов массива
numbers_sum = 0

# Спросив у пользователя N
# и преобразовав его в число с помощью to_i
puts "Сколько чисел вы хотели бы задать?"
quantity = gets.chomp.to_i

# организовать цикл while на N итераций
while numbers.length < quantity do
  puts "Новая итерация"
  numbers_item += 1
  numbers_sum += numbers_item.to_i
  numbers << numbers_item
  
end

puts "Итого массив: " + numbers.to_s
puts "Итого сумма: " + numbers_sum.to_s