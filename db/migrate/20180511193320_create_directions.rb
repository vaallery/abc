class CreateDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :directions do |t|
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
