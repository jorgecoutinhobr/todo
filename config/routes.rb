Rails.application.routes.draw do
  root "home#index"
  devise_for :users

  # root "lists#index"

  resources :lists, only: [ :index, :show, :create, :destroy ] do
    resources :items, only: [ :create, :destroy, :edit, :update ]
  end
end
