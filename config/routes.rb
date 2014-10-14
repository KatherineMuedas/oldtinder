Rails.application.routes.draw do
 
  devise_for :users

  resources :users, only: [:show, :index] 

  resources :pictures do
   resources :comments, only: [:create, :destroy]
  end  
    
  root to: 'pictures#index'
end




