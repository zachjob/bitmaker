class Todolist

  def initialize (project_name)
    @project_name = project_name
    @tasks = []
  end

  def add_task (description, due_date)
    @tasks << Task.new(description, due_date)
  end

  def show_tasks
    "#{@project_name} has #{@tasks.length} tasks. #{@tasks}"
  end
end

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

project1 = Todolist.new("Reinforcing Exercises: OOP")

project1.add_task("Test", "today")
project1.add_task("Commit", "tomorrow")
project1.add_task("Submit", "tomorrow")

puts project1.show_tasks
