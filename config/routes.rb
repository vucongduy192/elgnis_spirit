Rails.application.routes.draw do
  resources :clicks, :only => [:create]
  resources :schools
  resources :image_states, :only => [:create]
  delete '/image_states', to: 'image_states#handle_destroy'


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
