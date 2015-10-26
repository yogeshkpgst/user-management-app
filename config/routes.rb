Rails.application.routes.draw do
  
  get 'energy/myenergy'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :energy
end
