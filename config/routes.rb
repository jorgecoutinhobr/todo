Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :lists, only: [ :show, :create, :destroy, :edit, :update ] do
    resources :items, only: [ :create, :destroy, :edit, :update ]
  end
end
