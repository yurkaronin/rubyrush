# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

def sklonenie(number, крокодил, крокодила, крокодилов)
  if (number == nil || !number.is_a?(Numeric))
    number = 0
  end

  ostatok = number % 10

  if (ostatok == 1) 
    return крокодил
  end

  if (ostatok >= 2 && ostatok <= 4) 
    return крокодила
  end

  if (ostatok > 4 || ostatok == 0) 
    return крокодилов
  end
end

skolko = ARGV[0].to_i

puts "#{skolko} " +
sklonenie(skolko, "негритёнок", "негритёнка", "негритят") +
" " +
sklonenie(skolko, "пошёл", "пошли", "пошли") +
" купаться в море!"