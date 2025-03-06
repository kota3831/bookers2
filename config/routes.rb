Rails.application.routes.draw do


  get 'homes/top'
  get '/home/about', to: 'homes#about'
  root to: 'homes#top'
  devise_for :users
  resources :books
  resources :users, only: [:index, :create, :show, :edit, :update]
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
