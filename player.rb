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

  def do_battle (damage)
    @health_points -= damage

    if @health_points <= 0
      @lives -= 1
      if @lives <= 0
        self.restart
      end
    end
  end

  def health
    @health_points
  end

  def gold
    @gold_coins
  end

  def lives
    @lives
  end

end

zach = Player.new
