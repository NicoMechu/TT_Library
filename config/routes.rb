Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  # Devise
  devise_for :admin_users, ActiveAdmin::Devise.config

  # Active admin
  ActiveAdmin.routes(self)

  devise_for :users 
  resources :users do
    resources :requests 
    resources :comments
  end
  
  resources :authors, only: [:index, :show]
  resources :books, only: [:index, :show] do
    resources :requests 
    resources :comments
  end
  


  namespace :api, defaults: { format: :json }  do
    namespace :v1 do
      resources :books, only: [:index, :show]
    end
  end

  root "books#index"
end
