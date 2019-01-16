Rails.application.routes.draw do
  root "sessions#new"
  resources :users do 
    resources :records
  end

  post '/records/search' => 'records#search', as: :records_search
  resources :sessions, only: [:new, :create]
  delete '/logout', to:'sessions#destroy', as: :logout
end
