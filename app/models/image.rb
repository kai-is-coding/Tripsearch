class Image < ApplicationRecord
  belongs_to :attraction, optional: true
  belongs_to :city, optional: true
  belongs_to :country, optional: true
  belongs_to :user, optional: true
end
