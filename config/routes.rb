  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get "about", to: "about#index"

  get "edit_password", to: "passwords#edit"
  patch "edit_password", to: "passwords#update"

  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  delete "logout", to: "sessions#destroy"

  resources :twitter_accounts
  resources :tweets

  get "/auth/twitter/callback", to: "omniauth_callbacks#twitter"

  root to: "main#index"
end