Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes, only: [:index,:new, :create, :show, :edit, :update, :destroy,:show] do
    resources :comments, only: :create
  end
    resources :users, only: :show
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  end
  # Defines the root path route ("/")
  # root "articles#index"

