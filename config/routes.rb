Rails.application.routes.draw do
  resources :study_group_event_attendances
  resources :study_group_events
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  resources :learning_resources do
    member do
      post :sign_up_for_next_meeting
    end
  end  

  resources :study_groups do
    member do
      post :create_zoom_meeting
      post :finish
    end
  end
  
  root to: 'learning_resources#index'
end
