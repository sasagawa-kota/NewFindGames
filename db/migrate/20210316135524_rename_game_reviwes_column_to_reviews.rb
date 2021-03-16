class RenameGameReviwesColumnToReviews < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :game_reviewe, :review
    rename_column :reviews, :game_title, :review_title
  end
end
