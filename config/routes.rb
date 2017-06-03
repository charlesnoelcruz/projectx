Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'

  resources :posts
  devise_for :users, controllers: { registrations: "registrations" }  

end
