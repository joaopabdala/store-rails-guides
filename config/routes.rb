Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resource :sign_up
  namespace :settings do
    resource :password, only: [ :show, :update ]
    resource :profile, only: [ :show, :update ]
    resource :user, only: [ :show, :destroy ]
    resource :email, only: [ :show, :update ]

    root to: redirect("/settings/profile")
  end

  namespace :email do
    resources :confirmations, param: :token, only: [ :show ]
  end
  get "up" => "rails/health#show", as: :rails_health_check

  root "products#index"
  resources :products do
    resources :subscribers, only: [ :create ]
  end
  resource :unsubscribe, only: [ :show ]

  namespace :store do
    resources :products
    resources :users

    root to: redirect("/store/products")
  end

end
