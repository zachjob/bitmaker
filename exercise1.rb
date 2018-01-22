puts "Do you enjoy documentaries, comedies, or dramas?"

documentary_recommendation = "The 5th Estate"
comedy_recommendation = "Trainwreck"
drama_recommendation = "I'm not sure, good luck."
user_reply = gets

if user_reply.capitalize == "Documentary\n" || user_reply.capitalize == "Documentaries\n"
  puts comedy_recommendation
elsif user_reply.capitalize == "Comedy\n" || user_reply.capitalize == "Comedies\n"
  puts comedy_recommendation
elsif user_reply.capitalize == "Drama\n" || user_reply.capitalize == "Dramas\n"
  puts drama_recommendation
else
  puts "Your response is not an available option. Please pick between documentaries, comedies, or dramas."
end
