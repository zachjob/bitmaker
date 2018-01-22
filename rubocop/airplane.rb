class Airplane
  @@all = []

  def initialize
    @location = 'ground'
    @@all << self
  end

  def fly
    @who_is_up_in_the_sky_with_me = 'nobody'
    @location = 'sky'
  end

  def land
    @location = 'ground'
  end

  def self.all
    @@all
  end

  def passengers
    [
      mila: 'vegetarian',
      paul: 'chicken',
      egon: 'chicken',
      sama: 'chicken'
    ]
  end

  def self.ground_all
    @@all.each(&:land)
  end

  def self.planes_for_ten_airports
    10 * @@all.size
  end
end
