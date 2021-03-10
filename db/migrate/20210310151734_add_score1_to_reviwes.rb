class AddScore1ToReviwes < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :score2, :integer
    add_column :reviews, :score3, :integer
    add_column :reviews, :score4, :integer
  end
end
