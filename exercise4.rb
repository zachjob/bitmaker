def how_long (my_string)
  if my_string.length >= 8
    return true
  else
    return false
  end
end

puts "Enter a string"
user_string = gets.to_s

puts how_long (user_string)
