class Bank
  def initialize(balance = 0)
    @balance = balance
  end

  def view_balance
    "£#{@balance}"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end