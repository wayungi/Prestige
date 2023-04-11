Rails.application.routes.draw do
  root 'vehicles#index'
  get 'vehicles/theme', to: 'vehicles#theme'
  #  post 'vehicles/reserve/', to: 'vehicles#reserve'

  resources :users
  resources :vehicles do
    post 'reserve', on: :member
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
