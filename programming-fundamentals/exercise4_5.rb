# Pick a number and save it in a variable called secret_number. Ask the user to enter a number. If they enter the secret number, print "You win!". If they are off by 1, print "So close!". Otherwise, print "Try again".

secret_number = 58

puts "Try to guess my secret number!"
user_number = gets.to_i

if user_number == secret_number
  puts "You win!"
elsif (secret_number - 1) == user_number || (secret_number + 1) == user_number
  puts "So close!"
else
  puts "Try again."
end
