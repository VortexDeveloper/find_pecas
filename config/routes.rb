Rails.application.routes.draw do
  devise_for :users
  resources :newslleters
  resources :products

  root to: 'newslleters#index'
end
