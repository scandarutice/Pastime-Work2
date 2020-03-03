Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts, only: [:index, :create]
  resources :users, only: [:edit, :update, :show]
  resources :groups, only: [:index, :new, :create, :edit, :update]
  resources :relationships, only: [:create, :destroy]
end