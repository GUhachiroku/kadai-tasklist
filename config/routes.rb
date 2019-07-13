Rails.application.routes.draw do
  
  get 'messages/create'
  get 'messages/destroy'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root to: 'tasks#index'
  
   get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  
  get 'tasks/show'
  get 'tasks/new'
  root to: 'tasks#index'
  
  resources :users, only: [:index, :show, :new, :create]   
  resources :tasks, controller: 'tasks'
  resources :tasks, only: [:create, :destroy]
end