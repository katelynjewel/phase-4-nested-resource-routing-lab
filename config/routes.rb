Rails.application.routes.draw do
  resources :users, only: [:show, :index] do
    resources :items, only: [:index, :create, :show]
  end

  resources :items, only: [:index, :create, :show]

  # get '/users/:user_id/items', to: 'users#items_index'
  # get '/users/:user_id/items/:id', to: 'users#item'
  # post '/users/:user_id/items', to: ''
end
