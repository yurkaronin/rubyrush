# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

puts "Какая валюта у вас в наличии?"

puts "1. Рубли"
puts "2. Доллары"
currency = gets.chomp

if currency == "1"
today = Time.now
puts "Сколько сейчас стоит 1 доллар на бирже?"
rate = gets.to_f.round(2)

puts "на сегодня #{today}",
"Курс $ по отношению к ₽ составляет: #{rate}"
puts "\n"

puts "А сколько к вас с собой рублей?"

stock = gets.to_f
purchase = (stock / rate).round(2)

puts "Ваших денег хватит на покупку: #{purchase} $"

else today = Time.now
puts "Сколько сейчас стоит 1 доллар на бирже?"
rate = gets.to_f.round(2)

puts "на сегодня #{today}",
"Курс $ по отношению к ₽ составляет: #{rate}"
puts "\n"

puts "А сколько к вас с собой долларов?"

stock = gets.to_f
purchase = (stock * rate).round(2)

puts "Продав #{stock}$ выполучите: #{purchase} ₽"
end