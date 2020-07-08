Rails.application.routes.draw do
  resources :learning_resources
  get '/auth/:provider/callback', to: 'sessions#create'
  
  root to: 'learning_resources#index'
end
