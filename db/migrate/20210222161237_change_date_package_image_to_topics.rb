class ChangeDatePackageImageToTopics < ActiveRecord::Migration[5.2]
  def change
    change_column :topics, :package_image, :string
  end
end
