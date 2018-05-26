class CreateRoomsAdverts < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms_adverts do |t|
      t.references :advert, foreign_key: { on_delete: :cascade }
      t.references :room, foreign_key: { on_delete: :cascade }
      t.boolean :active, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
