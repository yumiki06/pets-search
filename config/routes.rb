Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create, :destroy]
  root to: 'posts#index'
end
