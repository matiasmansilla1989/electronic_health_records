Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :doctors, skip: [:passwords, :confirmations, :unlocks]

  resources :patients, only: :index
end
