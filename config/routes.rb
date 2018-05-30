Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :producer
  resources :product do
    resources :images, only: [:create, :destroy]
  end
  resources :product_details
  resources :product_adim
  resources :category
  resources :users
  resources :order_items
  resource :carts, only: [:show, :new]
  resources :order
  resource :comment, only: [:create]
end
