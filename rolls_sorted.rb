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

10.times do
  rolls << roll_die
end

rolls.sort!.each do |roll|
  puts "The result of your roll is #{roll}."
end
