Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root         to: "pages#home"
  get "about", to: "pages#about", as: :about
  get "users", to: "users#index"
  get "users/new", to: "users#new", as: :create
  post "users", to: "users#create"
  get "users/:id", to: "users#show", as: :user
  get "users/:id/edit", to: "users#edit"
  patch "users/:id", to: "users#update"
  delete "users/:id", to: "users#destroy"
end
