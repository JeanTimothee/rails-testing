Rails.application.routes.draw do
  get 'products/index'
  devise_for :users
  root to: "products#index"
  resources :products, only: [ :new, :create ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
