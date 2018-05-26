class CreateRoomsServices < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms_services do |t|
      t.references :service, foreign_key: { on_delete: :cascade }
      t.references :room, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
