Rails.application.routes.draw do
  
  root 'keywords#new'

  get '/signup', to: "users#new"

  get 'keywords/new'
  
  post 'keywords/create'
  
  get 'keywords/index'
  
  resources :users
  resources :reserves

end
