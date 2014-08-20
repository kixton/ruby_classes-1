
class RaceTracks

	attr_accessor :track
	attr_accessor :racecars
	attr_accessor :speed 

	def initialize(track)
		@track = track
		puts "#{@track} has been created."
		@racecars = [] # list of racecars
	end

	def add_car(newcar)
		@racecars.push(newcar) 
		puts "#{newcar.car} has been added to the #{@track}."
		#puts "#{@racecars}"
	end

	def start_race
		@speed = {}
		@racecars.each do |car|
			@speed[car] = rand(60..80)
		end	
	end

end

class RaceCar

	attr_accessor :car

	def initialize(car)
		@car = car
		puts "A #{@car} has been created."
	end	

	def speed
		puts "#{@car} is traveling at #{speed} mph"
end	

# race is 5 hour

speedy = RaceTracks.new("Speedy Race Track")
pink = RaceCar.new("Pink Car")
red = RaceCar.new("Red Car")
black = RaceCar.new("Black Car")

speedy.add_car(pink)
speedy.add_car(red)
speedy.add_car(black)

puts @speed 

