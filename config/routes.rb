  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get "about", to: "about#index"

  get "edit_password", to: "passwords#edit"
  patch "edit_password", to: "passwords#update"

  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  root to: "main#index"
end