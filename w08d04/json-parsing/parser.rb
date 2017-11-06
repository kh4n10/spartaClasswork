require 'json'
# dont need the gem but need to require json

class JsonParser
# Parse translates from one file into ruby
	def initialize(json_file)
		@json_file = JSON.parse(File.read(json_file))
	end


	def print_file_values
		@json_file.each do |key, value|
			if value.is_a?(Hash)
				value.each do |k, v|
					puts "nested Hash key: #{key} = \n --nested hash details key: #{k} - value: #{v}"
				end
			elsif value.is_a?(Array)
				value.each do |a|
        	puts "nested Array key: #{key} = \n --Array details values: #{a}"
        end
			else
				puts "top level - key: #{key} - value: #{value}"
			end
				
		end
	end
end

JsonParser.new("./colors.json").print_file_values
