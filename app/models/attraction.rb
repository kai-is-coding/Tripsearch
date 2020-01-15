class Attraction < ApplicationRecord
  belongs_to :city, optional: true

  has_many :images

  # Tell geocoder where to look to get the human-readable address string, which it will use to work out the lat/long coordinates
  geocoded_by :address

  # Tell geocoder to actually turn the above address into ltitude and longitude GPS coordinates (by doing a lookup in a remote API) any time you create or update item
  after_validation :geocode
end
