Rails.application.routes.draw do
  
  get 'utility_accounts/index'

  post 'utility_accounts/new'

  get 'energy/myenergy'

  get 'energy/utility'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :energy
  resources :utility_accounts
end
