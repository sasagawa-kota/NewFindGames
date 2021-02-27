class RemoveCategorieFromTopics < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :category_id, :integer
  end
end
