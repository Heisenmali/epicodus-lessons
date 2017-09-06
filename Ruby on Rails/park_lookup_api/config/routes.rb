Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'random', controller: 'parks'
  get 'search', controller: 'parks'
  resources :parks
end
