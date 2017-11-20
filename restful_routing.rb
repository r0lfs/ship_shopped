                  Prefix Verb   URI Pattern                         Controller#Action
        new_user_session GET    /users/sign_in(.:format)            devise/sessions#new
            user_session POST   /users/sign_in(.:format)            devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)           devise/sessions#destroy
       new_user_password GET    /users/password/new(.:format)       devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)      devise/passwords#edit
           user_password PATCH  /users/password(.:format)           devise/passwords#update
                         PUT    /users/password(.:format)           devise/passwords#update
                         POST   /users/password(.:format)           devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)             users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)            users/registrations#new
  edit_user_registration GET    /users/edit(.:format)               users/registrations#edit
       user_registration PATCH  /users(.:format)                    users/registrations#update
                         PUT    /users(.:format)                    users/registrations#update
                         DELETE /users(.:format)                    users/registrations#destroy
                         POST   /users(.:format)                    users/registrations#create
                   users GET    /users(.:format)                    users#index
                    user GET    /users/:id(.:format)                users#show
              user_boats GET    /users/:user_id/boats(.:format)     boats#index
                         POST   /users/:user_id/boats(.:format)     boats#create
           new_user_boat GET    /users/:user_id/boats/new(.:format) boats#new
               edit_boat GET    /boats/:id/edit(.:format)           boats#edit
                    boat GET    /boats/:id(.:format)                boats#show
                         PATCH  /boats/:id(.:format)                boats#update
                         PUT    /boats/:id(.:format)                boats#update
                         DELETE /boats/:id(.:format)                boats#destroy
               user_jobs GET    /users/:user_id/jobs(.:format)      jobs#index
                         POST   /users/:user_id/jobs(.:format)      jobs#create
            new_user_job GET    /users/:user_id/jobs/new(.:format)  jobs#new
                edit_job GET    /jobs/:id/edit(.:format)            jobs#edit
                     job GET    /jobs/:id(.:format)                 jobs#show
                         PATCH  /jobs/:id(.:format)                 jobs#update
                         PUT    /jobs/:id(.:format)                 jobs#update
                         DELETE /jobs/:id(.:format)                 jobs#destroy
                         GET    /users(.:format)                    users#index
                         POST   /users(.:format)                    users#create
                new_user GET    /users/new(.:format)                users#new
               edit_user GET    /users/:id/edit(.:format)           users#edit
                         GET    /users/:id(.:format)                users#show
                         PATCH  /users/:id(.:format)                users#update
                         PUT    /users/:id(.:format)                users#update
                         DELETE /users/:id(.:format)                users#destroy
                   boats GET    /boats(.:format)                    boats#index
                         POST   /boats(.:format)                    boats#create
                new_boat GET    /boats/new(.:format)                boats#new
                         GET    /boats/:id/edit(.:format)           boats#edit
                         GET    /boats/:id(.:format)                boats#show
                         PATCH  /boats/:id(.:format)                boats#update
                         PUT    /boats/:id(.:format)                boats#update
                         DELETE /boats/:id(.:format)                boats#destroy
                    jobs GET    /jobs(.:format)                     jobs#index
                         POST   /jobs(.:format)                     jobs#create
                 new_job GET    /jobs/new(.:format)                 jobs#new
                         GET    /jobs/:id/edit(.:format)            jobs#edit
                         GET    /jobs/:id(.:format)                 jobs#show
                         PATCH  /jobs/:id(.:format)                 jobs#update
                         PUT    /jobs/:id(.:format)                 jobs#update
                         DELETE /jobs/:id(.:format)                 jobs#destroy
                    root GET    /                                   home#index
