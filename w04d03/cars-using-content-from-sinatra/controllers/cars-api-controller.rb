class CarsApiController < Sinatra::Base
		
		configure :development do
			register Sinatra::Reloader
		end

	  $cars = [
      { 
          id: 0,
          company: "Ferrari",
          model: "Enzo"
      },
      { 
          id: 1,
          company: "Pagani",
          model: "Zonda"
      },
      { 
          id: 2,
          company: "Bugatti",
          model: "Veyron"
      }
  ]


	# Index, gets all the cars from 
	get "/api/cars" do
		json $cars
	end
	
	
	# Show a single car
	get "/api/cars/:id" do
		id = params[:id].to_i
		json $cars[id]
	end
	
	# Create, sends a form to create a new car
	post "/api/cars" do
		id = params[:id].to_i
		company = params[:company]
		model = params[:model]
		$cars.push({id: id, company: company, model: model})
		json $cars
	end
	
	
	# Update the entry in the database
	put "/cars/:id" do
		id = params[:id]
		new_id = params[:id].to_i
		company = params[:company]
		model = params[:model]
		updated_car = json $cars.push({id: id, company: company, model: model})
		# if id === 0 || id === 1 || id === 2
		# 	json $cars.delete_at(id)
		# end
		json $cars.map! do
			|n| n === id ? updated_car   
		end
		
	end
	
	# Delete the single resource from book in here
	delete "/api/cars/:id" do
		id = params[:id].to_i
		json $cars.delete_at(id)
	end
	
	
end