Rails.application.routes.draw do
  resources :users
  resources :bills
  post '/login', to: 'sessions#create'
  
end
