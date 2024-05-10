Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :rows, only: [:index, :show, :new, :create]
end
