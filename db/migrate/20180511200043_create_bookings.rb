class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string   :name
      t.string   :email
      t.string   :phone
      t.integer  :adults_count
      t.integer  :children_count
      t.integer  :rooms_count
      t.string   :comment
      t.date     :arrival_date
      t.time     :arrival_time
      t.date     :departure_date
      t.time     :departure_time
      t.string   :status
      t.string   :review_key
      t.integer  :total_cost

      t.timestamps
    end
  end
end
