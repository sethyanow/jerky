Rails.application.routes.draw do


  match '/checkout', to: 'checkout#index', via: [:get, :post]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/signout', to: 'sessions#destroy', via: [:get], as: :signout

  root to: 'store#index'

  resources :sessions, :activities

  #devise_for :users
  resources :users, :orders, :items

  mount StripeEvent::Engine => '/stripe_event'
end
