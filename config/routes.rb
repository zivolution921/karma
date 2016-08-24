Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {registrations: 'registrations'}
  # You can have the root of your site routed with "root"
  root 'pages#home'

   resources :users, only: [:show, :index]
end
