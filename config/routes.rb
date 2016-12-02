Rails.application.routes.draw do
  resources :farms, only: [:new, :create]
  resources :strains, only: [:show, :edit, :update, :new, :create]

  root to: 'strains#index'
end
