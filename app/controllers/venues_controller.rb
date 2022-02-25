class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :map ]

  def index
    query = Venue.all
    query = query.where("location ILIKE ?", "%#{params[:location]}%") if params[:location].present?
    query = query.where("square_meters >= ?", params[:min_size]) if params[:min_size].present?
    query = query.where("square_meters <= ?", params[:max_size]) if params[:max_size].present?
    query = query.where("rate >= ?", params[:min_price]) if params[:min_price].present?
    query = query.where("rate <= ?", params[:max_price]) if params[:max_price].present?
    @venues = query

    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window: render_to_string(partial: "info_window", locals: { venue: venue } )
      }
    end
  end

  def show
    @venue = Venue.find(params[:id])
    @booking = Booking.new
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user

    if @venue.save
      redirect_to venues_path(@venues)
    else
      render 'new'
    end

  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(params)

    redirect_to my_venues_path
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.user = current_user
    @venue.destroy

    redirect_to user_path(current_user)
  end

  def map
    @venues = Venue.all

    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window: render_to_string(partial: "info_window", locals: { venue: venue } ),
        image_url: helpers.asset_url("map-pin.png")
      }
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:title, :location, :description, :rate, :square_meters, :image_url, :photo)
  end

end
