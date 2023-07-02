Rails.application.routes.draw do
  get '/index' => 'products#index'
  resources :products
  resources :categories
  resources :brands
  root 'products#index'

  devise_for :admins
  devise_scope :admin do
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
 end
end
