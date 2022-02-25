Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] do
    get 'venues', as: :my_venues
  end
  root to: 'pages#home'
  resources :venues do
    resources :bookings, only: [:create, :new]
    collection do
      get :map
    end
  end
  resources :bookings, only: [:show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


   # member do
    #   get :map
    # end
