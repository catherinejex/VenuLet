class RenameColumnInVenues < ActiveRecord::Migration[6.1]
  def change
    rename_column :venues, :image, :image_url
  end
end
