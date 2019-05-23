Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users
  root to: 'islands#index'

  resources :islands do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
