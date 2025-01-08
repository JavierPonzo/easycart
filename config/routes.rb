Rails.application.routes.draw do
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  root "products#index"

  get 'about', to: 'pages#about'
  get 'confirm', to: 'pages#confirm', as: :confirm

  resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :orders, only: [:create, :new], shallow: true
  end

  resources :orders, only: [:index, :show, :create] do
    member do
      post :create_checkout_session
      get :payment_success
      get :payment_cancel
    end
  end

  get 'my_products', to: 'products#my_products', as: :my_products
  get 'my_orders', to: 'orders#my_orders', as: :my_orders
end
