class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      # t.string :hotel_category
      t.references :hotel_category, foreign_key: { on_delete: :nullify }
      t.references :main_direction, foreign_key: { to_table: :directions, on_delete: :nullify }
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :slug
      t.string :address
      t.string :phone
      t.boolean :for_main_page, default: false
      t.boolean :active, default: true
      t.jsonb :images, array: true
      t.float :rating
      t.integer :review_count
      t.float :min_price

      t.timestamps
    end
  end
end
