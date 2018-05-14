class CreateBookingStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_statuses do |t|
      t.string :name
      t.boolean :start
      t.boolean :active

      t.timestamps
    end
  end
end
