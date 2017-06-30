Rails.application.routes.draw do
  root to: 'products#featured'

  
  resources :products do
    get 'featured'
    resources :reviews
  end

end

