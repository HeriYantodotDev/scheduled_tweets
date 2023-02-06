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

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
