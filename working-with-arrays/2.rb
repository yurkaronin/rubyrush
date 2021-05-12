patrick = [1, 2, 3, 4, 5]
puts "Мой массив " + patrick.to_s

puts "Массив наоборот " + patrick.reverse.to_s

puts "Мой массив всё еще в изначальномсостоянии " + patrick.to_s

puts "А теперь я изменил его на обратный порядок" + patrick.reverse!.to_s
puts "Мой массив на выходе" + patrick.to_s