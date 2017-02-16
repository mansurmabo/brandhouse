Rails.application.routes.draw do
  root 'pages#show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
