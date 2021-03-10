class Review < ApplicationRecord
  validates :game_reviewe, presence: true
  validates :game_title, presence: true
  validates :score, presence: true
  validates :score2, presence: true
  validates :score3, presence: true
  validates :score4, presence: true
  
  belongs_to :user
  belongs_to :topic
end
