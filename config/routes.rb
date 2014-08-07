Rails.application.routes.draw do
  get 'orders/index'

  root to: 'visitors#index'
  
  devise_for :users
  resources :users
  resources :orders
end
