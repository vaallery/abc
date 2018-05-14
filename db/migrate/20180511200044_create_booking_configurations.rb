class CreateBookingConfigurations < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_configurations do |t|
      t.references :booking, foreign_key: true
      t.references :configuration, foreign_key: true
      t.integer :num

      t.timestamps
    end
  end
end
