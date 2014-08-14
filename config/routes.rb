Rails.application.routes.draw do
  get 'orders/index'

  root to: 'orders#index'

  #devise_for :users
  resources :users do
    resources :session
  end
  resources :orders
  resources :items
end
