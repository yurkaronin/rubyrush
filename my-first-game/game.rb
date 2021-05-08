# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

# Вводная часть
puts "*******************************************",
"*                                         *",
"*  Добро пожаловать в игру \"Forest walk\"  *",
"*                                         *",
"*******************************************"

puts "Приключение начинается."
puts "Как ваше имя?"
name = gets.chomp

puts "#{name}, выбери способность"
puts "1. Силач"
puts "2. Ловкач"
skill = gets.chomp
if skill == 1
   skill = "Силач"
else
   skill = "Ловкач"
end

puts "#{name}, выбери предмет"
puts "1. Свинная рулька"
puts "2. Золотая монета"
puts "3. Бутылка вина"
gift = gets.chomp
if gift == 1
   gift = "Свинная рулька"
elsif gift == 2
   gift = "Золотая монета"
else
   gift = "Бутылка вина"
end


puts "#{name}, выбери оружие"
puts "1. Нож"
puts "2. Лук"
puts "3. Волшебный посох"
weapon = gets.chomp
if weapon == 1
   weapon = "Нож"
elsif weapon == 2
   weapon = "Лук"
else
   weapon = "Волшебный посох"
end

puts "*********************"
puts "Карточка персонажа"
puts "Имя: #{name}",
"Способность: #{skill}",
"В инвентаре лежит: #{gift}",
"Оружие: #{weapon}"
puts "**********************"

puts "На этом подготовка окончена. Можно отправляться в путь."



