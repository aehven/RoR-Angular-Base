Rails.application.routes.draw do
  resources :meals
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :users
end
