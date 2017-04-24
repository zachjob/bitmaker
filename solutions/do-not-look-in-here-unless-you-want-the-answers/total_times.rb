combos = {}

(2..12).each do |number|
  combos[number] = 0
end

(1..6).each do |die1|
  (1..6).each do |die2|
    combos[die1 + die2] += 1
  end
end

combos.each do |key, value|
  puts "#{key} occurs #{value} times"
end
