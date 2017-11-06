class BooksController < ApplicationController

	def index
		# empty, links to the index.html.erb
		@books = ["Book 1", "Book 2"]
	end
	
	def show
		@book = params[:id].to_i
	end
	
	def new

	end


	def edit

	end

	def create

	end

	def update

	end


	def destroy

	end

end