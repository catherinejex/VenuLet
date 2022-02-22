class AddImageToVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :image, :string
  end
end
