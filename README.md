## Bank Tech Test

### Intent
This app is intended to kepe track of deposits/withdrawls and printing out account balances

### Structure
This program has two classes. The first is to interact with the acount i.e. create a new account, deposit money into the account, withdraw money from the account and print, which allows you to see the transacton history of the account. The second class is there to store the transaction history of the account and to render it into a neat table when the print method is called on the account.

### How to use
To run this application you will need to type the following into the command line:
irb -r ./lib/account.rb
To creater a new account type: example_account = Account.new
To deposit money into that account type: example_account.deposit(money value)
To withdraw money from the account type: example_account.withdraw(money value)
To display your statement type: example_account.print_statement

### Install
This repo will need to be clone/forked in order to use the code

### Running the tests
RSPEC needs to be intalled on your intended device in order to run the tests

### Dependancies/Stack
Visual Studio code is used to write the code
RSPEC is used to test the code
Github is used to store the code along with all the commit history

### Credits
Dev Viljoen