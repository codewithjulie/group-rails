Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get '/cars', to: 'cars#index'
  get '/cars/:make', to: 'cars#show_make'



  resources :types do
    resources :foods
  end  

  # get "/types", to: "types#index" # get all food types
  # get "/types/:id", to: "types#show" # get one food type
  # get "/types/new", to: "types#new" # the page where you can add a new type
  # post "/types", to: "types#create" # create a new type
  # get "/types/:id/edit", to: "types#edit" # page where you can edit type
  # patch "types/:id", to: "types#update" # updates the type
  # delete "/types/:id", to: "types#destroy" # deletes the type

  


  # there are 7
  # get "/food_types", to: "food_types#index" # get all food types (index)
  # get "/food_types/:id", to: "food_types#show"
  # post "/food_types", to: "food_types#create"
  
  # "food_types#create"
  #, edit, destroy, update, new,
end

# Model == singular Car
# Controller == plural CarsController
# Methods are snake_case


# Steps:
# 0. Design database
# 1. routes.rb
# 2. models
# 3. controllers
# 4. views


# 