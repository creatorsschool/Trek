Rails.application.routes.draw do
  root to: 'dashboard#index'
  get "/dashboard" => "dashboard#index"
  get "/search" => "projects#search"
  resources :users, controller: 'users' do
    resource :password, controller: 'clearance/passwords', only: [:create, :edit, :update]
    resources :instant_messages, only: [:create, :index]
  end

  resources :projects do
    resources :groups
  end
  resources :tasks do
  	member do
  		put :toggle
  	end
  end
end
