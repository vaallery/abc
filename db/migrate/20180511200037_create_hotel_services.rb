class CreateHotelServices < ActiveRecord::Migration[5.2]
  def change
    create_table :hotel_services do |t|
      t.references :service, foreign_key: true
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end
