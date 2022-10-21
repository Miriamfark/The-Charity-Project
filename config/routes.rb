Rails.application.routes.draw do
  resources :recipients
  resources :donations
  resources :donors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end