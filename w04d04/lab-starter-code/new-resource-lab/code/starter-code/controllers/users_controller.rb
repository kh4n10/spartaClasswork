class UsersController < Sinatra::Base

  # Set the route of the app
  set :root, File.join(File.dirname(__FILE__), '..')

  # Set the views directory
  set :views, Proc.new { File.join(root, "views") }


  configure :development do
      register Sinatra::Reloader
  end


	$users = [{
		id: 0,
		email: "xyz@hotmail.com",
		first_name: "Boz",
		last_name: "Bozwinkle",
		age: "24"
	},
	{
		id: 1,
		email: "xyz@hotmail.com",
		first_name: "Geoff",
		last_name: "Gazelle",
		age: "28"
	},
	{
		id: 2,
		email: "xyz@hotmail.com",
		first_name: "Larry",
		last_name: "Lizard",
		age: "29"
	}]

  get '/users' do
  	@users = $users	
  	erb :'users/users_index'
  
  end

  # makes a new user
  get '/users/new'  do
  	erb :'users/users_new'
  end


  # specific user, called through the id
  get '/users/:id' do
   
   # get the ID and turn it in to an integer
   id = params[:id].to_i
   # make a single post object available in the template
   @user = $users[id]
   
   erb :'users/users_show'
  end


  # posts the form for creating the new user
  post '/users' do
  	new_user = {
  	  id: $users.length,
  	  email: params[:email],
  	  first_name: params[:first_name],
  	  last_name: params[:last_name],
  	  age: params[:age] 
  	}
  	$users.push new_user
  	redirect '/users'
  end

  # edits the user
  get '/users/:id/edit'  do
   # get the ID and turn it in to an integer
   id = params[:id].to_i
   # make a single post object available in the template
   @user = $users[id]
   erb :'users/users_edit'
   
  end

  # after getting the form to edit, this then puts it onto the page
  put '/users/:id'  do
  	# data is gathered in the params object
  	id = params[:id].to_i
  	  
  	# get the post object from our data store
  	user = $users[id]
  	  
  	# update the values of the object with data from the request
  	user[:email] = params[:email]
  	user[:first_name] = params[:first_name]
  	user[:last_name] = params[:last_name]
  	user[:age] = params[:age]
  	# save the post back to our data store ( at the spot it came from this time )
  	$users[id] = user
  	  
  	# redirect the user to a GET route. We'll go back to the INDEX.
  	redirect "/users"
  end

  
  delete '/users/:id'  do
  	id = params[:id].to_i
	
  	$users.select! { |user| user[:id] != id }
  	redirect "/users"
  end	
end