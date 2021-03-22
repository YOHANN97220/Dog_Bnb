Rails.application.routes.draw do
  get 'boxes/users'
  get 'boxes/bookings'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
