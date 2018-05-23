class CreateMetroLines < ActiveRecord::Migration[5.2]
  def change
    create_table :metro_lines do |t|
      t.references :direction, foreign_key: { on_delete: :nullify }
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
