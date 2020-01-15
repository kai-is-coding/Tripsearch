class City < ApplicationRecord
  belongs_to :country, optional: true
  has_many :attractions
  has_many :images

end
