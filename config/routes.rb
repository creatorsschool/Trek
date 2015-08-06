Rails.application.routes.draw do
  root to: 'dashboard#index'
  get "/dashboard" => "dashboard#index"

  resources :users, controller: 'users' do
    resource :password, controller: 'clearance/passwords', only: [:create, :edit, :update]
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
