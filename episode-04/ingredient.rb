class Ingredient

  def self.names
    Episode::EPISODE_NUMBERS.map do |number|
      Episode.new(number).recipe.ingredients
    end.flatten.uniq
  end

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end
