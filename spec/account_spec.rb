# frozen_string_literal: true

require 'account'

describe 'account' do
  acc = Account.new

  it 'creates a new instance of Account' do
    expect(acc).to be_a(Account)
  end

  it 'initializes a new account with a balance of 0' do
    expect(acc.balance).to eq(0)
  end
end

describe '#deposit' do
  it 'deposits money into the account' do
    acc = Account.new
    acc.deposit(550)
    expect(acc.balance).to eq(550)
  end
end

describe '#withdraw' do
  it 'can withdraw money from the account' do
    acc = Account.new
    acc.deposit(550)
    acc.withdraw(500)
    expect(acc.balance).to eq(50)
  end
end

describe '#print_statement' do
  it 'printing a statement' do
    acc = Account.new
    acc.stub(:print_statement).and_return('It Works')
    expect(acc.print_statement).to eq('It Works')
  end
end
