Rails.application.routes.draw do
  devise_for :users
    get 'user/:id/venues', to: 'pages#venues', as: :my_venues
  root to: 'pages#home'
  resources :venues do
    resources :bookings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
