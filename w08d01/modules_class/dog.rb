require_relative 'debug'
class Dog
	include Debug

	attr_accessor :fluffiness, :name, :age_in_dog_years

	def initialize(fluffiness, name, age_in_dog_years)
		self.fluffiness = fluffiness
		self.name = name
		self.age_in_dog_years = age_in_dog_years
	end

	def cuddle
		puts 'very cuddly'
	end

	def walk
		puts 'take it for walks'
	end

	def escape
		puts 'Has it escaped'
	end

end
dog = Dog.new(1,2,3)
puts dog.list_methods