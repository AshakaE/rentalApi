Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bookings, only: %i[index create show update destroy]
      resources :cars, only: %i[index create show]
    end    
  end
  
  resources :users
  post 'login', to: 'authentication#create'
  post 'signup', to: 'users#create'
end
