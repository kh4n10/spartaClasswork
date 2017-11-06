class Euler


	def self.multiples(number)
		numbers = Array(1...number)
		multiples = Array.new

		for i in numbers
			if i%3==0 || i%5==0
				multiples.push(i)
			end
		end
		self.sum_of_multiples multiples
	end

	def self.sum_of_multiples(multiples)
		multiples.reduce(:+)
	end


end