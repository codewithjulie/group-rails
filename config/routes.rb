Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get '/cars', to: 'cars#index'
  get '/cars/:make', to: 'cars#show_make'


  resources :types
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