Rails.application.routes.draw do
  root to: 'dashboard#index'
  get "/dashboard" => "dashboard#index"

  resources :users, except: [:new, :create]
  resources :groups
  resources :projects
  resources :tasks do
  	member do
  		put :toggle
  	end
  end
end
