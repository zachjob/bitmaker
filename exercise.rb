class Task

  def initialize (description, due_date)
    @description = description
    @due_date = due_date
  end

  def description
    @description
  end

  def due_date
    @due_date
  end

  def show_task
    "#{description} is due #{due_date}"
  end

end

task1 = Task.new("Test", "today")
task2 = Task.new("Commit", "tomorrow")
task3 = Task.new("Submit", "tomorrow")

puts task1.show_task
puts task2.show_task
puts task3.show_task
