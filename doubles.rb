def roll_dice
  roll1 = 0
  roll2 = 0
  roll1 = Random.rand(1..6)
  roll2 = Random.rand(1..6)
  if roll1 == roll2
    "You rolled #{roll1} and #{roll2}. DOUBLES! Your total is #{roll1 + roll2}."
  else
    "You rolled #{roll1} and #{roll2}. Your total is #{roll1 + roll2}."
  end
end

puts roll_dice
