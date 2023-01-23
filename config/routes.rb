Rails.application.routes.draw do
  get 'store/index'
  get 'store/show'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/subscribe'
  get 'pages/terms'
  get 'products/index'
  get 'products/show'
  get 'categories/index'
  get 'categories/show'
  root :to => 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
