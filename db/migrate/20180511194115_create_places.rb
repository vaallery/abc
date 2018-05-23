class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      # t.references :place_category, foreign_key: { on_delete: :nullify }
      t.string :place_category
      t.string :name
      t.references :main_direction, foreign_key: { to_table: :directions, on_delete: :nullify }
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :slug
      t.boolean :active, default: true
      t.references :metro_line, foreign_key: { on_delete: :nullify }

      t.timestamps
    end
  end
end
