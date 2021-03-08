class Review < ApplicationRecord
  validates :game_reviewe, presence: true
  
  belongs_to :user
  belongs_to :topic
end
