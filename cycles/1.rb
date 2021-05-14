eggs = [1, 0, 0, 0, 0, 2, 22, 32, 0, 1, 21, 0, 222, 54, 0, 6, 0, 7, 54, 0, 8, 4, 3]

good_egs = []
broken_count = 0

for item in eggs do
  if(item != 0)
    broken_count += 1
  else
    good_egs << item
  end
  
end

puts "У нас было яиц: " + eggs.size.to_s + " шт."
puts "Мы их перебрали и теперь"
puts "Целые яйца: " + good_egs.size.to_s + " шт."
puts "Битые яйца: " + broken_count.to_s + " шт."