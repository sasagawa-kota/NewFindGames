class Topic < ApplicationRecord
  validates :package_image, presence: true
  validates :title, presence: true
  validates :description, presence: true
  
  belongs_to :user
  
  mount_uploader :package_image, ImageUploader
end
