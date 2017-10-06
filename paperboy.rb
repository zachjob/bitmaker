class Paperboy

  def initialize (name)
    @name = name
    @experience = 0
    @earnings = 0.00
    @quota = 50
    @paper = 0.25
    @preemo = 0.50
  end

  def deliver(start_address, end_address)
    delivered = (end_address - start_address) + 1
    if delivered < @quota
      @earnings += (delivered.to_f * @paper) - 2
    elsif delivered > @quota
      @earnings += (@quota * @paper) + ((delivered - @quota) * @preemo)
    else
      @earnings += (delivered.to_f * @paper)
    end
    @experience += delivered
    @quota += delivered / 2
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end

  def quota
    @quota
  end

  def earnings
    @earnings
  end

end

tommy = Paperboy.new("Tommy")
puts tommy.quota # => 50
tommy.deliver(101, 160) # => 17.5
puts tommy.earnings #=> 17.5
puts tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"
