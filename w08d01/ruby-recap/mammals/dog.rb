require_relative '../animal'
require_relative '../animal_types/mammals'
# Our dog class/template will inherit from animal and be affected by animal types
class Dog < Animal
# Include is an instance method, include is used most commonly
# Extend is a class method 
	include Mammals

	def bark
		puts 'I is a yappy poodle'
	end


end

# Include way, its an instance method
dog = Dog.new
dog.common_mammal_traits
