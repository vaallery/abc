class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :tag
      t.boolean :for_hotel
      t.boolean :for_room
      t.boolean :for_configuration
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
