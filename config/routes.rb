Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html4
   #  See all tasks 
  get 'tasks', to: 'tasks#index'

  # Show the restaurant form
  get "tasks/new", to: "tasks#new", as: :new_task

  # Create a restaurant
  post "tasks", to: "tasks#create"

   # See details about tasks
  get "tasks/:id", to: "tasks#show", as: :task

   # Update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # Destroy a task
  delete 'tasks/:id', to: 'tasks#destroy'
end



# Rails.application.routes.draw do
#   get 'tasks', to: 'tasks#index'
#   get 'tasks/new', to: 'tasks#new', as: :new_task
#   get 'tasks/:id', to: 'tasks#show', as: :task
#   post 'tasks', to: 'tasks#create'
#   get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
#   patch 'tasks/:id', to: 'tasks#update'
#   delete 'tasks/:id', to: 'tasks#destroy'
# end

 # # See all restaurants ✅
  # get "restaurants", to: "restaurants#index"

  # # Show the restaurant form
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # # Create a restaurant
  # post "restaurants", to: "restaurants#create"

  # # See details about one restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # # Update a restaurant
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"

  # # Destroy a restaurant
  # delete "restaurants/:id", to: "restaurants#destroy"
