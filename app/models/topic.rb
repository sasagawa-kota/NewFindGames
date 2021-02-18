class Topic < ApplicationRecord
  validates :package_image, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
