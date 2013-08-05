Rails3BootstrapDeviseCancan::Application.routes.draw do

  get "/scratch", to: "home#scratch"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

  devise_for :users
  resources :users
end