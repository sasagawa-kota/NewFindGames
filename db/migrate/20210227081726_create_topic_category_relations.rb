class CreateTopicCategoryRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :topic_category_relations do |t|
      t.integer :topic_id
      t.integer :category_id
      t.timestamps
    end
  end
end
