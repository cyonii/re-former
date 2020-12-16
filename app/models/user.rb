class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness: true
  validates :username, length: { minimum: 3, maximum: 16 }
  validates :email, email: true
  validates :password, presence: true, length: { minimum: 8 }
end
