class Wishlist < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :cities
  has_and_belongs_to_many :attractions

end
