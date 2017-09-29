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
