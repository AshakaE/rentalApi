Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :bookings, only: %i[index create update destroy]
      resources :cars, only: %i[index create show]
    end    
  end
  
  resources :users, only: :index
  post 'login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
