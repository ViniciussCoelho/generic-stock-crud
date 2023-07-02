Rails.application.routes.draw do
  resources :organization_data
  get '/index' => 'products#index'
  resources :products
  resources :categories
  resources :brands
  root 'products#index'

  put '/admins/:id/update', to: 'admins#update', as: 'update_admin'

  devise_for :admins, controllers: {
    passwords: 'passwords'
  }

  devise_scope :admin do
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
 end
end
