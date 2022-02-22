class PagesController < ApplicationController
  def home
  end

  def venues
  end

  def profile
    @user = User.find(params[:id])
  end
end
