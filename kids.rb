
class Person
    @@people_count = 0

    def initialize(name, age)
        @name = name
        @age = age
        @kids = []
        @species = @@species
        @@people_count += 1
    end
    
    def age
        @age
    end  

    def age=(new_age)
        @age = new_age
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

    def self.people_count
        @@people_count
    end
end

class Student < Person
    def read_books
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




