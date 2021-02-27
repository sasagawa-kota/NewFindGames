class Topic < ApplicationRecord
  validates :package_image, presence: true
  validates :title, presence: true
  validates :description, presence: true
  
  belongs_to :user
  has_many :reviews
  
  has_many :topic_category_relations
  has_many :categories, through: :topic_category_relations
  
  mount_uploader :package_image, ImageUploader
end
