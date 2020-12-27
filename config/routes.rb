Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  resources :users, only: :show
end