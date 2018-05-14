class CreateDistances < ActiveRecord::Migration[5.2]
  def change
    create_table :distances do |t|
      t.references :hotel, foreign_key: true
      t.references :place, foreign_key: true
      t.integer :length

      t.timestamps
    end
  end
end
