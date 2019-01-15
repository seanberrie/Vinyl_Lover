Rails.application.routes.draw do
  root "sessions#new"
  resources :users do 
    resources :records
  end
  resources :sessions, only: [:new, :create]
  delete '/logout', to:'sessions#destroy', as: :logout
end
