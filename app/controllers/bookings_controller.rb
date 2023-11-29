class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
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
    if @booking.update(booking_params)
      redirect_to @booking, notice: "Booking was succesfully updated", status: :see_other
    else
      render :edit, status: :unprocessable_entity
  end

  private

  def booking_params
    params.require(:booking).permit(:dates, :cost)
  end
end
