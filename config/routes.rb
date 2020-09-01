Rails.application.routes.draw do
  resources :comments
  resources :tasks
  resources :boards
  resources :teams
  resources :users
  post '/login', to: 'users#login'
  post '/signup', to: 'users#create'
  get '/auto_login', to: 'users#auto_login'
end
