class BankAccount

  def initialize
    @balance = 0
    @interest_rate = 1.0115
  end

  def balance
    @balance.to_s
  end

  def deposit (amount)
    @balance += amount
  end

  def withdraw (amount)
    @balance -= amount
  end

  def gain_interest
    @balance += @balance * @interest_rate
  end

end
