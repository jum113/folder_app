Rails.application.routes.draw do
  root 'folders#index'
  resources :folders, only: [:index, :create, :destroy] do
    resources :memos, only: [:index, :create]
  end
end
