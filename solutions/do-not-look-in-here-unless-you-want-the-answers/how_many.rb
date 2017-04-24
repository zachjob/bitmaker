num_of_combos = 0

(1..6).each do |die1|
  (1..6).each do |die2|
    num_of_combos = num_of_combos + 1
    puts "Dice Combo: #{die1}, #{die2}  Total: #{die1 + die2}"
  end
end

puts "There are #{num_of_combos} possible combinations."
