class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :title
      t.string :location
      t.text :description
      t.integer :rate
      t.integer :square_meters
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
