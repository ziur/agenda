Rails.application.routes.draw do
  get 'site/index'

  devise_for :users
  root to: "site#index"
  resources :contacts
  end
