fizzbuzz = (1..100)

fizzbuzz.each do |num|
  if num % 5 == 0 && num % 3 == 0
    puts "#{num} Bitmaker"
  elsif num % 3 == 0
    puts "#{num} Bit"
  elsif num % 5 == 0
    puts "#{num} Maker"
  end
end
