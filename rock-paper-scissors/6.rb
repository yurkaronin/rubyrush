# encoding: utf-8
game_items = ["Камень", "Бумага", "Ножницы"]

# Компьютер должен выбирать случайный вариант.
random = rand(game_items.length)
puts "Рандом выпало: " + random.to_s
puts random.class

# Пользователь вводит свой вариант в консоли
puts "Выберите что показать сейчас?"
puts "1. Камень"
puts "2. Бумага"
puts "3. Ножницы"
player_turn = gets.chomp

# приводим к единому стандарту
player_turn = player_turn.to_i - 1

# если игрок показал камень?
if player_turn == 0
  if random == 0
    puts "Ничья!"
  elsif 
    random == 1
    puts "Поражение!"
  else
    random == 2
    puts "Победа!"
  end
# если игрок показал бумагу?  
elsif 
  player_turn == 1
  if random == 0
    puts "Победа!"
  elsif 
    random == 1
    puts "Ничья!"
  else
    random == 2
    puts "Поражение!"
  end
# если игрок показал ножницы?
elsif
  player_turn == 2
  if random == 0
    puts "Поражение!"
  elsif 
    random == 1
    puts "Победа!"
  else
    random == 2
    puts "Ничья!"
  end
else
  # если игрок ничего не ввёл или ввел некорректные данные
  puts "Вы ввели не корректное значение",
  "или просто оставили строку пустой"
end