class UsersController < ApplicationController
  def show
    @user = current_user
    # select & show all the bookings for that user(vistor)
    @bookings = Booking.where(user: @user)
      # selecting the bookings by user_id
      # iterating over that array and putting each in a card
    # select & show all the bookings for that user(host)

    # select and show all their locations
    @locations = @user.locations
  end
end
