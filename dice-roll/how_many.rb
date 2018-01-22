dice1 = (1..6)
dice2 = (1..6)
counter = 0

dice1.each do |roll1|
  dice2.each do |roll2|
    puts "Dice Roll: #{roll1}, #{roll2}  Total: #{roll1 + roll2}"
    counter += 1
  end
end

puts "There are #{counter} possible permutations."
