Rails.application.routes.draw do
  get 'searches/search'
  namespace :admin do
    devise_for :admins
    resources :dams, only: [:index, :show, :edit, :new, :create, :destroy]
  end

  devise_for :users
  get 'users/index'
  get 'users/show'


  get 'homes/about'
  get 'homes/user'
  get 'homes/admin'
  root 'homes#top'

  resources :dams, only: [:index, :show] do
      resources :post_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
  end

  get 'favorites/index'
end

