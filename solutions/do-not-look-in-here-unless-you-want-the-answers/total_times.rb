permutations = {}

(2..12).each do |number|
  permutations[number] = 0
end

(1..6).each do |die1|
  (1..6).each do |die2|
    permutations[die1 + die2] += 1
  end
end

permutations.each do |key, value|
  puts "#{key} occurs #{value} times"
end
