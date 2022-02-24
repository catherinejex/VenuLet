class BookingsController < ApplicationController
  def new
    @venue = Venue.find(params[:venue_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @venue = Venue.find(params[:venue_id])
    @booking.venue = @venue
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :show
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
