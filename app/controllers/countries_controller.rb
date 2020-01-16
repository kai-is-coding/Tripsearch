class CountriesController < ApplicationController

  before_action :check_if_it_is_admin, only: [:new, :create, :edit, :destroy]

  def new
    @country = Country.new
  end

  def create
    @country = Country.create country_params
    redirect_to countries_path
  end

  def index
    @countries = Country.all
  end

  def show
    @country = Country.find params[:id]

  end

  def edit
    @country = Country.find params[:id]
  end

  def update
    country = Country.find params[:id]
    country.update country_params
    redirect_to country_path(country.id)
  end

  def destroy
    Country.destroy params[:id]
    redirect_to countries_path
  end

  def map
    @countries = Country.where.not(latitude:nil ,longitude:nil).select(:latitude, :longitude, :name)
  end

  def search
    @countries = Country.where('name ILIKE ?', "%#{params[:search_text]}%")


  end

  private
  def country_params
    params.require(:country).permit(:name, :description, :image)
  end
end
