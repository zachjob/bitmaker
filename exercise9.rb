students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

def student_population (class_size)
  class_size.each do |cohort, num_students|
    num_students = num_students*1.05
    puts "#{cohort}: #{num_students} students"
  end
end

# students[:cohort4] = 43

student_population students
