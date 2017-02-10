Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :categories
  resources :companies
  resources :newslleters
  resources :parts
  resources :products
  resources :vehicles

  root to: 'newslleters#index'
end
