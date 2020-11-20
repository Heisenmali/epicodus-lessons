class LandingController < ApplicationController
  def index
    if current_user
      @photos = []
      current_user.tags.each do |tag|
        @photos.push(Photo.find(tag.photo_id))
      end
    end
  end
end
