Rails.application.routes.draw do
  root 'products#index'
  #devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)


  resources :carts, only: [:index] do
    get 'add_to_cart', on: :collection
    get 'destroy_cart', on: :collection
    delete 'remove_product', on: :collection
    get 'increase_quantity', on: :collection
    get 'reduce_quantity', on: :collection
  end

  resources :categories
  resources :brands
  resources :products


  namespace :admin do
    get '/', to: 'admin#index'
    resources :categories
    resources :products
  end

end


