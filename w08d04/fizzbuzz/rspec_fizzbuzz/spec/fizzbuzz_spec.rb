require 'fizzbuzz'

describe Fizzbuzz do
	describe ".add" do
		
		context "Shout fizz, buzz and fizzbuzz" do
			it "Should test that multiples of 3 are replaced with the word fizz" do
				expect(Fizzbuzz.all(9)).to eql("fizz")
			end

			it "Should test that multiples of 5 are replaced with the word buzz" do

			end

			it "Should test that multiples of 3 and 5 are replaced with the word fizzbuzz" do

			end

			it "Should test that the numbers before and in between fizz, buzz and fizzbuzz are the numbers" do

			end
		end
	end
end

