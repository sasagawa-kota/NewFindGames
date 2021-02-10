class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :category_id
      t.string :title
      t.text :description
      t.integer :reviews_count
      t.integer :package_image

      t.timestamps
    end
  end
end
