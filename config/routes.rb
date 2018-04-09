Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'stories#index'

  resources :stories
  resources :reputations

  namespace :admin do
    resources :stories
  end
end
