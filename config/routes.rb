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

  get 'pages/index'
  get 'pages/catalog'
  get 'pages/catalog_gallery'
  get 'pages/about'
  get 'pages/contact'

  root to: 'pages#index'
end
