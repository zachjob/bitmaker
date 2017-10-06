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

  def meow

    "My name is #{@name} and I eat #{@preferred_food} at #{self.eats_at}"

  end

end

nex = Cat.new("Nex", "Salmon", 12)
sam = Cat.new("Sam", "Tuna", 11)

puts nex.meow
puts sam.meow
