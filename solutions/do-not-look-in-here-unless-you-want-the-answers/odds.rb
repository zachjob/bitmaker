combos = {}
num_of_combos = 0

(2..12).each do |number|
  combos[number] = 0
end

(1..6).each do |die1|
  (1..6).each do |die2|
    num_of_combos += 1
    combos[die1 + die2] += 1
  end
end

combos.each do |key, value|
  odds = value.to_f / num_of_combos * 100
  puts "The odds of #{key} coming up are #{odds.round}%"
end
