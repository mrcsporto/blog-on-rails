Rails.application.routes.draw do
  root 'posts#index'
  
  devise_for :users, controllers: { sessions: "users/sessions" }
  
  devise_scope :user do
    get "active", to: "users/sessions#active"
    get "timeout", to: "users/sessions#timeout"
  end

  resources :posts do
    get :search, on: :collection
  end
  
  resources :comments, only: %i[edit create destroy]
end
