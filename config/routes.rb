Rails.application.routes.draw do
  
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
  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
