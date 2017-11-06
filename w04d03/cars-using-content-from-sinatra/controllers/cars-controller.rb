class CarsController < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end

	# Index, gets all the cars from 
	get "/cars" do
		"All of the cars"
	end
	
	# New, get the cars to create a new form
	get "/cars/new" do
		"new car form"
	end
	
	# Show a single car
	get "/cars/:id" do
		car = params[:id]
		puts car
		"Your car is #{car}"
	end
	
	# Create, sends a form to create a new car
	post "/cars" do
		"sends a form to create new car"
	end
	
	# Edit, gets form to edit
	get "/cars/:id/edit" do
		car = params[:id]
		"#{car} edit the car in here"
	end
	
	# Update the entry in the database
	put "/cars/:id" do
		car = params[:id]
		"#{car} update the car in here"
	end
	
	# Delete the single resource from book in here
	delete "/cars/:id" do
		car = params[:id]
		"#{car} delete the book in here"
	end

end