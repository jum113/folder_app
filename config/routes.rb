Rails.application.routes.draw do
  root 'folders#index'
  resources :folders, only: [:index, :create]
end
