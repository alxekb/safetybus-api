Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users
  namespace :v1, defaults: {format: :json} do 
    resources :orgs
    resource :sessions, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
