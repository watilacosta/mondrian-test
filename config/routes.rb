Rails.application.routes.draw do
  get 'transfers/index'
  root 'home#index'
  devise_for :users

  resources :vehicles
  resources :transfers
  resources :users
  resources :vehicles
end
