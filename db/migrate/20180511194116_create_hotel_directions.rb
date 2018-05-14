class CreateHotelDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :hotel_directions do |t|
      t.references :hotel, foreign_key: true
      t.references :direction, foreign_key: true

      t.timestamps
    end
  end
end
