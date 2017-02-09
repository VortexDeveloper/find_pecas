Rails.application.routes.draw do
  devise_for :users

  resources :categories
  resources :companies
  resources :newslleters
  resources :parts
  resources :products
  resources :vehicles

  root to: 'newslleters#index'
end
