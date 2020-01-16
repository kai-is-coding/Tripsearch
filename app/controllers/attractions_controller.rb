class AttractionsController < ApplicationController
before_action :check_if_it_is_admin, only: [:new, :create, :edit, :destroy]
def new
  @attraction = Attraction.new
end

def create
  @attraction = Attraction.create attraction_params
  redirect_to attractions_path
end

  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find params[:id]
  end

  def edit
    @attraction = Attraction.find params[:id]
  end

  def update
    attraction = Attraction.find params[:id]
    attraction.update attraction_params
    redirect_to attraction_path(attraction.id)
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

    private
    def attraction_params
      params.require(:attraction).permit(:name, :description, :image)
    end
end
