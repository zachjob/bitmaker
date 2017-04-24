results = []

10.times do
  results << Random.rand(6) + 1
end

results.sort!

results.each do |result|
  puts "The result of your roll is #{result}."
end
