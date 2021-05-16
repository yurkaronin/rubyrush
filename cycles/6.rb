# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

# Напишите программу, которая перевернет порядок элементов любого исходного массива.
# Переверните массив сами с помощью цикла. Не используя встроенные методы reverse или reverse!
start = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
finish =[]

# взять последний элемент в массиве start
# item = start[-1]
# и сохранить его в массив finish
# finish <<  item
# а затем удалить последний элемент в массиве
# start.delete_at(-1)
# и так до тех пор пока в массиве start есть элементы
while start.length > 0 do
  item = start[-1]
  finish <<  item
  start.delete_at(-1)
end

puts "исходный массив" + start.to_s
puts "итоговый массив" + finish.to_s
