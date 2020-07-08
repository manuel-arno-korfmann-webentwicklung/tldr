Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :learning_resources
  get '/auth/:provider/callback', to: 'sessions#create'
  
  
  
  
  root to: 'learning_resources#index'
end
