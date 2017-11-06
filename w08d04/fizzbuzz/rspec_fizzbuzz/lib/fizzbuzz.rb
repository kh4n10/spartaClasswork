class Fizzbuzz

	def self.all(num)
		[1..100].map do |num| 
			self.fizzbuzz(num)
		end
	end

	def self.fizzbuzz(num)
		if num % 3 == 0
			"fizz"
		elsif num %5 == 0
			"buzz"
		else
			num
		end
	end
end