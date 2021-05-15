# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

names = []
user_imput = nil

puts "Привет! Начинайте вводить имена гостей ,а как закончите - просто введите пустую строку, что бы перейти к перебору гостей ;)"

while user_imput != "" do
  user_imput = gets.chomp
  names << user_imput
end

for item in names do
  puts "С нами #{item}"
  sleep 1

  if (item == "Элис")
    puts "#{item}? А кто такая #{item}?"
    sleep 1
    break
  end
  
end

puts "Что это за девочка и где она живет?"
sleep 1
puts "А вдруг она не курит? А вдруг она не пьёт?"
sleep 1
puts "А мы с такими рожами возьмем да и припрёмся к Элис... :)"
