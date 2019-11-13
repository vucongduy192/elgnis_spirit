Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :images
  resources :friendships
  root 'static_pages#home'
  devise_for :users, controllers: { confirmations: 'confirmations', :omniauth_callbacks => "users/omniauth_callbacks"  }
end
