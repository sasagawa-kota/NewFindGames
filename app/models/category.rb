class Category < ApplicationRecord
  has_many :topic_category_relations
  has_many :topics, through: :topic_category_relations
end
