require_relative 'debug'
class Car
	include Debug

	attr_accessor :color, :acceleration, :seats

	def initialize(color, acceleration, seats)
		self.color = color
		self.acceleration = acceleration
		self.seats = seats
	end

	def drive
		puts 'driver'
	end

	def refuel
		puts 'refuel the whip'
	end

	def break_into
		puts 'i dont know what this method does'
	end

end

car = Car.new(1,2,3)
car.list_methods