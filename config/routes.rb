Rails.application.routes.draw do
  get 'jobs/index'

  get 'jobs/new'

  get 'jobs/create'

  get 'jobs/show'

  get 'jobs/edit'

  get 'jobs/update'

  get 'jobs/destroy'

  get 'boats/index'

  get 'boats/new'

  get 'boats/create'

  get 'boats/show'

  get 'boats/edit'

  get 'boats/update'

  get 'boats/destroy'

  devise_for :users
  get 'home/index'
  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
