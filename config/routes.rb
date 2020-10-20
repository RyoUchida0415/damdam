Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  get 'users/show'


  get 'homes/about'
  root 'homes#top'

  get 'dams/index'
  get 'dams/show'
  get 'dams/new'
  get 'dams/edit'

end
