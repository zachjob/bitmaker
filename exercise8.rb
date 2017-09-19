def person_distance (user_distance)
  puts "How far did person run (in metres)?"
  user_distance = gets.to_f

  return user_distance
end

def person_mins (user_mins)
  puts "How long (in minutes) did person run?"
  user_mins = gets.to_f

  return user_mins
end

def person_speed (user_mins, user_distance)
  user_secs = user_mins * 60
  speed = user_distance/user_secs

  return speed
end


distance1 = person_distance (distance1)
mins1 = person_mins (mins1)

distance2 = person_distance (distance2)
mins2 = person_mins (mins2)

distance3 = person_distance (distance3)
mins3 = person_mins (mins3)

speed1 = person_speed mins1, distance1
speed2 = person_speed mins2, distance2
speed3 = person_speed mins3, distance3

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
