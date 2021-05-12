object = 33
puts object.class
puts "\n"
if object == Bignum || object == Fixnum    
  puts "Число"
  
  elsif
  object == false || object == true || object == nil
  puts "Логическое"

  elsif object == Array
  puts "Массив"
else
  puts "Строка"
end