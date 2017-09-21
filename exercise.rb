# Exercise 0
# your favourite colours
fav_colours = [
  "red",
  "purple",
  "indigo",
  "cyan",
  "cerulean"
]


# the age of you and your siblings/cousins/friends
age = [
  "19",
  "20",
  "23",
  "27"
]

# flip a coin 5 times and record whether or not the result was 'heads'
coin_flip = [
  "heads",
  "heads",
  "tails",
  "tails",
  "tails"
]

# your three favourite performing artists
artists = [
  "Imagine Dragons",
  "Above & Beyond",
  "Andrew Bayer"
]

# your favourite colours again (this time as symbols instead of strings)
colour_symbols = [
  :red,
  :purple,
  :indigo,
  :cyan,
  :cerulean
]

# three words and their definitions
dictionary = {
  :the => "Used before singular or plural nouns and noun phrases that denote particular, specified persons or things",
  :to => "In a direction toward so as to reach",
  :it => "Used to refer to that one previously mentioned. Used of a nonhuman entity; an animate being whose sex is unspecified, unknown, or irrelevant; a group of objects or individuals; an action; or an abstraction"
}

# your favourite movie names and their year of creation
# movies = {
#   "Inception" => "2010",
#   "Spiderman: Homecoming" => "2017",
#   "Captain America: Civil War" => "2016"
# }

# three cities of the world and their population
cities = {
  "Toronto" => "1",
  "New York City" => "2",
  "London" => "3"
}

# the names of your siblings/cousins/friends and their ages
friends = {
  "Aros" => "27",
  "Sabrina" => "21",
  "Mark" => "26"
}

# coin_flip.each do |flip|
#  puts flip
# end

# puts fav_colours[0]

# puts age.sort

# age << 0

# puts movies["Inception"]

# puts artists[0..1]

# puts fav_colours.min

# cities["Berlin"] = "4"

# puts coin_flip.reverse

# puts cities["Toronto"]

# artists.each do |artist|
#   puts "#{artist} is dope."
# end

# movies.each do |title, year|
#  puts "The movie #{title} was first shown in #{year}."
# end

# puts age.sort.reverse

# movies["Beauty and the Beast"] = ["1991", "2017"]

# age.each do |user_age|
#  if user_age.to_i < 20
#    puts user_age
#  end
# end

# puts coin_flip.length

# puts age.max

# artists.pop
# puts artists

# cities["Toronto"] = "8,000,000"
# puts cities["Toronto"]


# cities.each do |city, population|
#   total_population = population.to_i
#   total_population = total_population + population.to_i
#   puts total_population
# end

# friends.each do |person, age|
#   if age.to_i < 20
#     puts "#{person} is young."
#   else
#     puts "#{person} is old."
#   end
# end

# puts fav_colours[(fav_colours.length - 1)..fav_colours.length]

# age.each do |user_age|
#   puts user_age.to_i + 1
# end

# fav_colours << ["Violet", "Sanguine"]
# puts fav_colours

movies = {
  1999 => ["The Matrix", "Star Wars: Episode 1", "The Mummy"],
  2009 => ["Avatar", "Star Trek", "District 9"],
  2019 => ["How to Train Your Dragon 3", "Toy Story 4", "Star Wars: Episode 9"],
}

dial = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8 ,9],
  ["*", 0, "#"]
]

# Make a new array that contains information about three countries. Each country should be a hash that has a name, a continent, and whether or not it is an island.

countries = [
  canada = {
    "name" => "Canada",
    "continent" => "North America",
    "island" => "is not an island."
  },
  australia = {
    "name" => "Australia",
    "continent" => "Australia",
    "island" => "is an island."
  },
  england = {
    "name" => "England",
    "continent" => "Europe",
    "island" => "is an island."
  }
]

# limit = 0
# dont_skate = ["I will not skateboard in the halls"]
#
# until limit == 19
#   limit += 1
#   dont_skate << "I will not skateboard in the halls"
#   puts dont_skate
# end

# fifty = (1..50).to_a
#
# sum = 0
#
# fifty.each do |num|
#   sum = sum + num
#   puts sum
# end

# fifty = (1..50).to_a
# times_three = []
#
# fifty.each do |num|
#   3.times do
#     times_three << num
#   end
# end
#
# puts times_three

# islands = ["Japan"]
#
# countries.each do |place|
#   if place["island"] == "is an island."
#     islands << place["name"]
#     puts islands
#   end
# end

# expenses = [250, 7.95, 30.95, 16.50]
#
# expenses2 = [50, 795, 30, 1650]
#
# expense_sum = 0
#
# def sum_expenses (expense_sheet)
#   sum = 0
#   expense_sheet.each do |item|
#     sum = sum + item
#   end
#   sum
# end
#
# expense_sum = sum_expenses expenses
# puts expense_sum

grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

def display_list (groceries)
  groceries.sort.each do |item|
    puts "* #{item}"
  end
end

# grocery_list << "rice"
grocery_list.pop

display_list grocery_list

# puts grocery_list.length

# if grocery_list.include?("bananas") == true
#   puts "You need to pick up bananas."
# else
#   puts "You don't need to pick up bananas today."
# end
