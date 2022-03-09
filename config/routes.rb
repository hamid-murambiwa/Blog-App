# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # root 'users#show'
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :likes, only: [:create]
      resources :comments, only: [:new, :create, :destroy]
    end
  end
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
  root "users#index"
end
