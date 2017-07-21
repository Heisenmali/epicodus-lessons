class ParksController < ApplicationController
   include Response
  def index
    parks = Park.all
    json_response(parks)
  end

  def show 
    park = Park.find(params[:id])
    json_response(park)
  end
end
