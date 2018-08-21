Rails.application.routes.draw do

  devise_for :users
  root to: 'pieces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pieces, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:update, :destroy, :index]
end
