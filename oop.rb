class Location

  def initialize
    puts "Type the Destination:"
    @name = gets
  end

  def show_name
    "#{@name}"
  end

end

class Trip

  def initialize
    @destinations = []
  end

  def add_location
    @destinations << Location.new
  end

  def trip_log
    i = 0
    @destinations.length.times
      puts "I went from #{@destinations[i].show_name} to #{@destinations[i+1].show_name}"
    end

end

canada = Trip.new
canada.add_location
canada.add_location
canada.trip_log
