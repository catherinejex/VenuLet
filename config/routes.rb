Rails.application.routes.draw do
  devise_for :users
    get 'user/:id', to: 'pages#profile', as: :profile
    get 'user/:id/venues', to: 'pages#venues', as: :my_venues
  root to: 'pages#home'
  resources :venues do
    collection do
      get :map
    end
    resources :bookings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


   # member do
    #   get :map
    # end
