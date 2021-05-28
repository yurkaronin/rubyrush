# XXX/ Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__
  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

conditions = ARGV[0]
conditions == 'Неизвестно' if conditions.nil?

if conditions == nil
    puts "Добрый день, человек!",
    "Подскажи пожалуйста, какое сейчас время года?"
    puts "времена года пиши на английском: зима - winter, весна - spring, лето - summer, осень - fall"
    conditions = STDIN.gets.chomp.downcase
else
    # Проверяем корректность введённых данных 
    if conditions != "winter" && conditions != "spring" && conditions != "summer" && conditions != "fall"
      puts "Введены не правильные параметры!",
      "Подскажи пожалуйста, какое сейчас время года?"
      puts "времена года пиши на английском: зима - winter, весна - spring, лето - summer, осень - fall"
      conditions = STDIN.gets.chomp.downcase
    end
end

# температура воздуха
puts "Какая сейчас температура воздуха?"
air_tem = STDIN.gets.chomp.to_i

if season == "summer"
  # спрашиваем температуру воздуха 
  # проверяем температуру летом 
  if air_tem >= 15 && air_tem <= 35
   puts "Cоловьи поют" 
  else
    puts "Cоловьи не поют"
  end
else
  # проверяем температуру в остальное время года
  if air_tem >= 22 && air_tem <= 30
   puts "Cоловьи поют"
  else 
    puts "Cоловьи не поют"
  end
end
