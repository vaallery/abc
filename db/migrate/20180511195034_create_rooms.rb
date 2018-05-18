class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.references :hotel, foreign_key: true
      t.string :name
      t.string :description
      t.string :services_description
      t.integer :square
      t.string :bed
      # TODO уточнить нафига столько атрибутов про кровати
      t.integer :bed1
      t.integer :bed2
      t.integer :rooms
      t.boolean :additional_bed
      t.boolean :active, default: true
      t.jsonb :images

      t.timestamps
    end
  end
end
