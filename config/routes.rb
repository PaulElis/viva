Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/destroy' as: "logout"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout'=> 'sessions#destroy'



  root 'welcomes#index'

  resources :list_comments
  resources :user_comments
  resources :comments
  resources :lists
  resources :users
  resources :welcomes
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
