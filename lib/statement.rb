class Statement 

  attr_accessor :history

  def initialize(history = [])
    @history = history
  end

  def add_withdraw(date = current_time, money)
    @history << { date: date, credit: 0, debit: money, balance: @balance }
  end

  def add_deposit(date = current_time, money)
    @history << { date: date, credit: money, debit: 0, balance: @balance }
  end

  def current_time
    Time.now.strftime('%d/%m/%Y')
  end

end