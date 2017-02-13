Rails.application.routes.draw do

  get 'pages/index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :categories
  resources :companies
  resources :newslleters
  resources :parts
  resources :products
  resources :vehicles
  resources :pages

  root to: 'newslleters#index'
end
