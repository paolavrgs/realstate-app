Rails.application.routes.draw do
  devise_for :users
  scope module: :app do
    get '/', to: 'front#index', as: :root
    get '/products', to: 'front#products', as: :products
    get '/product/:product_id', to: 'front#product', as: :product
    resources :cotizations
  end
  
  namespace :admin do
    get '/', to: 'admin#root'
    get '/dashboard', to: 'dashboard#index', as: :dashboard
    resources :cotizations
    resources :products
  end
end
