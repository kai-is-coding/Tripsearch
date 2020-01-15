class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find params[:id]
  end

  def destroy
    Attraction.destroy params[:id]
    redirect_to attractions_path

  end

  def map
    @attractions = Attraction.where.not(latitude:nil, longitude:nil).select(:latitude, :longitude, :name)
  end

  def search

  end
end
