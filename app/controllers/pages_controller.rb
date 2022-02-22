class PagesController < ApplicationController
  def home
  end

  def venues
  end

  def profile
    @user = current.user
  end
end
