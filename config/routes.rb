Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/signout', to: 'sessions#destroy', via: [:get], as: :signout

  root to: 'store#index'

  resources :sessions

  #devise_for :users
  resources :users

  resources :orders
  resources :items
end
