Rails.application.routes.draw do
  get 'dtu/index'
  get 'dtu/new'

  get 'laptop/index'
  get 'laptop/new'


  resources :assets
  resources :laptops
  resources :dtus
  root 'main#index'
  

end
