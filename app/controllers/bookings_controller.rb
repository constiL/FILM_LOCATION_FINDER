class BookingsController < ApplicationController
  def new
    @location = Location.find(params[:location_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @location = Location.find(params[:location_id])
    @booking.location = @location
    @booking.user = current_user
    if @booking.save
      redirect_to locations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.user = current_user
    if @booking.update(booking_params)
      redirect_to @booking, notice: "Booking was succesfully updated", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:dates, :cost)
  end
end
