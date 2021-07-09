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



  describe '#print_statement' do
    it 'printing a statement' do
      @statement.print_statement
      @statement.stub(:print_statement).and_return('It Works')
      expect(@statement.print_statement).to eq('It Works')
    end
  end
end
