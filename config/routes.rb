Rails.application.routes.draw do
  root 'songs#index'
  resources :songs do
    resources :reviews
  end
end
