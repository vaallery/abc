class CreateHotelsDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels_directions do |t|
      t.references :hotel, foreign_key: true
      t.references :direction, foreign_key: true

      t.timestamps
    end
  end
end
