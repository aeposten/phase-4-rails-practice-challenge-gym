Rails.application.routes.draw do
  resources :clients, only: [:show, :index, :update]
  resources :gyms, only: [:show, :index, :destroy,:update]
  resources :memberships, only: [:create, :show]
end
