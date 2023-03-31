Rails.application.routes.draw do
  resources :comments
  resources :dislikes
  resources :likes
  resources :blogs
  resources :users, only: [:update, :create]
  get '/me', to: 'users#show'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
