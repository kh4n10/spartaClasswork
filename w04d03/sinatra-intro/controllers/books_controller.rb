class BooksController < Sinatra::Base
	
	configure :development do
      register Sinatra::Reloader
  end
	
	# index gets all the books
	get "/books" do
		"All the books"
	end
	
	# New, get the book to create a new thing
	get "/books/new" do
		"new book form"
	end
	
	# Show, gets a specific book with an id
	get "/books/:id" do
		book = params[:id]
		puts book
		"#{book}"
	end
	
	
	# Create, sends a form to create a new book
	post "/books" do
		"sends a form to create new book"
	end
	
	# Edit, gets form to edit
	get "/books/:id/edit" do
		book = params[:id]
		"#{book} edit the book in here"
	end
	
	# Update the entry in the database
	put "/books/:id" do
		book = params[:id]
		"#{book} update the book in here"
	end
	
	# Delete the single resource from book in here
	delete "/books/:id" do
		book = params[:id]
		"#{book} delete the book in here"
	end

end