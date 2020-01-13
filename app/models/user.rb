class User < ApplicationRecord

  # User model need this method to secure password
  has_secure_password
end
