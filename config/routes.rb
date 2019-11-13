Rails.application.routes.draw do
  get 'chats/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :images
  resources :friendships
  root 'static_pages#home'
  resources :chats, only: [:index, :show, :create]
  
  devise_for :users, controllers: { confirmations: 'confirmations', :omniauth_callbacks => "users/omniauth_callbacks"  }
end
