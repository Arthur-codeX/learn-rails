Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "pets#index"

  get "add" ,to:"pets#add"

  post "create",to:"pets#create"

  get "update/:id", to:"pets#update"

  put "update/:id", to:"pets#update"

  get "delete/:id", to:"pets#delete"

end
