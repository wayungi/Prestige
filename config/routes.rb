Rails.application.routes.draw do
  root 'vehicles#index'
  get 'vehicles/theme', to: 'vehicles#theme'
  #  post 'vehicles/reserve/', to: 'vehicles#reserve'

  resources :users
  resources :vehicles do
    post 'reserve', on: :member #creates a custom => route vehicles/11/reserve
    # get 'reserve_form', on: :member #creates a custom => route vehicles/11/reserve_form
  end
  get 'vehicles/delete/candidates', to: 'vehicles#candidates'
  get 'vehicles/reserve/form', to: 'vehicles#reserve_form'




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
