class CreateRoomAdverts < ActiveRecord::Migration[5.2]
  def change
    create_table :room_adverts do |t|
      t.references :advert, foreign_key: true
      t.references :room, foreign_key: true
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
