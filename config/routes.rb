Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  resources :learning_resources do
    member do
      post :sign_up_for_next_meeting
    end
  end  

  resources :study_groups
  
  root to: 'learning_resources#index'
end
