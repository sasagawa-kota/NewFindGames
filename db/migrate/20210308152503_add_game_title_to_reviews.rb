class AddGameTitleToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :game_title, :string
  end
end
