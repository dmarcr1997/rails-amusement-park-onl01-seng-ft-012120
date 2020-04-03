Rails.application.routes.draw do
  resources :rides
  resources :attractions
  resources :users
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create'
  get '/logout', to: 'session#destroy', as: 'logout'
  
  root 'static#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
