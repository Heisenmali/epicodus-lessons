class ReviewsController < ApplicationController
  include Response
  def index
    song = Song.find(params['song_id'])
    @reviews = song.reviews
    json_response(JSONAPI::Serializer.serialize(@reviews, is_collection: true))
  end

  # def show
  #   @song = Song.find(params[:id])
  #   json_response(JSONAPI::Serializer.serialize(@song))
  # end
  #
  # def create
  #   puts params
  #   @song = Song.create!(song_attributes)
  #   json_response(JSONAPI::Serializer.serialize(@song), :created)
  # end
  #
  # def update
  #   @song = Song.find(params[:id])
  #   if @song.update!(song_attributes)
  #     json_response({"data":{"type":"messages","attributes":{"message":"The song was updated"}}})
  #   end
  # end
  #
  # def destroy
  #   @song = Song.find(params[:id])
  #   if @song.destroy!
  #     json_response({"data":{"type":"messages","attributes":{"message":"The song was deleted"}}})
  #   end
  # end
  #
  # private
  # def song_params
  #   params.require(:data).permit(:type, {
  #    attributes: [:artist, :title, :id]
  #  })
  # end
  #
  # def song_attributes
  #   song_params[:attributes] || {}
  # end
end
