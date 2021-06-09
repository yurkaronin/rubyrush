# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

def first_elements(array, number)
  result_array = []
  counter = 0

  while counter < number
    # Проверка: если длина массива array оказалась меньше, чем число элементов,
    # которые мы хотим «забрать», то просто прерываем этот цикл
    if array.size <= counter
      break
    end

    # Кладем в конечный массив число, которое находится в массиве array на
    # позиции counter
    result_array << array[counter]

    counter += 1
  end

end