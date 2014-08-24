Rails.application.routes.draw do
  match '/checkout', to: 'checkout#index', via: [:get, :post]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/signout', to: 'sessions#destroy', via: [:get], as: :signout
  match "/auth/failure", to: "sessions#failure", via: [:get, :post]


  root to: 'sessions#new'
  resources :sessions, :activities, :identities
  resources :users, :orders, :items, :store

  mount StripeEvent::Engine => '/stripe_event'
end
