Rails.application.routes.draw do
  get 'welcome/bikes'
  get 'welcome/gear'
  get 'welcome/services'
  get 'welcome/index'

  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'welcome#index'
end
