class StaticController < ApplicationController

	def home
		# empty method allows to go into the relevant file
	end


	def hello
		@name = params[:name]
		respond_to do |format|
      format.html do
            # load template as normal
        end
      format.json do
            # render as json instead
           render :json => { message: "hello, #{@name}!" }
      end
    end
	end
	

	def contacts

	end
end