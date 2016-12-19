Rails.application.routes.draw do
  root :to => 'users#new' #Login

  use_doorkeeper
  resources :courses
  resources :users
  
  #=========== API ============
  namespace :api, defaults: { format: "json" } do
    resources :courses, controller: :courses, only: [:index]
  end
end
