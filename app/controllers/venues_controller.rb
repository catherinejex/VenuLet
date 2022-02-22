class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)

    if @venue.save
      redirect_to venues_path
    else
      render :new
    end
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(params)

    redirect_to # my venues, not all venues nor show page
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy

    redirect_to # my venues
  end

  private

  def venue_params
    params.require(:venue).permit(:title, :location, :description, :rate, :square_meters)
  end

end
