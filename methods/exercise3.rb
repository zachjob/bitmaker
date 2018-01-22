def is_even (my_number)
  if my_number == 0
    return true
  else
    return false
  end
end

puts "Enter a number"
user_num = gets.to_i

user_num = user_num % 2

puts is_even (user_num)
