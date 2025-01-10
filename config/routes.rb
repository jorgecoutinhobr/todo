Rails.application.routes.draw do
  devise_for :users

  root "profiles#profile"

  get 'profiles/profile', to: 'profiles#profile'
  get 'profiles/show_list/:id', to: 'profiles#show_list', as: 'show_list'
  delete 'profiles/destroy_list/:id', to: 'profiles#destroy_list', as: 'destroy_list'

  resources :lists, only: [:create] do
    resources :items, only: [:create, :destroy]
  end
end
