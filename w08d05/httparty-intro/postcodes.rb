require 'httparty'
require 'json'


class PostcodeApi
	include HTTParty
	base_uri 'https://api.postcodes.io'

	def single_postcode_search(postcode)
		JSON.parse(self.class.get("/postcodes/#{postcode}").body)
	end

	def multiple_postcode_search(postcode_array)
		body = {
			postcodes: postcode_array
		}		

		JSON.parse(self.class.post("/postcodes", {body: body}).body)
	end

end

postcode = PostcodeApi.new

puts postcode.multiple_postcode_search(['S652DF', 'LS12 1BE'])