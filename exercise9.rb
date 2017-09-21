students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

def student_population (class_size)
  class_size.each do |cohort, num_students|
    puts "#{cohort}: #{num_students} students"
  end
end

students[:cohort4] = 43

student_population students
