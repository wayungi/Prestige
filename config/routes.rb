Rails.application.routes.draw do
  root 'vehicles#index'
  get 'vehicles/theme', to: 'vehicles#theme'
  post 'vehicles/reserve', to: 'vehicles#reserve'

  resources :users
  resources :vehicles


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
