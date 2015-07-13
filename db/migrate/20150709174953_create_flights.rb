class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :departing_id
      t.integer :arriving_id
      t.datetime :departure_time
      t.integer :duration

      t.timestamps null: false
    end
  end
end
