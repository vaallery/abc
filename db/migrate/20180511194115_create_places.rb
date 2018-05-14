class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.references :place_category, foreign_key: true
      t.string :name
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :slug
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
