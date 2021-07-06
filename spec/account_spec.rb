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

  describe '#print' do
    it 'prints a statement' do
      @acc.stub(:print).and_return('This is your statement')
      expect(@acc.print).to eq('This is your statement')
    end
  end
end
