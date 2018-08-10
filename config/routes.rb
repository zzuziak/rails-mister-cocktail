Rails.application.routes.draw do

  root to: "cocktails#index"
  resources :cocktails, only: [ :show, :new, :create] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create, :index]
  end
  resources :reviews, only: [:show, :destroy]
  resources :doses, only: [:show, :destroy]
end
