Rails.application.routes.draw do
  get 'orders/index'

  root to: 'orders#index'

  #devise_for :users
  resources :users
  resources :orders
  resources :items
end
