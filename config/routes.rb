Rails.application.routes.draw do
  devise_for :users  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "products#index"
  get 'about', to: 'pages#about'
  get 'my_products', to: 'products#my_products'
  get 'my_orders', to: 'orders#my_orders'
  get 'confirm', to: 'pages#confirm', as: :confirm
  resources :products, shallow: true do
    resources :orders, only: [:create, :new]
  end
  resources :orders, only: [:index]
end
