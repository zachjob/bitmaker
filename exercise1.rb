def convert_grade (user_grade)
  puts "Please enter your percentage:"
  user_grade = gets.to_i

  if user_grade >= 80
    puts "Your grade is A."
  elsif user_grade <= 79 && user_grade >= 70
    puts "Your grade is B."
  elsif user_grade <= 69 && user_grade >= 60
    puts "Your grade is C."
  elsif user_grade <= 59 && user_grade >= 50
    puts "Your grade is D."
  else
    puts "You have failed."
  end
end

user_grade = convert_grade (user_grade)

puts user_grade
