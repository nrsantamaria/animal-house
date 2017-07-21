class TypesController < ApplicationController
  def index
    @types = Type.all.page(params[:page])
    json_response(@types)
  end

  def show
    @type = Type.find(params[:id])
    json_response(@type)
  end

  def create
    @type = Type.create!(type_params)
    json_response(@type, :created)
  end

  def update
    @type = Type.find(params[:id])
    if @type.update!(type_params)
      render status: 200, json: {
        message: "Successfully updated!"
      }
    end
  end

  def destroy
    @type = Type.find(params[:id])
    if @type.destroy!
      render status: 200, json: {
        message: "Successfully deleted!"
      }
    end
  end

  private
  def type_params
    params.permit(:species)
  end
end
