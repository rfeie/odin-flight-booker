class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.integer :flight_id
      t.integer :num_of_passengers

      t.timestamps null: false
    end
  end
end
