class UsersController < ApplicationController
  def show
    @user = current_user
    @venues = current_user.venues
    @bookings = current_user.bookings
  end
end
