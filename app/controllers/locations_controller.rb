class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @locations = Location.all

    @markers = @locations.geocoded.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude
      }
    end
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    if @location.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def destroy
    @location = Location.find(params[:id])
    @location.user = current_user
    @location.destroy!
    redirect_to locations_path, notice: "Location was successfully destroyed", status: :see_other
  end

  private

  def location_params
    params.require(:location).permit(:name, :city, :description, :outdoor_space, :style, :rooms, :image_url, :cost_per_day) # rubocop:disable Layout/LineLength
  end
end
