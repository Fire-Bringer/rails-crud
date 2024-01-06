Rails.application.routes.draw do
  # # Read all
  # get 'restaurants', to: 'restaurants#index', as: 'restaurants'

  # # Create
  # get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # post 'restaurants', to: 'restaurants#create'

  # # Read one
  # # The 'as: :restaurant' part adds the prefix to the show route
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # # Update
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  # patch 'restaurants/:id', to: 'restaurants#update'

  # # Delete
  # delete 'restaurants/:id', to: 'restaurants#destroy'

  # All-In-One-Line
  resources :restaurants # only: || except: [:index, :show]
end
