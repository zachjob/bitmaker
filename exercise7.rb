puts "Enter a string"
user_string = gets.to_s

def wrap_text (my_string)
  user_string = "<<< #{my_string} >>>"
end

puts wrap_text (user_string)
