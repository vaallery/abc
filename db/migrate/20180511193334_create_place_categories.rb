class CreatePlaceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :place_categories do |t|
      t.string :name
      t.integer :tag
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
