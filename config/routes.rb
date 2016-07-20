Rails.application.routes.draw do

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
  
  root "books#index"
end
