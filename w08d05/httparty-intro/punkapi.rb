require "httparty"
require "json"


# response = HTTParty.get('https://api.punkapi.com/v2/beers')

# puts response.body

# .body method gets the body of the api
# .code method tells if the api is fine or not
# .message method tells you if the code is okay etc

class PunkApiCall
	include HTTParty
# have to include it as its a module
# configure it by doing the below, base_uri is a method which sets

	base_uri 'https://api.punkapi.com/v2'

	def all_beers
		# need self.class when using http due to it being an instance of the class
		self.class.get('/beers')
	end

	def beer_names
		# parsed_response method converts json into array, and is http method
		beers = all_beers.parsed_response
	 
		beers.map do |beer|
			beer['name']
		end
	end

end

punk_call = PunkApiCall.new

puts punk_call.beer_names