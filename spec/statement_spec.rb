# frozen_string_literal: true

require 'statement'

describe Statement do
  before :each do
    @statement = Statement.new
  end

  describe '.statement' do
    it 'creates a new statement' do
      expect(@statement).to be_a(Statement)
    end
  end

  describe '#add_withdraw' do
    it 'adds a withdrawel to a statement' do
      @statement.add_withdraw(100, 0)
      expect(@statement.statement[0][:debit]).to eq(100)
    end
  end

  describe '#add_deposit' do
    it 'adds a deposit to a statement' do
      @statement.add_deposit(100, 0)
      expect(@statement.statement[0][:credit]).to eq(100)
    end
  end

  describe '#print_statement' do
    it 'printing a statement' do
      @statement.stub(:print_statement).and_return('It Works')
      expect(@statement.print_statement).to eq('It Works')
    end
  end
end
