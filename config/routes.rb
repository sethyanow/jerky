Rails.application.routes.draw do
  get 'orders/index'

  root to: 'orders#index'

  resources :sessions

  #devise_for :users
  resources :users do
    resources :sessions
  end
  resources :orders
  resources :items
end
