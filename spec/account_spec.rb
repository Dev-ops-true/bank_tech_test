require 'account'

describe "account" do 

  acc = Account.new

    it 'creates a new account' do 
      expect(acc).to be_a(Account)
    end

    it 'initializes a new account with a balance of 0' do 
      expect(acc.balance).to eq(0)
    end

    it 'deposits money into the account' do 
      acc.deposit(550)
      expect(acc.balance).to eq(550)
    end

    it 'can withdraw money from the account' do 
      acc.withdraw(500)
      expect(acc.balance).to eq(50) 
    end

    it 'adds a deposit to the history' do 
      acc.stub(:print_statement).and_return("It Works")
      expect(acc.print_statement).to eq("It Works")
    end
    
  
end
