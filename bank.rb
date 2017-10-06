class BankAccount
  @@interest_rate = 1.0115

  def initialize
    @balance = 0
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

end
