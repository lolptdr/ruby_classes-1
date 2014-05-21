class Person
	attr_accessor :name,:amt
	def initialize(name,amt)
		@name = name
		@amt = amt
		puts "Hi, #{@name}. You have $#{@amt}!"
	end
end

class Bank
	attr_accessor :name,:dep,:wit,:xfer,:bankamt
	def initialize(bank)
		@bank = bank
		puts "#{@bank} was just created."
	end
	def bank_balance
		@bankamt = bankamt
	end
	def open_account(person)
		puts "#{person.name}, thanks for opening an account at #{@bank}!"
	end
	def deposit(person, dep)
		@dep = dep
		puts "#{person.name} deposited $#{@dep} to #{@bank}. #{person.name} has $#{person.amt-@dep}. #{person.name}'s account has $#{@dep}."
	end
	def withdraw(person,wit)
	 	@wit = wit
	 	puts "#{person.name} withdrew $#{@wit} from #{@bank}. #{person.name} has $#{@dep}. #{person.name}'s account has $#{}."
	end
	# def transfer(person, bank, xfer)
	# 	@xfer = xfer
	# 	if person.name@bank = "JP Morgan Chase"
	# 		puts "#{person.name} transfered ${@xfer} from the #{@bank} account to the #{}"
	# 	end
	# end

end

# Test code:
chase = Bank.new("JP Morgan Chase") # JP Morgan Chase bank was just created.
wells_fargo = Bank.new("Wells Fargo") # Wells Fargo bank was just created.
me = Person.new("Shehzan", 500) # Hi, Shehzan. You have $500!
friend1 = Person.new("John", 1000) # Hi, John. You have $1000!
chase.open_account(me)# Shehzan, thanks for opening an account at JP Morgan Chase!
chase.open_account(friend1)# John, thanks for opening an account at JP Morgan Chase!
wells_fargo.open_account(me) #Shehzan, thanks for opening an account at Wells Fargo!
wells_fargo.open_account(friend1) # John, thanks for opening an account at Wells Fargo!
chase.deposit(me, 200) #=> Shehzan deposited $200 to JP Morgan Chase. Shehzan has $300. Shehzan's acccount has $200.
chase.deposit(friend1, 300) #=> John deposited $300 to JP Morgan Chase. John has $700. John's account has $300.
chase.withdraw(me, 50) #=> Shehzan withdrew $50 from JP Morgan Chase. Shehzan has $350. Shehzan's account has $150
# chase.transfer(me, wells_fargo, 100) 
#=> Shehzan transfered $100 from the JP Morgan Chase account to the Wells Fargo account. 
#=> The JP Morgan Chase account has $50 and the Wells Fargo account has $100.

# EC1
# chase.deposit(me, 5000) #=> Shehzan does not have enough cash to deposit $5000.
# chase.withdraw(me, 5000) #=> Shehzan does not have enough money in the account to withdraw $5000.
# EC2
# puts chase.total_cash_in_bank #=> JP Morgan has $350 in the bank.
# puts wells_fargo.total_cash_in_bank #=> Wells Fargo has $100 in the bank.