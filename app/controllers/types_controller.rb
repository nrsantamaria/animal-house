class TypesController < ApplicationController
  def index
    @types = Type.all
    json_response(@types)
  end

  def show
    @type = Type.find(params[:id])
    json_response(@type)
  end
end
