Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, except: [ :index ] do
    resources :terraces, only: [ :create, :new, :destroy ]
    resources :bookings, only: [ :create, :new, :destroy ]
  end

  resources :terraces, only: [ :index, :show ]

  get '/host', to: 'users#host'
end
