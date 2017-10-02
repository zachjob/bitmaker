def roll_die
  roll = 0
  roll = Random.rand(7)
  if roll > 0
    "The result of your roll is #{roll}."
  else
    roll = Random.rand(7)
    "The result of your roll is #{roll}."
  end
end

10.times do
  puts roll_die
end
