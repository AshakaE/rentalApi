Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: :index
      resources :bookings, only: %i[index create update destroy]
      resources :cars, only: %i[index create show]

      post 'login', to: 'authentication#create'
      post 'signup', to: 'users#create'
    end
  end
end
