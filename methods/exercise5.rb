def greet_backwards (my_name)
  puts "Hi #{my_name.reverse}#{my_name.reverse}"
end

puts "Enter your name:"
user_name = gets.to_s

puts greet_backwards (user_name)
