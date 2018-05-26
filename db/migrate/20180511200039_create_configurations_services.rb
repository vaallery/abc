class CreateConfigurationsServices < ActiveRecord::Migration[5.2]
  def change
    create_table :configurations_services do |t|
      t.references :service, foreign_key: { on_delete: :cascade }
      t.references :configuration, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
