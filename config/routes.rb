Rails.application.routes.draw do


  get 'homes/top'
  get '/home/about', to: 'homes#about'
  root to: 'homes#top'
  devise_for :users
  resources :books
  resources :users, only: [:index, :create, :show, :edit, :update]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
