# frozen_string_literal: true

class Statement
  attr_accessor :statement

  def initialize(statement = [])
    @statement = statement
  end

  def add_withdraw(money, balance, date = current_time)
    @statement << { date: date, credit: 0, debit: money, balance: balance }
  end

  def add_deposit(money, balance, date = current_time)
    @statement << { date: date, credit: money, debit: 0, balance: balance }
  end

  def print_statement
    rows = []
    @statement.each do |statement|
      rows << [statement[:date], statement[:credit], statement[:debit], statement[:balance]]
    end
    table = Terminal::Table.new headings: %w[Date Credit Debit Balance], rows: rows
    puts table
  end

  private

  def current_time
    Time.now.strftime('%d/%m/%Y')
  end
end
