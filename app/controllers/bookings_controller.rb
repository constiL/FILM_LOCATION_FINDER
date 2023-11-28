class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to 
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end
end
