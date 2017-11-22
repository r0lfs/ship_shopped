Rails.application.routes.draw do
  
  get 'contracts/create'

  get 'contracts/destroy'

  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

	resources :users, only: [:index, :show] 

	resources :users do
		resources :boats, shallow: true
		resources :jobs, shallow: true
	end

	resources :boats
	resources :jobs
  resources :contracts, only: [:create, :destroy]

  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
