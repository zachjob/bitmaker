puts "Enter a string"
user_string = gets.to_s
user_string = user_string.delete("\n")

def wrap_text (my_string)
  puts "Enter a Symbol"
  user_symbol = gets.to_s
  user_symbol = user_symbol.delete("\n")

  return user_string = "#{user_symbol}#{user_symbol}#{user_symbol}#{my_string}#{user_symbol}#{user_symbol}#{user_symbol}"
end

user_string = wrap_text (user_string)
user_string = wrap_text (user_string)
user_string = wrap_text (user_string)
puts user_string
