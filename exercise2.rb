puts "Rate each genre below and receive a recommendation!"

documentary_recommendation = "The 5th Estate"
comedy_recommendation = "Trainwreck"
drama_recommendation = "I'm not sure, good luck."

puts "Documentaries (1-5):"
doc_rating = gets.to_i

puts "Comedies (1-5):"
comedy_rating = gets.to_i

puts "Dramas (1-5):"
drama_rating = gets.to_i


if user_reply.capitalize == "Documentary\n" || user_reply.capitalize == "Documentaries\n"
  puts comedy_recommendation
elsif user_reply.capitalize == "Comedy\n" || user_reply.capitalize == "Comedies\n"
  puts comedy_recommendation
elsif user_reply.capitalize == "Drama\n" || user_reply.capitalize == "Dramas\n"
  puts drama_recommendation
else
  puts "Your response is not an available option. Please pick between documentaries, comedies, or dramas."
end
