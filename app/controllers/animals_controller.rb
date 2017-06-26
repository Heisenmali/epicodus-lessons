class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render :index
  end
end
