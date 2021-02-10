class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :email
      t.integer :passward
      t.integer :image

      t.timestamps
    end
  end
end
