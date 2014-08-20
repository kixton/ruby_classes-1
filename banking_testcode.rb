require_relative 'banking'


### CREATING ACCOUNTS ###
chase = Bank.new("JP Morgan Chase")
wells_fargo = Bank.new("Wells Fargo")
me = Person.new("Shehzan", 500)
friend1 = Person.new("John", 1000)
chase.open_account(me)
chase.open_account(friend1)
wells_fargo.open_account(me)
wells_fargo.open_account(friend1)

# puts chase.accounts 
# puts wells_fargo.accounts


### WITHDRAWING AND DEPOSITING ###
chase.deposit(me, 200)
# chase.deposit(me, 100)
chase.deposit(friend1, 300)
chase.withdraw(me, 50)

### TRANSFERS ###
chase.transfer(me, wells_fargo, 100)

# puts chase.accounts  
# puts wells_fargo.accounts


### EXTRA CREDIT ###
chase.deposit(me, 5000)
# chase.deposit(me, 5000)
chase.withdraw(me, 5000)

# puts chase.accounts  
# puts wells_fargo.accounts
# puts me.cash

puts chase.total_cash_in_bank
puts wells_fargo.total_cash_in_bank


### EXTRA CREDIT - CREDIT CARD SYSTEM ###

# chase.issue_card(me, 5000) # JP Morgan Chase has issued a credit card to Shehzan with a $5000 credit limit.
# chase.issue_card(friend1, 2500)
# wells_fargo.issue_card(me, 2000)

# print "Chase Credit Card Accounts: "
# puts chase.cc_accounts # {"Shehzan"=>5000, "John"=>2500}

# print "Wells Fargo Credit Card Accounts: "
# puts wells_fargo.cc_accounts # {"Shehzan"=>2000}

# print "Chase Credit Card Outstanding: "
# puts chase.cc_outstanding # {"Shehzan"=>0, "John"=>0}

# chase.cc_charge(me, 500) # Shehzan charged $500 to the JP Morgan Chase credit card. Shehzan has $4500 available credit.
# chase.cc_charge(me, 100) # See above
# chase.cc_charge(me, 10000) # Shehzan does not have enough credit on the JP Morgan Chase credit card to make a chanre of $10000.
# chase.cc_charge(friend1, 100)

# puts chase.cc_outstanding # {"Shehzan"=>600, "John"=>100}

# chase.cc_payment(me, 100) # Shehzan made a payment of $100 on the JP Morgan Chase credit card. Shehzan now has $4500 available credit.
# chase.cc_payment(friend1, 20) # See above
# chase.cc_payment(me, 500) # Pay off balance in full
# chase.cc_payment(me, 2000) # Shehzan cannot make a payment of $2000. Shezhan has $500 outstanding.


# chase_cc = CreditCard.new("JP Morgan Chase")
# wells_fargo_cc = CreditCard.new("Wells Fargo")

# chase_cc.issue_card(me, 5000)
# chase_cc.issue_card(friend1, 2000)

# puts chase_cc.credit_card_accounts

