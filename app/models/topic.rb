class Topic < ApplicationRecord
  validates :package_image, presence: true
  validates :title, presence: true
  validates :description, presence: true, length: { maximum: 100 }
  validates :category_id, presence: true
  
  belongs_to :user
  
  has_many :reviews
  
  belongs_to :category
  
  
  mount_uploader :package_image, ImageUploader
end
