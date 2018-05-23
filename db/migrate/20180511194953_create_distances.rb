class CreateDistances < ActiveRecord::Migration[5.2]
  def change
    create_table :distances do |t|
      t.references :hotel, foreign_key: { on_delete: :cascade }
      t.references :place, foreign_key: { on_delete: :cascade }
      t.integer :length

      t.timestamps
    end
  end
end
