Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get '/cars', to: 'cars#index'

  get '/cars/:make', to: 'cars#show_make'
  
end

# Model == singular Car
# Controller == pluarl CarsController
# Methods are snake_case
