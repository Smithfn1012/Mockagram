Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy] do
    resources :comments
  end
  get 'search' => 'search#index'
end
