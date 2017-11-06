require "euler"

describe Euler do

	describe ".multiples" do
		context "given no value is put" do
			pending "returns 'No value has been put in'" do
				expect(Euler.multiples(0)).to raise 'No value has been put in'
			end
		end

		context "given a value over 1000 is put" do
			pending "returns 'Value is over 1000'" do
				expect(Euler.multiples(1001)).to raise 'Value is over 1000'
			end
		end

		context "given a string is used" do
			pending "returns 'A string is not a value'" do
				expect(Euler.multiples("gwjdwejh")).to raise 'A string is not a value'
			end
		end

		context "given an empty string is used" do
			pending "returns 'Empty string is not a value'" do
				expect(Euler.multiples("")).to raise 'Empty string is not a value'
			end
		end

		context "given a value of 10 is entered" do
			it "returns a value of 23" do
				expect(Euler.multiples(10)).to eql(23)
			end
		end





	end

end