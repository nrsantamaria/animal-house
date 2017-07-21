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

end
