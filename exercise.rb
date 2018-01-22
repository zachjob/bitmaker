class Person

  def initialize(name, emotions)
    @name = name
    @emotions = emotions
  end

  def levels
    @emotions.each do |emotion, level|
      if level >= 3
        puts "I feel a high level of #{emotion}."
      elsif level == 2
        puts "I feel a moderate level of #{emotion}."
      else
        puts "I feel a low level of #{emotion}."
      end
    end
  end
end

zach = Person.new("Zach", { happiness: 3, stress: 2, fear: 1 })
zach.levels
