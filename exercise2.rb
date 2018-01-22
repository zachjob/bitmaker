def negative (my_number)
  if my_number >= 0
    return true
  else
    return false
  end
end

puts "Enter a number"
user_num = gets.to_i

puts negative (user_num)
