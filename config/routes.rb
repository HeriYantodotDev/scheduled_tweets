Rails.application.routes.draw do
    # Index
  # get "/", to: "main#index" 
  # or this could be like this 
  root to: "main#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  # get /about
  get "about-us", to: "about#index", as: :about
  get "main", to: "main#index"

  #signout
  delete "logout", to: "sessions#destroy"

  #sign in 
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  #edit password
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
