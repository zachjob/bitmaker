class Replicator

  def initialize(enterprise)
    @enterprise  = enterprise
    @tummy = Location.new
    @plate = Location.new
    @power = false
    connect_to_power
  end

  def plate
    @plate
  end

  def connect_to_power
    @power = @enterprise.reactor.on
  end

  def replicate(recipe)
    @recipe = recipe
    retrieve_glass
    transport_ingredients_to_glass
    mix
    adjust_temperature
    transport_glass_to_replicator_plate
  end

  def retrieve_glass
    @enterprise.transporter.energize(
      @enterprise.cupboard.find_glass,
      @enterprise.cupboard.shelf,
      @tummy
    )
  end

  def glass_in_tummy
    @tummy.contents.first
  end

  def transport_ingredients_to_glass
    return unless glass_in_tummy

    @recipe.ingredients.each do |ingredient_name|
      @enterprise.transporter.energize(
        @enterprise.pantry.find_ingredient(ingredient_name),
        @enterprise.pantry.shelf,
        glass_in_tummy.inside
      )
    end
  end

  def mix
    return unless glass_in_tummy

    if @power && @enterprise.reactor.draw_power(3)
      glass_in_tummy.inside.contents.shuffle!.compact!
    end
  end

  def adjust_temperature
    return unless glass_in_tummy

    glass_in_reactor_core = @enterprise.transporter.energize(
      glass_in_tummy,
      @tummy,
      @enterprise.reactor.core
    )

    desired_temperature = @recipe.temperature
    maximum_adjustments_allowed = 50
    number_of_adjustments = 0

    while glass_in_reactor_core.temperature != desired_temperature &&
          number_of_adjustments < maximum_adjustments_allowed

      if glass_in_reactor_core.temperature > desired_temperature
        @enterprise.reactor.cool_items_in_core
      elsif glass_in_reactor_core.temperature < desired_temperature
        @enterprise.reactor.heat_items_in_core
      end

      number_of_adjustments += 1

    end

    @enterprise.transporter.energize(
      glass_in_reactor_core,
      @enterprise.reactor.core,
      @tummy
    )

  end

  def transport_glass_to_replicator_plate
    @enterprise.transporter.energize(
      glass_in_tummy,
      @tummy,
      @plate
    )
  end

end
