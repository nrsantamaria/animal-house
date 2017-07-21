class AnimalsController < ApplicationController

  def index
    @type = Type.find(params[:type_id])
    @animals = @type.animals.page(params[:page])
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

  def update
    @type = Type.find(params[:type_id])
    @animal = @type.animals.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "Yay! A new animal!"
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy!
      render status: 200, json: {
        message: "Successfully deleted animal."
      }
    end
  end

  private
  def animal_params
    params.permit(:name, :color, :breed, :age, :gender, :weight, :description, :photo)
  end
end
