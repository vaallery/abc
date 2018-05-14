class CreateConfigurations < ActiveRecord::Migration[5.2]
  def change
    create_table :configurations do |t|
      t.references :room, foreign_key: true
      t.references :stay_time, foreign_key: true
      t.integer :guests_count
      t.integer :cost
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
