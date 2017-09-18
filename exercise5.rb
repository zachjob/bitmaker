distance_travelled = 0

until distance_travelled >= 20

    puts "Would you like to walk or run?"
    travel_speed = gets

    if travel_speed == "walk\n"
      distance_travelled += 1
      puts "You have travelled #{distance_travelled} kilometers."
    elsif travel_speed == "run\n"
      distance_travelled += 5
      puts "You have travelled #{distance_travelled} kilometers."
    else
      puts "That is not an option. Please enter \"walk\" or \"run\""
    end
      
end
