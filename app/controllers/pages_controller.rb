class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def venues
  end

  def profile
    @user = current.user
  end
end
