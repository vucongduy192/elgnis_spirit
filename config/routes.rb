Rails.application.routes.draw do
  resources :schools
  mount ActionCable.server => '/cable'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :images
  devise_for :users, controllers: { confirmations: 'confirmations', :omniauth_callbacks => "users/omniauth_callbacks"  }

  resources :friendships
  root 'static_pages#home'

  resources :users do
    resources :chats, only: [:index, :show, :create]
  end
  resources :messages, only:[:create]
end
