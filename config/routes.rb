Rails.application.routes.draw do
  get 'topics/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get 'sessions/new'
  namespace :admin do
    resources :users
  end
  
  get 'pages/index'
  root 'pages#index'
  
  resources :topics do
    resources :reviews, only: [:create]
  end
  
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
