require 'account'

describe "account" do 
  acc = Account.new
  it 'creates a new account' do 
   
    expect(acc).to be_a(Account)
  end
  
end
