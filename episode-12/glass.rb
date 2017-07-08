class Glass

  LUKE_WARM = 37

  def initialize
    @inside      = Location.new
    @temperature = LUKE_WARM
    @errors      = []
  end

  def inside
    @inside
  end

  def temperature
    @temperature
  end

  def temperature=(new_temperature)
    @temperature = new_temperature
  end

  def errors
    @errors
  end

  def errors=(new_errors)
    @errors = new_errors
  end

  def ingredients
    @inside.contents.map { |item| item.name }
  end

  def errors?
    @errors.size > 0
  end

  def valid?
    @errors.size == 0
  end

end
