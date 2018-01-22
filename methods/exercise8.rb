def person_speed (user_speed)
  puts "How far did person run (in metres)?"
  user_distance = gets.to_f

  puts "How long (in minutes) did it take for person to run #{user_distance}?"
  user_mins = gets.to_f

  user_secs = user_mins * 60
  speed = user_distance/user_secs

  return speed
end


speed1 = person_speed speed1
speed2 = person_speed speed2
speed3 = person_speed speed3

if speed3 > speed2 && speed3 > speed1
  puts "Person 3 was the fastest at #{speed3} m/s"
elsif speed2 > speed3 && speed2 > speed1
  puts "Person 2 was the fastest at #{speed2} m/s"
elsif speed1 > speed3 && speed1 > speed2
  puts "Person 1 was the fastest at #{speed1} m/s"
elsif speed1 == speed2 && speed2 == speed3
  puts "Everyone tied at #{speed1} m/s"
else
  puts "Well done everyone!"
end
