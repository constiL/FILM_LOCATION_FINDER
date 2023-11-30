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
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = current_user
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.user = current_user
    if @booking.update(booking_params)
      redirect_to dashboard_path, notice: "Booking was succesfully updated", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :offer, :visited, :approved)
  end
end
