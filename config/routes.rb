Rails.application.routes.draw do
  devise_for :admins
  scope module: :app do
    get '/', to: 'front#index', as: :root
  end

   namespace :admin do
    get '/', to: 'dashboard#index'

  end
end
