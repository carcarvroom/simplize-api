Rails.application.routes.draw do
  resources :comments, only: [:index, :show, :create, :update, :destroy]
  resources :tasks, only: [:index, :show, :create, :update, :destroy]
  resources :boards, only: [:index, :show, :create, :update, :destroy]
  resources :teams, only: [:show, :destroy]
  resources :users, only: [:create, :update, :destroy]
  post '/login', to: 'users#login'
  post '/signup', to: 'users#create'
  get '/auto_login', to: 'users#auto_login'
end
