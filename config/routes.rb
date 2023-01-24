Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :store
  # resources :pages
  resources :products
  resources :categories
  # get 'categories/index'
  # get 'categories/show'
  # get 'store/index'
  # get 'store/show'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/subscribe'
  get 'pages/terms'
  # get 'products/index'
  # get 'products/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
