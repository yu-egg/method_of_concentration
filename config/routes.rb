Rails.application.routes.draw do
  get 'timers/index'
  devise_for :users
  root to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
