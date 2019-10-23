Rails.application.routes.draw do
  
  devise_for :users
  root 'keywords#new'

  get '/signup', to: "users#new"
  
  resources :keywords, only:[:new,:create,:index]
  
  resources :users
  resources :reserves
  
  post "reserves/create"
  
  resources :reviews

end
