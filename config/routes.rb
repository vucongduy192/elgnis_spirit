Rails.application.routes.draw do
  resources :images
   resources :friendships
  root 'static_pages#home'
  devise_for :users, controllers: { confirmations: 'confirmations', :omniauth_callbacks => "users/omniauth_callbacks"  }
end
