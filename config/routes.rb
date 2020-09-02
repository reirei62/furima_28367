Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items
  resources :purchases, only:[:create]
  get 'purchases.:id', to: 'purchases#index'
end