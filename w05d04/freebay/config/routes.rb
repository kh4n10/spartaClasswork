Rails.application.routes.draw do
  
  devise_for :users, path: "u"

  resources :users do
		resources :items
	end

  root "items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
