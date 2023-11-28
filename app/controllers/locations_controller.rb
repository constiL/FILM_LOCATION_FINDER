class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
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
    params.require(:location).permit(:name, :city, :description, :outdoor_space, :style, :rooms, :image_url)
  end
end
