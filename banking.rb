class Person
	
	attr_accessor :name
	attr_accessor :cash

	def initialize(person_name, cash_on_hand)
		@name = person_name
		@cash = cash_on_hand
		puts "Hi, #{name}. You have $#{@cash}!"
	end
		
end


class Bank

	attr_accessor :bank
	attr_accessor :accounts
	attr_accessor :amount
	attr_accessor :withdraw
	attr_accessor :cc_accounts
	attr_accessor :cc_outstanding

	def initialize(bank_name)
		@bank = bank_name
		puts "#{@bank} bank was just created."
		@accounts = {} # person.name=>$
		@cc_accounts = {} # person.name=>credit limit
		@cc_outstanding = {} # person.name=>cc_charges, net cc_payments
	end

	def open_account(person)
		puts "#{person.name}, thanks for opening an account at #{@bank}!"
		@accounts[person.name] = 0 # push person into accounts hash; beginning value = 0
	end

	def deposit(person, amount)
		if person.cash >= amount # max deposit is the amount of cash someone has on hand
			person.cash -= amount # cash on hand is reduced about amount deposited into bank
			@accounts[person.name] += amount # push deposit into person's account
			puts "#{person.name} deposited $#{amount} to #{@bank}. #{person.name} has $#{person.cash}. #{person.name}'s account has $#{@accounts[person.name]}."
		# elsif person.cash == 0 # evaluates NO Cash (vs. Insufficient Cash... see else)
		# 	puts "#{person.name} has no cash on hand and cannot deposit any money."
		else	
			puts "#{person.name} does not have enough cash to deposit $#{amount}."
			# cash_on_hand = person.cash 
			# @accounts[person.name] += person.cash # deposit person.cash only
			# person.cash = 0
			# puts "#{person.name} deposited remaining $#{cash_on_hand} to #{@bank}. #{person.name} has $#{person.cash}. #{person.name}'s #{@bank} account has $#{@accounts[person.name]}."
		end	
	end
	
	def withdraw(person, amount)
		if @accounts[person.name] >= amount
			@accounts[person.name] -= amount # reduce money from bank account
			person.cash += amount # increase money_on_hand by withdraw amount
			puts "#{person.name} withdrew $#{amount} from #{@bank}. #{person.name} has $#{person.cash}. #{person.name}'s account has $#{@accounts[person.name]}."
		else
			puts "#{person.name} does not have enough money in the account to withdraw $#{amount}."
		end	
	end

	def transfer(person, to_bank, amount)
		@accounts[person.name] -= amount # reduce transfer amount from from_bank
		to_bank.accounts[person.name] += amount # increase transfer amount to to_bank
		# person's cash_on_hand unchanged
		puts "#{person.name} transfered $#{amount} from the #{@bank} account to the #{to_bank.bank} account. The #{@bank} account has $#{@accounts[person.name]} and the #{to_bank.bank} account has $#{to_bank.accounts[person.name]}."
	end

	def total_cash_in_bank # Extra Credit (level 2)
		total = 0 
		@accounts.each_value { |value| total += value} 	
		puts "#{@bank} has $#{total} in the bank."
	end	

	def issue_card(person, credit_limit) # Extra Credit (level 5)
		# @credit = credit_limit
		@cc_accounts[person.name] = credit_limit
		@cc_outstanding[person.name] = 0
		puts "#{@bank} has issued #{person.name} a credit card with a $#{@credit} credit limit."
	end

	def cc_charge(person, amount) # Extra Credit (level 5)
		if amount <= @cc_accounts[person.name]
			@cc_outstanding[person.name] += amount
			available_credit = @cc_accounts[person.name] - @cc_outstanding[person.name]
			puts "#{person.name} charged $#{amount} to the #{@bank} credit card. #{person.name} has $#{available_credit} available credit remaining and $#{@cc_outstanding[person.name]} outstanding."
		else
			available_credit = @cc_accounts[person.name] - @cc_outstanding[person.name]
			puts "#{person.name} does not have enough credit on the #{@bank} credit card to make a charge of $#{amount}. #{person.name} only has $#{available_credit} available credit." 
		end		
	end
	
	def cc_payment(person, amount) # Extra Credit (level 5)
		if amount < @cc_outstanding[person.name]
			@cc_outstanding[person.name] -= amount
			available_credit = @cc_accounts[person.name] - @cc_outstanding[person.name]
			puts "#{person.name} made a payment of $#{amount} on the #{@bank} credit card. #{person.name} now has $#{available_credit} available credit and $#{@cc_outstanding[person.name]} outstanding."
		elsif amount == @cc_outstanding[person.name]
			@cc_outstanding[person.name] -= amount
			available_credit = @cc_accounts[person.name] - @cc_outstanding[person.name]
			puts "#{person.name} made a payment of $#{amount} and paid off the #{@bank} credit card balance in full. #{person.name} now has $#{available_credit} available credit and $#{@cc_outstanding[person.name]} outstanding."
		else  
			puts "#{person.name} cannot make a payment of $#{amount}. #{person.name}'s #{@bank} credit card has a balance $#{@cc_outstanding[person.name]}."
		end	
	end	
end


# class CreditCard

# 	attr_accessor :bank_credit_card
# 	attr_accessor :credit_card_accounts	

# 	def initialize(bank)
# 		@bank_credit_card = bank
# 		puts "#{@bank_credit_card} credit card was just created!"
# 		@credit_card_accounts = {}

# 	end	

# 	def issue_card(person, credit_limit)
# 		@credit = credit_limit
# 		@credit_card_accounts[person] = @credit
# 		puts "#{@bank_credit_card} has issued #{person.name} a credit card with a limit of $#{@credit}"
# 	end	

# 	def charge(person, amount)

# 	end	

# end	

=begin
# Credit Card System Notes

Option A:  CreditCard system as new Class; transactions as methods
Option B:  credit card transactions as methods of Bank

To include:
	Hash {:account=>credit_limit}
	Hash {:transaction=>amount}
	Method cc_charge 
	Method cc_payment
=end


