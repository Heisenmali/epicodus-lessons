class ParksController < ApplicationController
   include Response
  def index
    parks = Park.all.page params[:page]
    json_response(parks)
  end

  def show 
    park = Park.find(params[:id])
    json_response(park)
  end

  def update
    byebug
    park = Park.find(params[:id])
    if park.update!(park_params)
      json_response(message: "song was updated")
    end
  end

  def destroy
    park = Park.find(params[:id])
    if park.destroy!
      json_response(message: "song was deleted")
    end
  end

  private

  def park_params
    params.permit(:name)
  end
end
