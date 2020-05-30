Rails.application.routes.draw do

  root to: "home#index"
  #devise_for :users
  namespace :v1 do 
    resources :orgs
    resources :sessions, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
