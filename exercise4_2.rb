puts "How old are you?"
user_age = gets.to_i
admin_age = 23

if user_age > 105
  puts "I'm not sure I believe you..."
end

puts "We're #{user_age - admin_age} years apart."
