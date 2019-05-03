Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'movies#index'

  get '/movies', to: 'movies#index'
  get '/movies/:id', to: 'movies#show'

  devise_for :users
  post '/usercomments', to: 'comments#create'

  # get '/admin/login', to: 'active_admin/devise/sessions#new'
  # post '/admin/login', to: 'active_admin/devise/sessions#create'
  # delete '/admin/logout', to: 'active_admin/devise/sessions#destroy'
  # get '/admin/password/new', to: 'active_admin/devise/passwords#new'
  # get '/admin/password/edit', to: 'active_admin/devise/passwords#edit'
  # patch '/admin/password', to: 'active_admin/devise/passwords#update'
  # put '/admin/password', to: 'active_admin/devise/passwords#update'
  # post '/admin/password', to: 'active_admin/devise/passwords#create'
  # get '/admin', to: 'admin/dashboard#index'
  # post '/admin/admin_users/batch_action', to: 'admin/admin_users#batch_action'
  # get '/admin/admin_users', to: 'admin/admin_users#index'
  # post '/admin/admin_users', to: 'admin/admin_users#create'
  # get '/admin/admin_users/new', to: 'admin/admin_users#new'
  # get '/admin/admin_users/:id/edit', to: 'admin/admin_users#edit'
  # get '/admin/admin_users/:id', to: 'admin/admin_users#show'
  # patch '/admin/admin_users/:id', to: 'admin/admin_users#update'
  # put '/admin/admin_users/:id', to: 'admin/admin_users#update'
  # delete '/admin/admin_users/:id', to: 'admin/admin_users#destroy'
  # get '/admin/dashboard', to: 'admin/dashboard#index'

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
