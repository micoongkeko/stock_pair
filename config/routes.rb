Rails.application.routes.draw do
  get 'admin/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations',
    users: 'users'
  }
  resources :users
  resources :roles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'users#index'
  root to: 'admin#index'

end
