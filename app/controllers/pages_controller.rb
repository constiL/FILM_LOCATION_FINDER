class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @locations = Location.all

    @markers = @locations.geocoded.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude
      }
    end
  end
end
