Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root "static#home"

  # get "/hello/:name", to: "static#hello"
# the to: means go to the static controller and use the contacts method in the static controller
  # get "/contacts", to:"static#contacts"


  resources :books
  # root "books#index"

  # get "/:book", to:r"books#show_id"
end
