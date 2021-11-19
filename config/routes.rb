Rails.application.routes.draw do
  root to: 'home#index'
  resources :friends
  resources :notifications
  resources :sports
  resources :events
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
