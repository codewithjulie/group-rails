class CarsController < ApplicationController

  def index
    cars = Car.all
    render_cars(cars)
  end

  def show_make
    make = params["make"] # jeep
    cars = Car.where(make: make)
    render_cars(cars)
  end

  private

  def render_cars(cars)
    render plain: cars.map {|car| car.model_make }.join(", ")
  end

end


# Add the ability to take in make as a param in the controller for displaying the cars
