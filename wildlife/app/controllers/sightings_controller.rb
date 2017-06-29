class SightingsController < ApplicationController

  def new
    @animal = Animal.find(params[:animal_id])
    @regions = Region.all
    @sighting = @animal.sightings.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @region = Region.find(params[:region_id])
    @sighting = @animal.sightings.new()
    @region.sightings << @sighting
    if @sighting.save
      redirect_to animal_path(@sighting.animal)
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.find(params[:id])
    render :edit
  end

  def update
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.find(params[:id])
    if @sighting.update(sighting_params)
      redirect_to animal_path(@sighting.animal)
    else
      render :edit
    end
  end

  def destroy
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.find(params[:id])
    @sighting.destroy
    redirect_to animal_path(@sighting.animal)
  end


  private
    def sighting_params
      params.require(:sighting).permit()
    end
end
