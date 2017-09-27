names = [
  "Zach",
  "Murphy",
  "Sabrina",
  "Rita",
  "Kirk"
]

puts "What is your name?"
user_name = gets
user_name = user_name.strip

names.each do |name|
  if name == user_name.capitalize
    puts "Hey #{user_name}!"
  else
    puts "Who goes there?"
  end
end
