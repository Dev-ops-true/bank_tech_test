# frozen_string_literal: true
require 'terminal-table'
require 'statement'

class Account
  attr_reader :balance, :statement

  def initialize(balance = 0)
    @balance = balance
    @statement = Statement.new
  end

  def deposit(money)
    @balance += money
    @statement.add_deposit(money)
  end

  def withdraw(money)
    @balance -= money
    @statement.add_withdraw(money)
  end

  def print_statement
    rows = []
    @statement.each do |statement|
      rows << [statement[:date], statement[:credit], statement[:debit], statement[:balance]]
    end
    table = Terminal::Table.new headings: %w[Date Credit Debit Balance], rows: rows
    puts table
  end

end
