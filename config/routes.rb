Rails.application.routes.draw do
  root 'vehicles#index'
  resources :users do
    get '/vehicles/theme', to: 'vehicles#theme'
  end
  resources :vehicles

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
