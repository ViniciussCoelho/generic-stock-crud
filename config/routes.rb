Rails.application.routes.draw do
  devise_for :admins
  get '/index' => 'dashboard#index'
  resources :products
  resources :categories
  resources :brands

  get '/reports/order_supplier_report' => 'reports#order_supplier_report'

  get '/reports/product_order_report' => 'reports#product_order_report'

  get '/reports/product_brand_report' => 'reports#product_brand_report'

  get '/reports' => 'reports#index'

  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
