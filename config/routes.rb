Rails.application.routes.draw do
  resources :users, only: :show
  resources :projects, only: :index
end
