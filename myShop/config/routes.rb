Rails.application.routes.draw do
  get 'access/new'
  get 'access/create'
  get 'access/destroy'
  get 'admin/index'
  get '/admin', to: 'admin#index'
  get '/login', to: 'access#new'
  post 'access/new', to: 'access#create'
  get '/logout', to: 'access#destroy'
  post '/logout', to: 'access#destroy'
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  root 'shopper#index', as: "shopper" # will have shopper_path
  get 'shopper/index'
  get '/shopper', to: 'shopper#index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
