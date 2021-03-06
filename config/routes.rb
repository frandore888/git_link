Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'
  
  resources :users, only:[:show, :edit, :update]
  resources :topics
  resources :infos
  resources :pics do
    resources :comments, only:[:create]
  end
end
