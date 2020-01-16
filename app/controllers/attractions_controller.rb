class AttractionsController < ApplicationController
  before_action :check_if_logged_in, only: [:index, :show, :search]
  before_action :check_if_it_is_admin
  
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
    @attractions = Attraction.where('name ILIKE ?', "%#{params[:search_text]}%")
  end
end
