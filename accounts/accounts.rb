class BankAccount
  @@interest_rate = 1.0115
  @@accounts = []

  def self.create
    @@accounts << BankAccount.new
    BankAccount.new
  end

  def self.total_funds
    account = 0
    @@accounts.each do |amount|
      account += amount.update
      account.to_s
    end
  end

  def self.interest_time
    @@accounts.each do |amount|
      @balance = amount.update*@@interest_rate
    end
  end

  def initialize
    @balance = 0
  end

  def balance
    @balance.to_s
  end

  def update
    @balance
  end

  def deposit (amount)
    @balance += amount
  end

  def withdraw (amount)
    @balance -= amount
  end

end

my_account = BankAccount.create

my_account = BankAccount.create
your_account = BankAccount.create
puts my_account.balance # 0
puts BankAccount.total_funds # 0
my_account.deposit(200)
your_account.deposit(1000)
puts my_account.balance # 200
puts your_account.balance # 1000
puts BankAccount.total_funds # 1200
BankAccount.interest_time
puts my_account.balance # 202.0
puts your_account.balance # 1010.0
puts BankAccount.total_funds # 1212.0
my_account.withdraw(50)
puts my_account.balance # 152.0
puts BankAccount.total_funds # 1162.0
