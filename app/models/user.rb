class User < ApplicationRecord

  # User model need this method to secure password
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  # validates :admin, presence: true, uniqueness: true

  has_one :wishlist
  has_one :image
end
