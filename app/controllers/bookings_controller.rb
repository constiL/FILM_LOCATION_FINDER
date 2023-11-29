class BookingsController < ApplicationController
  def new
  end

  def create
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

end
