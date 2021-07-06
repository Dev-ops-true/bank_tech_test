# frozen_string_literal: true

require 'terminal-table'
require './lib/statement'

class Account
  attr_accessor :balance, :statement

  def initialize(balance = 0)
    @balance = balance
    @statement = Statement.new
  end

  def deposit(money)
    @balance += money
    @statement.add_deposit(money, @balance)
  end

  def withdraw(money)
    @balance -= money
    @statement.add_withdraw(money, @balance)
  end

  def print
    @statement.print_statement
  end
end
