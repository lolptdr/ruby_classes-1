# Uses 'bankingtext.rb' test code file
# Banking application to create a person, allow him to open an account at a bank

class Person
	attr_accessor :name,:amt
	def initialize(name,amt)
		@name = name
		@amt = amt
		puts "Hi, #{@name}. You have $#{@amt}!"
	end
end

class Bank
	attr_accessor :bank,:users
	def initialize(bank)
		@bank = bank
		@users = {}
		puts "#{@bank} was just created."
	end
	def open_account(person)
		@users.store(person.name,0)
		puts "#{person.name}, thanks for opening an account at #{@bank}!"
	end
	def deposit(person, depoamt)
		if person.amt < depoamt # Output insufficient funds statement if cash-in-hand less than deposit amount
			puts "#{person.name} does not have enough cash to deposit $#{depoamt}."
		else
			person.amt -= depoamt
			@users[person.name] += depoamt
			puts "#{person.name} deposited $#{depoamt} to #{@bank}. #{person.name} has $#{person.amt}. #{person.name}'s account has $#{@users[person.name]}."
		end
	end
	def withdraw(person,witamt)
		if @users[person.name] < witamt # Output insufficient funds statement if bank balance less than withdrawal amount
			puts "#{person.name} does not have enough money in the account to withdraw $#{witamt}."
		else
			person.amt += witamt
	 		@users[person.name] -= witamt
	 		puts "#{person.name} withdrew $#{witamt} from #{@bank}. #{person.name} has $#{person.amt}. #{person.name}'s account has $#{@users[person.name]}."
	 	end
	end
	def transfer(person, newbank, xfer)
		@users[person.name] -= xfer # Lookup old bank balance and subtract from it
		newbank.users[person.name] += xfer # Lookup new bank balance and add to it
		puts "#{person.name} transfered $#{xfer} from the #{@bank} account to the #{newbank.bank} account."
		puts "The #{@bank} account has $#{@users[person.name]} and the #{newbank.bank} account has $#{newbank.users[person.name]}."
	end
	def total_cash_in_bank
		banktotal = @users.values.inject(0) {|sum,x| sum += x}
		return "#{@bank} has $#{banktotal} in the bank."
	end
end