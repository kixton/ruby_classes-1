groceries = ["milk", "eggs", "broccoli"]

groceries.each { |item| puts item }

groceries.each { |item| puts "I need to buy #{item}." }

# groceries.each do |item|
# 	puts 
# end	


cost_of_groceries = {
  "milk" => 3.50,
  "egg" => 1.50,
  "broccolli" => 0.75
}

cost_of_groceries.each do |food, cost|
	if cost < 2
		puts "#{food} is less than $2"
	end
	if cost > 2
		puts "#{food} is more than $2"
	end	
end 


class Car
	attr_accessor :color
	attr_accessor :repaint

	def initialize(color)
		@color = color
		@repaint = 0
	end	

	def paint(color)
		@color = color
		@repaint += 1
	end	

	def repaint_count
		@repaint
	end	

end	


c = Car.new("blue")
puts c.color # blue
puts c.repaint_count # 0
c.paint("red")
c.paint("green")
puts c.repaint_count # 2
puts c.color # green


