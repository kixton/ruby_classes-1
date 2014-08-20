
class RaceCar

    attr_reader :car_name
    attr_accessor :car_speed 
    attr_accessor :car_distance

    def initialize(car)
        @car_name = car
        @car_speed = 0  
        @car_distance = 0
    end
    
end


class RaceTrack

	attr_reader :cars_on_track

    def initialize(track)
        @track = track
        @cars_on_track = []
    end 

    def add_car(car)
        @cars_on_track << car
    end 

    def start_race
        @time = 0
        @cars_on_track.each { |x| x.car_speed = rand(60..80) } # assign each car_on_track a speed .rand(60..80)
    end 

    def forward_race
        if @time < 4 
            @time += 1 # add 1 hr to the time
            puts "\n#{@time} #{@time == 1 ? 'hour has':'hours have'} passed. "
            
            @cars_on_track.each do |car| 
                car.car_distance += car.car_speed
                puts "#{car.car_name} traveled #{car.car_speed} mph during Hour #{@time} for a total of #{car.car_distance} miles traveled."
            	car.car_speed += rand(0..20) 
            end   
        elsif @time == 4
        	@time += 1 # add 1 hr to time bringing time to 5 hrs
        	puts "\n#{@time} #{@time == 1 ? 'hour has':'hours have'} passed. "

            @cars_on_track.each do |car| 
                car.car_distance += car.car_speed  
                puts "#{car.car_name} traveled #{car.car_speed} mph during Hour #{@time} for a total of #{car.car_distance} miles traveled."
			end          
            # access array of cars_on_track; access method .car_distance; .sort.reverse; print name of car at index 0 position of the hash
            puts "\nThe race has ended. The WINNER is....\n"
            @cars_on_track.each do |car| 
            	car.car_distance = 0 # reset distance
            	car.car_speed = 0 # reset car speed to 0
           	end 	
            # @cars_on_track = [] # To clear cars_on_track for next race
        else 
        	puts "\nThe race has ended. No more racing, sorry!"
        end 
    end 

end 


pink = RaceCar.new("Pink Car")
red = RaceCar.new("Red Car")
black = RaceCar.new("Black Car")

speedy = RaceTrack.new("Speedy Tracks")
speedy.add_car(pink)
speedy.add_car(red)
speedy.add_car(black)

p speedy.cars_on_track

speedy.start_race # Race starts, each car assigned a speed between 60-80
speedy.forward_race # Hour 1 has passed; each car travels speed set at start of race; each car increments by 0-20
speedy.forward_race # Hour 2
speedy.forward_race # Hour 3
speedy.forward_race # Hour 4
speedy.forward_race # Hour 5 - race ends

speedy.forward_race # Hour 6 - race already ended
p speedy.cars_on_track # Cars still on track...

