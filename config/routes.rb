Rails.application.routes.draw do
  root 'visitors#index'
  mount RailsAdmin::Engine => '/super_admin', as: 'rails_admin'
  get 'super_admin' => "dashboard#index", :as => :dashboard
  resources :posts
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users
  get 'admin' => 'admin#index'
end
