class User < ApplicationRecord
  has_secure_password
  has_many :reflections
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: 4..10
  validates :password, presence: true
  validates :password, length: 4..12
end
