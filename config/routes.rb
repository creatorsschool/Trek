Rails.application.routes.draw do
  get "/dashboard" => "dashboard#index"

  resources :projects 
  resources :tasks do
  	member do
  		put :toggle
  	end
  end

  root to: 'dashboard#index'
  
end
