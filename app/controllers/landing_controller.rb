class LandingController < ApplicationController
  def index
    if current_user
      @photos = current_user.photos
    end
  end
end
