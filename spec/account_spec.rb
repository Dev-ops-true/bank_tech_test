# frozen_string_literal: true

require 'account'

describe Account do
  before :each do
    @acc = Account.new
  end

  describe 'account' do
    it 'creates a new instance of Account' do
      expect(@acc).to be_a(Account)
    end

    it 'initializes a new account with a balance of 0' do
      expect(@acc.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'deposits money into the account' do
      p @acc
      @acc.deposit(550)
      expect(@acc.balance).to eq(550)
    end
  end

  describe '#withdraw' do
    it 'can withdraw money from the account' do
      @acc.deposit(550)
      @acc.withdraw(500)
      expect(@acc.balance).to eq(50)
    end
  end

  describe '#add_withdraw' do
  it 'adds a withdrawel to a statement' do
    @acc.add_withdraw(100, 0)
    expect(@acc.history[0][:debit]).to eq(100)
  end

  it 'is able to hold a withdrawel' do
    @acc.add_withdraw(100, 0)
    expect(@acc.history.length).to eq(1)
  end
end

describe '#add_deposit' do
  it 'adds a deposit to a statement' do
    @acc.add_deposit(100, 0)
    expect(@acc.history[0][:credit]).to eq(100)
  end
end

  describe '#print' do
    it 'prints a statement' do
      @acc.stub(:print).and_return('This is your statement')
      expect(@acc.print).to eq('This is your statement')
    end
  end
end
