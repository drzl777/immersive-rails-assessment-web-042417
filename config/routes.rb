Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'guests#index'
  post '/appearances' => 'appearances#create', as: :new_appearance
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end
