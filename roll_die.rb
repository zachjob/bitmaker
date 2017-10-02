rolls = []

def roll_die
  roll = 0
  roll = Random.rand(7)
  "The result of your roll is #{roll}."
end

puts roll_die
