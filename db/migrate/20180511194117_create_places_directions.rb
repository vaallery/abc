class CreatePlacesDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :places_directions do |t|
      t.references :place
      t.references :direction

      t.timestamps
    end
  end
end
