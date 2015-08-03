Rails.application.routes.draw do

  get "/dashboard" => "dashboard#index"

  resources :tasks do
  	member do
  		put :toggle
  	end

  	#para todas as tasks
  	# collection do
  	# 	get :asd
  	# end
  end

  root to: 'dashboard#index'
end
