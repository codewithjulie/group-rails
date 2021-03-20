class TypesController < ApplicationController

  # before_action get_type

  def index
    @types = Type.all
  end

  def show
    # @type = Type.where(id: params[:id]).first
    # @type = Type.find_by(id: params[:id]) # can find by other variables
    @type = Type.find(params[:id]) # find by id
    @food = Food.new 

    # what's the difference find, find_by and where

    @foods = @type.foods
  end

  def new
    @type = Type.new
  end

  def create

    Type.create(name: params[:type][:name])
    redirect_to types_path

  end

  def edit
    # @type = Type.where(id: params[:id]).first
    # @type = Type.find_by(id: params[:id])
    @type = Type.find(params[:id])
  end

  def update
    new_type = params[:type][:name]
    @type = Type.find(params[:id])
    @type.update(name: new_type)

    redirect_to types_path
  end

  def destroy
    @type = Type.find(params[:id])
    @type.destroy
    redirect_to types_path
  end

  # private
  # def get_type
  #  @type = Type.find(params[:id])
  # end

end




# 1. list all the types
# 2. be able to click into each type and see all the foods of that type