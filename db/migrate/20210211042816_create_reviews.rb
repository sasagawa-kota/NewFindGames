class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :topic_id
      t.integer :user_id
      t.text :game_reviewe
      t.integer :score

      t.timestamps
    end
  end
end
