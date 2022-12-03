Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "sessions#index"

  get "login",to:"sessions#login"

  get "check",to:"sessions#check"


  post "login",to:"jwt#login"

  post "check",to:"jwt#check"


  get "product",to:"products#index"

  get "product/one",to:"products#one_product"

  post "express",to:"products#express"

end
