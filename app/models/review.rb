class Review < ApplicationRecord
  validates :game_reviewe, presence: true
  validates :game_title, presence: true
  
  belongs_to :user
  belongs_to :topic
end
