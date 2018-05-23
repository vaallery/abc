class CreateHotelsDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels_directions do |t|
      t.references :hotel, foreign_key: { on_delete: :cascade }
      t.references :direction, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
