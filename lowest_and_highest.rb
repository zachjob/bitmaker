rolls = []
def roll_die
  roll = 0
  roll = Random.rand(7)
  if roll > 0
    roll
  else
    roll = Random.rand(7)
  end
end

5.times do
  rolls << roll_die
end

puts "The lowest number is #{rolls.last}"
puts "The highest number is #{rolls.first}."

rolls.sort!.each do |roll|
  puts "The result of your roll is #{roll}."
end
