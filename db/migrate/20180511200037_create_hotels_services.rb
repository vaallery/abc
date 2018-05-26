class CreateHotelsServices < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels_services do |t|
      t.references :service, foreign_key: { on_delete: :cascade }
      t.references :hotel, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
