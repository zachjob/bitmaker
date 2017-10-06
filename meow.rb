class Cat

  def initialize (name, food, feed)
    @name = name
    @preferred_food = food
    @meal_time = feed.to_i
  end

end

nex = Cat.new("Nex", "Salmon", 12)
sam = Cat.new("Sam", "Tuna", 11)
