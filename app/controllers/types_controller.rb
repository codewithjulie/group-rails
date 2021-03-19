class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    # @type = Type.where(id: params[:id]).first
    # @type = Type.find_by(id: params[:id]) # can find by other variables
    @type = Type.find(params[:id]) # find by id
    # what's the difference find, find_by and where

    @foods = @type.foods
  end

end


# 1. list all the types
# 2. be able to click into each type and see all the foods of that type