class Review < ApplicationRecord
  validates :review, presence: true
  validates :review_title, presence: true
  validates :score, presence: true
  validates :score2, presence: true
  validates :score3, presence: true
  validates :score4, presence: true
  
  belongs_to :user
  belongs_to :topic
end
