class ParksController < ApplicationController
   include Response
  def index
    parks = Park.all
    json_response(parks)
  end
end
