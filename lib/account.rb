# frozen_string_literal: true

require 'terminal-table'
require './lib/statement'

class Account
  attr_accessor :balance, :history

  def initialize(balance = 0, history = [])
    @balance = balance
    @history = history
  end

  def deposit(money)
    @balance += money
    add_deposit(money, @balance)
  end

  def withdraw(money)
    @balance -= money
    add_withdraw(money, @balance)
  end

  def add_withdraw(money, balance, date = current_time)
    @history << { date: date, credit: 0, debit: money, balance: @balance }
  end

  def add_deposit(money, balance, date = current_time)
    @history<< { date: date, credit: money, debit: 0, balance: @balance }
  end

  def print
    @history.print_statement
  end

  private

  def current_time
    Time.now.strftime('%d/%m/%Y')
  end
end
