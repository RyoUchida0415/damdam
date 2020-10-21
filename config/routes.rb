Rails.application.routes.draw do
  namespace :admin do
    devise_for :admins
    get 'dams/index'
    get 'dams/show'
    get 'dams/edit'
    get 'dams/new'
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
  get 'dams/new'
  get 'dams/edit'

end
