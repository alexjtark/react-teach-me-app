Rails.application.routes.draw do

  root 'welcome#index'

  resources :sessions, only: [:create, :destroy]
  resources :users

  resources :categories do
    resources :subcategories
  end

  resources :posts

  get '/profile/:user_id' => 'users#profile', as: :profile

  get '/search' => 'subcategories#search', as: :search

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
