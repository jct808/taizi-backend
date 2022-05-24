Rails.application.routes.draw do
  resources :cases
  resources :products
  resources :categories
  resources :suppliers
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
