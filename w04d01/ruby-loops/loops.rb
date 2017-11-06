# Below is a simple loop
# loop do
# 	puts "I want to be in America"	
# end
# The end

# While loop
i = 0
while i < 10
	puts "While: #{i} "
	i += 1
end

# Until loop
j = 0
until j > 10
	puts "Until: #{j}"
	j += 1
end

# for loops
for k in 0..5
	puts "For loop: #{k}"
end

# Times loop
5.times do
	puts "OMG"
end

# Each loop
names = ["abass", "asalmon", "atrout"]
names.each do |name|
	puts name
end


# Array enumerators
# Map
words = ["Luke", "Anakin", "Leia", "Han", "Chewy"]
words.map! do |word|
	word.reverse
end
puts words


# Reduce and inject do the same thing
some_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = some_numbers.reduce do |total, number|
	total + number
end
puts sum


# Select
students = ["Liam", "Luke", "James", "Charlotte"]

cool_students = students.select do |student|
	student.chars.first === "L"
end

puts cool_students
