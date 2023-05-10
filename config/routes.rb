Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
   get "home/about"=> 'homes#about'

    resources :users, only: [:show, :edit, :update, :index]
    resources :reviews, only: [:new, :show, :edit, :index, :create]
    resources :tennis_courts, only: [:show, :edit, :update, :index]
end
