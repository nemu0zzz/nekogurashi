Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :nekos
  resources :homes
  resources :shindans
  root 'users#index'

end

