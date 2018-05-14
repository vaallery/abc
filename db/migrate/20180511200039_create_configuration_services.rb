class CreateConfigurationServices < ActiveRecord::Migration[5.2]
  def change
    create_table :configuration_services do |t|
      t.references :service, foreign_key: true
      t.references :configuration, foreign_key: true

      t.timestamps
    end
  end
end
