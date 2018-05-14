class CreateMetroLines < ActiveRecord::Migration[5.2]
  def change
    create_table :metro_lines do |t|
      t.references :direction, foreign_key: true
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
