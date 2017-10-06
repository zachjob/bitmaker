class Cat

  def initialize (name, food, feed)
    @name = name
    @preferred_food = food
    @meal_time = feed.to_i
  end

  def eats_at

    if @meal_time >= 12
      "#{@meal_time} PM"
    else
      "#{@meal_time} AM"
    end

  end

end

nex = Cat.new("Nex", "Salmon", 12)
sam = Cat.new("Sam", "Tuna", 11)

puts nex.eats_at
puts sam.eats_at
