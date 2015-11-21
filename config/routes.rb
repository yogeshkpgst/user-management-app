Rails.application.routes.draw do
  
  get 'users_utility_accounts/new'

  get 'users_utility_accounts/create'

  get 'users_utility_accounts/index'

  post 'utility_accounts/index'

    post 'utility_accounts/add_utility'

  post 'utility_accounts/new'

  get 'energy/myenergy'

  get 'utility_accounts/utility'

  get 'utility_accounts/show'

  get 'utility_accounts/edit'


  root to: 'visitors#index'
  devise_for :users
  resources :users do
    resources :utility_accounts
  end
  resources :users_utility_accounts
  resources :energy
  resources :utility_accounts
end
