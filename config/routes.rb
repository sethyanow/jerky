Rails.application.routes.draw do

  get '/auth/:provider/callback', to: 'sessions#create'

  root to: 'orders#index'

  resources :sessions

  #devise_for :users
  resources :users

  resources :orders
  resources :items
end
