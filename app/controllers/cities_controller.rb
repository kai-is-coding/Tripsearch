class CitiesController < ApplicationController

  before_action :check_if_it_is_admin, only: [:new, :create, :edit, :destroy]

  def new
    @city = City.new
  end

  def create
    @city = City.create city_params
    redirect_to cities_path
  end

  def index
    @cities = City.all
  end

  def show
    @city = City.find params[:id]
  end

  def edit
    @city = City.find params[:id]
  end

  def update
    city = City.find params[:id]
    city.update city_params
    redirect_to city_path(city.id)
  end

  def destroy
    City.destroy params[:id]
    redirect_to cities_path
  end

  def search
    @cities = City.where('name ILIKE ?', "%#{params[:search_text]}%")
  end

  private
  def city_params
    params.require(:city).permit(:name, :description, :image)
  end
end
