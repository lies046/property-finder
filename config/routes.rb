Rails.application.routes.draw do
  devise_for :accounts
  resources :properties

  get "/accounts" => 'admin#accounts', as: :accounts
   
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "profile/:id" => "dashboard#profile", as: :profile
  post "/agent/message" => "properties#email_agent", as: :email_agent
  root 'public#main'
end
