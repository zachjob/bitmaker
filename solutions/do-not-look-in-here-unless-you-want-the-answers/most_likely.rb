require 'irb'

combos = {}
num_of_combos = 0

(2..12).each do |number|
  combos[number] = { num_times: 0 }
end

(1..6).each do |die1|
  (1..6).each do |die2|
    num_of_combos += 1
    combos[die1 + die2][:num_times] += 1
  end
end

combos.each do |key, value|
  combos[key][:odds] = (value[:num_times] / num_of_combos.to_f * 100).round
  puts "The odds of #{key} coming up are #{combos[key][:odds]}%"
end


most_likely = combos.max_by { |key, value| value[:odds] }

puts "#{most_likely.first} is most likely to come up with a #{most_likely.last[:odds]}% chance."
