Rails.application.routes.draw do
  devise_for :users
  get 'boxes/users'
  get 'boxes/bookings'
  root to: 'pages#home'
  resources :boxes, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :index, :show ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
