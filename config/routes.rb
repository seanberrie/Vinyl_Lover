Rails.application.routes.draw do
  get 'records/index'
  get 'records/show'
  get 'records/new'
  get 'records/edit'
  get 'records/create'
  get 'records/destroy'
  root "users#index"
  resources :users
  resources :sessions, only: [:new, :create]
  delete '/logout', to:'sessions#destroy', as: :logout
end
