# What does the third line evaluate to?
 
x = 5
x += 3      #=> 8
x / 2 + 10   #=> 14

##############################################################
 
# Get the first element of 'teams'
 
teams = ["Knicks", "Celtics", "76ers", "Raptors"]
teams[0]

 
##############################################################
 
# Provide 2 ways to get the last element of 'teams'. 
 
teams = ["Giants", "Cowboys", "Eagles", "Steelers"]
teams[3]
teams[-1]
teams.last

 
##############################################################
 
# Provide two ways to add the word 'Shady' to the end of 'rapper'
 
rapper = ["The", "Real", "Slim"]
rapper.push("Shady")
rapper << "Shady"
 
 
##############################################################
 
# Iterate through the following array and print each
# element to the screen.
 
ary = ["MakerSquare", "is", "cool!"]

arr.each { |x| print x }

 
##############################################################
 
# Iterate through 'names' and return a new array with each
# name capitalized.
 
names = ["nick", "mike", "shehzan", "gilbert"]

new_array = names.collect { |x| x.capitalize }

##############################################################
 
# What is the value of 'y'?
 
x = "I love java, er, I mean ruby!"
y = x.split[2]   #=> ANSWER HERE "java,"

 
##############################################################
 
# What are two ways to concatenate the following strings?
 
first = "Ruby "
second = "forever!!!"
 
first + second
string = first << second
 
 
##############################################################
 
# Create a new hash that contains some information about yourself
 
me =  { :first_name => "Kim", :last_name => "Pham" }
me = { "first_name" => "Kim", "last_name" => "Pham"}

 
##############################################################
 
# The formula to convert Fahrenheit temperatures to Celsius is:
#    1. subtract 32 from the Fahrenheit temperature
#    2. multiply by 5
#    3. divide by 9
# Write a method called f2c that takes a temperature and in
# Fahrenheit and returns its Celsius equivalent


def f2c(temp_f)
    (temp_f - 32) * 5 / 9
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
  end    # else??
 
  :c
end
 
some_method(3)    #=>  :b  WORK: 3 > 5 && 3 < 10 #false 3 < 5 #true
some_method(12)   #=>  :c  WORK:  12 > 5 && 12 < 10 #falase 12 < 5 #false
some_method(7)    #=>  :a  WORK:  7 > 5 && 7 < 10 #true
 
##############################################################
 
# What is the output of the following expression.
 
if !"nick"
  puts "He's a cool guy!"
end

# ?? If it's true that the value/variable is NOT "nick", puts "He's a cool guy!"


##############################################################

# What is the value of x?

def check_truth?(statement)
  if statement == nil
   "Neither exactly true nor false"
  elsif statement == true
   "It's true!"
  else
   "I admit, tis' false."
  end
end

x = check_truth?("Ruby is awesome!") 

#=> "I admit, tis' false."

##############################################################

# What is the value of x?

def consume_arr(y)
 y.each { |elem| puts (elem*2) }
end

x = consume_arr([2,4,6])

# ANSWER
4
8
12

##############################################################
 
 
# The following 3 lines of code have errors. Please correct them.
# You can change them in place.
 
var_name = "Nick McDonnough"
pop_punk = "Blink " + 182.to_s # Blink 182
7.0 / 2 == 3.5   # True


##############################################################
 
# What is the output of the following code 
 
def recursion(x)
  return "HEYO!" if x >= 5
  puts x
  recursion x += 1
end
 
recursion(0)
1
2
3
4
"HEYO!"
 
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

ballers.map {|ballers| baller[:name]}

# ballers_name = []

# ballers.each do |ballers|
#    ballers.each do |key, value|
#        ballers_name << ballers[:name]
#    end
# end
 
# ERROR: returns name 2x in array
 
##############################################################
 
# Using the above hash, what does the following return?
ballers[-1].size    #=> 2 (elements in the hash)
 
##############################################################
 
# Return the cast members of The Sopranos as a single
# string separated by commas.
 
tv_shows = {
  "Mad Men" => {:network => "AMC", :cast => ["John Hamm", "John Slattery", "Elizabeth Olson"]},
  "Dexter" => {:network => "Showtime", :cast => ["Michael C. Hall", "Jennifer Carpenter", "CS Lee"]},
  "The Sopranos" => {:network => "HBO", :cast => ["James Gandolfini", "Michael Imperioli", "Edie Falco"]}
}

sopranos_cast_members = tv_shows["The Sopranos"][:cast].join(", ")

##############################################################
 
