Rails.application.routes.draw do
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  
 
  root to: 'tasks#index'
  
  resources :users, only: [:index, :show, :new, :create]   
  resources :tasks
    
end