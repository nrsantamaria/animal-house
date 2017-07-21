class TypesController < ApplicationController
  def index
    @types = Type.all
    json_response(@types)
  end
end
