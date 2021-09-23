Rails.application.routes.draw do

  resources :bills, param: :slug do
    resources :users
  end
  
 
  
end
