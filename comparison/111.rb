# encoding: utf-8
num1 = 321
num2 = 321

if 
  # если первое число больше второго:
  num1 > num2
  puts "Наибольшее число:" + num1.to_s
  # а если они равны, то:
  elsif 
  num1 == num2
  puts "Числа равны!"
else
  # во всех остальных улучаях первое число меньше второго:
num1 < num2
  puts "Наибольшее число:" + num2.to_s
end