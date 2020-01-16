class WishlistsController < ApplicationController

  before_action :check_if_logged_in
  # action to add country into current user wishlist
  def add_country
    # raise 'hell'
    country = Country.find params[:id]
    @current_user.wishlist.countries << country

    flash[:notice] = "Successfully added!"
    redirect_to country_path(country.id)
  end

  def add_attraction
    # raise 'hell'
    attraction = Attraction.find params[:id]
    @current_user.wishlist.attractions << attraction

    flash[:notice] = "Successfully added!"
    redirect_to attraction_path(attraction.id)
  end

  def add_city
    # raise 'hell'
    city = City.find params[:id]
    @current_user.wishlist.cities << city

    flash[:notice] = "Successfully added!"
    redirect_to city_path(city.id)
  end



  def new
  end

  def create
    # raise 'hell'
  end

  # def index
  #   @wishlists = Wistlist.all
  # end

  def show
    @wishlist = @current_user.wishlist
  end

  def edit
  end

  def update

  end

  def destroy
  end
end
