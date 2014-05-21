# What does the third line evaluate to?

x = 5
x += 3
x / 2 + 10   #=> 14

##############################################################

# Get the first element of 'teams'

teams = ["Knicks", "Celtics", "76ers", "Raptors"]
teams[0]

##############################################################

# Provide 2 ways to get the last element of 'teams'. 

teams = ["Giants", "Cowboys", "Eagles", "Steelers"]
teams[3]
teams.last


##############################################################

# Provide two ways to add the word 'Shady' to the end of 'rappers.''

rapper = ["The", "real", "Slim"]
rapper << 'Shady'
rapper.push('Shady')


##############################################################

# Write a method to iterate through the following array
# and print each element to the screen.

ary = ["MakerSquare", "is", "cool!"]
ary.each{ |word| puts "#{word}" }


##############################################################

# Iterate through 'names' and return a new array with each
# name capitalized.

names = ["nick", "mike", "shehzan", "gilbert"]
names.each{ |x| x.capitalize! }


##############################################################

# What is the value of 'y'?

x = "I love Austin, Texas!"
y = x.split[2]   #=> "Austin,"

##############################################################

# What are two ways to concatenate the following strings?

first = "Cohort 7 "
second = "rocks!!!"

first + second
first << second


##############################################################

# Create a new hash that contains some information about yourself

me =  #=> ANSWER HERE
me = {:name => "Joseph", :hobby => "bird watching", :favdrink => "purple drank"}


##############################################################

# The formula to convert Fahrenheit temperatures to Celsius is:
#    1. subtract 32 from the Fahrenheit temperature
#    2. multiply by 5
#    3. divide by 9
# Write a method called f2c that takes a temperature and in
# Fahrenheit and returns its Celsius equivalen


# ANSWER HERE
def f2c(tempf)
  tempc = (tempf - 32) * 5 / 9
end


##############################################################

# What does the following method return?
# Next to each call to 'some_method' write
# a comment that says what the return value is.

def some_method(x)
  if x > 5 && x < 10
    return :a
  elsif x < 5
    return :b
  end    

  :c
end

some_method(3)    #=>  :b
some_method(12)   #=>  :c
some_method(7)    #=>  :a

##############################################################

# What is the output of the following expression.

if !"nick"
  puts "He's a cool guy!"
end

nil

##############################################################


# The following 3 lines of code have errors. Please correct them.
# You can change them in place.

my_name = "Nick McDonnough"
pop_punk = "Blink" + 182.to_s
7 / 2.to_f == 3.5   # there are multiple acceptable answers for this one.

##############################################################

# What is the output of the following code 

def recursion(x)
  return "HEYO!" if x >= 5
  puts x
  recursion x += 1
end

recursion(0)   #=> ANSWER HERE
=begin
0
1
2
3
4
=>"HEYO!" 
=end
                  

recursion(6)   #=> "HEYO!"

##############################################################

# Given the following data structure please answer the
# questions below it

ballers = [
  {:name => "Michael Jordan", :team => "Chicago"},
  {:name => "Larry Bird", :team => "Boston"},
  {:name => "Isiah Thomas", :team => "Detroit"}
]

# How would you access Larry Bird's team?
ballers[1][:team]

# How would you return an array containing only the player names?
y = []
ballers.collect{|x| y << x[:name]}
y

##############################################################

# Using the above hash, what does the following return?
ballers[-1].size    #=> 2

##############################################################

# Return the cast members of The Sopranos as a single
# string separated by commas.

tv_shows = {
  "Mad Men" => {:network => "AMC", :cast => ["John Hamm", "John Slattery", "Elizabeth Olson"]},
  "Dexter" => {:network => "Showtime", :cast => ["Michael C. Hall", "Jennifer Carpenter", "CS Lee"]},
  "The Sopranos" => {:network => "HBO", :cast => ["James Gandolfini", "Michael Imperioli", "Edie Falco"]}
}

# As array: tv_shows["The Sopranos"][:cast].each {|x| print "#{x}, " }
"#{tv_shows["The Sopranos"][:cast].join(", ")}" # as string
##############################################################

# Iterate through 'words' and return the following sentence:
#    "I'm excited for MakerSquare!""

words = [
  ["I'm", "eating", "pizza"],
  ["Excited", "begins", "with", "E"],
  ["For", "sale"],
  ["MakerSquare", "is", "awesome!"]
]

# ANSWER HERE. (there are a variety of ways to do this. pick one.)
words.each { |x| print "#{x.first} "} # without proper word case

