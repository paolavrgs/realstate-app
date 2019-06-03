Rails.application.routes.draw do
  devise_for :users
  scope module: :app do
    get '/', to: 'front#index', as: :root
  end

   namespace :admins do
    get '/', to: 'admin#root'
    get '/dashboard', to: 'dashboard#index', as: :dashboard
  end
end
