# Ask the user to enter their name. If their name is longer than 10 letters, print "hi, " and then their name. If their name is less than 10 letters, print "hello, " and then their name. If their name is exactly 10 letters, print "hey, " and then their name.

puts "What's your name?"
user_name = gets

if user_name.length > 10
    puts "hi, #{user_name}"
elsif user_name.length < 10
  puts "hello, #{user_name}"
else
  puts "hey, #{user_name}"
end