# No such 'humanize' method for ruby


##############################################################

# How would I access the value "Austin" in this hash?

person = {
  :name => "Nick McDonnough",
  :age => 28,
  :address => {
    :street => "2520 Elmont St",
    :city => "Austin",
    :state => "TX"
  }
}

person[:address][:city]
##############################################################

# What does the 'initialize' method do?
# A sentence or two will suffice.
# Initialize is the first method that a class will process.

##############################################################

# Create a Person class based off of this behavior
# This will take up many lines. You can start your answer here.
class Person
  @@childarray = []
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def birthday
    @age += 1
  end
  def kids
    @@childarray
  end
  def family
    puts "#{@name} has #{@@childarray.size} children: "
    @@childarray[0...-1].each {|x| puts "#{x.name}, "}
    puts @@childarray[-1].name
    # without comma: @@childarray.each {|x| puts "#{x.name} "}
  end

end


bobby = Person.new("Bobby", 28)
bobby.age  #=> 28
bobby.birthday
bobby.birthday
bobby.age  #=> 30

tim = Person.new("Tim", 1)
sam = Person.new("Sam", 1)

bobby.kids << tim
bobby.kids << sam

bobby.family  #=> "Bobby has 2 children:
              #=>  Tim,
              #=>  Sam"

##############################################################

# Create a new class Person that is initialized with a name and an age.
# In the Person class create a method 'talk' that takes a single parameter
# and prints it to the screen.
# Create a Singer class that inherits from Person. Singer should have a
# method 'sing'. The following code describes the behaviour of the classes.

# This will take up many lines. You can start your answer here.

class Person
  def initialize(name)
    @name = name
  end
  def greet
    puts "Hey, there! I'm #{@name}!"
  end
  def talk(words)
    puts words
  end
end

class Singer < Person
  def initialize(name)
    super #optional to append (name)
  end
  def sing
    puts "R-E-S-P-E-C-T. Find out what it means to me!"
  end
end 


nick = Person.new("Nick")
nick.greet   #=> "Hey, there! I'm Nick!"
nick.talk("Prework is super important!")  #=> "Prework is super important!"

aretha = Singer.new("Aretha Franklin!")
aretha.greet  #=> "Hey, there! I'm Aretha Franklin!"
aretha.sing   #=> "R-E-S-P-E-C-T. Find out what it means to me!"


##############################################################

# Rewrite the code below to expand the attr_accessor line into
# the methods it represents. You can simply replace the code.

class Cookie
  #attr_accessor :type, :calories
  def initialize type, calories
    @type = type
    @calories = calories
  end
  def type
    @type
  end
  def type=(value1)
    @type = value1
  end
  def calories
    @calories
  end
  def calories=(value2)
    @calories = value2
  end
end 

##############################################################

# What is a class variable? Why might you use one?
# Just write a sentence below. You can provide some code if
# you're not sure how to word it.

# Class varible is specified values used amongst the methods within a class.
# One might use one to store values (in an array/hash) and apply methods to
# that class variable. One must be careful when considering class inheritance.


##############################################################

# What is a block? Please provide a code example along with
# a sentence or two explaining it.

# A block is a piece of code associated with a method invocation:
# Example: names = ["nick", "mike", "shehzan", "gilbert"]
#          names.each{ |x| x.capitalize! }
# The part between the braces (|x| x.capitalize! ) is the block,
# and it processes/loops through the components of the array names
# represented as x with capitalize method invoked on x.


##############################################################

# Describe the scope of the following variable types. If you have
# trouble putting it to words you can use some code.

# local scope - variables accessed from the code construct of origination
#   Example: local variable declared in a method or within a loop
#            cannot be accessed out of the loop or method
#            names = ["nick", "mike", "shehzan", "gilbert"]
#            names.each{ |x| x.capitalize! } #x is local variable
# instance scope - variables accessed from within its own class methods,
#                  which lives within its class instance
#   Example: class Person
#              def initialize(name)
#               @name = name
#              end 
#            end
#            x = Person.new # @name only accessed within class Person
# class scope - variables accessed throughout class hierarchy 
#   (not necessarily its own class)

##############################################################

# When you call the 'methods' method you receive a list of all methods
# available to that object based on what class it is in. Knowing
# that please answer the question below.

class Test
end

x = Test.new
x.methods.count   #=> 54

# If we didn't write any methods for our Test class how did it know
# the 'methods' method find 50 methods associated with it?
# 
# The 'methods' method is a method fo Classes and for Class instances.