# Iterate through 'words' and return the following sentence:
#    "I'm excited for MakerSquare!""
 
words = [
  ["I'm", "eating", "pizza"],
  ["Excited", "begins", "with", "E"],
  ["For", "sale"],
  ["MakerSquare", "is", "awesome!"]
]

words.map {|arr| arr[0]}.join(" ") + "!"

# ANSWER HERE - What is a simpler solution to match words in an array to a string?

words.each do |x| # loop through each array within the array
    x.each do |y| # loop through each element within the subarray
        if y == "I'm"
            print y + " "
        elsif y == "Excited" || y == "For"
            print y.downcase + " "
        elsif y == "MakerSquare"
            print y + "!"
        else
        end
    end
end

 
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

# ANSWER HERE
person[:address][:city]

 
##############################################################

# Iterate through 'nums' and return a new array containing
# only numbers larger than 10. Bonus if the array is sorted
# from highest to lowest.

nums = [2, 9, 3, 12, 7, 5, 99, 5, 62]

nums.select { |x| x > 10 }.sort.reverse

##############################################################
 
# What does the 'initialize' method do?
# A sentence or two will suffice.

# Method that is executed when a new instance of a Class is created...
 
##############################################################
 
# Create a Person class based off of this behavior
# This will take up many lines. You can start your answer here.

class Person

    def initialize(name, age)
        @name = name
        @age = age
        @kids = []
    end
    
    def age
        @age
    end    

    def name
        @name
    end    

    def birthday
        @age += 1
    end

    def kids 
        @kids 
    end
    
    def family
        puts "#{@name} has #{@kids.length} children:"
        @kids.each { |x| puts x.name }
    end
    
end
 
 
bobby = Person.new("Bobby", 28) # creates an instance of the Person class
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
 
# Create a new class Person that is initialized with a name and an age 
# (Yes, we know that the code below does not initialize the class with an age).
# In the Person class create a method 'talk' that takes a single parameter
# and prints it to the screen.
# Create a Singer class that inherits from Person. Singer should have a
# method 'sing'. The following code describes the behaviour of the classes.
 
# This will take up many lines. You can start your answer here.

class Person

	attr_accessor :name
	attr_accessor :age

	def initialize(name)
		@name = name
		@age # Is this proper?
	end

	def greet
		puts "Hey there! I'm #{@name}!"
	end	

	def talk(sentence)
		puts sentence
	end	

end

class Singer < Person

	attr_accessor :name

	def initialize(name)
		@name = name # Is this proper to have two instance variables same?
	end

	def sing
		puts "R-E-S-P-E-C-T. Find out what it means to me!"
	end	

end	


aretha = Singer.new("Aretha Franklin")
aretha.greet  #=> "Hey, there! I'm Aretha Franklin!"
aretha.sing   #=> "R-E-S-P-E-C-T. Find out what it means to me!"
 
nick = Person.new("Nick")
nick.greet   #=> "Hey, there! I'm Nick!"
nick.talk("Prework is super important!")  #=> "Prework is super important!"
nick.sing  #=> NoMethodError


##############################################################
 
# Rewrite the code below to expand the attr's  into the
# methods they represent. You can simply replace the code.
 
class Cookie
  attr_accessor :type
  attr_accessor :calories
  
  def initialize(type, calories)
    @type = type
    @calories = calories
  end

end
 
##############################################################
 
# What is a class variable? Why might you use one?
# Just write a sentence below. You can provide some code if
# you're not sure how to word it.

# Variable for the Class itself (vs Instance Variable = variable for an instance of a class object)
 
 
##############################################################
 
# What is a block? Please provide a code example along with
# a sentence or two explaining it.
 
# lines of code

array.each {|x| x**2 } # take each element in the array and raise it to the 2nd power

 
##############################################################
 
# Describe the scope of the following variable types. If you have
# trouble putting it to words you can use some code.
 
local # variable = 100
instance # @variable - applies to instances of a Class
class # @@variable - applies to all instances of a Class
 
##############################################################
 
# When you call the 'methods' method you receive a list of
# all methods available to that object based on what class it
# is in. Knowing that please answer the question below.
 
class Test
end
 
x = Test.new
x.methods.count   #=> 54
 
# If we didn't write any methods for our Test class how did it
# the 'methods' method find 54 methods associated with it?

??..Classes have 54 default methods (Test = Class.new has 95...)

Class < Module < Object < Basic Object   = 95 methods
          Test < Object < Basic Object   = 54 methods

# Children inherit methods from their parents 


