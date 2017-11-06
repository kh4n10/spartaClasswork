# This is our Animal class which will inherit from living organism
require_relative './living_organism'

class Animal < LivingOrganism

	def self.traits
		puts 'Animals can breathe, eat, drink, speak and procreate'
	end

	def breathe
		puts 'breathe'
	end

	def eat
		puts 'eat'
	end

	def drink
		puts 'drink'
	end

	def speak
		puts 'speak'
	end

	def procreate
		puts 'procreate'
	end

end

Animal.alive

badger = Animal.new
badger.speak
