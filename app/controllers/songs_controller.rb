class SongsController < ApplicationController
  include Response
  def index
    if params[:artist]
      artist = params[:artist]
      @songs = Song.search(artist)
    else
      @songs = Song.all
    end
    json_response(JSONAPI::Serializer.serialize(@songs, is_collection: true))
  end

  def show
    @song = Song.find(params[:id])
    json_response(@song)
  end

  def create
    @song = Song.create!(song_attributes)
    json_response(JSONAPI::Serializer.serialize(@song))
  end

  def update
    @song = Song.find(params[:id])
    if @song.update!(song_attributes)
      render status: 200, json: {
       message: "Your song has successfully been updated."
      }
    end
  end

  def destroy
    @song = Song.find(params[:id])
    if @song.destroy!
      render status: 200, json: {
       message: "Your song has successfully been deleted."
      }
    end
  end

  private
  def song_params
    params.require(:data).permit(:type, {
     attributes: [:artist, :title]
   })
  end

  def song_attributes
    song_params[:attributes] || {}
  end
end
