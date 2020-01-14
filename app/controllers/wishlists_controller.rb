class WishlistsController < ApplicationController
  def new
  end

  def create
    Wishlist.create place1: params[:country]
    # raise 'hell'
  end

  def index
    @wishlists = Wistlist.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
