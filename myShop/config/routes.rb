Rails.application.routes.draw do
  resources :lineitems
  resources :carts
  root 'shopper#index', as: "shopper" # will have shopper_path
  get 'shopper/index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
