class CreateHotelCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :hotel_categories do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
  end
end
