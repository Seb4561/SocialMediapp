Rails.application.routes.draw do  
  resources :comments
  get "up" => "rails/health#show", as: :rails_health_check

  root "posts#index"

  resources :posts, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
  resources :comments, only: [ :new ]
  resources :users, only: [ :index ]
end
