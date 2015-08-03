Rails.application.routes.draw do
  get "/dashboard" => "dashboard#index"

  resources :projects 
end
