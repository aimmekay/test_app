Rails.application.routes.draw do
  get 'laptop/index'

  resources :assets
  resources :laptop
  root 'main#index'
  

end
