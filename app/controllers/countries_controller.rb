class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def show
    @country = Country.find params[:id]

  end

  def search
    @countries = Country.find_by params[:search_id]
  end

end
