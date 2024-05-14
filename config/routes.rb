Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :rows do
    resources :party_members
  end
end
