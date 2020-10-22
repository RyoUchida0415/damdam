Rails.application.routes.draw do
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

  get 'dams/index'
  get 'dams/show'

end
