class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :booking, foreign_key: true
      t.references :hotel, foreign_key: true # Нереляционное поле для уменшения длины запроса, иначе до отеля необходимо добираться через кучу таблиц
      t.string   :positive
      t.string   :negative
      t.integer  :score_location
      t.integer  :score_services
      t.integer  :score_clean
      t.integer  :score_value
      t.string   :status

      t.timestamps
    end
  end
end
