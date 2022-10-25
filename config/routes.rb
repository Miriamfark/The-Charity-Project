Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :donors, only: [:show, :index, :create]
  # get 'donors', to: 'donors#index'
  # get 'donors/:id', to: 'donors#show'

  resources :donations, only: [:show, :index, :create]
  # get 'donations', to: 'donations#index'
  # get 'donations/:id', to: 'donations#show'

  resources :recipients, only: [:show, :index, :create]
  # get 'recipients', to: 'recipients#index'
  # get 'recipients/:id', to: 'recipients#show'
end
