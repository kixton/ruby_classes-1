class Person

	attr_reader :name # Allows you to read the name, but modify
	attr_accessor :age # Allows you to set the age, modify & read the age. Age does not have to be included below...

	def initialize(name)
		@name = name
		@caffiene_level = 0
	end	

	def birthday
		@age += 1
		puts "You turned #{@age}!"
	end	

	def run(name)
		puts "#{name} run away"
	end

	def scream(name)
		puts "#{name}: AHHHHHH"
	end

	def drink_coffee(name)
		caffiene_level += 1
		puts "Yum!"
	end	

end


class PowerRanger

	def initialize(strength, color)
	end	

	def punch(person_to_punch)
		# person screams
		# 
	end
	
	def rest
	end	

end


class EvilNinja
end

kim = Person.new("Kim")
p kim.name

kim.age = 25 

kim.birthday

p kim.age



