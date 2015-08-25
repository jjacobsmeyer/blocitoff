Rails.application.routes.draw do
  # get 'users/show'
  #
  # get 'welcome/index'
  #
  # get 'welcome/about'

  devise_for :users
  resources :users, only: [:show]

   root 'welcome#index'
end
