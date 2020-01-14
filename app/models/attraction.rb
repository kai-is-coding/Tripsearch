class Attraction < ApplicationRecord
  belongs_to :city, optional: true
end
