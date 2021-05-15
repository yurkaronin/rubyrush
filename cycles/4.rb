# encoding: utf-8

# Объявили пустой массив
array = []

# Спрашивает у пользователя длину массива и записываем ее в number
puts 'Введите N'
number = gets.to_i

# Создадим переменную-счетчик итераций в цикле. Сначала он будет равен 1, так
# как числа в массиве должны быть от 1 до N.
index = 1

# Переменная, в которую будет накапливать сумму всех чисел
summa = 0

# Нам нужно N (number) чисел, значит нам нужно ровно number число итераций
while index <= number do
  # Записываем очередное число в массив
  array << index

  # Увеличиваем сумму
  summa += index

  # Увеличиваем счетчик для следующей итерации
  index += 1
end

# Выводим получившийся массив и сумму его чисел
puts array.to_s
puts 'Сумма чисел: ' + summa.to_s

# PS
#
# Сумму можно было не считать в цикле, а получить из финального массива
#
# array.inject(0) { |sum,x| sum + x }
#
# А начиная с Ruby 2.4.0 сумму можно вычислить простым методом sum
#
# array.sum