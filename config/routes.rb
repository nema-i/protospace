Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  namespace :prototypes do
    resources :newest, only: [:index]
  end
  resources :prototypes do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  resources :users, only: [:show, :edit, :update]
  resources :tags, only: [:index, :show]
end
