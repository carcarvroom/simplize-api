Rails.application.routes.draw do
  resources :lists, only: [:create, :update, :destroy]
  resources :comments, only: [:create, :update, :destroy]
  resources :tasks, only: [:create, :update, :destroy]
  resources :boards, only: [:create, :update, :destroy]
  resources :teams, only: [:show, :destroy]
  resources :users, only: [:create, :update, :destroy]
  post '/login', to: 'users#login'
  post '/signup', to: 'users#create'
  get '/auto_login', to: 'users#auto_login'

  get '/my_boards/:id/:type', to: 'boards#my_boards_by_type'
  get '/board_lists/:board_id', to: 'lists#lists_by_board_id'
end
