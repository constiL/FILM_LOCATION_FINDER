class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to location_path(@location)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  private

  def location_params
    params.require(:location).permit(:name, :city, :description, :style, :rooms, :image_url)
  end
end
