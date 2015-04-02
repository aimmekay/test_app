Rails.application.routes.draw do
  get 'laptop/index'
  get 'laptop/new'

  resources :assets
  resources :laptops
  root 'main#index'
  

end
