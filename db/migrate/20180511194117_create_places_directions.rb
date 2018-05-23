class CreatePlacesDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :places_directions do |t|
      t.references :place, foreign_key: { on_delete: :cascade }
      t.references :direction, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
