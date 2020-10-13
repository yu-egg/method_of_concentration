Rails.application.routes.draw do
  get 'rests/index'
  get 'outputs/index'
  get 'timers/index'
  devise_for :users
  root to: 'users#index'
  resources :outputs, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
