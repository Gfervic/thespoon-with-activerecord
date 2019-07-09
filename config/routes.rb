Rails.application.routes.draw do

		root to: 'restaurants#index'

	  resources :restaurants, except: [:index]

	# #all
	# get 'restaurants', to: 'restaurants#index'

	# 	#CREATION STEP 1 - FORM
	# get 'restaurants/new', to: 'restaurants#new'

	# post 'restaurants', to: 'restaurants#create'

	# #read one
	# get 'restaurants/:hello_world', to: 'restaurants#show'

	# get 'restaurants/:id/edit', to: 'restaurants#edit'

	# patch "restaurants/:id", to: "restaurants#update"

	# delete "restaurants/:id", to: "restaurants#destroy"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
