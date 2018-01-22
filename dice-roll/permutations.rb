dice1 = (1..6)
dice2 = (1..6)

dice1.each do |roll1|
  dice2.each do |roll2|
    puts "#{roll1} #{roll2}"
  end
end
