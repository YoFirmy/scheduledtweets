  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get "about", to: "about#index"

  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"
  delete "logout", to: "sessions#destroy"
  root to: "main#index"
end