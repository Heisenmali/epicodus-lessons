Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: 'home#index'

  resources :about, only: :index
  resources :home, only: :index
  resources :cart, controller: "order_items"
  
  resources :products do
    resources :reviews
  end
end
