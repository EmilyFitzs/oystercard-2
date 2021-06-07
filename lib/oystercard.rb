class Oystercard

  attr_reader :balance
  MAX_BALANCE = 90
  
  def initialize
    @balance = 0
  end

  def top_up(amount)
    fail "Balance has reached limit of 90" if amount + balance > MAX_BALANCE
    @balance += amount
  end
  
end