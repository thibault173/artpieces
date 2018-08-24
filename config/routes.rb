Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pieces, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:update, :destroy, :index] do
    member do
      get 'accept', to: 'bookings#accept'
      get 'decline', to: 'bookings#decline'
    end
  end
end
