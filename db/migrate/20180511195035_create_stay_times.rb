class CreateStayTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :stay_times do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
