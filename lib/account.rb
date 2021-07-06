# frozen_string_literal: true
require 'terminal-table'

class Account
  attr_reader :balance, :history

  def initialize(balance = 0, history = [])
    @balance = balance
    @history = history
  end

  def deposit(money)
    @balance += money
    add_deposit(money)
  end

  def withdraw(money)
    @balance -= money
    add_withdraw(money)
  end

  def print_statement
    rows = []
    @history.each do |history|
      rows << [history[:date], history[:credit], history[:debit], history[:balance]]
    end
    table = Terminal::Table.new headings: %w[Date Credit Debit Balance], rows: rows
    puts table
  end

  private

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
