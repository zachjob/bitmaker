def Player

  def initialize
    @gold_coins = 0
    @lives = 5
    @health_points = 10
  end

  def restart
    @gold_coins = 0
    @lives = 5
    @health_points = 10
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins +=1

    if @gold_coins % 10 = 0
      self.level_up
    end


  end

  def do_battle

  end

end
