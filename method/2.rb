# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX


def circle_square(radius)
  if (radius == nil || !radius.is_a?(Numeric))
    radius = 0
  end
  return 3.14159 * radius * radius
end

puts "Введите радиус круга: " 
rad = gets.to_f

puts "Площадь круга: " + circle_square(rad).to_s

puts "Введите радиус второго круга: "
rad = gets.to_f

puts "Площадь второго круга: " + circle_square(rad).to_s