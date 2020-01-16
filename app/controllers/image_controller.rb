class ImageController < ApplicationController
  before_action :check_if_logged_in

  def add_user
    user = User.find params[:id]
    @current_user.image.user << user
  end

  def add_country
    country = Country.find params[:id]
    @country.images.country << country
  end

  def add_city
    city = City.find params[:id]
    @city.images.city << city
  end

  def add_attraction
    attraction = Attraction.find params[:id]
    @attraction.images.attraction << attraction
  end
end
