# If they rate documentaries four or higher, recommend the documentary. If they rate documentaries 3 or lower but both comedies and dramas 4 or higher, recommend the dramedy. If they rate only dramas 4 or higher, recommend the drama. If they rate just comedies 4 or higher, recommend the comedy. Otherwise, recommend a good book.

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

if doc_rating >= 4
  puts documentary_recommendation
elsif doc_rating >= 3 && comedy_rating >= 4 && drama_rating >= 4
  puts comedy_recommendation
elsif drama_rating >= 4 && doc_rating <= 3 && comedy_rating <= 3
  puts drama_recommendation
elsif comedy_rating >= 4 && drama_rating <= 3 && comedy_rating <= 3
  puts comedy_recommendation
else
  puts "Maybe look into books."
end
