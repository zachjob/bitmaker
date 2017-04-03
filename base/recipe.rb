class Recipe

  attr_reader :name, :temperature, :ingredients

  def initialize(recipe)
    @name        = recipe['name']
    @temperature = recipe['temperature'].to_i
    @ingredients = recipe['ingredients']
  end

end
