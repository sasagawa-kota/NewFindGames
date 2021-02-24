class User < ApplicationRecord
  has_secure_password
  
  validates :name, presence: true, length: { maximum: 15 }
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { in: 8..32 }, format: { with: VALID_PASSWORD_REGEX}
  
  has_many :topics
  has_many :reviews
end
