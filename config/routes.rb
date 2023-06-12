Rails.application.routes.draw do
  root 'vehicles#index'
  get 'vehicles/theme', to: 'vehicles#theme'
  #  post 'vehicles/reserve/', to: 'vehicles#reserve'
  get 'vehicles/reserve_form', to: 'vehicles#reserve_form'
  resources :users
  resources :vehicles do
    post 'reserve', on: :member #creates a custom => route vehicles/11/reserve
    # get 'reserve_form', on: :member #creates a custom => route vehicles/11/reserve_form
  end
  get 'vehicles/delete/candidates', to: 'vehicles#candidates'




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
