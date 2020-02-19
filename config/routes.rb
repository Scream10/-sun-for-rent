Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :terraces, only: [ :index, :show, :create, :new, :destroy ] do
    resources :bookings, only: [ :create, :new ]
  end

  resources :bookings, only: [ :index, :destroy ]

  get '/host', to: 'pages#host'
end
