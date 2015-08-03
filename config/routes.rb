Rails.application.routes.draw do

  get "/dashboard" => "dashboard#index"

  resources :groups

end
