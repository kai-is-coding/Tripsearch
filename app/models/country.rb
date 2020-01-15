class Country < ApplicationRecord
  has_many :cities
  has_many :images
  
  # belongs_to :wishlist
  has_and_belongs_to_many :wishlists


  has_many :attractions, through: :cities
end
