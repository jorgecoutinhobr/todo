Rails.application.routes.draw do
  devise_for :users
  root "profiles#profile"
end
