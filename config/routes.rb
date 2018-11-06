Rails.application.routes.draw do

  root  'static_pages#home'

  get 'sessions/new'
  get 'sessions/show', to: 'sessions#show'
  
  resources :users
  #---------------------------->
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #--------------------------->
  get '/club', to: 'sessions#club'
end
