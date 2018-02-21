Rails.application.routes.draw do
  get 'dashboards/index'

  get 'dashboards/setting'

  resources :billables
  resources :items
  resources :claims
  resources :claim_data
  resources :clients
  root to: 'visitors#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    invitations: 'users/invitations',
  }

  namespace :admin do
    resources :users
  end
end
