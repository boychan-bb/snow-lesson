class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :lesson_date
      t.time :lesson_time
      t.integer :fee
      t.integer :how_many
      t.integer :booking
      t.integer :instructor_id
      t.timestamps
    end
  end
end
