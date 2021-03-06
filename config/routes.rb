Rails.application.routes.draw do
  root 'users#index'

  get '/signin', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

  resources :users
  resources :sessions
  resources :attractions
  resources :rides

end
