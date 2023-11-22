Rails.application.routes.draw do

  get "users/", to: "users#index"
  post "users/", to: "users#create"
  get "users/new/", to: "users#new"
  get "users/:id/edit", to: "users#edit"
  get "users/:id/", to: "users#show"
  patch "users/:id/", to: "users#update"
  put "users/:id/", to: "users#update"
  delete "users/:id/", to: "users#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :users
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


end
