class AnimalsController < ApplicationController

  def index
    @type = Type.find(params[:type_id])
    @animals = @type.animals
    json_response(@animals)
  end

end
