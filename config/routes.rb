Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :rows do
    resources :party_members,  only: [:create]
  end

  resources :party_members, only: [:destroy] do
    patch 'pendente', on: :member
    patch 'ativo', on: :member
  end
end
