Rails.application.routes.draw do
  devise_for :users

  namespace :operations do
    post 'calculate'
    get 'calculate', to: 'index'
  end

  root to: 'operations#index'
end
