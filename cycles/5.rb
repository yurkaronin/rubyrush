# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

# объявляю пустой массив
array = []
# элемент массива. изначально он равен нулю, что бы при первой итерации получилась единичка
array_item = 0

# сумма чисел - элементов массива
number = 0

# Задаю вопрос пользователю
puts "Человек, какой длинны должен быть этот грёбанный массив?"
# ну и сохраняю хотелку в переменную + обрезаю пробел и явно указываю тип объекта - число!
quantity = gets.chomp.to_i
# затем создаю цикл для наполнения массива случайными числами
while array.length < quantity do
  number = rand(100)
  array << number
end

puts "Итого массив: " + array.to_s
puts "Максимальное число в массиве: " + (array.max).to_s

