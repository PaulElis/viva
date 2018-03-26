Rails.application.routes.draw do

  root 'users#index'

  resources :list_comments
  resources :user_comments
  resources :comments
  resources :actions
  resources :lists
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
