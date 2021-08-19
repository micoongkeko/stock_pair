Rails.application.routes.draw do
  get 'admin/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations'
  }
  resources :users
  resources :roles

  root to: 'users#index'

end
