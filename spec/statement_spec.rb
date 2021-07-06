require 'statement'

describe '.statement' do 
  it 'creates a new statement' do 
    statement = Statement.new 
    expect(statement).to be_a(Statement)
  end
end  

describe '#add_withdraw' do 
  it 'adds a withdrawel to history' do
    statement = Statement.new
    statement.add_withdraw(100)
    expect(statement.history).to eq([{:date=>"06/07/2021", :credit=>0, :debit=>100, :balance=>nil}])
  end  
end