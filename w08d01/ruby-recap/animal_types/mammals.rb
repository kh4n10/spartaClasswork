# This is the Mammals module that should be included for all mammals
module Mammals
# A module is used for general things that can be used amongst classes
# In modules, always have self. when defining methods

	def common_mammal_traits
		puts 'Mammals are warm-blooded and have nip'
	end

	class Common

		def feed_young
			puts 'Feeding da babeh'
		end

	end

# This class is calling from the common class
	class Biped < Common
		attr_accessor :number_of_legs

		def initialize(number_of_legs)
			self.number_of_legs = number_of_legs
		end

		def legs
			puts "I have #{self.number_of_legs} legs"
		end
	end

end

# Mammals.common_mammal_traits

# To instanciate a class within a module its done by the following
# dolphin = Mammals::Common.new
# dolphin.feed_young

ring_tailed_lemur = Mammals::Biped.new(2)
ring_tailed_lemur.feed_young
ring_tailed_lemur.legs