class FoodsController < ApplicationController
    def create
        # render plain: params
        food_name = params[:food][:name]
        food_price = params[:food][:price]
        @type = Type.find(params[:type_id])
        @type.foods.create(name: food_name, price: food_price)
        redirect_to type_path(@type)
    end
end
