# return an array of reversed words
def reverse_array_of_strings(words)
	words.map! do |word|
		word.reverse
	end
end

# return all the even numbers less than the given number
def even_numbers_less_than(num)
	# num = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	# even_num = num.select do |number|
	# num.delete_if(&:odd?)
	# end

	(0...num).select { |number| number.even?}
end

# return the average of all numbers in an array
def average numbers
	numbers.reduce(:+) / numbers.length.to_f
end

