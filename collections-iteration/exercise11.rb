# countries = [
#   canada = {
#     "name" => "Canada",
#     "continent" => "North America",
#     "island" => "is not an island."
#   },
#   australia = {
#     "name" => "Australia",
#     "continent" => "Australia",
#     "island" => "is an island."
#   },
#   england = {
#     "name" => "England",
#     "continent" => "Europe",
#     "island" => "is an island."
#   }

puts "How many pizzas do you want to order?"

quantity = gets.to_i
pizzas = {}

quantity.times do |time|
  puts "How many toppings on pizza #{time}?"
  pizzas[time] = gets.to_i

  puts "You have ordered a pizza with #{pizzas[time]} toppings."
end
