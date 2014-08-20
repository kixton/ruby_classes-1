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


