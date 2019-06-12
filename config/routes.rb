Rails.application.routes.draw do
  devise_for :users
  scope module: :app do
    get '/', to: 'front#index', as: :root
  end
  
  namespace :admin do
    get '/', to: 'admin#root'
    get '/dashboard', to: 'dashboard#index', as: :dashboard
    resources :products
  end
end
