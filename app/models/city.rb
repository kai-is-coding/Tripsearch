class City < ApplicationRecord
  belongs_to :country, optional: true
  has_many :attractions
  has_many :images
  has_and_belongs_to_many :wishlists


end
