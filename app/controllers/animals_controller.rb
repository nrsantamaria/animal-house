class AnimalsController < ApplicationController

  def index
    @type = Type.find(params[:type_id])
    @animals = @type.animals
    json_response(@animals)
  end

  def show
    @type = Type.find(params[:type_id])
    @animal = @type.animals.find(params[:id])
    json_response(@animal)
  end

  def create
    @type = Type.find(params[:type_id])
    @animal = @type.animals.create!(animal_params)
    json_response(@animal, :created)
  end

  private
  def animal_params
    params.permit(:name, :color, :breed, :age, :gender, :weight, :description, :photo)
  end
end
