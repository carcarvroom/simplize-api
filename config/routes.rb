Rails.application.routes.draw do
  resources :lists
  resources :comments, only: [:index, :show, :create, :update, :destroy]
  resources :tasks, only: [:index, :show, :create, :update, :destroy]
  resources :boards, only: [:index, :show, :create, :update, :destroy]
  resources :teams, only: [:show, :destroy]
  resources :users, only: [:create, :update, :destroy]
  post '/login', to: 'users#login'
  post '/signup', to: 'users#create'
  get '/auto_login', to: 'users#auto_login'

  get '/my_boards/:id/:type', to: 'boards#my_boards_by_type'
end
