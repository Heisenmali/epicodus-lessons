class SongsController < ApplicationController
  def index
    @songs = Song.all
    json_response(@songs)
  end

  def show
    @song = Song.find(params[:id])
    json_response(@song)
  end

  def create
    @song = Song.create(song_params)
    json_response(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def song_params
    params.permit(:artist, :title)
  end
end
