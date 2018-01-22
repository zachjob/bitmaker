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
    @balance *= @interest_rate
  end

end

zach = BankAccount.new
puts zach.balance
zach.deposit(5)
puts zach.balance
zach.withdraw(3)
puts zach.balance
zach.gain_interest
puts zach.balance
