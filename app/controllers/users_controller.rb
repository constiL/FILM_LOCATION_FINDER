class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @booking = Booking.find(params[:id])
    
    # @bookings = Booking.all.where(current_user = location.user)
    # select & show all the bookings for that user(host)
      # selecting the bookings by user_id
      # iterating over that array and putting each in a card
    # select & show all the bookings for that user(visitor)
    # select and show all their locations
  end
end
