
class Car
    attr_accessor :fuel
    attr_accessor :distance
    attr_accessor :name

    def initialize(name)
        @distance = 0
        @fuel = 10
        @name = name
    end 

    # def car_name(name)
    #     @name = name
    # end
    
    def get_info
        Kernel.puts("I'm #{@name}. I've driven #{@distance} miles and have #{@fuel} gallons of gas left")
    end 

    def drive(miles)
        # check how many miles you can drive with current fuel
        available_miles = @fuel * 20
        puts "#{@name} has #{available_miles} available miles"
        
        if (miles <= available_miles) 
            # if drive miles < available miles, then go ahead and drive
            @distance += miles
            @fuel -= miles/20.0
        else
            # else drive avail miles until 0 fuel and (note remaining miles to drive) print out of gas message
            @distance += available_miles
            @fuel = 0
            miles -= available_miles
            puts "You are out of gas. You have #{miles} miles left to drive"
        end              
    end 
    
    def fuel_up
        # full tank = 10 gallons
        # first figure out how many gallons you need for full tank
        fuel_needed = 10 - @fuel
        
        # then fill up 
        @fuel = 10
        
        cost = 3.5 * fuel_needed
                
        # print message with cost
        puts "You filled up #{fuel_needed} gallons. That will cost you $#{cost}."

    end 
end 

car_a = Car.new("Car A")
car_b = Car.new("Car B")

# car_a.car_name("Car A")
# car_b.car_name("Car B")

car_a.drive(10)
car_a.get_info
car_a.drive(500)
car_a.fuel_up

# puts car_a.get_info
# puts car_b.get_info

# car_a.drive(10)

# puts car_a.get_info
# puts car_b.get_info

# car_a.drive(10)

# puts car_a.get_info
# puts car_b.get_info

# car_a.drive(30)
# car_b.drive(500)

# puts car_a.get_info
# puts car_b.get_info
