# Write a function that multiplies two numbers and returns the result
# multiply
def multiply(num1, num2)
	num1 * num2
end

multiply(2, 11)

# Write a function that multiplies three numbers and returns the result
# add_three
def add_three(num1, num2, num3)
	num1 + num2 + num3
end

add_three(5, 10, 9)

# Write a function that returns the smaller of 2 numbers
# smallest_number

def smallest_number(num1, num2)
	[num1, num2].min
end

smallest_number(4, 6)


# Write a function that returns the largest of 3 numbers
# max_of_three
def max_of_three(num1, num2, num3)
	[num1, num2, num3].max
end

max_of_three(4, 6, 12)

# Write a function that returns the reverse a string 
# reverse_string
def reverse_string(string)
	string.reverse
end

reverse_string("Hello Niall")

# write a function that returns the year of birth from an age
# disemvowel
def disemvowel (string)
	string.delete("aeiouAEIOU")
	string.gsub(/[aeiou]/i, '')
end

# write a fucntion that removes all ODD number from an array
# remove_odd
def remove_odd(numbers)
	numbers.delete_if(&:odd?)
end


# write a fucntion that removes all EVEN number from an array
# remove_even
def remove_even(numbers)
	numbers.delete_if(&:even?)
end


# write a function that takes an array of strings and returns the string with the longest char langth
# longest_string
def longest_string(string)
	string.max_by(&:length)
end

# discard the first 3 elements of an array, 
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(numbers)
	numbers.drop(3)
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(letters)
	Hash[*letters]
end

# Write a functino that takes any number and returns a value based on these rules 

# But for multiples of three print "Fizz" instead of the number 
# For the multiples of five print "Buzz". 
# For numbers which are multiples of both three and five print "FizzBuzz".

def fizz_buzz number 
end



