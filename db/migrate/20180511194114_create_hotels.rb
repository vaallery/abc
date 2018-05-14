class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :slug
      t.string :address
      t.string :phone
      t.boolean :for_main_page, default: false
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
